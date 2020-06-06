#llenar por kilos cada producto
manzana <-2
pera<-2
garbanzo<-3
lentejas<-4
paltas<-5

#En caso de existir otro producto, poner T, sino F
otroproducto <- T

#elegir el metodo de pago: "Efectivo" "Credito" "Otro"
pago<- "Credito"

#precio total por producto
preciomanzana<- 0.35*manzana*400
preciopera <- 0.45*pera*450
preciogarbanzo <- 0.6*garbanzo*450
preciolentejas <- 0.6*lentejas*500
preciopaltas <- paltas*1500

if(otroproducto==TRUE){
  paste("No se permite realizar esa operación debido a que sobre ese producto no se tiene informacion")
}else {
  preciolista <-preciomanzana+preciopera+preciogarbanzo+preciolentejas+preciopaltas
  print(paste("El precio de sus productos son: ",preciolista))
}

#elegir el metodo de pago: "Efectivo" "Credito" "Otro"



if(pago=="Efectivo"){
  #accion cuando metodo de pago es efectivo
  descuentoEfectivo <- print(sample(10:40,1,replace = T))
  descuentoEfectivo2 <- print(descuentoEfectivo/100)
  descuentoTotal <- print(preciolista*descuentoEfectivo2)
  costoTotal <- preciolista-descuentoTotal
  print(paste("Su costo total de los productos permitidos en efectivo es:",costoTotal))
}else if(pago=="Credito"){
  #cuando el medio de pago es credito
  aumentoCredito <- print(sample(1:10,1,replace = T))
  aumentoCredito2 <- print(aumentoCredito/100)
  aumentoTotal <- print(preciolista*aumentoCredito2)
  costoTotal2 <- preciolista+aumentoTotal
  print(paste("Su costo total de los productos permitidos en credito es:",costoTotal2))
}else if(pago=="Otro"){
  #accion con otro medio de pago
  aumentoCosto <- 0.03
  aumentoCosto2 <- print(preciolista*aumentoCosto)
  costoTotal3 <- preciolista+aumentoCosto2
  print(paste("Su costo total de los productos permitidos en otro medio de pago es:",costoTotal3))
}
