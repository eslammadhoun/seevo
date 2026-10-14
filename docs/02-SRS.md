# Seevo — Software Requirements Specification (SRS)

| Field | Value |
|---|---|
| Document | SRS (structure based on IEEE 830 / ISO/IEC/IEEE 29148) |
| Version | 0.1 (Draft) |
| Date | 2026-10-14 |
| Related | [01-project-charter.md](01-project-charter.md) |

---

## 1. Introduction

### 1.1 Purpose
This document defines the functional and non-functional requirements for **Seevo v1.0**, an on-device AI object detection app for iOS and Android. It is the baseline for design, implementation, testing and acceptance.

### 1.2 Scope
Seevo uses the phone camera to detect and label everyday objects in real time or in still photos, and can announce them by voice. All inference runs on the device. Accounts, a backend and cloud AI are out of scope for v1.0.

### 1.3 Definitions
| Term | Meaning |
|---|---|
| Detection | One recognised object: label, confidence (0–1), bounding box |
| Inference | Running the AI model on one image/frame |
| FPS | Frames per second processed by the detector |
| TTS | Text-to-speech |
| NMS | Non-maximum suppression, which removes duplicate overlapping boxes |
| COCO | Common Objects in Context dataset (80 object classes) |
| Accessibility mode | UI mode optimised for blind and low-vision users |

### 1.4 Priority scheme (MoSCoW)
**M** = Must, **S** = Should, **C** = Could, **W** = Won't (this release).

---

## 2. Overall Description

### 2.1 Product perspective
A standalone mobile app built with Flutter. It uses device services for the camera, photo library, text-to-speech, haptics and local storage. There are no external services.

### 2.2 User classes / personas
| Persona | Description | Key needs |
|---|---|---|
| **P1 — Sara, curious user** | 25, sighted, uses phone daily | Fast, visual results; simple UI; fun to use |
| **P2 — Omar, blind user** | 40, uses VoiceOver/TalkBack every day | Spoken results, minimal visual reliance, predictable controls, no spam |
| **P3 — Lina, low-vision user** | 65, partial sight | Large text, high contrast, voice + visual |

### 2.3 Operating environment
- iOS 15.0+ (iPhone), Android 8.0+ (API 26), phones only for v1.0.
- Requires a rear camera. Works fully offline.

### 2.4 Constraints
- Must comply with App Store Review Guidelines and Google Play policies.
- The model licence must permit distribution (see Charter R1).
- The app binary must stay small (see NFR-S1).

### 2.5 Assumptions
- Devices have a working TTS engine (built into iOS and Android).
- Users grant camera permission. A degraded mode exists if they don't.

---

## 3. Functional Requirements

### FR-1 Live Camera Detection — **M**
| ID | Requirement |
|---|---|
| FR-1.1 | The app shall show a full-screen live rear-camera preview on the main screen. |
| FR-1.2 | The app shall run object detection continuously on camera frames. |
| FR-1.3 | For each detection above the confidence threshold, the app shall draw a bounding box, label and confidence % over the preview. |
| FR-1.4 | Boxes shall be correctly positioned for the device's orientation and the preview's aspect ratio. |
| FR-1.5 | The user shall be able to toggle the flashlight (torch). |
| FR-1.6 | The user shall be able to **pause/freeze** the frame and see a list of detected objects (FR-7). |

### FR-2 Photo / Gallery Detection — **M**
| ID | Requirement |
|---|---|
| FR-2.1 | The user shall be able to capture a still photo from the camera screen. |
| FR-2.2 | The user shall be able to pick an image from the device gallery. |
| FR-2.3 | The app shall run detection on the selected image and show it with boxes and labels. |
| FR-2.4 | The result screen shall show a list of detected objects with counts (e.g. "2 × cup, 1 × laptop"). |
| FR-2.5 | If no objects are found, the app shall clearly say so (visually and by voice if TTS is on). |

### FR-3 Voice Feedback (TTS) — **M**
| ID | Requirement |
|---|---|
| FR-3.1 | The app shall speak the labels of detected objects when voice feedback is enabled. |
| FR-3.2 | In live mode, the app shall announce only **newly appearing** objects, with a per-label cooldown (default 3 s), to avoid repetition. |
| FR-3.3 | The user shall be able to turn voice on/off from the main screen with one tap. |
| FR-3.4 | The user shall be able to set speech rate, pitch and verbosity (label only / label + count / label + position). |
| FR-3.5 | TTS shall not overlap screen-reader speech (it queues or yields to VoiceOver/TalkBack). |

