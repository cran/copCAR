#include "inverse.h"
#include <RcppArmadillo.h>
#include <iostream>

using namespace Rcpp;
using namespace std;
using namespace arma;

arma::mat armaInv(const mat& X)
{
    mat Xinv = inv(X);
    return Xinv;
}

RCPP_MODULE(inverse)
{
    Rcpp::function("armaInv", &armaInv);
}
