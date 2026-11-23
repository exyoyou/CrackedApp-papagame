package cn.fly.commons.a;

import android.text.TextUtils;
import cn.fly.commons.ae;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.HashonHelper;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile long f936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile HashMap<Long, Long> f937c;

    public a() {
        super(cn.fly.commons.o.a("002di"), 0L, cn.fly.commons.o.a("005di>ejGdj"), 900L, 0L);
        if (f937c == null) {
            f936b = System.currentTimeMillis();
            f937c = o();
        }
    }

    private void n() {
        try {
            HashMap<String, Object> map = new HashMap<>();
            for (Map.Entry<Long, Long> entry : f937c.entrySet()) {
                if (entry != null) {
                    map.put(cn.fly.commons.o.a("008gd'dgKech[fdFi"), entry.getKey());
                    map.put(cn.fly.commons.o.a("008:dcdgdjLdiYdidkTe"), entry.getValue());
                }
            }
            a("ARSTAMT", map);
            ae.b().a(ae.f1066f, System.currentTimeMillis());
            if (f937c != null) {
                f937c.clear();
            }
            a((HashMap<Long, Long>) null);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static HashMap<Long, Long> o() {
        HashMap mapFromJson;
        HashMap<Long, Long> map = new HashMap<>();
        try {
            String strB = ae.b().b(ae.f1074n, (String) null);
            if (!TextUtils.isEmpty(strB) && (mapFromJson = HashonHelper.fromJson(strB)) != null && !mapFromJson.isEmpty()) {
                for (Map.Entry entry : mapFromJson.entrySet()) {
                    if (entry != null) {
                        map.put(Long.valueOf(Long.parseLong((String) entry.getKey())), entry.getValue());
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        if (f937c == null) {
            f937c = new HashMap<>();
        } else {
            for (Map.Entry<Long, Long> entry : f937c.entrySet()) {
                if (entry != null && entry.getKey().longValue() != f936b) {
                    n();
                }
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - f936b;
        f937c.put(Long.valueOf(f936b), Long.valueOf(jCurrentTimeMillis));
        a(f937c);
        long jB = ae.b().b(ae.f1066f, 0L);
        long jB2 = b() * 1000;
        if (jCurrentTimeMillis < jB2 || System.currentTimeMillis() - jB <= jB2) {
            return;
        }
        n();
    }

    @Override // cn.fly.commons.a.c
    protected long b() {
        long jLongValue = ((Long) a(e(), 0L)).longValue();
        if (jLongValue <= 0 || jLongValue >= 604800) {
            return 0L;
        }
        return jLongValue;
    }

    private static void a(HashMap<Long, Long> map) {
        if (map != null && !map.isEmpty()) {
            HashMap map2 = new HashMap();
            for (Map.Entry<Long, Long> entry : map.entrySet()) {
                if (entry != null) {
                    map2.put(entry.getKey() + "", entry.getValue());
                }
            }
            ae.b().a(ae.f1074n, HashonHelper.fromHashMap(map2));
            return;
        }
        ae.b().b(ae.f1074n);
    }
}
