#ifndef _copCAR_BUILDM_H
#define _copCAR_BUILDM_H

#include <RcppArmadillo.h>

arma::mat buildM_(const arma::mat& B, int k, const arma::colvec& eigval);

#endif
