package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.p0;

/* JADX INFO: loaded from: classes5.dex */
public class j {
    private j() {
    }

    @NonNull
    static e a(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? b() : new f();
        }
        return new m();
    }

    @NonNull
    static e b() {
        return new m();
    }

    @NonNull
    static g c() {
        return new g();
    }

    public static void d(@NonNull View view, float f10) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).o0(f10);
        }
    }

    public static void e(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            f(view, (MaterialShapeDrawable) background);
        }
    }

    public static void f(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.c0()) {
            materialShapeDrawable.t0(p0.p(view));
        }
    }
}
