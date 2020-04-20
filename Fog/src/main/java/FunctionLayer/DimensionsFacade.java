package FunctionLayer;

import DBAccess.Datamapper;

import java.util.ArrayList;
import java.util.List;

public class DimensionsFacade {

    public static ArrayList<Integer> getHeight(){
        System.out.println(Datamapper.GetHeight());
        return Datamapper.GetHeight();
    }

    public static ArrayList<Integer> getWidth(){
        ArrayList<Integer> list = new ArrayList<>();

        return Datamapper.GetWidth();
    }

    public static ArrayList<Integer> getLength(){
        ArrayList<Integer> list = new ArrayList<>();

        return Datamapper.GetLength();
    }

    public static ArrayList<Integer> getSlope() {
        ArrayList<Integer> list = new ArrayList<>();

        return Datamapper.GetSlope();
    }
    public static  ArrayList<String> getAllRoofs(){
        ArrayList<String> list = new ArrayList<>();

        return Datamapper.GetAllRoof();
    }
}
