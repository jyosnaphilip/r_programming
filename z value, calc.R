if (!require("pwr")) install.packages("pwr")
library(pwr)
library(BSDA)
# Given values
population_mean <- 110
population_sd <- 100
sample_mean <- 113.5
sample_size <- 16
alternative_mean <- 23
alpha<- 0.05

# Calculate the standard error
standard_error <- population_sd / sqrt(sample_size)
cat("se:", standard_error, "\n")

# Calculate the z-score
z_score <- (sample_mean - population_mean) / standard_error

# Calculate the p-value for a two-tailed test
p_value <- pnorm(z_score,lower.tail=TRUE )

# Calculate the z-score for the alternative mean
z_score_alternative <- (sample_mean - alternative_mean) / standard_error

# Calculate the Type II error (β)
beta <- pnorm(z_score_alternative)

# Print the results
cat("Z-score for alternative mean:", z_score_alternative, "\n")
cat("Type II Error (β):", beta, "\n")
# Given values


# Print the results
cat("Z-score:", z_score, "\n")
cat("P-value:", p_value, "\n")
cat("upper", sample_mean + 1.96*standard_error, "\n")
cat("lower:", sample_mean - 1.96*standard_error, "\n")

# Print the results
cat("power:",1-beta, "\n")

