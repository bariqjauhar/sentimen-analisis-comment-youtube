library(tuber)
library(dplyr)
library(dslabs)
# simpan client id and client secret di R environment
client_id <- "868846397681-876cv7trbc7ok87ic490a8jngnavri7v.apps.googleusercontent.com"
client_secret <- "xT0ku31bUz8kjGlVMYhsRrXV"
# autentikasi aplikasi Anda
yt_oauth(app_id = client_id,
app_secret = client_secret)


comment_joebidden <- get_comment_threads(filter = c(video_id = "2Q78XXkhx0o"),
                                   max_results = 100) # tentukan jumlah maksimal komentar yang diambil

comment_joebidden <- comment_joebidden %>% 
  mutate(textDisplay = as.character(textDisplay)) %>%  # mengubah tipe data komentar
  select(-c(2,4,5,6,8,9)) # membuang kolom yang tidak diperlukan

write.csv(comment_joebidden,"C:\\Users\\bariq jauhar\\Documents\\comment_joebidden.csv", row.names = FALSE)
