package com.joseajcabul.RepuestosAutomotriz.repository;

import com.joseajcabul.RepuestosAutomotriz.model.Pedido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Integer> {
    boolean existsByClienteIdCliente(Integer idCliente);
    boolean existsByRepuestoIdRepuesto(Integer idRepuesto);
}
