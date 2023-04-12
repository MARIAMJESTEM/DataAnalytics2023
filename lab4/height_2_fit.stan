data {
    int<lower=0> N;
    vector[N] heights;
    vector[N] weights;
}

parameters {
    real alpha;
    real sigma;
    real beta;
}

transformed parameters {
    vector[N] mean;
    for (i in 1:N) {
      mean[i] = alpha + beta * weights[i];
  }
}

model {
    alpha ~ normal(165,10);
    sigma ~ normal(15, 1);
    beta ~ lognormal(0, 1);
    
    for (i in 1:N) {
      heights[i] ~ normal(mean[i], sigma);
    }
}

generated quantities {
    vector[N] h_hat;
    for (i in 1:N) {
        h_hat[i] = normal_rng(mean[i], sigma);
    }
}