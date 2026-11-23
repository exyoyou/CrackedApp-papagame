package g0;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static String a(Context context, String str, String str2, String str3) {
        return context.getSharedPreferences(str, 0).getString(str2, str3);
    }

    public static void b(Context context, String str, Map<String, String> map) {
        SharedPreferences.Editor editorEdit;
        if (map == null || (editorEdit = context.getSharedPreferences(str, 0).edit()) == null) {
            return;
        }
        editorEdit.clear();
        for (String str2 : map.keySet()) {
            editorEdit.putString(str2, map.get(str2));
        }
        editorEdit.commit();
    }

    private static void c(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor editorEdit;
        if (str3 == null || (editorEdit = context.getSharedPreferences(str, 0).edit()) == null) {
            return;
        }
        editorEdit.clear();
        editorEdit.putString(str2, str3);
        editorEdit.commit();
    }
}
