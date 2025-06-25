# ViewTrans 🌐

> **Control 키 두 번 탭으로 즉시 번역! macOS 최고의 화면 번역 도구**

ViewTrans는 macOS용 실시간 화면 번역 앱입니다. 마우스 커서를 텍스트 위에 올리고 Control 키를 두 번 탭하면 즉시 번역됩니다.

🎁 **15일 무료 평가판**: GitHub에서 다운로드한 버전은 15일간 모든 기능을 무료로 체험할 수 있습니다.

## 🚀 빠른 시작

### 자동 설치 (권장)
```bash
curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans-releases/main/install.sh | bash
```

### 수동 설치
1. [최신 버전 다운로드](https://github.com/puritysb/ViewTrans-releases/releases/latest)
2. ViewTrans.app을 Applications 폴더로 이동
3. 터미널에서 실행: `xattr -dr com.apple.quarantine /Applications/ViewTrans.app`

## ✨ 핵심 기능

### ⚡ 인스턴트 번역
- **Control 키 두 번 탭**으로 커서 위치의 텍스트 즉시 번역
- 클릭이나 드래그 없이 0.3초 만에 번역 완료
- 노란색 하이라이트로 인식된 텍스트 표시

### 🎯 영역 선택 번역
- **Control + Shift + A**로 macOS 스크린샷처럼 영역 선택
- 실시간 미리보기와 함께 정확한 영역 지정
- ESC로 언제든 취소 가능

### 🔒 완벽한 프라이버시
- **On-Device 번역**: 인터넷 연결 없이 100% 로컬 처리
- 회사 기밀, 개인정보 등 민감한 정보도 안전
- API 비용 없이 무제한 무료 사용

### 🌍 프리미엄 번역 옵션
- **DeepL**: 전문 번역 서비스의 최고 품질
- **OpenAI GPT-4**: 문맥 이해 기반 자연스러운 번역
- **Claude**: Anthropic의 고급 언어 이해
- **Google Gemini**: 구글의 최신 AI 기술

## 💻 시스템 요구사항

- macOS 13.0 (Ventura) 이상
- Apple Silicon 또는 Intel Mac
- 필수 권한: 화면 녹화, 손쉬운 사용

## 🎯 사용법

### 인스턴트 번역
1. 텍스트 위에 마우스 커서를 올립니다
2. Control 키를 빠르게 두 번 탭
3. 번역 결과가 팝오버로 표시됩니다

### 영역 선택 번역
1. Control + Shift + A 키 입력
2. 번역할 영역을 드래그로 선택
3. 자동으로 텍스트 인식 및 번역

## ⚙️ 번역 엔진 설정

### On-Device (기본값)
추가 설정 없이 즉시 사용 가능. 완전 오프라인, 무료.

### API 기반 번역
더 높은 번역 품질을 원한다면:

1. 원하는 서비스의 API 키 발급
   - [DeepL API](https://www.deepl.com/pro-api)
   - [OpenAI Platform](https://platform.openai.com/)
   - [Google AI Studio](https://makersuite.google.com/)
   - [Anthropic Console](https://console.anthropic.com/)

2. ViewTrans 설정에서 API 키 입력

## 🔧 문제 해결

| 문제 | 해결 방법 |
|------|----------|
| 앱이 실행되지 않음 | 터미널: `xattr -dr com.apple.quarantine /Applications/ViewTrans.app` |
| 화면 캡처 안 됨 | 시스템 설정 > 개인정보 보호 > 화면 녹화에서 ViewTrans 허용 |
| 단축키 작동 안 함 | 시스템 설정 > 개인정보 보호 > 손쉬운 사용에서 ViewTrans 허용 |

## 📞 지원

- [이슈 제보](https://github.com/puritysb/ViewTrans-releases/issues)
- [토론 참여](https://github.com/puritysb/ViewTrans-releases/discussions)

## 📝 평가판 안내

- **평가 기간**: 15일
- **제한 사항**: 없음 (모든 기능 사용 가능)
- **평가 기간 확인**: 앱 실행 시 남은 기간이 콘솔에 표시됩니다
- **정식 버전**: 추후 Mac App Store를 통해 출시 예정

## 📄 라이선스

MIT 라이선스 - 자유롭게 사용하세요!

---

Made with ❤️ for the macOS community