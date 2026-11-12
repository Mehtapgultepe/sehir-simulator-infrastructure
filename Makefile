# Kısayollar:  make veri  ·  make baslat  ·  make durdur
COMPOSE = docker compose

veri:          ## OSM verisini indirir (bir kez)
	$(COMPOSE) run --rm backend python veri_indir.py
	$(COMPOSE) run --rm backend python veri_indir.py --bina

kritik:        ## Kritik yol analizini hesaplar (birkaç dakika)
	$(COMPOSE) run --rm backend python kritik.py

trafik:        ## İBB saatlik trafik dosyasını hazırlar: make trafik DOSYA=veri/traffic_density_202410.csv
	$(COMPOSE) run --rm backend python trafik_hazirla.py $(DOSYA)

baslat:        ## Sistemi derleyip başlatır
	$(COMPOSE) up -d --build

durdur:
	$(COMPOSE) down

log:
	$(COMPOSE) logs -f --tail=100

test:          ## Backend testleri
	$(COMPOSE) run --rm backend python tests/calistir.py

.PHONY: veri kritik trafik baslat durdur log test
