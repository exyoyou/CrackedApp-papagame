package p;

import android.content.Context;
import e8.c;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static String a(Context context) {
        try {
            return (String) c.class.getMethod("getUtdid", Context.class).invoke(null, context);
        } catch (Exception unused) {
            return "";
        }
    }
}
