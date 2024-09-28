data {
    int<lower=0> n;          // number of observations
    int<lower=0> y[n];       // observed counts (Poisson data) within each observation (1)
}

parameters {
    real<lower=0> theta;    // Poisson rate parameter
}

model {
    // Prior: log-normal distribution
    theta ~ lognormal(2, 0.5); // Log-Normal(2, 0.5)
    
    // Likelihood: Poisson distribution
    y ~ poisson(theta);         // Poisson likelihood
}