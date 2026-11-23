package s;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import q.f;
import u.b;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static synchronized String a(Context context, Map<String, String> map) {
        HashMap map2 = new HashMap();
        map2.put(b.f97421g, c0.a.a(map, b.f97421g, ""));
        map2.put(b.f97417c, c0.a.a(map, b.f97417c, ""));
        map2.put("userId", c0.a.a(map, "userId", ""));
        com.alipay.apmobilesecuritysdk.face.a.a(context).d(map2);
        String strA = f.a();
        if (!c0.a.b(strA)) {
            return strA;
        }
        q.b bVarB = q.a.b(context);
        if (bVarB != null && !c0.a.b(bVarB.f96399a)) {
            return bVarB.f96399a;
        }
        String strB = n.a.b(context);
        if (!c0.a.b(strB)) {
            return strB;
        }
        return r.b.a(context);
    }
}
