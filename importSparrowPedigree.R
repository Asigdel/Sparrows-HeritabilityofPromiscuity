##############################################################################
# loading the pedigree
##############################################################################

# Isabel Winney
# 20160115
# This is the file to import the Lundy house sparrow pedigree to a 
# project. The pedigree is updated every one to two years and the
# pedigree import procedure changes accordingly:


##############################################################################
# Manual changes to pedigree file
##############################################################################

# some individuals have been removed from the pedigree
# file for being their own mothers or being duplicated:
# 6250 is duplicated, and is its own mother
# 6385 is its own mother
# 6451 is its own mother
# 6526 is its own mother
# 6565 is its own mother

# These are observations 5073, 5205, 5256, 5326, 5361.
# I have manually removed these records from the
# original file.

# 4378, 5048, 6238, 6245
# These individuals were missing cohorts and were needed for 
# exploration and age analysis. Aded 2005 for 4378 (but this is
# unsure because capture date is a Shinichi 1st Jan date), 2009
# for 5048, and 2011 for 6238 and 6245


# One bird (bird ID 6833, asrid 5626) had a cohort of "xxx".
# this bird was tracked since it was a nestling, so the cohort
# was manually changed to 2013.


##############################################################################
# Loading the pedigree
##############################################################################

# read in the pedigree file:
sparrowpedigree <- read.table("C:/Users/Issie/SkyDrive/PhD/masterdatasheets/DraftPedjuly2015-1995-2013.txt",
                   header=T, na.strings="NA")


# add birds 5644, 7641 and 7649:
sparrowpedigree[length(sparrowpedigree[,1])+1,] <- c(5644, NA, NA, 2010, 6070, NA, NA)
sparrowpedigree[length(sparrowpedigree[,1])+1,] <- c(7641, NA, NA, 2013, 6071, NA, NA)
sparrowpedigree[length(sparrowpedigree[,1])+1,] <- c(7649, NA, NA, 2013, 6072, NA, NA)

head(sparrowpedigree)
tail(sparrowpedigree)
