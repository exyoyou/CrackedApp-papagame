package cn.fly.commons.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes7.dex */
public class a extends h {
    public a(Context context) {
        super(context);
    }

    @Override // cn.fly.commons.c.h
    protected Intent a() {
        Intent intent = new Intent(cn.fly.commons.n.a("030a1bibdbjHb@dgbedgbjbddgEb5bj^bag.bgbiPc[bjdbcbcbegcjcjbfdjccdj"));
        intent.setComponent(new ComponentName(cn.fly.commons.n.a("029aKbibdbj<bRdgbedgbjbddgKbObjcjbe?hhedNbd!dcgb^bhcadjccdj"), cn.fly.commons.n.a("053a!bibdbj%b(dgbedgbjbddgHb5bjcjbe.hhed>bdPdcgbIbhcadjccdjbjcjbeBhhedLbd>dcgbBbhcadjccdjcj8d;bhbbbg:ad")));
        return intent;
    }

    @Override // cn.fly.commons.c.h
    public h.b a(IBinder iBinder) {
        h.b bVar = new h.b();
        bVar.f1176a = a(cn.fly.commons.n.a("004Zbi0b=bgba"), iBinder, cn.fly.commons.n.a("047a!bibdbj?bUdgbedgbjbddg]b0bjcjbe)hhed0bd@dcgb+bhcadjccdjbjccdjbgbadbbgbaTe8cc?cgd(bhcdTbad"), 3, new String[0]);
        return bVar;
    }
}
