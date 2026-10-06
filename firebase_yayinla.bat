@echo off
chcp 65001 > nul
title Dibek Kütüphanesi Firebase Yayınlama Aracı
echo =======================================================
echo     DİBEK KÜTÜPHANESİ FİREBASE YAYINLAMA ARACI
echo =======================================================
echo.
echo Uygulama internete yükleniyor...
call npx firebase.cmd deploy --only hosting
if %errorlevel% neq 0 (
    echo.
    echo [HATA] Yükleme sırasında bir hata oluştu!
    echo Lütfen yukarıdaki hata mesajının ekran görüntüsünü alıp bana iletin.
) else (
    echo.
    echo =======================================================
    echo YAYINLAMA TAMAMLANDI!
    echo =======================================================
    echo Siteniz canlıya alındı: https://dibekkutuphanesi.web.app
)
echo.
pause
