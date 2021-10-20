import wollok.game.*

class Enemigo {
	var property vidaEnemigo = 1
	var property monedas = 1
	method image()
	method colisiones(disparador_){
		game.whenCollideDo(self, {colisionado => 
			colisionado.golpeado(self)})
	}
}

object monstruoFacil inherits Enemigo{
	var property vidasEnemigo = 500
	var property monedas = 10
	override method image() = "monstruoFacil.png"
}

object semiJefe inherits Enemigo{
	var property vidasEnemigo = 2000
	var property monedas = 20
	override method image() = "semiJefe.png"
}

object jefe inherits Enemigo{
	var property vidasEnemigo = 5000
	var property monedas = 100
	override method image() = "jefe.png"
}