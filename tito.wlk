object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}

object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}

object coctel {
    const bebidas = []

    method agregar(unaBebida) {
        bebidas.add(unaBebida)
    }

    method rendimiento(cantidad) {
        
    }
}

object aguaSaborizada {

    var saborizante = terere

    method saborizar(unaBebida) {
        saborizante = unaBebida
    }

    method rendimiento(cantidad) {
        return 1 + (saborizante.rendimiento(cantidad/4))
    }
}

object licuado {
    const nutrientes = []
    method agregar(unaFruta) {
        nutrientes.add(unaFruta.nutrientes()) 
    }

    method rendimiento(cantidad) {
        nutrientes.sum() * (cantidad / 1000)
    }
}

object manzana {
    method nutrientes() = 4
}

object naranja {
    method nutrientes() = 10
}

object mandarina {
    method nutrientes() = 5
}