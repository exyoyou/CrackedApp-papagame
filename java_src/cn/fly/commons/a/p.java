package cn.fly.commons.a;

import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.commons.ae;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.Data;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class p extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile long f1005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile AtomicInteger f1006c;

    public p() {
        super(x.b("002%ef5f"), 0L, x.b("004KefGfHehci"), 300L, c.a(x.b("002%ef5f"), (Long) 0L));
        this.f1005b = 0L;
        this.f1006c = new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f1005b = System.currentTimeMillis();
        C1293r.a(new cn.fly.tools.utils.d<ArrayList<HashMap<String, Object>>>() { // from class: cn.fly.commons.a.p.2
            @Override // cn.fly.tools.utils.d
            public void a(ArrayList<HashMap<String, Object>> arrayList) {
                if (arrayList != null) {
                    try {
                        if (arrayList.isEmpty()) {
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<HashMap<String, Object>> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object obj = it2.next().get(x.b("005Heidkdkddek"));
                            if (obj != null) {
                                arrayList2.add(String.valueOf(obj));
                            }
                        }
                        Collections.sort(arrayList2);
                        String strMD5 = Data.MD5(TextUtils.join("", arrayList2));
                        ae aeVarB = ae.b();
                        String str = ae.f1070j;
                        String strB = aeVarB.b(str, (String) null);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        ae aeVarB2 = ae.b();
                        String str2 = ae.f1071k;
                        long jB = aeVarB2.b(str2, 0L);
                        long jIntValue = ((Integer) p.this.a(x.b("005.efWf1di'ci"), 7200)).intValue() * 1000;
                        if (strB == null || !strB.equals(strMD5) || jCurrentTimeMillis - jIntValue >= jB) {
                            p.this.a(0L, "WLMT", (Object) arrayList, true);
                            ae.b().a(str, strMD5);
                            ae.b().a(str2, jCurrentTimeMillis);
                        }
                    } catch (Throwable th) {
                        FlyLog.getInstance().w(th);
                    }
                }
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void d() {
        cn.fly.tools.utils.k.a().a(getClass().getName(), new cn.fly.tools.utils.k.a() { // from class: cn.fly.commons.a.p.1
            @Override // cn.fly.tools.utils.k.a
            public void a() {
                if (p.this.g()) {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis() - p.this.f1005b;
                        long jIntValue = ((Integer) cn.fly.commons.c.a("wsct", 300)).intValue() * 1000;
                        if (jCurrentTimeMillis >= jIntValue) {
                            p.this.n();
                        } else if (p.this.f1006c.get() == 0) {
                            p.this.f1006c.getAndSet(1);
                            p.this.a(Boolean.TRUE);
                            d.a().a(p.this, (jIntValue - jCurrentTimeMillis) / 1000, 0);
                        }
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                }
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        Object obj = this.f941a;
        if (obj != null && (obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
            this.f1006c.set(0);
        }
        n();
    }
}
