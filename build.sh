#!/usr/bin/env bash
# Django projesi için build script

set -o errexit  # Hata durumunda script'i durdur

echo "Python sürümünü kontrol ediyorum..."
python --version

echo "Gerekli paketleri yüklüyorum..."
pip install -r requirements.txt

echo "Python uygulamasını kontrol ediyorum..."
python manage.py check

echo "Statik dosyaları topluyorum..."
python manage.py collectstatic --no-input

echo "Veritabanı migrasyonlarını uyguluyorum..."
python manage.py migrate

echo "Build işlemi tamamlandı!" 