calc_dim <- function(w,h){
  wm <- 6.5
  hm <- 9
  
  if(w>wm){
    p <- 1-(abs(wm-w)/((wm+w)/2))
    print(c(w*p, h*p))
  }
}

calc_dim(6.67, 3.63)
