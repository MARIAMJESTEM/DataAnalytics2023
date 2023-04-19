generated quantities {
    real N = normal_rng(5000, 1000);
    real alpha = normal_rng(0.00015,0.0001);  // prior for intercept
    real theta = normal_rng(0.0006,0.0001);   // prior for coefficient
    int  y = poisson_log_rng(alpha + theta * N);  // likelihood
} 