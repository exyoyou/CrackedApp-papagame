package cn.fly.tcp.c;

import android.text.TextUtils;
import cn.fly.commons.a.m;
import com.join.mgps.adapter.t4;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f1592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f1593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f1594c;

    public interface a {
        String a(String str) throws Throwable;

        boolean a(cn.fly.tcp.a.a aVar);

        HashMap<String, Object> b(String str);

        void c(String str);
    }

    public c(d dVar, b bVar, a aVar) {
        this.f1592a = dVar;
        this.f1593b = bVar;
        this.f1594c = aVar;
    }

    private void b(cn.fly.tcp.b.a aVar) {
        cn.fly.tcp.f.c.a().b("redir-msg msgType: " + aVar.f1564b + " body = " + aVar.f1566d);
        String strA = a(this.f1594c.b(aVar.f1566d), m.a("006$edelegEeWejBf"));
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        this.f1594c.c(strA);
    }

    private void c(cn.fly.tcp.b.a aVar) {
        cn.fly.tcp.f.c.a().b("trans-msg msgType: " + aVar.f1564b + " body = " + aVar.f1566d);
    }

    public void a(cn.fly.tcp.a.a aVar, cn.fly.tcp.b.a aVar2) {
        boolean zA;
        cn.fly.tcp.d.a aVarA = null;
        try {
            if (!this.f1594c.a(aVar)) {
                this.f1592a.a((cn.fly.tcp.d.a) null);
                return;
            }
            aVarA = this.f1592a.a(aVar2.f1565c);
            if (!a(aVar2)) {
                this.f1592a.a(aVarA);
                return;
            }
            int i10 = aVar2.f1564b;
            if (i10 == 9001) {
                zA = a(aVar2, aVarA);
            } else {
                if (i10 == 9002) {
                    b(aVar2);
                } else if (i10 == 9004) {
                    c(aVar2);
                }
                zA = false;
            }
            if (zA) {
            }
        } catch (Throwable th) {
            try {
                cn.fly.tcp.f.c.a().a(th);
            } finally {
                this.f1592a.a((cn.fly.tcp.d.a) null);
            }
        }
    }

    private boolean a(cn.fly.tcp.b.a aVar) throws Throwable {
        if (TextUtils.isEmpty(aVar.f1566d)) {
            return false;
        }
        String strA = this.f1594c.a(aVar.f1566d);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        aVar.f1566d = strA;
        return true;
    }

    private boolean a(cn.fly.tcp.b.a aVar, cn.fly.tcp.d.a aVar2) {
        cn.fly.tcp.f.c.a().b("pu5h-msg msgType: " + aVar.f1564b + " body = " + aVar.f1566d);
        HashMap<String, Object> mapB = this.f1594c.b(aVar.f1566d);
        if (!mapB.containsKey(m.a("004BedMeje"))) {
            return false;
        }
        int iA = cn.fly.tcp.e.a.a(mapB, t4.f63189e, 0);
        String strA = a(mapB, "workId");
        String strA2 = a(mapB, m.a("004!ed8eje"));
        if (TextUtils.isEmpty(strA2)) {
            cn.fly.tcp.f.c.a().b("TP pu5h-msg data empty");
            return false;
        }
        boolean z10 = cn.fly.tcp.e.a.a(mapB, "needRepeat", 0) == 1;
        int iA2 = cn.fly.tcp.e.a.a(mapB, m.a("004j>fd.kg"), 0);
        if (iA2 != 1 && iA2 != 2) {
            cn.fly.tcp.f.c.a().b("innermsg-pu5h msgType: " + iA2 + " data = " + strA2);
            boolean zA = this.f1593b.a(aVar.f1565c, strA, iA, iA2, strA2, aVar2);
            if (z10) {
                this.f1592a.a(aVar.f1565c, zA);
            }
            return true;
        }
        cn.fly.tcp.f.c.a().b("innermsg-mlp msgType: " + iA2 + " data = " + strA2);
        return false;
    }

    private String a(HashMap<String, Object> map, String str) {
        if (map == null) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}
