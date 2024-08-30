//: [Previous](@previous)
/*:
 # Tratamento de Erros
 */
import Foundation
/*:
Tipos de Erros personalizados.
O swift nos permite mapear todos os tipos de erro que desejamos
*/
enum RandomError: Error {
    case geracaoFalhou
}


func retornaArrayOuErro() throws -> [String] {
    let chanceDeErro = Bool.random()
    
    if chanceDeErro {
        throw RandomError.geracaoFalhou
    } else {
        return ["Swift", "Playgrounds", "Função", "Erro"]
    }
}


/*:
 A função retornaArrayOuErro e a estrutura RandomError não são importantes para a gente agora, só precisamos entender que é uma função que pode retornar um array de string ou um erro.
 */

do {
    let resultado = try retornaArrayOuErro()
    print("Array retornado: \(resultado)")
} catch {
    print("Ocorreu um erro: \(error)")
}

/*:
 Podemos ler esse código como "Faça o que está dentro do bloco de código, na constante *resultado* tente *retornarArrayOuErro*, se não conseguir, execute o bloco de código com o erro capturado"
 */
