# Şehir Dayanıklılık Simülatörü – Infrastructure

Sistemi Docker ile tek komutla ayağa kaldırır; mimari belgeler `docs/` klasöründe.

| Repo | İçerik |
| --- | --- |
| `sehir-simulator-backend` | FastAPI + hesap modülleri (Python) |
| `sehir-simulator-frontend` | React + Leaflet arayüzü |
| `sehir-simulator-infrastructure` | docker-compose, Makefile, belgeler |

```
Tarayıcı ──► frontend (nginx :8080) ──/api──► backend (FastAPI :8000) ──► veri/ (OSM, İBB, TÜİK)
```

## Kurulum (Docker)
```bash
git clone https://github.com/<kullanici>/sehir-simulator-infrastructure.git
cd sehir-simulator-infrastructure
./scripts/klonla.sh <kullanici>   # backend ve frontend'i yan yana klonlar
make veri                         # bir kez: OSM verisi
make kritik                       # isteğe bağlı
make baslat                       # http://localhost:8080 · Swagger: http://localhost:8000/docs
```

Docker olmadan: `./scripts/gelistirme.sh` komutları yazdırır.

## Belgeler
`docs/` – UML paket, kullanım durumu, sıra, aktivite, veri akış, dağıtım ve ER diyagramları (PDF + draw.io).
