package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30143a = "p";

    private p() {
    }

    @RequiresApi(api = 30)
    private static void a(@NonNull Map<Integer, Integer> map, @NonNull TypedArray typedArray, @Nullable TypedArray typedArray2, @ColorInt int i10) {
        if (typedArray2 == null) {
            typedArray2 = typedArray;
        }
        for (int i11 = 0; i11 < typedArray.getIndexCount(); i11++) {
            int resourceId = typedArray2.getResourceId(i11, 0);
            if (resourceId != 0 && typedArray.hasValue(i11) && v.b(typedArray.getType(i11))) {
                map.put(Integer.valueOf(resourceId), Integer.valueOf(s.o(typedArray.getColor(i11, 0), i10)));
            }
        }
    }

    @NonNull
    public static void b(@NonNull Context context, @NonNull q qVar) {
        if (d()) {
            Map<Integer, Integer> mapC = c(context, qVar);
            int iE = qVar.e(0);
            if (!v.a(context, mapC) || iE == 0) {
                return;
            }
            w.a(context, iE);
        }
    }

    @RequiresApi(api = 30)
    private static Map<Integer, Integer> c(Context context, q qVar) {
        HashMap map = new HashMap();
        int iC = s.c(context, qVar.b(), f30143a);
        for (int i10 : qVar.d()) {
            map.put(Integer.valueOf(i10), Integer.valueOf(s.o(ContextCompat.getColor(context, i10), iC)));
        }
        o oVarC = qVar.c();
        if (oVarC != null) {
            int[] iArrD = oVarC.d();
            if (iArrD.length > 0) {
                int iE = oVarC.e();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArrD);
                TypedArray typedArrayObtainStyledAttributes2 = iE != 0 ? new ContextThemeWrapper(context, iE).obtainStyledAttributes(iArrD) : null;
                a(map, typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes2, iC);
                typedArrayObtainStyledAttributes.recycle();
                if (typedArrayObtainStyledAttributes2 != null) {
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
        }
        return map;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean d() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @NonNull
    public static Context e(@NonNull Context context, @NonNull q qVar) {
        if (!d()) {
            return context;
        }
        Map<Integer, Integer> mapC = c(context, qVar);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, qVar.e(R.style.ThemeOverlay_Material3_HarmonizedColors_Empty));
        contextThemeWrapper.applyOverrideConfiguration(new Configuration());
        return v.a(contextThemeWrapper, mapC) ? contextThemeWrapper : context;
    }
}
