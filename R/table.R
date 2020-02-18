
table <- function(fname,d=NULL,reg=T,
                  type="",Ititle="",
                  h=0,w=0){
  rdnred <- rgb(166,9,61, maxColorValue = 255)
  rdnblue <- rgb(0,62,110, maxColorValue = 255)
  c2 <- c(rdnblue,rdnred)
  bg2 <- c("snow1", "snow2")
  f3 <- c("black", "white", "red")

  greyrows<-seq(2,nrow(fname),2)
  bolds <- d[,1]
  its <- d[,4]
  blues <- d[,2]
  reds <- d[,3]

  bold <- matrix("plain",nrow(fname),ncol(fname))
  bold[bolds,1:ncol(fname)] <- c("bold")
  bold[its,1:ncol(fname)] <- c("italic")

  bcell<- matrix(c(bg2[1]),nrow(fname),ncol(fname))
  bcell[greyrows,1:ncol(fname)] <- c(bg2[2])
  bcell[blues,1:ncol(fname)] <- c(c2[1])

  fontcol <- matrix(c(f3[1]),nrow(fname), ncol(fname))
  fontcol[reds,1:ncol(fname)] <- c(f3[3])
  fontcol[blues,1:ncol(fname)] <- c(f3[2])

  #Setting design characteristics

  gdltheme <- ttheme_minimal(
    core=list(bg_params = list(fill = bcell, col=F),
              fg_params=list(fontface=bold,hjust=1, x=.96, col=fontcol)),
    colhead=list(fg_params=list(col=f3[2], fontface="bold"),
                 bg_params=list(fill=c2[1], col=f3[2])))

  ###print etc.###
  fgrid <- tableGrob(theme = gdltheme, format(fname), rows=NULL)
  fgrid <- gtable_add_grob(fgrid, grobs=segmentsGrob(
    x0=unit(0,"npc"),
    y0=unit(0,"npc"),
    x1=unit(1,"npc"),
    y1=unit(0,"npc"),
    gp=gpar(lwd=4.0,col=c2[1])),
    t=nrow(fname)+1,b=nrow(fname)+1,l=1,r=ncol(fname))

  h3 = grid::convertHeight(sum(fgrid$heights), "in", TRUE)
  w3 = grid::convertWidth(sum(fgrid$widths), "in", TRUE)
  fname <- as.character(names(fname))
  if(type=="rates"){
    ggsave(filename = paste0("tables/Rates/",Ititle,".jpg",sep=""), fgrid, height = h3+h, width = w3+w)
  } else if (type=="cos"){
    ggsave(filename = paste0("tables/CostOfService/",Ititle,".jpg",sep=""), fgrid, height = h3+h, width = w3+w)
  } else if (type=="revreq"){
    ggsave(filename = paste0("tables/RevRequirements/",Ititle,".jpg",sep=""), fgrid, height = h3+h, width = w3+w)
  } else if (type=="key"){
    ggsave(filename = paste0("tables/KeyAssumptions/",Ititle,".jpg",sep=""), fgrid, height = h3+h, width = w3+w)
  } else {
    ggsave(filename = paste0(Ititle,".jpg",sep=""), fgrid, height = h3+h, width = w3+w)
  }
}
