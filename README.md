
# 🛠️ PasseiLogManager

[![CI Status](https://img.shields.io/travis/95707007/PasseiLogManager.svg?style=flat)](https://travis-ci.org/95707007/PasseiLogManager)
[![Version](https://img.shields.io/cocoapods/v/PasseiLogManager.svg?style=flat)](https://cocoapods.org/pods/PasseiLogManager)
[![License](https://img.shields.io/cocoapods/l/PasseiLogManager.svg?style=flat)](https://cocoapods.org/pods/PasseiLogManager)
[![Platform](https://img.shields.io/cocoapods/p/PasseiLogManager.svg?style=flat)](https://cocoapods.org/pods/PasseiLogManager)

O **PasseiLogManager** é uma biblioteca em Swift para gerenciamento de logs em diferentes ambientes, permitindo registrar, salvar e acessar logs de forma eficiente.

---

## **Descrição**

Esta biblioteca permite criar e gerenciar logs em aplicações Swift, incluindo a opção de salvar logs em arquivos no diretório `/tmp`. Ideal para depuração e monitoramento de aplicações em produção.

---

## **Exemplo de Uso**

Para rodar o projeto de exemplo, siga os passos abaixo:

1. Clone o repositório.
2. Navegue até o diretório `Example`.
3. Execute o comando `pod install`.
4. Abra o projeto no Xcode e rode o exemplo.

---

## **Requisitos**

- **Swift**: 5.0 ou superior
- **iOS/macOS**: Compatível com iOS 11.0+ ou macOS 10.13+
- **CocoaPods** instalado

---

## **Instalação**

### **Usando CocoaPods**

PasseiLogManager está disponível no [CocoaPods](https://cocoapods.org). Para instalar, adicione a seguinte linha ao seu `Podfile`:

```ruby
pod 'PasseiLogManager'
```

Depois, execute o comando:

```bash
pod install
```

### **Manual**

Você também pode importar o projeto diretamente ao clonar o repositório e adicionar os arquivos necessários ao seu projeto.

---

## **Como Usar**

### **Exemplo Básico em Swift:**

```swift
import PasseiLogManager

// Registrar um log
PLMLogger.logIt("Mensagem de log a ser registrada")
```

---

## **Contribuição**

Contribuições são bem-vindas! Siga os passos abaixo para colaborar:

1. Faça um fork do projeto.
2. Crie uma branch para suas alterações (`git checkout -b minha-feature`).
3. Faça commit das alterações (`git commit -m 'Minha nova feature'`).
4. Envie as alterações para o seu fork (`git push origin minha-feature`).
5. Abra um Pull Request para revisão.

---

## **Licença**

PasseiLogManager está disponível sob a licença **MIT**. Consulte o arquivo `LICENSE` para mais informações.

---

## **Autor**

Desenvolvido por **Vagner Oliveira**  
E-mail: ziminny@gmail.com

---

## **Recursos úteis**

- [Swift.org](https://swift.org)
- [Documentação CocoaPods](https://guides.cocoapods.org/)
