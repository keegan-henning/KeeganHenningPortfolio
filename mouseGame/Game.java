/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.javafx;

import java.util.ArrayList;
import java.util.List;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class Game {
    Stage stage;
    List<GameObject> objects = new ArrayList<>();
    int width = 800;
    int height = 600;
    public Game(Stage stage){
        this.stage = stage;
        
        
        makeObjects();
        makeScene();
    }
    
    public void makeScene(){
        Pane pane = new Pane();
        for(GameObject o : objects){
            pane.getChildren().add(o.getArt());
        }
        Scene scene = new Scene(pane, width, height);
        stage.setScene(scene);
        stage.show();
    }
    
    public void makeObjects(){
        objects.add(new Start(10,10));
        objects.add(new Untouchable(200,200));
        objects.add(new Goal(400,400));
    }
    
    public void lost(){
        message("YOU LOSE!");
    }
    
    
    public void win(){
        message("YOU WIN!");
    }
    
    public void started(){
        message("You started");
    }
    
    public void message(String m){
        Stage s = new Stage();
        Pane pane = new Pane();
        Text t = new Text(m);
        t.setY(100);
        t.setFont(Font.font(100));
        pane.getChildren().add(t);
        Scene scene = new Scene(pane, 500,150);
        s.setScene(scene);
        s.show();
    }
}

