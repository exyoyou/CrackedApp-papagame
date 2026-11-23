package cn.fly.tcp.d;

import cn.fly.tcp.a.c;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f1601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1602b;

    public interface a {
        String a(String str, String str2) throws Throwable;

        HashMap<String, Object> a(String str);
    }

    public b(c cVar, a aVar) {
        this.f1601a = cVar;
        this.f1602b = aVar;
    }

    public cn.fly.tcp.b.c<Void> a(cn.fly.tcp.b.a aVar, int i10) throws Throwable {
        return a(this.f1601a.a(aVar), i10);
    }

    public cn.fly.tcp.b.c<Void> a(cn.fly.tcp.d.a aVar, int i10) throws Throwable {
        cn.fly.tcp.b.a aVar2;
        if (aVar != null) {
            aVar2 = aVar.get(i10, TimeUnit.MILLISECONDS);
            if (aVar2 != null && aVar2.f1564b == 1000) {
                return cn.fly.tcp.b.c.a(aVar2);
            }
            cn.fly.tcp.f.c.a().b("TP rp : " + aVar2);
        } else {
            cn.fly.tcp.f.c.a().b("TP rp : null");
            aVar2 = null;
        }
        return cn.fly.tcp.b.c.b(aVar2);
    }

    public cn.fly.tcp.b.c<HashMap<String, Object>> a(cn.fly.tcp.b.a aVar, String str, int i10) throws Throwable {
        cn.fly.tcp.b.c<Void> cVarA = a(aVar, i10);
        if (cVarA.a()) {
            cn.fly.tcp.b.a aVarB = cVarA.b();
            String strA = this.f1602b.a(str, aVarB.f1566d);
            aVarB.f1566d = strA;
            return cn.fly.tcp.b.c.a(aVarB, this.f1602b.a(strA));
        }
        return cn.fly.tcp.b.c.b(cVarA.b());
    }
}
