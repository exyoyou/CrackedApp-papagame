package o;

import android.content.Context;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, String> f94931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f94932b = {"AD1", "AD2", "AD3", "AD5", "AD6", "AD7", "AD8", "AD9", "AD10", "AD11", "AD12", "AD13", "AD14", "AD15", "AD16", "AD18", "AD19", "AD20", "AD21", "AL3", "AA1", "AA2", "AA3", "AA4", "AA5", "AC1", "AC2", "AC4", "AE1", "AE2", "AE3", "AE4", "AE5", "AE6", "AE7", "AE8", "AE9", "AE10", "AE11", "AE12", "AE13", "AE14", "AE15"};

    private static String a(Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        int i10 = 0;
        while (i10 < arrayList.size()) {
            String str = (String) arrayList.get(i10);
            String str2 = map.get(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10 == 0 ? "" : x.a.f97576d);
            sb2.append(str);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(str2);
            stringBuffer.append(sb2.toString());
            i10++;
        }
        return stringBuffer.toString();
    }

    public static synchronized Map<String, String> b(Context context, Map<String, String> map) {
        if (f94931a == null) {
            e(context, map);
        }
        return f94931a;
    }

    public static synchronized void c() {
        f94931a = null;
    }

    public static synchronized String d(Context context, Map<String, String> map) {
        TreeMap treeMap;
        b(context, map);
        treeMap = new TreeMap();
        for (String str : f94932b) {
            if (f94931a.containsKey(str)) {
                treeMap.put(str, f94931a.get(str));
            }
        }
        return com.alipay.security.mobile.module.commonutils.crypto.d.a(a(treeMap));
    }

    private static synchronized void e(Context context, Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        f94931a = treeMap;
        treeMap.putAll(b.a(context, map));
        f94931a.putAll(d.a(context));
        f94931a.putAll(c.a(context));
        f94931a.putAll(a.a(context));
    }
}
