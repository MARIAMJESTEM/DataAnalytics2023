generated quantities {
    real N = normal_rng(0,1);
    real alpha = normal_rng(3.2,0.1);  // prior for intercept
    real theta = normal_rng(0.2,0.1);   // prior for coefficient
    int  y = poisson_log_rng(alpha + theta * N);  // likelihood
} 