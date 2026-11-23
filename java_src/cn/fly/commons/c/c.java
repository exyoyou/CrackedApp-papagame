package cn.fly.commons.c;

import android.content.Context;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;

/* JADX INFO: loaded from: classes7.dex */
public class c extends h {
    public c(Context context) {
        super(context);
    }

    @Override // cn.fly.commons.c.h
    protected h.b b() {
        Object objInvokeInstanceMethodNoThrow;
        h.b bVar = new h.b();
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.a.m.a("008$fiQgFfdfkehIe@eked"));
        if (systemServiceSafe != null && (objInvokeInstanceMethodNoThrow = ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.a.m.a("010%elgg+je5ej@fXhi%eGejed"), null, new Object[0])) != null) {
            bVar.f1176a = objInvokeInstanceMethodNoThrow.toString();
        }
        return bVar;
    }
}
