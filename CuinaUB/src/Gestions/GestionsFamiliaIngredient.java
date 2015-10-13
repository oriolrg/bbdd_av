/*
 Aqui es gestionen les diferents activitats sobre les FamiliaIngredients com borrar, actualitzar, donar d'altta i mostrar

 */
package Gestions;

import static com.ub.edu.bda.Controlador.Consola.escriu;
import static com.ub.edu.bda.Controlador.Consola.llegeixInt;
import static com.ub.edu.bda.Controlador.Consola.llegeixString;
import com.ub.edu.bda.Model.Familia_Ingredients;

import com.ub.edu.bda.Model.OperacionsFamIngredient;

import java.util.List;

/**
 *
 * @author Fernando
 * @author Oriol
 */
public class GestionsFamiliaIngredient {

    /**
     * Menu per interactuar sobre les Familia Ingredients
     *
     * @param inputFamIngredient Accio del menu que realitzem
     * @param operacionsFamIngredient instancia a operacions que es realitzen
     * sobre la taula de familia ingredients
     *
     */
    public void menuFamIngredient(int inputFamIngredient, OperacionsFamIngredient operacionsFamIngredient) {
        switch (inputFamIngredient) {
            case 1://add
                addFamIngredient(operacionsFamIngredient);
                break;
            case 2://delete

                deleteFamIngredient(operacionsFamIngredient);
                break;
            case 3://mostrar
                mostrarFamIngredient(operacionsFamIngredient);//show
                break;

            case 4://actualitzar
                actualitzarFamIngredient(operacionsFamIngredient);//show
                break;
        }
    }

    /**
     * Afegeix familia dun ingredient
     * @param operacionsFamIngredient
     */
    private static void addFamIngredient(OperacionsFamIngredient operacionsFamIngredient) {

        String nom, descripcio;

        escriu("A quina familia pertany l'ingredient:\n");
        nom = llegeixString();

        escriu("Descripcio del ingredient:\n");
        descripcio = llegeixString();
        Familia_Ingredients famIngredient = new Familia_Ingredients(descripcio, nom);
        int ident = operacionsFamIngredient.guardarFamIngredient(famIngredient);

        escriu("Familia: " + ident + ",Descripcio: " + famIngredient.getnom());
    }

    /**
     * Mostrar familiaingredients de la bbdd
     *
     * @param operacionsFamIngredient instancia a operacions que es realitzen
     * sobre la taula de Familia ingredients
     *
     */
    private static void mostrarFamIngredient(OperacionsFamIngredient operacionsFamIngredient) {

        // TODO FALTA DEMANAR SI MOSTREM UN O VARIS XEFS
        // Llistem tots els elements de Xef
        List<Familia_Ingredients> listaFamingredients = operacionsFamIngredient.getListFamIngredients();
        escriu("Tenim " + listaFamingredients.size() + " Xefs");
        escriu("_____________________________");
        for (Familia_Ingredients famingredient : listaFamingredients) {
            escriu(famingredient.toString());
        }
    }

    /**
     * Elimina una familia dingredients de la bbdd
     * @param operacionsFamIngredient
     */
    private void deleteFamIngredient(OperacionsFamIngredient operacionsFamIngredient) {
        mostrarFamIngredient(operacionsFamIngredient);
        escriu("Escull la familia dingredients");
        Familia_Ingredients fmIngredient = operacionsFamIngredient.getFamIngredient(llegeixInt());
        operacionsFamIngredient.borrarFamIngredient(fmIngredient);
    }

    /**
     * Actualitza una familia dingredients de la bbdd
     * @param operacionsFamIngredient
     */
    private void actualitzarFamIngredient(OperacionsFamIngredient operacionsFamIngredient) {
        mostrarFamIngredient(operacionsFamIngredient);
        Familia_Ingredients famIngredient = operacionsFamIngredient.getFamIngredient(llegeixInt());
        menuActualitzaIngredient(operacionsFamIngredient, famIngredient);
    }

    /**
     *  Menu principal de la familia dingredients
     * @param ope
     * @param famIng
     */
    private void menuActualitzaIngredient(OperacionsFamIngredient ope, Familia_Ingredients famIng) {
        escriu("Que desitja modificar?:");
        escriu("\n1-Familia\n2-Descripcio");
        int opcio = llegeixInt();

        switch (opcio) {

            case 1://Refrigeracio
                modificarFamilia(ope, famIng);
            case 2://Familia
                modificarDescripcio(ope, famIng);

        }
    }

    /**
     * Modificar la familia de la classe
     * @param ope
     * @param famIng
     */
    private void modificarFamilia(OperacionsFamIngredient ope, Familia_Ingredients famIng) {
        escriu("Familia:" + famIng.getDescripcio());
        escriu("Familia?");
        famIng.setDescripcio(llegeixString());
        ope.actualitzaFamIngredient(famIng);
    }

    /**
     * Modifica la descripcio de la familia dingredients
     * @param ope
     * @param famIng
     */
    private void modificarDescripcio(OperacionsFamIngredient ope, Familia_Ingredients famIng) {
        escriu("Descripcio:" + famIng.getDescripcio());
        escriu("Familia?");
        famIng.setDescripcio(llegeixString());
        ope.actualitzaFamIngredient(famIng);
    }

}
