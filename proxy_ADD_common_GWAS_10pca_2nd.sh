#!/bin/bash
for i in {1..22};do
plink2 \
--bfile /share/inspurStorage/home1/Vinceyang/yl_data/WES/unrelated_0_084/ukb_wes_chr${i}_sample_qc_final_unrelated \
--glm hide-covar cols=chrom,pos,ax,a1freq,nobs,beta,se,orbeta,ci,tz,p \
--1 \
--keep /share/inspurStorage/home1/Vinceyang/wbs_data/wbs_wes/common_tmp/british_id_sample_wes_common.txt \
--geno 0.05 \
--mind 0.05 \
--maf 0.01 \
--hwe 1e-6 \
--pheno /share/inspurStorage/home1/Vinceyang/wbs_data/wbs_wes/common_tmp/pheno_common.txt \
--covar /share/inspurStorage/home1/Vinceyang/wbs_data/wbs_wes/common_tmp/cov_common.txt \
--covar-variance-standardize \
--threads 40 \
--out /home1/Huashan1/wbs_data/wbs_wes/common/AD_wes/result/AD_chr${i}
done