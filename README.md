## Controle Estágio

O Controle de estágio é um sistema Web onde permite um cadastro de um aluno e seu curriculo em uma vaga de emprego, 
essa é administrada por um supervisor dentro de uma determinada empresa. O sistema permite tanto do aluno quando do supervisor além de geração de estágios.

## Tecnológias utilizadas

- [Java 8](https://www.java.com)
- [Spring Boot](https://spring.io)
- [Postgresql](https://www.postgresql.org/)
- JSP

## Install

### Linux
#### Java

```shell
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt install oracle-java8-installer
```
#### Maven
```shell
sudo apt-get install maven
```

## Exemplo de código

```Java
    @Transactional
    @RequestMapping("/cadastrar/{vagaEstagioId}/aluno/{alunoId}")
    public String cadastrar(HttpSession httpSession,
                            @PathVariable int vagaEstagioId, @PathVariable int alunoId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        VagaEstagio vagaEstagio = vagaEstagioRepository.get(vagaEstagioId);
        Aluno aluno = alunoRepository.get(alunoId);

        Estagio estagio = new Estagio();

        estagio.setDescricao( vagaEstagio.getDescricao() );
        estagio.setEstagiario( aluno );
        estagio.setEmpresa( vagaEstagio.getEmpresa() );
        estagio.setRequisitosDesejaveis( vagaEstagio.getRequisitosDesejaveis() );
        estagio.setRequisitosObrigatorios( vagaEstagio.getRequisitosObrigatorios() );

        estagioRepository.add(estagio);
        vagaEstagioRepository.remove(vagaEstagio);

        return "redirect:/administrador/iniciarPaginaAdmin";
    }
```

## Contribuidores
- [Letícia Cellurale](https://github.com/lzcee)
- [Gabriel Lorandi](https://www.linkedin.com/in/gabriel-lorandi/)
- [José Vitor Margoto de Rezende](https://github.com/Zerezende)



