package cn.fly.commons.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes7.dex */
public class b extends h {
    public b(Context context) {
        super(context);
    }

    @Override // cn.fly.commons.c.h
    protected Intent a() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(cn.fly.commons.m.a("027e1fmfhfnHe]fmfmPilf=fefnfe%h_fffkQeh5fkfehkfi;llHfmfl'k"), cn.fly.commons.m.a("043eFfmfhfnJeGfmfmUilf-fefnfe3hOfffkOehYfkfehkfiPll8fmfl+k.fnhn>hMfffkXehIggfegn hXflfffkZeh")));
        return intent;
    }

    @Override // cn.fly.commons.c.h
    public h.b a(IBinder iBinder) {
        h.b bVar = new h.b();
        bVar.f1176a = a(cn.fly.commons.m.a("004Cfm,f7fkfe"), iBinder, cn.fly.commons.m.a("044eNfmfhfn,e<fmfmUilf-fefnfeTh%fffk^ehFfkfehkfi1ll,fmflOk]fngghn5h?fffkAeh2ggfeje%fgfQglGh;fl"), 2, this.f1169b);
        return bVar;
    }
}
