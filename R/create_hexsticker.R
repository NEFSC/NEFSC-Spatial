library(magick)
library(dplyr)
library(hexSticker)
library(ggimage)

img<- ggimage::image_read2("images/hexstickerv1.PNG")
res<- img %>% 
  #image_convert("png") %>% 
  magick::image_resize("1080 x 200")#%>% 
  #magick::image_fill(color="#062047", point="+45") %>% 
  #magick::image_annotate("NEFSCspatial", size=38, location = "-10+100", color="black") 
  
res_final<- hexSticker::sticker(res, package = "NEFSCspatial", p_size = 12, 
                                p_y = 1.4, p_color = "#9DC3E6",
                                s_x = 1, s_y=1.1, s_width = 1.5, 
                                s_height = 14, h_fill = "white", h_color="#1F4E79", 
                                filename = "NEFSCspatial_hexsticker_v1.png")