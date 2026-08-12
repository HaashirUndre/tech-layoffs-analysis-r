library(ggplot2)
library(dplyr)


table(tech_layoffs_hiring_trends_elite_v2$ai_adoption_level)

table(tech_layoffs_hiring_trends_elite_v2$ai_replacement_risk)

table(tech_layoffs_hiring_trends_elite_v2$hiring_trend)

ggplot(tech_layoffs_hiring_trends_elite_v2,
       aes(x = ai_adoption_level,
           y = ai_replacement_risk)) +
  geom_point(alpha = 0.15) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "AI Adoption vs AI Replacement Risk",
    subtitle = "Higher AI adoption is associated with higher replacement risk",
    x = "AI Adoption Level",
    y = "AI Replacement Risk"
  ) +
  theme_minimal()


cor(
  tech_layoffs_hiring_trends_elite_v2$ai_adoption_level,
  tech_layoffs_hiring_trends_elite_v2$ai_replacement_risk,
  use = "complete.obs"
)

ggplot(tech_layoffs_hiring_trends_elite_v2,
       aes(x = layoffs_count, y = open_roles)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Layoffs vs Open Roles",
    subtitle = "Exploring the relationship between workforce reductions and hiring",
    x = "Layoffs Count",
    y = "Open Roles"
  ) +
  theme_minimal()

cor(
  tech_layoffs_hiring_trends_elite_v2$layoffs_count,
  tech_layoffs_hiring_trends_elite_v2$open_roles,
  use = "complete.obs"
)

industry_layoffs <- tech_layoffs_hiring_trends_elite_v2 %>%
  group_by(industry) %>%
  summarise(total_layoffs = sum(layoffs_count, na.rm = TRUE)) %>%
  arrange(desc(total_layoffs))

ggplot(industry_layoffs,
       aes(x = reorder(industry, total_layoffs),
           y = total_layoffs)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Tech Layoffs by Industry",
    x = "Industry",
    y = "Total Layoffs"
  ) +
  theme_minimal()

print(industry_layoffs)


hiring_layoffs_avg <- tech_layoffs_hiring_trends_elite_v2 %>%
  group_by(hiring_trend) %>%
  summarise(
    avg_layoffs = mean(layoffs_count, na.rm = TRUE)
  )

hiring_layoffs_avg

ggplot(hiring_layoffs_avg,
       aes(x = reorder(hiring_trend, avg_layoffs),
           y = avg_layoffs)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Average Layoffs by Hiring Trend",
    x = "Hiring Trend",
    y = "Average Layoffs per Record"
  ) +
  theme_minimal()