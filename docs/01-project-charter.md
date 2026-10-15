# Seevo — Project Charter

| Field | Value |
|---|---|
| Project | Seevo — AI Object Detection Mobile App |
| Version | 0.1 (Draft) |
| Date | 2026-10-14 |
| Owner | Eslam Madhoun |
| Lifecycle model | Iterative / Agile SDLC (1–2 week sprints, phase gates) |
| Status | Awaiting review |

---

## 1. Vision
> **Seevo is your AI eyes: point your phone and know what's around you.**

Seevo is a cross-platform (iOS & Android) mobile app that identifies objects in real time using the phone camera. All AI processing runs **on the device**, so it works offline and no image ever leaves the phone. It serves everyday curious users, and offers a first-class **accessibility mode** for blind and visually impaired users with spoken and haptic feedback.

## 2. Problem Statement
- People often want to quickly identify or confirm what an object is.
- Blind and visually impaired people need fast, private, offline help understanding their surroundings. Many existing tools depend on the internet, are slow, or send images to remote servers.

## 3. Objectives (SMART)
| # | Objective | Measure | Target date |
|---|---|---|---|
| O1 | Deliver MVP with live + photo detection and voice feedback | All MVP FRs pass acceptance tests | M3 |
| O2 | Real-time performance on mid-range phones | ≥ 15 FPS, < 100 ms inference (iPhone 11 / Pixel 6a) | M3 |
| O3 | Fully accessible | 100% of controls usable with VoiceOver/TalkBack; WCAG 2.1 AA | M4 |
| O4 | Stable release | ≥ 99.5% crash-free sessions in beta | M4 |
| O5 | Store launch | Approved on App Store and Google Play | M5 |

## 4. Scope

### In scope (MVP / v1.0)
- Live camera object detection with bounding boxes, labels and confidence.
- Photo detection: capture a photo or pick from the gallery.
- Voice feedback (text-to-speech) announcing detected objects.
- Accessibility mode: large UI, haptics, screen-reader support, position cues.
- Settings (confidence threshold, TTS options, language, performance mode).
- Onboarding and permission handling.
- English UI, with a localization-ready structure.

### Out of scope (future versions)
- User accounts, login, cloud sync, detection history.
- Backend server or cloud AI.
- LLM scene descriptions, OCR/text reading, custom-trained object classes.
- Tablet-optimised layouts, wearables.

## 5. Stakeholders
| Stakeholder | Role / Interest |
|---|---|
| Project owner (Eslam) | Product decisions, approvals at phase gates |
| Developer(s) | Design, build, test |
| End users — general | Fast, fun, accurate identification |
| End users — visually impaired | Reliable voice/haptic feedback, accessibility |
| Apple / Google | Store review and policy compliance |

## 6. Feasibility Summary
| Area | Assessment |
|---|---|
| Technical | **Feasible.** Flutter + TensorFlow Lite run on both platforms; mature camera and TTS plugins exist. Pretrained COCO models detect 80 everyday object classes. |
| Economic | **Low cost.** No servers. Costs: Apple Developer ($99/yr), Google Play ($25 one-time), test devices. |
| Operational | **Feasible.** Offline app with no infrastructure to run. |
| Legal | **Needs care.** Model licence must allow commercial use (see R1). Privacy policy required by both stores. |
| Schedule | **Feasible** in ~6 sprints for the MVP (see milestones). |

## 7. Milestones
| Milestone | Deliverable | Gate |
|---|---|---|
| M1 — Requirements | Charter + SRS approved | Owner sign-off |
| M2 — Design | SDD, wireframes, model choice approved | Owner sign-off |
| M3 — MVP Alpha | Sprints 0–5 done; MVP features working on devices | Internal demo |
| M4 — Beta | TestFlight + Play internal testing; QA test plan passed | Beta feedback reviewed |
| M5 — Release 1.0 | Published on App Store & Google Play | Store approval |

## 8. Risk Register
| ID | Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|---|
| R1 | Model licence conflict (Ultralytics YOLO is AGPL-3.0, which requires open-sourcing the app or buying a licence) | Medium | High | **Decision: YOLO chosen for now.** Before commercial release: open-source the app (AGPL) or buy an Ultralytics licence; fallback to Apache-2.0 EfficientDet-Lite via the `ObjectDetector` interface |
| R2 | Low FPS on low-end Android devices | High | Medium | Quantized model, GPU/NNAPI delegates, frame skipping, "performance mode" setting |
| R3 | Store rejection over permissions or privacy | Low | High | Clear permission explanations, accurate privacy labels, privacy policy |
| R4 | TTS spam / poor UX for blind users | Medium | High | Announcement throttling, verbosity settings, testing with real users |
| R5 | Detection inaccuracy erodes trust | Medium | Medium | Confidence threshold, show confidence, never claim certainty for safety-critical use |
| R6 | Safety misuse (e.g. relying on app to cross roads) | Low | High | In-app disclaimer: Seevo is an aid, not a mobility or safety device |

## 9. Assumptions & Constraints
- Targets **iOS 15+** and **Android 8.0+ (API 26)**.
- Developer machine is a Mac (needed to build iOS).
- Only pretrained COCO classes (80) in v1.0.
- No personal data is collected in v1.0.

## 10. Approval
| Name | Role | Decision | Date |
|---|---|---|---|
| Eslam Madhoun | Project Owner | ☐ Approved ☐ Changes requested | |
