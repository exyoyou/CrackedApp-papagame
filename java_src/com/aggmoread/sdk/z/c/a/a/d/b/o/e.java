package com.aggmoread.sdk.z.c.a.a.d.b.o;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.aggmoread.sdk.z.c.a.a.e.t;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"AppCompatCustomView"})
public class e extends TextView {
    public e(Context context) {
        super(context);
        a();
    }

    protected void a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.argb(102, 1, 1, 1));
        gradientDrawable.setCornerRadius(t.a(10.0d) * 1.0f);
        setBackground(gradientDrawable);
        setTextColor(Color.parseColor("#CCFFFFFF"));
        setTextSize(2, 12.0f);
        setGravity(17);
        setLayoutParams(new FrameLayout.LayoutParams(t.a(55.0d), t.a(28.0d)));
    }
}
