library(tidyverse)
library(ggplot2)
library(readr)
library(stringr)
library(ggtext)


setwd('~/Desktop/project 2')
balochistan_df = read_csv('political_violence_balochistan_insurgents.csv')
balochistan_df$month = as.Date(paste0(balochistan_df$month, "-01"))

ggplot(balochistan_df, aes(x = month, y = event_count)) +  
  geom_line(color = "#c71e1d", size=0.8) +
  scale_y_continuous(limits = c(0, 150),
                     breaks = seq(0, 150, 25)
  ) +
  scale_x_date(date_breaks = "1 year",
               date_labels = "%b %Y",
               limits = c(min(balochistan_df$month), max(balochistan_df$month))) +
  labs(
    title = str_wrap("Violence in Balochistan surged during Pakistan's election month last year", width=95),
    subtitle = str_wrap("Number of incidents of political violence by separatist groups.", width=95),
    x = "",
    y = " ",
    caption = "Source: ACLED – Armed Conflict Location & Event Data Project: Asia-Pacific, 7 February 2025."
  ) +
  annotate("richtext", 
           x = as.Date("2023-07-01"), y = 110, 
           label = "Feb. 2024: General <b>elections</b> were held. <br>
Separatist groups like Balochistan Liberation Army <br> carried out <b>124 attacks</b> in Feb. alone.<br>
Most of these targeted the Pakistani military.", 
           size = 3, family = "Arial", 
           fill = NA, label.color = NA,  # Removes the background box
           color = "black") +
  
  geom_curve(aes(x = as.Date("2023-12-01"), xend = as.Date("2024-02-01"),
                 y = 118, yend = 127),  
             arrow = arrow(length = unit(0.2, "cm")), 
             color = "black", curvature = -0.3) +
  
  annotate("richtext", 
           x = as.Date("2024-08-01"), y = 95, 
           label = "Aug. 2024: Attacks intensified <br> during Pakistan's <b>independence month</b>", 
           size = 3, family = "Arial", 
           fill = NA, label.color = NA,
           color = "black") +
  

  geom_curve(aes(x = as.Date("2024-10-01"), xend = as.Date("2024-08-01"),
                 y = 80, yend = 89),  
             arrow = arrow(length = unit(0.2, "cm")), 
             color = "black", curvature = 0.3)+
  theme_minimal() +
  theme(
    text = element_text(family = "Arial", size = 12),
    plot.title = element_text(face = "bold"),
  ) + theme_minimal() +
  theme(
    panel.grid.minor = element_blank()
  )


ggsave("balochistan_insurgency.jpg")