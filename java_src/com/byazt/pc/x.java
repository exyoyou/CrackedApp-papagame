package com.byazt.pc;

import com.alipay.sdk.util.f;
import com.byazt.yj.gr;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 695, 71})
public class x extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f18619c;
    public int tt;
    public String ve;

    public x(int i10, String str, Throwable th) {
        this.tt = i10;
        this.ve = str;
        this.f18619c = th;
    }

    private void tt(com.byazt.oz.ve veVar) {
        gr grVarVe = veVar.ve();
        if (grVarVe != null) {
            grVarVe.onFailed(this.tt, this.ve, this.f18619c);
        }
    }

    @Override // com.byazt.pc.i
    public String c() {
        return f.f7234h;
    }

    @Override // com.byazt.pc.i
    public void c(com.byazt.oz.ve veVar) {
        veVar.c(new com.byazt.oz.c(this.tt, this.ve, this.f18619c));
        String strNu = veVar.nu();
        Map<String, List<com.byazt.oz.ve>> mapSp = veVar.u().sp();
        List<com.byazt.oz.ve> list = mapSp.get(strNu);
        if (list == null) {
            tt(veVar);
            return;
        }
        synchronized (list) {
            Iterator<com.byazt.oz.ve> it2 = list.iterator();
            while (it2.hasNext()) {
                tt(it2.next());
            }
            list.clear();
            mapSp.remove(strNu);
        }
    }
}
