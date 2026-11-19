# =============================================================
# İST347 Dönem Ödevi — Veri hazırlama kodu
# Grup no: NN
# -------------------------------------------------------------
# Bu dosya hem rapor.qmd hem sunum.qmd tarafından
#   source("hazirlik.R")
# ile çalıştırılır. Böylece rapor ve sunum AYNI veriyi kullanır.
#
# Kurallar:
#  - install.packages() bu dosyaya YAZILMAZ (paketleri konsolda bir kez kurun).
#  - Mutlak dosya yolu (C:/Users/...) KULLANILMAZ.
#  - Sonunda analizde kullanacağınız veri `veri` adlı nesnede olmalıdır.
# =============================================================

suppressPackageStartupMessages({
  library(dplyr)
  library(tidyr)
  library(ggplot2)
})

# 1) Veriyi yükleyin ---------------------------------------------
# ÖRNEK: Şablonun çalışması için geçici olarak ToothGrowth verisi yüklenmiştir.
# Bu satırı veri_havuzu.html'deki KENDİ veri setinizin yükleme koduyla değiştirin.
ham_veri <- datasets::ToothGrowth

# 2) Değişkenleri seçin, adlandırın, faktörlere çevirin -------------
veri <- ham_veri |>
  mutate(
    supp = factor(supp, levels = c("OJ", "VC"),
                  labels = c("Portakal suyu", "C vitamini")),
    doz  = factor(dose)            # 3 düzeyli grup değişkeni
  )

# 3) Yeni değişken(ler) türetin -----------------------------------
# ör. veri <- veri |> mutate(yeni = case_when(...))

# 4) Eksik değerler -----------------------------------------------
# Eksik değerleri raporda sayın; burada nasıl ele aldığınızı uygulayın.
# ör. veri <- veri |> filter(!is.na(degisken))

# 5) Rapor ve sunumda ortak kullanılacak ayarlar -------------------
theme_set(theme_minimal(base_size = 12))
