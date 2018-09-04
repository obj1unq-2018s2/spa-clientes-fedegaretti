object olivia {

	/*### Olivia
	 * Lo que nos interesa es conocer su grado de concentración, que es un número que arranca en 6, y varía de acuerdo a estos criterios:
	 * - cuando Olivia _recibe masajes_, su grado de concentración aumenta 3 puntos.
	 * - cuando _discute_, su grado de concentración baja un punto.

	 * Tenemos que poder consultar `olivia.gradoDeConcentracion()`.
	 */
	var property gradoDeConcentracion = 6

	method recibirMasajes() {
		gradoDeConcentracion += 3
	}

	method discute() {
		if (gradoDeConcentracion >= 1) {
			gradoDeConcentracion -= 1
		}
	}
	method darseUnBanioDeVapor(){}

}

object bruno {

	/*### Bruno
	 * De Bruno nos interesan tres cosas: si es feliz o no (digamos que "nace" feliz), si tiene sed (al principio no), y su peso (que arranca en 55 kilos, o sea 55000 gramos). Los eventos que nos interesan son estos:
	 * - _recibir masajes_ es suficiente para que Bruno sea feliz.
	 * - cuando _se da un baño de vapor_, baja de peso 500 gramos y le da sed.
	 * - cuando _toma agua_ se le va la sed.
	 * - cuando _come fideos_ aumenta de peso 250 gramos, y le da sed.
	 * - cuando _corre_ baja de peso 300 gramos.
	 * - cuando _ve el noticiero_, se le va la felicidad.

	 * De Bruno también nos interesa 
	 * - saber si `estaPerfecto()`. Esto se cumple cuando: es feliz, no tiene sed, y está pesando entre 50 y 70 kilos; y
	 * - poder simular un `mediodiaEnCasa()` que consiste en: comer fideos, tomar agua y ver el noticiero.
	 */
	var esFeliz = true
	var tieneSed = false
	var peso = 55000

	method esFeliz() {
		return esFeliz
	}

	method tieneSed() {
		return tieneSed
	}

	method peso() {
		return peso
	}

	method recibirMasajes() {
		esFeliz = true
	}

	method darseUnBanioDeVapor() {
		peso -= 500
		tieneSed = true
	}

	method tomarAgua() {
		tieneSed = false
	}

	method comerFideos() {
		peso += 250
		tieneSed = true
	}

	method correr() {
		peso -= 300
	}

	method verElNoticiero() {
		esFeliz = false
	}

	method estaPerfecto() {
		return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000)
	}

	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	// y que mas?
	}

}

object ramiro {

	/*### Ramiro
	 * Nos interesa: qué tan contracturado está (según un nivel que es un número, 0 es "nada contracturado", cuanto más alto el número más contracturado está), y si tiene la piel grasosa o no. Las acciones de Ramiro relevantes para este modelo son:
	 * - cuando recibe masajes, baja dos puntos su nivel de contractura. <br> OJO nunca puede ser negativo, o sea, si estaba en 1 pasa a 0, si estaba en 0 se queda en 0.
	 * - cuando se da un baño de vapor, se le va la grasa de la piel.
	 * - cuando come un big mac, la piel pasa a estar grasosa.
	 * - cuando baja a la fosa (Ramiro trabaja en un taller mecánico), la piel pasa a estar grasosa, y el nivel de contractura aumenta en un punto.
	 * - cuando juega al paddle, el nivel de contractura aumenta en tres puntos.

	 * Finalmente, un `diaDeTrabajo()` de Ramiro consiste en: bajar a la fosa, después comerse un Big Mac, y finalmente volver a bajar a la fosa.
	 */
	var property nivelDeContractura = 0
	var pielGrasosa = false

	method recibirMasajes() {
		if (nivelDeContractura >= 2) {
			nivelDeContractura -= 2
		} 
		else{
			nivelDeContractura = 0
		}
	}

	method darseUnBanioDeVapor() {
		pielGrasosa = false
	}

	method comerseUnBigMac() {
		pielGrasosa = true
	}

	method bajarALaFosa() {
		nivelDeContractura += 1
		pielGrasosa = true
	}

	method jugarAlPaddle() {
		nivelDeContractura += 3
	}

	method diaDeTrabajo() {
	 	self.bajarALaFosa()
	 	self.comerseUnBigMac()
	 	self.bajarALaFosa()
	}

}

