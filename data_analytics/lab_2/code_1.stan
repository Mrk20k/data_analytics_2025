data {
  int M; // Number of years analyzed
}

generated quantities {
  real lambda = abs(normal_rng(0, 121)); 
  array[M] int y_sim;  
  for (k in 1:M) {
    y_sim[k] = poisson_rng(lambda);
  }
}
