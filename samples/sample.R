setwd("/Users/example/")
data <- read.csv("budget.csv", sep = ";")

plot(data$sqft, data$building_scale)
hist(data$sqft)
hist(data$building_scale)
cor.test(data$sqft, data$building_scale, na.action = "na.omit", method = c("kendall"))
cor.test(data$sqft, data$building_scale, na.action = "na.omit", method = c("pearson"))

# 2. Lorem Ipsum

colnames(data)
numerical_data <- data[sapply(data, is.numeric)]

r <- cor(data$building_scale, data$sqft)
print(r^2)

if (!dir.exists("data")) {
  dir.create("data")
}

lorem <- NA

credit_data <- readxl::read_xlsx("banks.xlsx")
credit_data <- janitor::clean_names(banks)

credit_data %>%
  select(age, credit) %>%
  mutate(age_range = case_when(
    between(age, 18, 29) ~ "Young",
    between(age, 30, 45) ~ "Young Adult",
    between(age, 46, 50) ~ "Adult",
    .default = "Elderly"
  )) %>%
  filter(credit == 1) %>%
  select(age_rage) %>%
  group_by(age_range) %>%
  count()

table(credit_data$children[credit_data$credit == 1])

credit_data %>%
  select(province, monthly_income) %>%
  group_by(province) %>%
  summarise(mean_income = mean(monthly_income, na.rm = TRUE))
