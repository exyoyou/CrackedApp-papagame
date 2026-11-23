package cn.fly.commons.c;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import cn.fly.tools.FlyLog;

/* JADX INFO: loaded from: classes7.dex */
public class r extends h {
    public r(Context context) {
        super(context);
    }

    private void e() {
        try {
            Intent intent = new Intent();
            intent.setClassName(cn.fly.commons.a.m.a("012d?elegemegedejedemeggjTe"), cn.fly.commons.a.m.a("033dYelegemegedejedemeggj;e2emgj0gVekeeejCdg(emidgj*e5jd,hHfmPgHekeeej;dg"));
            intent.setAction(cn.fly.commons.a.m.a("032dCelegemggeh:fSemeggj9e8em%edj2ejel'fQemgj1je8ekZj emgj@g]ekeeej.dg"));
            intent.putExtra(cn.fly.commons.a.m.a("025d9elegemggehDfPemeggjRe<emXke,ek5e-egem[kWfifkRfe=eg'g"), this.f1169b);
            intent.putExtra(cn.fly.commons.a.m.a("026dZelegemggeh0fXemeggjDe(emYke4ek$e)egemekehXfRej-fYgj>gj"), true);
            this.f1168a.startService(intent);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @Override // cn.fly.commons.c.h
    protected Intent a() {
        e();
        Intent intent = new Intent();
        intent.setClassName(cn.fly.commons.a.m.a("012d-elegemegedejedemeggj!e"), cn.fly.commons.a.m.a("033d^elegemegedejedemeggj eLemgj(gEekeeej0dg,emidgjQe_ffedfm1g5ekeeej$dg"));
        intent.setAction(cn.fly.commons.a.m.a("033dHelegemggehLf7emeggj-eRem9edjTejel0fEemggej fWed*jNelemgjAgJekeeej4dg"));
        intent.putExtra(cn.fly.commons.a.m.a("025dSelegemggeh1f?emeggj4e<emOkeGek.e<egem=k^fifk:feAeg:g"), this.f1169b);
        return intent;
    }

    @Override // cn.fly.commons.c.h
    protected h.b a(IBinder iBinder) {
        h.b bVar = new h.b();
        bVar.f1176a = a(cn.fly.commons.a.m.a("004?el!eXejed"), iBinder, cn.fly.commons.a.m.a("026dTelegemggehGfOem5h-ejggemidgjAe.ffedffGfjg.ekfg.edg"), 3, new String[0]);
        return bVar;
    }
}
