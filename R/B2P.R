B2P <-
function(x)
    {
    x %*% tcrossprod(solve(crossprod(x)), x) 
    }
