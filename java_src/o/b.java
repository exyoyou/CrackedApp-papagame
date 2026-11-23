package o;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static synchronized Map<String, String> a(Context context, Map<String, String> map) {
        HashMap map2;
        map2 = new HashMap();
        String strA = c0.a.a(map, u.b.f97417c, "");
        String strA2 = c0.a.a(map, u.b.f97421g, "");
        String strA3 = r.b.a(context);
        String strA4 = c0.a.a(map, "userId", "");
        map2.put("AC1", strA);
        map2.put("AC2", strA2);
        map2.put("AC3", "");
        map2.put("AC4", strA3);
        map2.put("AC5", strA4);
        return map2;
    }
}
