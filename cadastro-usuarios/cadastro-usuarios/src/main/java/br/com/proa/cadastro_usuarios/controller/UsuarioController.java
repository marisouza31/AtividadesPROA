package br.com.proa.cadastro_usuarios.controller;

import br.com.proa.cadastro_usuarios.model.Usuario;
import br.com.proa.cadastro_usuarios.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioRepository repository;


    @GetMapping
    private List<Usuario> pegaUsuarios(){
        return repository.findAll();
    }

    @PostMapping
    public void salvaUsuario(@RequestBody Usuario usuario){
        repository.save(usuario);

    }

    @DeleteMapping(value = "/{idUsuario}")
    public void deleteUsuarioPeloId(@PathVariable Integer idUsuario){
        repository.deleteById(idUsuario);
    }
    @GetMapping(value = "/{idUsuario}")
    public Usuario pegaUsuario(@PathVariable Integer idUsuario){
        return repository.findById(idUsuario).orElseThrow();
    }
}
