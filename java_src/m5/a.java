package m5;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94164a = "ChannelReaderUtil";

    public static Map<Integer, ByteBuffer> a(File file) {
        return n5.b.a(file);
    }

    private static String b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] c(File file, int i10) {
        return n5.b.c(file, i10);
    }

    public static l5.a d(File file) {
        Map<String, String> mapG = g(file);
        if (mapG == null) {
            return null;
        }
        String str = mapG.get(n5.a.f94477a);
        mapG.remove(n5.a.f94477a);
        return new l5.a(str, mapG);
    }

    public static String e(File file) {
        String strD = n5.a.d(file);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getChannelByV1 , channel = ");
        sb2.append(strD);
        return strD;
    }

    public static String f(File file) {
        String strE = n5.a.e(file);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getChannelByV2 , channel = ");
        sb2.append(strE);
        return strE;
    }

    public static Map<String, String> g(File file) {
        try {
            String strH = h(file);
            if (TextUtils.isEmpty(strH)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strH);
            Iterator<String> itKeys = jSONObject.keys();
            HashMap map = new HashMap();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                map.put(string, jSONObject.getString(string));
            }
            return map;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String h(File file) {
        String strF = f(file);
        return TextUtils.isEmpty(strF) ? e(file) : strF;
    }

    public static String i(File file, int i10) {
        String strD = n5.b.d(file, i10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("id = ");
        sb2.append(i10);
        sb2.append(" , value = ");
        sb2.append(strD);
        return strD;
    }
}
