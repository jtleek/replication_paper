gg.theme <- function(type=c("clean","noax")[1],useArial = F, afmPATH="~/Dropbox"){
  require(ggplot2)
  if(useArial){
    set.Arial(afmPATH)
    bf_font="Arial"
  } else {bf_font="Helvetica"}
  
  switch(type,
         clean = theme_bw(base_size = 16, base_family=bf_font) +
           theme(axis.text.x     = element_text(size = 14),
                 axis.title.y    = element_text(vjust = +1.5),
                 panel.grid.major  = element_blank(),
                 panel.grid.minor  = element_blank(),
                 legend.background = element_blank(),
                 legend.key = element_blank(),
                 panel.border = element_blank(),
                 panel.background = element_blank(),
                 axis.line  = element_line(colour = "black")),
         
         noax = theme(line = element_blank(),
                      text  = element_blank(),
                      title = element_blank(),
                      plot.background = element_blank(),
                      panel.border = element_blank(),
                      panel.background = element_blank())
  )
}

plotHolder <- function(useArial = F,afmPATH="~/Dropbox"){
  require(ggplot2)
  ggplot() + 
    geom_blank(aes(1,1)) + 
    theme(line = element_blank(),
          text  = element_blank(),
          title = element_blank(),
          plot.background = element_blank(),
          #           panel.grid.major = element_blank(),
          #           panel.grid.minor = element_blank(), 
          panel.border = element_blank(),
          panel.background = element_blank()
          #           axis.title.x = element_blank(),
          #           axis.title.y = element_blank(),
          #           axis.text.x = element_blank(), 
          #           axis.text.y = element_blank(),
          #           axis.ticks = element_blank()
    )
}