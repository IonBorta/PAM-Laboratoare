package com.example.lab1

import androidx.appcompat.app.AppCompatActivity
//import androidx.
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import kotlinx.android.synthetic.main.activity_main.*
import java.util.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val submit_btn = findViewById<Button>(R.id.button)
        submit_btn.setOnClickListener{view->
            printAge(view)
        }
    }
    fun printAge(view:View){
        val days_in_month = arrayOf<Int>(31, 29, 31, 30, 31,30,31,31,30,31,30,31);
        val currentYear = Calendar.getInstance().get(Calendar.YEAR)
        var currentMonth = Calendar.getInstance().get(Calendar.MONTH)
        val currentDay = Calendar.getInstance().get(Calendar.DAY_OF_MONTH)
        val b_day = editTextNumber2.text.toString().toInt() //birthday
        val b_month = editTextNumber3.text.toString().toInt() //month of birth
        val b_year = editTextNumber4.text.toString().toInt() //year of birth
        var age = findViewById<TextView>(R.id.textView3)
        var bd_data = findViewById<TextView>(R.id.textView2)

        if(b_day == 0 || b_day > 31 || b_month == 0 || b_month > 12 || b_year > currentYear){
            age.text = "Incorrect Data !!!"
            bd_data.text = " "
        }
        else{
            age.text = "Your age: " + (currentYear - b_year) + " years"
            //textView3.text = "Your age: " + (currentYear - editTextNumber4.text.toString().toInt())
            //view.findViewById<TextView>(R.id.textView3).text = "Your age: " + (currentYear - editTextNumber4.text.toString().toInt())
            if(b_month < currentMonth+1){
                var passed_days: Int = 0;
                if(b_day < currentDay){
                    passed_days = currentDay - b_day;
                    //currentMonth--
                }
                else {
                    currentMonth--
                    passed_days = currentDay + (days_in_month[currentMonth] - b_day);
                };
                bd_data.text = "Your BDay was " + (currentMonth - b_month + 1) + " months ago and " + passed_days + " days"
            }
            else if(b_month > currentMonth+1){
                var left_days: Int = 0;
                if(b_day > currentDay){
                    left_days = b_day - currentDay;
                    currentMonth--
                }
                else {
                    left_days = b_day + (days_in_month[currentMonth] - currentDay);
                };
                bd_data.text = "Your BDay will be in " + (b_month - currentMonth - 2) + " months and " + left_days + " days"
            }
            else textView2.text = "Your BDay is this month"

        }
    }
}