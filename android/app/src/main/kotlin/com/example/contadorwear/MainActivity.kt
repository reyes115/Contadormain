package com.example.contadorwear

import android.os.Bundle
import androidx.annotation.NonNull
import android.view.MotionEvent
import com.samsung.wearable_rotary.WearableRotaryPlugin

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?){
        intent.putExtra("background_mode", "transparent")
        super.onCreate(savedInstanceState)
    }

    override fun onGenericMotionEvent(event: MotionEvent?) : Boolean {
        return when {
            WearableRotaryPlugin.onGenericMotionEvent(event) -> true
            else -> super.onGenericMotionEvent(event)
        }

    }
}
