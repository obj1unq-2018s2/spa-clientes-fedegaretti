import personas.*
/*## El Spa

Agregar al modelo un objeto que represente al Spa. Lo único que esperamos del spa es que entienda el mensaje `atender(persona)`,
donde la persona puede ser, p.ej., cualquiera de las tres definidas más arriba.

Cuando el spa atiende una persona pasan dos cosas: la persona recibe masajes, y se da un baño de vapor.

Probar haciendo que el spa atienda a Ramiro, y verificando que después de la visita, Ramiro baja su nivel de contractura y 
no tiene la piel grasosa.


## Atender a todo el mundo

Probar haciendo que el spa atienda a Olivia y a Bruno. 
*Hay uno con el que no va a andar ¿por qué?
Agregar lo que haga falta para que el spa pueda atender a las tres personas definidas. 
Las acciones que no están definidas, y que tengan que definirse, no tienen ningún efecto sobre la persona. 



## Premio al que vuelve enseguida

Agregar a lo anterior la capacidad de que el spa recuerde cuál fue la última persona que se atendió.
Al atender a una persona, si coincide con la última que atendió (o sea que la persona estaría yendo dos veces seguidas sin nadie en el medio),
entonces recibe doble ración de masajes.  

 */
object spa {
	var mejorCliente = null
	method atender(persona) {
		// hay que hacer que la persona reciba masajes y se dé un baño de vapor
		// despues, agregar el premio para el que vuelve enseguida
		if(mejorCliente==persona){
			persona.recibirMasajes()
			persona.recibirMasajes()
			persona.darseUnBanioDeVapor()
		}
		else{
			persona.recibirMasajes()
			persona.darseUnBanioDeVapor()
			mejorCliente = persona	
		}
	}
	method premio(persona){
		if(mejorCliente == persona){
			persona.recibirMasajes()
			persona.recibirMasajes()	
		}
	}
}