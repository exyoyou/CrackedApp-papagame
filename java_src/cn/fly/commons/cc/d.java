package cn.fly.commons.cc;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes7.dex */
public class d implements y<cn.fly.commons.t> {
    @Override // cn.fly.commons.cc.y
    public boolean a(cn.fly.commons.t tVar, Class<cn.fly.commons.t> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (cn.fly.commons.n.a("004=chWdgGdj").equals(str)) {
            objArr2[0] = tVar.a();
        } else if (cn.fly.commons.n.a("0084dg=dgBdc%bgaf").equals(str) && objArr != null && objArr.length == 1) {
            objArr2[0] = tVar.a((CountDownLatch) objArr[0]);
        } else {
            if (!cn.fly.commons.n.a("005Cbgdgcj]hg").equals(str)) {
                return false;
            }
            objArr2[0] = Boolean.valueOf(tVar.b());
        }
        return true;
    }
}
