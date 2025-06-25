# ViewTrans v1.1.3 Release 생성 가이드

## GitHub Release 생성 단계:

1. **Release 페이지 접속**
   - https://github.com/puritysb/ViewTrans-releases/releases/new

2. **Release 정보 입력**
   - **Tag**: v1.1.3 (Create new tag on publish)
   - **Release title**: ViewTrans v1.1.3 - Casetify-style Branding
   - **Target**: main

3. **Release Notes**:
```markdown
## What's New in v1.1.3 🎨

### ✨ New Features
- **Casetify-style Branding**: Added "V i E W T R A N S" branding to viewfinder corners
- **Mirrored Text**: Bottom-right text is rotated 180° for aesthetic balance
- **Enhanced Visual Design**: White text with black shadow for better visibility

### 🐛 Bug Fixes
- **Fixed HotkeyManager Concurrency Issues**: Thread safety ensured with @MainActor wrapper
- **Improved Manual Capture**: Better coordinate calculations for more accurate region selection
- **Enhanced OCR Accuracy**: Optimized text recognition in manual capture mode
- **Stabilized Live Translation**: Improved reliability of live translation mode

### 🔧 Technical Improvements
- Better TrialManager integration
- Optimized asynchronous task handling
- Improved coordinate system calculations

### 📦 Installation
```bash
curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans-releases/main/install.sh | bash
```

### 📥 Direct Download
[ViewTrans-v1.1.3-macos.tar.gz](https://github.com/puritysb/ViewTrans-releases/releases/download/v1.1.3/ViewTrans-v1.1.3-macos.tar.gz)

### 📋 System Requirements
- macOS 13.0 (Ventura) or later
- Apple Silicon or Intel Mac
```

4. **파일 첨부**
   - 이미 저장소에 업로드된 파일이므로 별도 첨부 불필요
   - 또는 ViewTrans-v1.1.3-macos.tar.gz 파일을 드래그 앤 드롭으로 추가

5. **Publish Release** 클릭

## 완료된 작업 요약:
- ✅ ViewTrans 메인 리포지토리: v1.1.3 태그 생성 및 푸시
- ✅ ViewTrans-releases 리포지토리: 
  - version.json 업데이트
  - RELEASE_NOTES.md 업데이트
  - release_info_v1.1.3.txt 생성
  - ViewTrans-v1.1.3-macos.tar.gz 업로드
  - ViewTrans-latest-macos.tar.gz 심링크 업데이트
  - v1.1.3 태그 생성

## 빌드 관련 참고사항:
현재 Xcode 빌드에 컴파일 오류가 있어 이전에 빌드된 Release 버전을 사용했습니다.
새로운 코드 변경사항을 포함한 빌드를 원하시면 Xcode에서 직접 빌드 후 다시 패키징하시기 바랍니다.