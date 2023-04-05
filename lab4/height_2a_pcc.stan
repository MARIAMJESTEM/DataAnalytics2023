data {
    int <lower=0> N;
    int <lower=0> weight[N];
}
parameters {
  real<lower=0> sigma;     // error scale
  real alpha;              // intercept
  real beta;               // predictor coefficient
}
model{
    alpha ~ normal(165, 20);
    betha ~ ~ normal(0, 1);
    sigma ~ normal(15, 1);
//     for (i in 1:N) {
//     real mu = alpha + beta * weight[i];
//     real hi[N];
//     for (j in 1:N) {
//       hi[j] = normal_rng(mu, sigma);
//     }
//   }
}
generated quantities{
    real hi[N];
    for (i in 1:N) {
        real mu = alpha + beta * weight[i];
        hi[i] = normal_rng(mu, sigma);
   
}
}