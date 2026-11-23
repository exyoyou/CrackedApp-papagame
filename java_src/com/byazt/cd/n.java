package com.byazt.cd;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import com.byazt.nr.m;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f12381c;
    public static boolean tt;

    public static Drawable c(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!tt) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f12381c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                m.c("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e10);
            }
            tt = true;
        }
        Field field = f12381c;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e11) {
                m.c("CompoundButtonCompat", "Failed to get button drawable via reflection", e11);
                f12381c = null;
            }
        }
        return null;
    }
}
