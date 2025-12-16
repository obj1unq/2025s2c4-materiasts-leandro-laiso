class Materia {
    const property carrera
}

class Estudiante {
    /*coleccion de materias aprobadas. Elementos son instancias de HistorialMateria*/
    const materiasAprobadas = #{}
    const carreras = #{}

    method cantMateriasAprobadas() = materiasAprobadas.size()

    method promedio() = materiasAprobadas.average({m => m.nota()})

    method aproboMateria(materia) = materiasAprobadas.any({m => m.materia() == materia})

    method validarAprobarMateria(materia) {
        if (self.aproboMateria(materia)) {
            self.error("La materia ya está registrada")
        } 
    }

    method aprobarMateria(materiaR, notaR) {
        self.validarAprobarMateria(materiaR)
        self.registrarMateriaAprobada(materiaR, notaR)
    }

    method registrarMateriaAprobada(materiaR, notaR) {
        materiasAprobadas.add( new MateriaAprobada(materia = materiaR,  nota = notaR) ) 
    }

    

}

class MateriaAprobada {
    const property materia
    const property nota
}

class Carrera {
    const materias = #{}
}