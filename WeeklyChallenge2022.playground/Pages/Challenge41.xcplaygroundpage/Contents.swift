import Foundation

/*
 * Reto #41
 * LA LEY DE OHM
 * Fecha publicación enunciado: 10/10/22
 * Fecha publicación resolución: 17/10/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que calcule el valor del parámetro perdido correspondiente a la ley de Ohm.
 * - Enviaremos a la función 2 de los 3 parámetros (V, R, I), y retornará el valor del tercero (redondeado a 2 decimales).
 * - Si los parámetros son incorrectos o insuficientes, la función retornará la cadena de texto "Invalid values".
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
 *   para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en
 *   https://retosdeprogramacion.com/semanales2022.
 *
 */
func ohm(V: Double? = nil, R: Double? = nil, I: Double? = nil) -> String {
    
    // Calculo Intensidad
    if let V, let R, I == nil {
        return "I = \(V * R)"

    // Calculo Resistencia
    } else  if let V, let I, R == nil {
        return "R = \(String(format: "%.2f", V / I))"

    // Calculo Voltaje
    } else if let I, let R, V == nil {
        return "V = \(R / I)"
    }

    return "Invalid values"

}

print(ohm())
print(ohm(v: 5.0))
print(ohm(v: 5.0, r: 4.0))
print(ohm(v: 5.0, i: 4.0))
print(ohm(r: 5.0, i: 4.0))
print(ohm(v: 5.125, r: 4.0))
print(ohm(v: 5.0, i: 4.125))
print(ohm(r: 5.0, i: 4.125))
print(ohm(v: 5.0, r: 0.0))
print(ohm(v: 5.0, i: 0.0))
print(ohm(r: 5.0, i: 0.0))
print(ohm(v: 5.0, r: 4.0, i: 3.0))