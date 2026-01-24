# Workstation

chezmoi를 사용한 Mac 개발 환경 dotfiles 관리

## 새 환경에서 설치

### 1. Homebrew 설치 (필수)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### 2. chezmoi 설치 및 dotfiles 적용

```bash
# 방법 1: 한 줄 설치
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <github-username>

# 방법 2: Homebrew로 설치
brew install chezmoi
chezmoi init --apply <github-username>
```

### 3. 초기 설정

첫 실행 시 다음 정보를 입력하라는 프롬프트가 나타납니다:
- Git email address
- Git user name
- 개인/회사 환경 여부 (personal: y/n)

## 관리되는 파일

| 파일 | 설명 |
|------|------|
| `~/.zshrc` | Zsh 설정 (Oh My Zsh, plugins) |
| `~/.zprofile` | Zsh 프로파일 (Homebrew) |
| `~/.p10k.zsh` | Powerlevel10k 테마 설정 |
| `~/.gitconfig` | Git 전역 설정 |
| `~/.config/git/ignore` | Git 전역 ignore |
| `~/.claude/settings.json` | Claude CLI 설정 |
| `~/.claude/commands/pr.md` | PR 생성 커맨드 |

## 설치되는 도구

### CLI 도구
- zsh, zsh-syntax-highlighting, zsh-autocomplete
- git, commitizen
- fnm (Node.js 버전 관리)
- mysql-client
- awscli (회사 환경만)

### GUI 앱
- **터미널**: iTerm2
- **브라우저**: Arc
- **통신**: Slack
- **생산성**: Notion, Obsidian, 1Password, Rectangle, Cron
- **에디터/IDE**: VSCode, Sublime Text, IntelliJ, DataGrip, Redis Insight
- **개발**: Postman, Figma
- **AI**: ChatGPT

### Zsh 플러그인
- powerlevel10k (테마)
- zsh-autosuggestions
- you-should-use
- zsh-bat

## 환경별 설정

`personal` 설정에 따라 다른 앱/설정이 적용됩니다:

| 항목 | 개인 (personal=true) | 회사 (personal=false) |
|------|---------------------|----------------------|
| IntelliJ | Community Edition | Ultimate |
| OrbStack | - | 설치됨 |
| AWS CLI | - | 설치됨 |
| zsh 플러그인 | 기본 | +aws, docker, kubectl |

## 자주 사용하는 명령어

```bash
# 변경사항 미리보기
chezmoi diff

# 적용
chezmoi apply

# 로컬 변경사항 추가
chezmoi add ~/.zshrc

# source 디렉토리로 이동
chezmoi cd

# 원격에서 업데이트 가져오기
chezmoi update

# 설정 데이터 확인
chezmoi data
```

## 디렉토리 구조

```
workstation/
├── .chezmoiroot          # chezmoi source root 지정
├── README.md
└── home/                 # chezmoi source directory
    ├── .chezmoi.toml.tmpl
    ├── .chezmoiignore
    ├── dot_zshrc.tmpl
    ├── dot_zprofile.tmpl
    ├── dot_p10k.zsh
    ├── dot_gitconfig.tmpl
    ├── dot_config/git/ignore
    ├── dot_claude/
    └── .chezmoiscripts/
```
