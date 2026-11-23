package com.facebook.drawee.drawable;

import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class f {
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static Drawable a(Drawable drawable) {
        if (drawable instanceof c) {
            return ((c) drawable).n();
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            return constantState.newDrawable();
        }
        return null;
    }

    public static void b(@Nullable Drawable to, @Nullable Drawable from) {
        if (from == null || to == null || to == from) {
            return;
        }
        to.setBounds(from.getBounds());
        to.setChangingConfigurations(from.getChangingConfigurations());
        to.setLevel(from.getLevel());
        to.setVisible(from.isVisible(), false);
        to.setState(from.getState());
    }

    public static int c(int color) {
        int i10 = color >>> 24;
        if (i10 == 255) {
            return -1;
        }
        return i10 == 0 ? -2 : -3;
    }

    public static int d(int color, int alpha) {
        if (alpha == 255) {
            return color;
        }
        if (alpha == 0) {
            return color & 16777215;
        }
        return (color & 16777215) | ((((color >>> 24) * (alpha + (alpha >> 7))) >> 8) << 24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(@Nullable Drawable drawable, @Nullable Drawable.Callback callback, @Nullable u transformCallback) {
        if (drawable != 0) {
            drawable.setCallback(callback);
            if (drawable instanceof t) {
                ((t) drawable).e(transformCallback);
            }
        }
    }

    public static void f(@Nullable Drawable drawable, @Nullable e properties) {
        if (drawable == null || properties == null) {
            return;
        }
        properties.a(drawable);
    }
}
