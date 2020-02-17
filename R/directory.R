directory <- function(){
  if(!dir.exists("tables")) {dir.create("tables")}
  if(!dir.exists("tables/Rates")) {dir.create("tables/Rates")}
  if(!dir.exists("tables/RevRequirements")) {dir.create("tables/RevRequirements")}
  if(!dir.exists("tables/KeyAssumptions")) {dir.create("tables/KeyAssumptions")}
  if(!dir.exists("tables/CostOfService")) {dir.create("tables/CostOfService")}
}
