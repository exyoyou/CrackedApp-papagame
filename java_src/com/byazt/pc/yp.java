package com.byazt.pc;

import com.byazt.yj.gr;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 695, 215})
public class yp<T> extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public T f18620c;
    public com.byazt.yj.sp tt;
    public byte[] uj;
    public boolean ve;

    public yp(T t10, byte[] bArr, com.byazt.yj.sp spVar, boolean z10) {
        this.f18620c = t10;
        this.tt = spVar;
        this.ve = z10;
        this.uj = bArr;
    }

    private Map<String, String> tt() {
        com.byazt.yj.sp spVar = this.tt;
        if (spVar != null) {
            return spVar.n();
        }
        return null;
    }

    @Override // com.byazt.pc.i
    public String c() {
        return "success";
    }

    @Override // com.byazt.pc.i
    public void c(com.byazt.oz.ve veVar) {
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

    /* JADX WARN: Multi-variable type inference failed */
    private void tt(com.byazt.oz.ve veVar) {
        gr grVarVe = veVar.ve();
        int iN = veVar.n();
        if (grVarVe != null) {
            T t10 = this.f18620c;
            if (iN == 3) {
                com.byazt.yj.tt ttVarYp = veVar.yp();
                if (this.uj == null && ttVarYp.isRawMemoryCache()) {
                    this.uj = veVar.u().tt(ttVarYp).c(veVar.getRawCacheKey());
                }
                T tC = (T) this.uj;
                if (tC == null) {
                    tC = this.f18620c;
                }
                if (!(tC instanceof byte[])) {
                    if (veVar.i()) {
                        tC = com.byazt.in.c.c(veVar);
                    } else {
                        tC = veVar.u().ve(veVar.yp()).c(veVar.getRawCacheKey());
                    }
                    if (!(tC instanceof byte[])) {
                        grVarVe.onFailed(2000, "final data is not raw", new RuntimeException("final data is not raw"));
                    }
                }
                t10 = (T) tC;
            } else if (iN == 2 && (t10 instanceof byte[])) {
                try {
                    t10 = (T) veVar.u().c(veVar).c((byte[]) t10);
                } catch (Throwable th) {
                    grVarVe.onFailed(2000, "decode failed", th);
                    return;
                }
            }
            grVarVe.onSuccess(new com.byazt.oz.uj().c(veVar, t10, tt(), this.ve));
        }
    }
}
