import Tiros.*
import Monstruos.*
import Config.*

class Torres{
	
	var property position
	method image()
	method disparo(){
		const tiro = new tiro(position = self.position())
		tiro.disparada(direccion,self) // para mostrar el tiro con la posicion correcta
	}
	method subirDeNivel(){
		tiro.danio() = tiro.danio() + 2 * tiro.danio() // no se si esto funciona
	}
}

object torre inherits Torres{

	//var property puntos = 0
	
	override method image() = direccion.imagentorre()
	
	override method disparo(){
		super()
		sonidos.disparo()
	}	
}

object portal{
	var property vidas = 3
}

object arriba {
	
	method imagenTorre(){ return "torreArriba.png" }
	method imagentiro(){ return "tiroArriba.png" }
	method imagenTorreE(){ return "enemigoArriba.png" }
}

object derecha {
	
	method imagenTorre(){ return "torreDer.png" }
	method imagentiro(){ return "tiroDer.png" }
	method imagenTorreE(){ return "enemigoDer.png" }
}

object izquierda {
	
	method imagenTorre(){ return "torreIzq.png" }
	method imagentiro(){ return "tiroIzq.png" }
	method imagenTorreE(){ return "enemigoIzq.png" }
}

object abajo {
	
	method imagenTorre(){ return "torreAbajo.png" }
	method imagentiro(){ return "tiroAbajo.png" }
	method imagenTorreE(){ return "enemigoAbajo.png" }
}