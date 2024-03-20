#regresyon uygulamasi


#ilk olarak gerekli kütüphanenin yüklenmesini sağlayarak basliyoruz.


library(readr)

#ardindan veri setimiz olan "mtcars" da bagimli degiskeni (mpg) alıyoruz.#mpg= mil basina galon.


y <- matrix(mtcars$mpg, ncol = 1)


#ardindan bagimsiz degiskenler matrisini oluşturuyoruz. (yani: 1'ler sutunu ve hp sutunu)


x <- as.matrix(cbind(1, mtcars$hp))


#ardindan katsayilarin hesaplanmasini sagliyoruz.


beta_katsayilari <- solve(t(x) %*% x) %*% t(x) %*% y


print(paste("Kesme noktasi (intercept):", beta_katsayilari[1,]))

print(paste("Beygir gucu (hp) için regresyon katsayisi:", beta_katsayilari[2,]))

