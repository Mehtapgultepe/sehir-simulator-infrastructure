#!/usr/bin/env bash
# Üç repoyu yan yana klonlar:  ./scripts/klonla.sh GITHUB_KULLANICI_ADI
set -e
KULLANICI=${1:?Kullanım: ./scripts/klonla.sh GITHUB_KULLANICI_ADI}
cd "$(dirname "$0")/../.."
for repo in sehir-simulator-backend sehir-simulator-frontend; do
  [ -d "$repo" ] || git clone "https://github.com/$KULLANICI/$repo.git"
done
echo "Hazır. Şimdi: cd sehir-simulator-infrastructure && make veri && make baslat"
