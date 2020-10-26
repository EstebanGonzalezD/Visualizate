/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Esteban
 */
public class PruebasUnitarias {
    
    
    public PruebasUnitarias() {
     
    }

    @BeforeAll
    public static void setUpClass() {
    }

    @AfterAll
    public static void tearDownClass() {
    }

    @BeforeEach
    public void setUp() {
    }

    @AfterEach
    public void tearDown() {
    }
    
    @Test
    public void REQ007() {
        int expected = 280;
        int actual = MetodosPU.answer(40, 30, 20, 10, 40, 40, 30, 20, 40, 10);
        assertEquals(expected, actual);
    }

    @Test
    public void REQ008() {
        int expected = 1;
        int puntaje = MetodosPU.answer(40, 30, 20, 10, 40, 40, 30, 20, 40, 10);
        int actual = MetodosPU.clasificacion(puntaje);
        assertEquals(expected, actual);

    }   
        
}
    
