# Bu R dosyasını sketchbook gibi karalamalık kullanıcam junk kodlar burada olur

install.packages("AER")
library(AER)

data("CPS1985",package = "AER")
ham_veri <- CPS1985

summary(ham_veri)
