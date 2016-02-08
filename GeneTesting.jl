using MLBase
using DataFrames
using LowRankApprox
using glmnet

# Plan:
# Step one: divide the tumors up into training and cross test (cross validation is already)
# Step two: Either get rid of tumors with NA, or use LRA to guess the NA value
# Step Three:Use glmnet to fit the model over theta and lambda. Pick a value with good cross validation

genes = readtable("/home/peter/Documents/CDA/Charleston-Data-Analytics-Cancer-Genomics-Data-Challenge-master/gene_expression.csv")
copies = readtable("/home/peter/Documents/CDA/Charleston-Data-Analytics-Cancer-Genomics-Data-Challenge-master/copy_number.csv")
mutations = readtable("/home/peter/Documents/CDA/Charleston-Data-Analytics-Cancer-Genomics-Data-Challenge-master/mutations.csv")
