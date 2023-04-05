data{
    int <lower =0> N;
    real heights[N];
}

parameters{
    real mi;
    real sigma;
}

model{
    mi ~ normal(165, 20);
    sigma ~ normal(15, 1);
    heights ~ normal(mi, sigma);
}
generated quantities {
    real height_sample;
    height_sample = normal_rng(mi, sigma);
}