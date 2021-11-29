# Clean up variables from the env.
rm(list=ls())

# A.MATRICES:
# ----------
# Generalization of vector
# (Several vectors stacked together)

# a.Creation using the matrix() function:
# --------------------------------------
A <- matrix(1:10,nrow=2)
A           # DEFAULT: column-major storage : Sounds like FORTRAN

B <- matrix(1:10, nrow=2 , byrow=TRUE)  
B

# Make sire nrow*ncol = nel
C <- matrix(data=c(2,3,893,0.17),nrow=2,ncol=2)
C

D <- matrix(nrow=2,ncol=3)
D[1,1] = 1.
D[1,2] = 2.
D[1,3] = 3.
D[2,1] = 4.
D[2,2] = 5.
D[2,3] = 6.
D

D[,2]
D[2,]

# b.Creation using rbind/cbind:
# ----------------------------
# rbind: Row Bind
W <- rbind(1:10,11:20)
W
class(W)

# cbind: Column Bind
Z<- cbind(1:5,6:10,11:15)
Z
class(Z)


# B.Matrix Properties: 
# -------------------

# a.Indices:
# ---------
B
B[1,2]
B[2,]
B[,2]
B[,c(3,5)]
B[,-c(1,2,4)] # ALTERNATIVE way
B[-1,-2]
diag(B)  # Extracts "diagonal of a matrix

B
# b.Dimensions of the matrix:
# --------------------------
dim(B)
nrow(B)
ncol(B)
dim(B)[2]

# c.cfr. names(vector):
# ---------------------
rownames(B) <- c("r1","r2")
colnames(B) <- c("c1","c2","c3","c4","c5")
B
B["r2",c("c3","c4")]

# d. Convert vector to matrix:
# ---------------------------
M <- matrix(1:15,nrow=5,byrow=TRUE)
M
class(M)
attributes(M)

N <- 1:3
N
class(N)
attributes(N)
class(as.matrix(N))
attributes(as.matrix(N))
# Vector multiplication
M
M %*% as.matrix(N)

# d.Special matrices:
# ------------------
B <- matrix(1:25,nrow=5)
B
diag(B) <- rep(0,5)
B

# e.Unit matrix (5x5):
# -------------------
C <- diag(5)
C


# C.Linear Algebra:
# ----------------
M
mean(M)
colMeans(M)
rowMeans(M)
# Transpose
t(M) 

# Default El-WISE operation (cfr. numpy python)
A <- matrix(1:9,nrow=3)
B <- matrix(1:9,nrow=3)
A
B
B <- B + 10
B
A*B

# Inversion
A    <- matrix(data=c(3,4,1,2),nrow=2,ncol=2)
A
Ainv <- solve(A)
Ainv
A%*%Ainv

# Eigenvalue
r <- eigen(A)
r
# Eigenvalues
r$values
# Matrix with eigenvectors
r$vectors
# Diagonal Matrix (Similarity Transformation)
solve(r$vectors) %*% A %*% r$vectors

# D.ARRAYS: Generalisation of vectors & matrices
# --------
# 1D: Vector
# 2D: Matrix
# Higher-Dimensional Form: Array

Arr <- array(1:24,dim=c(2,3,4))
Arr
dim(Arr)
Arr[2,,2]
