# 클로드 토큰 절약 도구

출처: [프롬왓 – 클로드 토큰 아끼는 도구 3가지](https://free.promptwhatstudio.com/claude-token-saver-tools) (2026-11-25 기준)

| 순서 | 도구 | 하는 일 | 이 저장소에서 |
|---|---|---|---|
| 1 | [Graphify](https://github.com/safishamsi/graphify) | 코드 전체를 지식 그래프로 만들어, 매번 파일을 다시 읽지 않게 함 | `setup-token-savers.sh` 로 설치 |
| 2 | [Ponytail](https://github.com/DietrichGebert/ponytail) | 필요한 만큼만 코드를 쓰게 하는 스킬 | `.claude/settings.json` 으로 자동 활성화 |
| 3 | [OmniRoute](https://github.com/diegosouzapw/OmniRoute) | 한도가 차면 다른 모델로 자동 전환하는 로컬 게이트웨이 | `setup-token-savers.sh` 로 설치, 연결은 직접 |

## 1. Graphify
```bash
pip install graphifyy && graphify install   # 맥에서 오류 나면: pipx install graphifyy
```
클로드 코드에서 `/graphify .` → `graphify-out/` (graph.html, GRAPH_REPORT.md, graph.json) 생성.
코드가 바뀌면 `graphify update .`
문서·PDF·이미지를 넣으면 그 부분은 AI 모델로 보내 읽습니다.

## 2. Ponytail
이 저장소를 클로드 코드로 열면 신뢰 확인 후 자동으로 설치·활성화됩니다.
다른 프로젝트에서는:
```
/plugin marketplace add DietrichGebert/ponytail
/plugin install ponytail@ponytail
```
강도: `/ponytail lite | full | ultra`, 끄기: `/ponytail off`.
반드시 공식 저장소 `DietrichGebert/ponytail` 에서만 설치하세요(복사본 주의).

## 3. OmniRoute
```bash
npm install -g omniroute
omniroute
```
1. http://localhost:20128 (대시보드) → **Providers** 에서 제공사 연결 (각 제공사 계정/API 키 필요)
2. **Endpoints** 에서 API 키 복사
3. 공식 문서 「Claude Code Config」 대로 주소 `http://localhost:20128/v1`, 모델 `auto` 설정

토큰을 공짜로 주는 것이 아니라 각 제공사의 무료 등급을 묶는 방식입니다. 제공사별 한도·약관을 확인하세요.
