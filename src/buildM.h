#ifndef _copCAR_BUILDM_H
#define _copCAR_BUILDM_H

#include <RcppArmadillo.h>

arma::mat buildMcpp(const arma::mat& B, int k, const arma::colvec& eigval);

#endif
