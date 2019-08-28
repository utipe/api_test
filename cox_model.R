#library(randomForestSRC)
# Need at least 2.9.0
#library(riskRegression)
library(cmprsk)
#library(pec)
#library(survcomp)
#library(survival)
library(jsonlite)
load("cox_api.RData")

#* @get /predict
predictcox <- function(pt_age=42, dx_to_sct=209, height_tx=158, weight_tx=50, bmi=20, cbt_tnc_kg_cryop=999, cbt_cfugm_kg=999, cbt_cd34_kg=999, 
                       cbt_tnc_kg_cryop_mis=1, source=1, donor_cd=4, sct_type=2, pt_sex=0, sex_mismatch1=1, ps24=0, abo_mismatch=0, 
                       diagnosis=1, stage5=0, stage_dri=2, tbi=1, cond=1, tcd_invivo=0, hctci_points_corr=0, seromis6abdr=0, 
                       genomis6abdr=0, rcmvab=0, dcmvab=1, cmvab_cat1=1) 
{
  data <- list(pt_age=pt_age, dx_to_sct=dx_to_sct, height_tx=height_tx, weight_tx=weight_tx, bmi=bmi, 
               cbt_tnc_kg_cryop=cbt_tnc_kg_cryop, cbt_cfugm_kg=cbt_cfugm_kg, cbt_cd34_kg=cbt_cd34_kg, 
               cbt_tnc_kg_cryop_mis=cbt_tnc_kg_cryop_mis, source=source, donor_cd=donor_cd, sct_type=sct_type, 
               pt_sex=pt_sex, sex_mismatch1=sex_mismatch1, ps24=ps24, abo_mismatch=abo_mismatch, diagnosis=diagnosis, 
               stage5=stage5, stage_dri=stage_dri, tbi=tbi, cond=cond, tcd_invivo=tcd_invivo, hctci_points_corr=hctci_points_corr, 
               seromis6abdr=seromis6abdr, genomis6abdr=genomis6abdr, rcmvab=rcmvab, dcmvab=dcmvab, cmvab_cat1=cmvab_cat1)
  prediction <- predict(cox1, data, "risk")
  return(prediction)
}
