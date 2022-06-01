library(magick)
library(dplyr)
library(hexSticker)
library(ggimage)

### Option 1
img1<- ggimage::image_read2("images/hexstickerV1_ppt.PNG")
res1<- img1 %>% 
  #image_convert("png") %>% 
  magick::image_resize("1080 x 600")#%>% 
  #magick::image_fill(color="#062047", point="+45") %>% 
  #magick::image_annotate("NEFSCspatial", size=38, location = "-10+100", color="black") 
  
res_final1<- hexSticker::sticker(res1, package = "NEFSCspatial", p_size = 16, 
                                p_y = 1.4, p_color = "#9DC3E6",
                                s_x = 1, s_y=1.1, s_width = 1.5, 
                                s_height = 14, h_fill = "white", h_color="#1F4E79", 
                                filename = "NEFSCspatial_hexsticker_v1.png")

### Option 2
img2<- ggimage::image_read2("images/hexstickerV2_ppt.PNG")
res2<- img2 %>% 
  #image_convert("png") %>% 
  magick::image_resize("1080 x 600")#%>% 
#magick::image_fill(color="#062047", point="+45") %>% 
#magick::image_annotate("NEFSCspatial", size=38, location = "-10+100", color="black") 

res_final2<- hexSticker::sticker(res2, package = "NEFSCspatial", p_size = 16, 
                                 p_y = 1.3, p_color = "#1F4E79",
                                 s_x = 0.95, s_y=1.05, s_width = 1.2, 
                                 s_height = 12, h_fill = "white", h_color="#1F4E79", 
                                 filename = "NEFSCspatial_hexsticker_v2.png")