### FR-4 Accessibility Mode — **M**
| ID | Requirement |
|---|---|
| FR-4.1 | The app shall provide an Accessibility Mode with large controls and high-contrast colours. |
| FR-4.2 | The app shall auto-suggest Accessibility Mode when a screen reader is active on first launch. |
| FR-4.3 | All interactive elements shall have meaningful semantic labels for VoiceOver/TalkBack. |
| FR-4.4 | The app shall give haptic feedback when a new object is detected (configurable). |
| FR-4.5 | **S** — The app shall offer position cues ("cup, left"; "chair, ahead") based on box location. |
| FR-4.6 | **S** — A "Describe now" button shall speak a summary of everything currently in view. |

### FR-5 Settings — **M**
| ID | Requirement |
|---|---|
| FR-5.1 | Confidence threshold (default 50%, range 30–90%). |
| FR-5.2 | Max objects announced per update (default 3). |
| FR-5.3 | Voice settings (FR-3.4), haptics on/off, Accessibility Mode on/off. |
| FR-5.4 | Performance mode: *Battery saver / Balanced / Max accuracy* (controls frame rate and resolution). |
| FR-5.5 | App language (English in v1.0; localization-ready). |
| FR-5.6 | Settings shall persist between app launches. |
| FR-5.7 | About screen: version, licences, privacy policy, safety disclaimer. |

### FR-6 Onboarding & Permissions — **M**
| ID | Requirement |
|---|---|
| FR-6.1 | First launch shows 2–3 short onboarding screens (what Seevo does, privacy promise, safety disclaimer). |
| FR-6.2 | The app explains why the camera is needed **before** the system permission prompt. |
| FR-6.3 | If camera permission is denied, the app shows an explanation and a button to open system settings; gallery detection still works. |
| FR-6.4 | Photo library access is requested only when the user picks from the gallery. |

### FR-7 Freeze & Inspect — **S**
| ID | Requirement |
|---|---|
| FR-7.1 | When frozen, the app shall list all detections in the frozen frame. |
| FR-7.2 | Tapping a list item or box shall highlight it and speak its label. |

### Won't (v1.0)
Accounts/login, history, cloud sync, cloud AI, OCR, custom classes, sharing results.

---

## 4. Non-Functional Requirements

### Performance
| ID | Requirement |
|---|---|
| NFR-P1 | Live detection ≥ **15 FPS** on reference mid-range devices (iPhone 11, Pixel 6a) in Balanced mode. |
| NFR-P2 | Single inference latency < **100 ms** on reference devices. |
| NFR-P3 | Cold start to live camera < **3 s**. |
| NFR-P4 | Photo detection result shown < **1.5 s** after selection. |
| NFR-P5 | UI stays responsive (no dropped UI frames from inference; inference runs off the UI thread). |

### Privacy & Security
| ID | Requirement |
|---|---|
| NFR-S1 | No image or frame shall leave the device. |
| NFR-S2 | The app shall request no permissions beyond camera and photo library (no location, contacts or microphone). |
| NFR-S3 | No personal data is collected; crash reporting (if added) is opt-in and contains no images. |
| NFR-S4 | Privacy labels (App Store) and Data Safety form (Play) shall accurately reflect NFR-S1–S3. |

### Accessibility
| ID | Requirement |
|---|---|
| NFR-A1 | Conform to **WCAG 2.1 AA** (contrast ≥ 4.5:1, touch targets ≥ 44×44 pt / 48×48 dp). |
| NFR-A2 | Full support for VoiceOver, TalkBack and system font scaling up to 200%. |
| NFR-A3 | Every function reachable without seeing the screen. |

### Reliability & Usability
| ID | Requirement |
|---|---|
| NFR-R1 | ≥ 99.5% crash-free sessions in beta. |
| NFR-R2 | The app recovers gracefully from camera interruption (calls, backgrounding, other apps using the camera). |
| NFR-U1 | A new user can perform their first detection within 30 s of install (excluding download). |

