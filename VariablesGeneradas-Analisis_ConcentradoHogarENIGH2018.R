library(readxl)

data <- read_excel("C:/Users/Alejandro Zavala/Zavala_Programas/Bases/ConcentradoHogarENIGH2018.xlsx")

data$negocio_noagro <- data$industria + data$comercio + data$servicios
data$negocio_agro <- data$agricolas + data$pecuarios +  data$reproducc + data$pesca
data$negocio <- data$negocio_agro + data$negocio_noagro
data$rentas <- data$utilidad + data$arrenda
data$transf <- data$jubilacion + data$becas + data$donativos + data$remesas + data$bene_gob + data$transf_hog + data$trans_inst
data$ing_trab <- data$trabajo + data$sueldos + data$horas_extr + data$comisiones + data$aguinaldo + data$indemtrab + data$otra_rem + data$remu_espec
data$ing_mom <- data$ing_trab + data$negocio + data$otros_trab + data$rentas + data$otros_ing
data$ali_dentro <- data$cereales + data$carnes + data$pescado + data$leche + data$huevo + data$aceites + data$tuberculo + data$frutas + data$azucar + data$cafe + data$especias + data$otros_alim + data$tabaco + data$bebidas
data$alimentos <- data$ali_dentro + data$ali_fuera
data$vest_calz <- data$vestido + data$calzado
data$vivienda <- data$alquiler + data$pred_cons + data$agua + data$energia
data$limpieza <- data$cuidados + data$utensilios + data$enseres
data$salud <- data$atenc_ambu + data$hospital + data$medicinas
data$mantenimiento <- data$refaccion + data$combus
data$transporte <- data$publico + data$foraneo + data$adqui_vehi + data$mantenimiento + data$comunica
data$educ_espar <- data$educacion + data$esparci + data$paq_turist
data$personales <- data$cuida_pers + data$acces_pers + data$otros_gas
data$gasto_mon <- data$alimentos + data$vest_calz + data$vivienda + data$limpieza + data$salud + data$transporte + data$educ_espar + data$personales + data$transf_gas

write.csv(data,
          file = "C:/Users/Alejandro Zavala/Zavala_Programas/Bases/VariablesExtra.csv",
          row.names = F)