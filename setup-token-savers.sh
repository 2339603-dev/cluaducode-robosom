#!/usr/bin/env bash
# 클로드 토큰 절약 도구 설치 (맥/리눅스). 내 컴퓨터에서 실행하세요.
# 출처: https://free.promptwhatstudio.com/claude-token-saver-tools
set -e

echo "[1/4] Graphify 설치 (Python 3.11.5~3.14 필요)"
if command -v pipx >/dev/null 2>&1; then
  pipx install graphifyy
else
  pip install graphifyy
fi
graphify install

echo "[2/4] OmniRoute 설치 (Node.js 22 또는 24 LTS 필요)"
npm install -g omniroute

echo "[3/4] Scrapling (웹 스크래핑, Python)"
pip install "scrapling[ai]"

echo "[4/4] book-to-skill (책 → 스킬 변환)"
npx skills add virgiliojr94/book-to-skill

cat <<'MSG'

완료. 다음 단계:
  - Graphify : 프로젝트 폴더에서 클로드 코드를 열고  /graphify .
               코드가 바뀌면 터미널에서  graphify update .
  - Ponytail : 이 저장소에서는 .claude/settings.json 으로 자동 설치됩니다.
               다른 프로젝트에서는 클로드 코드 안에서
                 /plugin marketplace add DietrichGebert/ponytail
                 /plugin install ponytail@ponytail
  - OmniRoute: 터미널에서  omniroute  실행 → http://localhost:20128 에서
               Providers 연결 → Endpoints 의 API 키로 클로드 코드 연결
MSG
