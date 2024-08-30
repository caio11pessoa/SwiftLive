import UIKit
/*:
 
 # Swift
 
 O Swift permite que...
 Fácil de entender o que esse código faz...
 

 
 > Tente advinhar o que é esperado que essa função "metade" retorne
 
 */

func metade(de numero: Int, mais soma: Int = 0) -> Double{
    return Double(numero + soma)/2.0
}

print(metade(de: 5, mais: 10))


/*:
 
 # Objective-C
 
 Apenas em título de comparação, como seria esse mesmo código em objective-C
 
 */

/*
 #import <Foundation/Foundation.h>

 double metade(int numero, int soma) {
     return (double)(numero + soma) / 2.0;
 }

 int main(int argc, const char * argv[]) {
     @autoreleasepool {
         // Exemplo de uso
         int numero = 5;
         int soma = 10;
         
         double resultado = metade(numero, soma);
         NSLog(@"A metade de %d mais %d é %.2f", numero, soma, resultado);
     }
     return 0;
 }
 */

/*:
 > Conseguimos notar que é bem mais difícil de entender do que esse código se trata, mostrando uma evolução da Apple quando desenvolveram a Swift
 

 */


/*:
 # Explicação
 
 a função tentaSomar() usa a palavra reservada guard, que em português pode ser traduzido para guardar, proteger ou escoltar.
 
 No nosso contexto, o guard vai tentar guardar o valor recebido pelo parâmetro soma e caso ele consiga fazer isso ele "protege" esse valor, e caso ele não consiga, executára o bloco de código dentro de else.
 
 Percebemos uma facilidade de se ler esse código, podendo ser traduzida dessa maneira "guarda em uma constante somador do tipo inteiro o valor atribuído a soma, caso não consiga armazenar esse valor, execute as linhas 72 e 73".
 
 > Eu utilizei o termo "Protege", porém, futuramente vocês vão entender esse termo como "Unwrapping" Que nada mais é que verificar e acessar o valor de um opcional de forma segura, podendo ser traduzido como "Desempacotar".
 Na prática será tornar um valor optional em um não optional. Existem várias maneiras de se fazer isso, o *guard* é apenas uma delas.
 */
// Associar a ideia de guard como sendo um guarda que vai vistoriar 
func tentaSomar(_ numero: Int, com soma: Int? = nil) -> Int {
    guard let somador: Int = soma else {
        print("Não foi possível somar")
        return 5
    }
    return numero + somador
}

print(tentaSomar(5))
print(tentaSomar(5, com: 15))

//: [Next](@next)
