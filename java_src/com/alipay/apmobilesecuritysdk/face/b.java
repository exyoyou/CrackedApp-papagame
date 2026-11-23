package com.alipay.apmobilesecuritysdk.face;

import com.alipay.apmobilesecuritysdk.face.a.c;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f7014b;

    b(a aVar) {
        this.f7014b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (!this.f7014b.f7002d.isEmpty()) {
            try {
                a.b bVar = (a.b) this.f7014b.f7002d.pollFirst();
                if (bVar != null && !a.this.f7000b) {
                    a.this.f7000b = true;
                    try {
                        p.a.b(a.this.f6999a);
                        p.a.c();
                        HashMap map = new HashMap();
                        map.put(u.b.f97417c, bVar.f7005c);
                        map.put(u.b.f97421g, bVar.f7004b);
                        p.a.b(a.this.f6999a);
                        map.put(bm.f84404g, p.a.a());
                        map.put("userId", bVar.f7006d);
                        e.a(a.this.f6999a, map);
                        if (bVar.f7007e != null) {
                            a.c cVar = a.this.new c();
                            cVar.f7011c = com.alipay.apmobilesecuritysdk.a.a.g(a.this.f6999a);
                            cVar.f7010b = com.alipay.apmobilesecuritysdk.a.a.a(a.this.f6999a);
                            p.a.b(a.this.f6999a);
                            cVar.f7009a = p.a.a();
                            cVar.f7012d = r.b.a(a.this.f6999a);
                        }
                    } catch (Throwable unused) {
                    }
                    a.this.f7000b = false;
                }
            } catch (Throwable unused2) {
            }
        }
        a.g(this.f7014b);
    }
}
