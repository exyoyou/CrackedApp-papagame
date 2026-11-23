package r;

import android.content.Context;
import android.content.SharedPreferences;
import com.alipay.security.mobile.module.commonutils.crypto.d;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f96740a = "";

    public static synchronized String a(Context context) {
        SharedPreferences.Editor editorEdit;
        if (c0.a.b(f96740a)) {
            String strA = g0.c.a(context, "alipay_vkey_random", "random", "");
            f96740a = strA;
            if (c0.a.b(strA)) {
                String strA2 = d.a(UUID.randomUUID().toString());
                f96740a = strA2;
                if (strA2 != null && (editorEdit = context.getSharedPreferences("alipay_vkey_random", 0).edit()) != null) {
                    editorEdit.clear();
                    editorEdit.putString("random", strA2);
                    editorEdit.commit();
                }
            }
        }
        return f96740a;
    }
}
