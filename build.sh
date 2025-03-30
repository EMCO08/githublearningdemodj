#!/usr/bin/env bash
# Django projesi için build script

set -o errexit  # Hata durumunda script'i durdur

# Python paketlerini yükle
pip install -r requirements.txt

# Statik dosyaları topla
python manage.py collectstatic --no-input

# Veritabanı migrasyonlarını uygula
python manage.py migrate 