### Portability, Size, Maintainability
| ID | Requirement |
|---|---|
| NFR-M1 | Single Flutter codebase for iOS and Android. |
| NFR-M2 | Installed size < **60 MB**. |
| NFR-M3 | Detector is behind an interface so the model can be replaced without UI changes. |
| NFR-M4 | ≥ 80% unit-test coverage of domain logic; `flutter analyze` with zero warnings. |
| NFR-M5 | Fully offline operation. |

### Legal / Compliance
| ID | Requirement |
|---|---|
| NFR-L1 | All third-party code and model licences permit commercial distribution and are listed in the About screen. |
| NFR-L2 | Safety disclaimer: Seevo is an aid, not a mobility or safety device. |

---

## 5. User Stories & Acceptance Criteria

**US-1 (FR-1)** — *As Sara, I want to point my camera at things and see what they are, so I can identify objects instantly.*
- **Given** camera permission is granted, **when** I open the app, **then** I see the live camera within 3 s.
- **Given** a cup is in view, **when** detection runs, **then** a box labelled "cup" with a confidence % appears around it.

**US-2 (FR-2)** — *As Sara, I want to analyse a photo from my gallery, so I can identify objects in pictures I already have.*
- **Given** I tap "Gallery" and pick a photo, **when** analysis completes, **then** I see the photo with boxes and a list of objects within 1.5 s.
- **Given** the photo contains no known objects, **then** I see "No objects found".

**US-3 (FR-3)** — *As Omar, I want Seevo to speak what it sees, so I don't need to look at the screen.*
- **Given** voice is on, **when** a chair enters the view, **then** I hear "chair".
- **Given** the chair stays in view, **then** it is not repeated within the cooldown.
- **Given** VoiceOver is speaking, **then** Seevo's speech does not talk over it.

**US-4 (FR-4)** — *As Omar, I want the app to work fully with VoiceOver/TalkBack, so I can use it independently.*
- **Given** a screen reader is on at first launch, **then** the app offers Accessibility Mode.
- **Given** I swipe through the main screen, **then** every control has a clear spoken label.

**US-5 (FR-4.5)** — *As Omar, I want to know where an object is, so I can reach for it.*
- **Given** position cues are on and a cup is on the left third of the frame, **then** I hear "cup, left".

**US-6 (FR-5)** — *As Lina, I want to adjust text size, contrast and voice speed, so the app suits my needs.*
- **Given** I change a setting, **when** I restart the app, **then** the setting is kept.

**US-7 (FR-6)** — *As any user, I want to understand why the camera is needed before I'm asked, so I feel safe granting it.*
- **Given** first launch, **then** the explanation screen appears before the system prompt.
- **Given** I deny permission, **then** I see how to enable it and can still use gallery detection.

**US-8 (FR-7)** — *As Sara, I want to freeze the frame and inspect results, so I can look at them carefully.*
- **Given** I tap Pause, **then** the frame freezes and a list of detections appears.

---

## 6. External Interface Requirements
| Interface | Description |
|---|---|
| User interface | Screens: Onboarding, Live Camera (home), Photo Result, Settings, About. Light / Dark / High-contrast themes. |
| Hardware | Rear camera, torch, haptic engine, speaker. GPU/NPU used when available. |
| Software | iOS AVFoundation & AVSpeechSynthesizer; Android CameraX & TextToSpeech (via Flutter plugins); TensorFlow Lite runtime. |
| Communications | None (offline). Links to the privacy policy open in the browser. |

---

## 7. Requirements Traceability (initial)
| Requirement | User story | Design element (SDD) | Test type |
|---|---|---|---|
| FR-1 | US-1 | `detection` feature, CameraController, OverlayPainter | Integration, device |
| FR-2 | US-2 | `gallery` feature | Integration |
| FR-3 | US-3 | `speech` feature, AnnouncementThrottler | Unit, manual a11y |
| FR-4 | US-4, US-5 | Theme, Semantics, PositionCue | Manual a11y, widget |
| FR-5 | US-6 | `settings` feature | Unit, widget |
| FR-6 | US-7 | `onboarding` feature | Widget, manual |
| FR-7 | US-8 | Freeze state in LiveDetectionBloc | Widget |
| NFR-P1/P2 | — | Isolate inference, delegates | Device benchmark |
| NFR-S1 | — | No network code | Code review, network inspection |

---

## 8. Approval
| Name | Role | Decision | Date |
|---|---|---|---|
| Eslam Madhoun | Project Owner | ☐ Approved ☐ Changes requested | |
