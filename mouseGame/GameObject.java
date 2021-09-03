package com.mycompany.javafx;

import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;

public abstract class GameObject {
    private double x;
    private double y;
    private Node art;
    public GameObject(double x, double y){
        this.x = x;
        this.y = y;
        art = makeNode();
    }
    
    public Node makeNode(){
        Rectangle r = new Rectangle();
        r.setWidth(10);
        r.setHeight(10);
        r.setX(x);
        r.setY(y);
        r.setFill(Color.RED);
        r.setStroke(Color.BLACK);
        return r;
    }
    
    
    
    public Node getArt(){
        return art;
    }
}

class Untouchable extends GameObject{

    public Untouchable(double x, double y) {
        super(x, y);
        getArt().setOnMouseEntered(e->App.game.lost());
    }

}

class Goal extends GameObject{
    public Goal(double x, double y){
        super(x,y);
        getArt().setOnMouseEntered(e->App.game.win());
    }
}

class Start extends GameObject{
    public Start(double x, double y){
        super(x,y);
       getArt().setOnMouseExited(e->App.game.started());
    }
}

