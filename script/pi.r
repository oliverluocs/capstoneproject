saveGIF({
n = seq(0, 1e4, 1e2)[-1]; n
Pi_Estimate = matrix(0L, 1, length(n))
pi = matrix(NA, 1, length(n))
for (i in 1:length(n)) {
  inside=0
  outside=0
  for (j in 1:n[i]) {
    x = runif(1, min=-1, max=1)
    y = runif(1, min=-1, max=1)
    if (x^2+y^2<=1) {inside=inside+1}
    outside=outside+1
  }
  pi[i]=4*inside/(outside)
  Pi_Estimate[i] = pi[i]
  plot(n, Pi_Estimate, type = "b");
  abline(h = 3.14, col = "red")
}
}, movie.name = "Downloads", interval = 0.8, nmax = 30, ani.width = 480)
