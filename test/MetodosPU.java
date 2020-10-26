/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Esteban
 */
public class MetodosPU {

    public static int answer(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j) {
        int puntaje;
        puntaje = (a + b + c + d + e + f + g + h + i + j);
        return puntaje;
    }

    public static int clasificacion(int puntaje) {
        int clasificacion;
        clasificacion = 0;

        if (puntaje > 266) {
            clasificacion = 1;
            
        } else if (puntaje > 133 && puntaje < 266) {
            clasificacion = 2;
        } else {
            clasificacion = 3;
        }

        return clasificacion;

    }
}
