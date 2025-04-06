# Counter App (UIKit + Combine)
iOS 앱 개발 입문 1주차 : Codebase

이 프로젝트는 내배캠 iOS 앱 개발 입문 1주차 과제로 시작된 **Counter 앱**을 기반으로,  
UIKit 환경에서의 **Delegate 패턴**과 **Combine 프레임워크**를 직접 적용하고 학습한 결과물입니다.

---

## 🎯 학습 목표

-  UIKit에서 Delegate 패턴의 구조와 역할 이해
-  Combine을 사용한 모델 상태 → UI 자동 바인딩 구현
-  Delegate + Combine을 조합하여 구조적이고 반응형 앱 설계

---

## 🛠 주요 기술 스택

- `UIKit`
- `Combine`
- `SnapKit`
- `Swift 5`

---

## 📚 관련 블로그 포스트

| 주제 | 링크 |
|------|------|
| Delegate 패턴 알아보기 | 👉 [블로그 보기](https://sheep1sik.tistory.com/168) |
| Combine으로 상태 바인딩하기 | 👉 [블로그 보기](https://sheep1sik.tistory.com/169) |

> 블로그에서는 Counter 앱 예제를 기반으로 Delegate와 Combine의 개념부터 코드 구현을 정리했습니다.

---

## ✨ 결과 화면


https://github.com/user-attachments/assets/97fab4ef-4e6c-4d3f-968c-a6ad9ffb76e9


- 라벨을 통해 숫자 출력
- 증가 / 감소 / 초기화 버튼 제공
- 모델 상태가 바뀌면 Combine을 통해 자동 UI 갱신

---

## 🧠 참고 자료

### 🔹 Delegate 관련

- [🔗 Apple Devpedia - Delegation](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html)  
  Apple에서 정의한 Delegate 패턴의 개념과 역할

- [🔗 UITableViewDelegate - Apple Documentation](https://developer.apple.com/documentation/uikit/uitableviewdelegate)  
  Apple이 제공하는 실제 Delegate 프로토콜의 예시

- [🔗 Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)  
  Delegate 메서드를 포함한 네이밍, 역할 설계 가이드라인

---

### 🔹 Combine 관련

- [🔗 Combine - Apple Developer Documentation](https://developer.apple.com/documentation/combine)  
  Combine 전체 프레임워크 개요 및 API 문서

- [🔗 @Published - Apple Developer](https://developer.apple.com/documentation/combine/published)  
  속성의 변경을 자동으로 Publisher로 연결하는 속성 래퍼 설명

- [🔗 ObservableObject - Apple Developer](https://developer.apple.com/documentation/combine/observableobject)  
  Combine이 관찰 가능한 객체를 정의할 때 사용하는 프로토콜

- [🔗 AnyCancellable - Apple Developer](https://developer.apple.com/documentation/combine/anycancellable)  
  Combine 구독을 메모리에서 유지 및 해제하는 데 사용하는 타입

- [🔗 WWDC19 - Introducing Combine (영상)](https://developer.apple.com/videos/play/wwdc2019/722/)  
  Combine을 처음 소개한 WWDC 세션, 개념과 활용법 요약



