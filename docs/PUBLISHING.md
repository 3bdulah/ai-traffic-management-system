# Publishing to GitHub & LinkedIn

Checklist for taking this repo public.

## Before you push

- [ ] Capture manual screenshots — see [`SCREENSHOTS.md`](SCREENSHOTS.md)
- [ ] Optional: record a 15s demo GIF → `docs/images/demo.gif`
- [ ] Copy `.env.example` → `.env` and confirm no secrets are staged (`git status`)

## First push (clean release)

Your local folder is the polished version. The remote `m7md-aiman/TRaffic` repo still has old dev logs — prefer a **fresh history** or force-replace `master` with this tree.

```bash
cd "/path/to/AI Traffic System"
git init
git add .
git status   # verify: no .env, no PDF/PPTX, no SESSION_LOG*
git commit -m "Public release: TRaffic capstone platform"
git remote add origin https://github.com/m7md-aiman/TRaffic.git
git branch -M master
git push -u origin master --force   # only if replacing old dev history
```

> Use `--force` only if you intend to overwrite the private dev snapshot. Coordinate with teammates first.

## After push

1. **Settings → General → Change visibility** → Public
2. **Settings → General → Social preview** → upload `docs/images/hero-banner.png` or `dashboard.png`
3. Add **About** description and topics: `computer-vision`, `traffic-simulation`, `yolo`, `sumo`, `fastapi`, `nextjs`, `capstone`
4. Confirm CI badge turns green on README

## LinkedIn post (template)

> Built **TRaffic** — an AI traffic management platform for our year-long capstone at Bahçeşehir University.
>
> - **54%** shorter average wait times (adaptive vs fixed-time signals)
> - Custom **YOLOv11m** (mAP 0.949) + SUMO microsimulation + real-time Next.js dashboard
> - Emergency preemption, ramp metering, CARLA vision bridge
>
> Stack: Python · FastAPI · Next.js · SUMO · CARLA · Supabase
>
> Repo: https://github.com/m7md-aiman/TRaffic

Attach: `dashboard.png` or `demo.gif` + one results chart.
