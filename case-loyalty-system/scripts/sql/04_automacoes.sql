DELIMITER $$

CREATE PROCEDURE sp_atualiza_segmentacao_clientes()
BEGIN
    -- Desativando trava de segurança para atualização em massa
    SET SQL_SAFE_UPDATES = 0;

    -- Lógica de segmentação baseada nos pontos
    UPDATE tb_clientes
    SET categoria_fidelidade = CASE
        WHEN pontos > 5000 THEN 'VIP'
        WHEN pontos >= 1000 THEN 'Frequente'
        ELSE 'Iniciante'
    END;

    -- Reativando a segurança
    SET SQL_SAFE_UPDATES = 1;
    
    -- Mensagem de confirmação (opcional)
    SELECT 'Segmentação de clientes atualizada com sucesso!' AS Status;
END $$

DELIMITER ;

-- Atualiza segmentação de clientes com base na pontuação acumulada.
CALL sp_atualiza_segmentacao_clientes();
