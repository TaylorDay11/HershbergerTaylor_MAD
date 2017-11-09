package com.example.taylorhershberger.lab5;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }


    public void sayHi(View view) {
        CheckBox makeItAwesome=(CheckBox)findViewById(R.id.checkBox);
        boolean awesome=makeItAwesome.isChecked();
        ImageView makeItAwesomeImage=(ImageView)findViewById(R.id.imageView2);

        if(awesome){
            makeItAwesomeImage.setImageResource(R.drawable.explosion);
        }
        else{
            makeItAwesomeImage.setVisibility(View.INVISIBLE);
        }

        TextView hiText=(TextView)findViewById(R.id.message);
        RadioGroup textColor=(RadioGroup)findViewById(R.id.radioGroup);
        int textColor_id=textColor.getCheckedRadioButtonId();
        if(textColor_id==-1){
            hiText.setTextColor(Color.BLACK);
        }
        else{
            if(textColor_id==R.id.radioButton1){
                hiText.setTextColor(Color.GREEN);
            }
            else if(textColor_id==R.id.radioButton2){
                hiText.setTextColor(Color.BLUE);
            }
            else{
                hiText.setTextColor(Color.RED);
            }
        }

        EditText name=(EditText)findViewById(R.id.editText);
        String nameValue=name.getText().toString();
        hiText.setText("Hi " + nameValue + "!");
        ImageView characterImage=(ImageView)findViewById(R.id.imageView);
        characterImage.setImageResource(R.drawable.fry);

        Switch simpleSwitch = (Switch) findViewById(R.id.switch1);
        if(simpleSwitch.isChecked()){
            hiText.setTypeface(null, Typeface.BOLD);
        }
        else{
            hiText.setTypeface(null, Typeface.NORMAL);
        }

        Spinner character=(Spinner)findViewById(R.id.spinner);
        String characterSelection=String.valueOf(character.getSelectedItem());
        if (characterSelection.equals("Fry")){
            characterImage.setImageResource(R.drawable.fry);
        }
        else if (characterSelection.equals("Leela")){
            characterImage.setImageResource(R.drawable.leela);
        }
        else if (characterSelection.equals("Professor")){
            characterImage.setImageResource(R.drawable.prof);
        }
        else if (characterSelection.equals("Bender")){
            characterImage.setImageResource(R.drawable.bender);
        }
        else if (characterSelection.equals("Zoidberg")){
            characterImage.setImageResource(R.drawable.zoidberg);
        }
    }
}
