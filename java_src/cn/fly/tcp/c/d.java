package cn.fly.tcp.c;

import cn.fly.tools.utils.HashonHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.a.c f1595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1596b;

    public interface a {
        String a();

        String a(String str, String str2) throws Throwable;
    }

    public d(cn.fly.tcp.a.c cVar, a aVar) {
        this.f1595a = cVar;
        this.f1596b = aVar;
    }

    public cn.fly.tcp.d.a a(long j10) {
        if (this.f1595a == null) {
            return null;
        }
        try {
            cn.fly.tcp.b.a aVar = new cn.fly.tcp.b.a(1005);
            aVar.f1565c = j10;
            cn.fly.tcp.d.a aVarA = this.f1595a.a(aVar);
            cn.fly.tcp.f.c.a().b("TP sd ty = " + aVar.f1564b + " , u = " + j10 + " bo : " + aVar.f1566d);
            return aVarA;
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
            return null;
        }
    }

    public void a(long j10, boolean z10) {
        if (this.f1595a != null) {
            try {
                String strA = this.f1596b.a();
                HashMap map = new HashMap();
                map.put("repeat", Boolean.valueOf(z10));
                String strFromHashMap = HashonHelper.fromHashMap(map);
                cn.fly.tcp.b.a aVar = new cn.fly.tcp.b.a(1007, this.f1596b.a(strA, strFromHashMap));
                aVar.f1565c = j10;
                this.f1595a.b(aVar);
                cn.fly.tcp.f.c.a().b("TP sd ty = " + aVar.f1564b + " , u = " + j10 + " bo : " + strFromHashMap);
            } catch (Throwable th) {
                cn.fly.tcp.f.c.a().a(th);
            }
        }
    }

    public void a(cn.fly.tcp.d.a aVar) {
        if (aVar == null || aVar.isDone()) {
            return;
        }
        try {
            aVar.cancel(false);
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
    }
}
