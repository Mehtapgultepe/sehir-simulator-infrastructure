#!/usr/bin/env bash
# Docker olmadan geliştirme: backend ve frontend'i ayrı terminallerde başlatır (macOS/Linux)
set -e
KOK="$(cd "$(dirname "$0")/../.." && pwd)"
echo "1. terminal:  cd $KOK/sehir-simulator-backend && uvicorn api.main:app --reload"
echo "2. terminal:  cd $KOK/sehir-simulator-frontend && npm run dev"
echo "Uygulama: http://localhost:5173 · Swagger: http://localhost:8000/docs"
