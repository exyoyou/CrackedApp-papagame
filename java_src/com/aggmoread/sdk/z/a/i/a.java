package com.aggmoread.sdk.z.a.i;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f3488a;

    static {
        new ArrayList(Arrays.asList("arrow_up_1.gif", "arrow_up_2.gif", "arrow_up_3.gif", "arrow_up_4.gif", "arrow_up_5.gif", "arrow_up_6.gif", "arrow_up_7.gif", "circle.gif", "compound.gif", "hand.gif", "hand_up.gif", "hand_mup.gif", "hb_rain.gif"));
    }

    private a() {
    }

    public static a a() {
        if (f3488a == null) {
            synchronized (a.class) {
                if (f3488a == null) {
                    f3488a = new a();
                }
            }
        }
        return f3488a;
    }

    public File b(Context context, String str) {
        try {
            return a(context, str);
        } catch (Exception unused) {
            return null;
        }
    }

    private File a(Context context, String str) {
        try {
            File file = new File(context.getExternalFilesDir(null), "rs_1_material");
            if (!file.exists()) {
                file.mkdirs();
            }
            return new File(file, str);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
