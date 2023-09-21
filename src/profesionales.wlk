// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	method trabajaEnALoSumo3Provincias() = true
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora
	var property provinciasDondePuedeTrabajar
	
	method trabajaEnALoSumo3Provincias()= provinciasDondePuedeTrabajar.size() >= 3
}
class Universidad{
	var cobroRecomendado =5000
	const provinciaDondeEstas
	
	method cuantoRecomendasCobrarPorHora()= cobroRecomendado
	method inflacion(porcentaje)= cobroRecomendado*(1+ porcentaje)
	method provinciaDondeEstas()= provinciaDondeEstas
}

class Empresa{
	const profesionales=[]
	var honorarioReferencia
	method contratarProfesional(p){
		profesionales.add(p)
	}
	method cuantosEstudiaronEn(univ){
		profesionales.count({p=> p.estudioEn(univ)})
	}
	method profesionalesCaros(){
		profesionales.filter({p=>p.honorarioPorHora()>honorarioReferencia})
	}
	method universidadesFormadoras(){
		profesionales.map{p=> p.universidad()}.asSet()
	}
	//- el profesional _más barato_ (o sea, que sus honorarios son los más bajos).
	method profesionalMasBarato(){
		profesionales.min{p=>p.honorariosPorHora()}
	}
	method esDeGenteAcotada(){
		profesionales.all{p=> p.trabajaEnALoSumo3Provincias()}
	}
	method trabajaEnALoSumo3Provincias(){
		
	}
}