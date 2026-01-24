# PR 생성

현재 브랜치를 origin에 push하고 GitHub PR을 생성해주세요.

## 리뷰어
$ARGUMENTS

## 요구사항
1. 현재 브랜치를 `origin`에 push (upstream 설정 포함)
2. 변경사항을 분석하여 PR description 작성
3. 담당자(assignee)는 `imione`로 설정
4. 리뷰어는 위에서 전달받은 사람으로 설정

## PR Description 템플릿
아래 템플릿을 사용하여 PR 본문을 작성해주세요:

```md
# What
<!-- 변경사항의 결과를 요약 설명 -->

# Why
<!-- 변경이 필요한 이유 -->

# How
<!-- 구현 방법 설명 -->

# Checklist
- [ ] Documentation
- [ ] Test codes

# QA Checklist
<!-- 변화가 안전하게 반영되기 위한 점검사항 -->
```

## 실행 방법
1. `git push -u origin HEAD`로 현재 브랜치를 push
2. `git log` 및 `git diff`를 통해 변경사항 파악
3. 변경사항을 기반으로 템플릿에 맞게 PR description 작성
4. `gh pr create` 명령어로 PR 생성:
   - `--title`: 변경사항을 요약한 제목 (한글, conventional commit 문법)
   - `--body`: 위 템플릿으로 작성한 본문
   - `--assignee imione`: 담당자 할당
   - `--reviewer`: 인자로 받은 리뷰어 할당

PR 생성이 완료되면 PR URL을 알려주세요.
