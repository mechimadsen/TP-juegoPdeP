import wollok.game.*
import Torres.*

class Tiro{
	var property direccion = arriba // TODO DEFINIR MAPA PARA SABER LA DIRECCION DEFAULT
	var property image = direccion.imagentiro()    TODO ACA HABRIA QUE VER COMO MIERCOLE LO AGREGAMOS AL MAPA
	var property position
	var property danio = 1 // DEBERIA PODER CAMBIAR SEGUN LA TORRE
	var removido = false
	// Se ejecuta cuando el tanque dispara la tiro
	method disparada(direccion_,disparador_){
		self.direccion(direccion_)
		self.image(direccion.imagentiro())
		
		game.addVisual(self)
		

		game.onTick(50, "tiroMoviendose"+self.identity().toString(), { => 
			self.move()
		})			
		self.colisiones(disparador_)
	
	}
	
	method colisiones(disparador_){
		game.whenCollideDo(self, {colisionado => 
			colisionado.golpeado(self)
		})
	}
	method remover(){
		if(not(removido)){
			removido = true
			game.removeTickEvent("tiroMoviendose"+self.identity().toString())
			game.removeVisual(self)
		}
		
	}

	method move() { direccion.move(self) }

	method golpeado(tiro){  }
	method golpeadoPorEnemigo(tiro,disparador_) {
		self.remover()
	
	method impideElPaso() = true
}