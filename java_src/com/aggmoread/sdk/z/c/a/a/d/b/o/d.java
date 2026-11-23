package com.aggmoread.sdk.z.c.a.a.d.b.o;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.t;

/* JADX INFO: loaded from: classes7.dex */
public class d extends FrameLayout {
    public d(@NonNull Context context) {
        super(context);
    }

    public void a(View view) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = t.a(k.f5147q, 48.0d);
        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = t.a(k.f5147q, 11.0d);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        layoutParams2.gravity = 5;
        addView(view, layoutParams2);
    }
}
