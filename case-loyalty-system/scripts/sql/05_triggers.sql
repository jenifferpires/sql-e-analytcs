-- Gatilhos para novos clientes:

DELIMITER $$

CREATE TRIGGER tr_bi_segmentacao_cliente
BEFORE INSERT ON tb_clientes
FOR EACH ROW
BEGIN
    IF NEW.pontos > 5000 THEN
        SET NEW.categoria_fidelidade = 'VIP';
    ELSEIF NEW.pontos >= 1000 THEN
        SET NEW.categoria_fidelidade = 'Frequente';
    ELSE
        SET NEW.categoria_fidelidade = 'Iniciante';
    END IF;
END $$

DELIMITER ;

-- Gatilho para Mudança de Pontuação:

DELIMITER $$

CREATE TRIGGER tr_bu_segmentacao_cliente
BEFORE UPDATE ON tb_clientes
FOR EACH ROW
BEGIN
    IF NEW.pontos > 5000 THEN
        SET NEW.categoria_fidelidade = 'VIP';
    ELSEIF NEW.pontos >= 1000 THEN
        SET NEW.categoria_fidelidade = 'Frequente';
    ELSE
        SET NEW.categoria_fidelidade = 'Iniciante';
    END IF;
END $$

DELIMITER ;

