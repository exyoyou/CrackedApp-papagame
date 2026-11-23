package com.byazt.bnf;

import android.text.TextUtils;
import com.byazt.iy.n;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 13})
public class tt {
    public static <T> void c(String str, T t10, n nVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("min_version", 7611);
            jSONObject.put("data", t10);
            nVar.put(c(str, true), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public static void tt(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            nVar.remove(c(str, true));
        } catch (Exception unused) {
        }
    }

    private static String ve(String str, n nVar) {
        if (!TextUtils.isEmpty(str) && nVar != null) {
            try {
                if (TextUtils.isEmpty(null)) {
                    return c(c(str, true), nVar);
                }
                return null;
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        return null;
    }

    public static int c(String str, n nVar, int i10) {
        String strVe = ve(str, nVar);
        if (TextUtils.isEmpty(strVe)) {
            return i10;
        }
        try {
            return Integer.parseInt(strVe);
        } catch (NumberFormatException e10) {
            m.c(e10);
            return i10;
        }
    }

    public static long c(String str, n nVar, long j10) {
        String strVe = ve(str, nVar);
        if (TextUtils.isEmpty(strVe)) {
            return j10;
        }
        try {
            return Long.parseLong(strVe);
        } catch (NumberFormatException e10) {
            m.c(e10);
            return j10;
        }
    }

    public static float c(String str, n nVar, float f10) {
        String strVe = ve(str, nVar);
        if (TextUtils.isEmpty(strVe)) {
            return f10;
        }
        try {
            return Float.parseFloat(strVe);
        } catch (NumberFormatException e10) {
            m.c(e10);
            return f10;
        }
    }

    public static Set<String> c(String str, n nVar, Set<String> set) {
        String strVe = ve(str, nVar);
        if (TextUtils.isEmpty(strVe)) {
            return set;
        }
        try {
            JSONArray jSONArray = new JSONArray(strVe);
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String strOptString = jSONArray.optString(i10);
                if (!TextUtils.isEmpty(strOptString)) {
                    hashSet.add(strOptString);
                }
            }
            return hashSet;
        } catch (JSONException e10) {
            m.c(e10);
            return set;
        }
    }

    public static boolean c(String str, n nVar, boolean z10) {
        String strVe = ve(str, nVar);
        if (TextUtils.isEmpty(strVe)) {
            return z10;
        }
        try {
            return Boolean.parseBoolean(strVe);
        } catch (NumberFormatException e10) {
            m.c(e10);
            return z10;
        }
    }

    public static String c(String str, n nVar, String str2) {
        String strVe = ve(str, nVar);
        return TextUtils.isEmpty(strVe) ? str2 : strVe;
    }

    public static String c(String str, n nVar) {
        return c(nVar.get(str, (String) null));
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (7611 < jSONObject.optInt("min_version")) {
                return null;
            }
            String strOptString = jSONObject.optString("data");
            if (TextUtils.isEmpty(strOptString)) {
                return null;
            }
            return strOptString;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String c(String str, boolean z10) {
        if (z10) {
            return str + "_bst";
        }
        return str + "_pl";
    }
}
