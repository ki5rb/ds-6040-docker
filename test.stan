data {
    int<lower=0> n;
    int<lower=0> y[n];
}

parameters {
    real<lower=0> theta;
}

model {
    // Prior
    theta ~ lognormal(2, 0.5);
    // Likelihood
    y ~ poisson(theta);
}