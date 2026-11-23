package cn.fly.commons.cc;

/* JADX INFO: loaded from: classes7.dex */
public class r implements y<q> {
    @Override // cn.fly.commons.cc.y
    public boolean a(q qVar, Class<q> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        Object obj;
        if (!"setHandler".equals(str) || objArr.length != 1 || (obj = objArr[0]) == null || !(obj instanceof n)) {
            return false;
        }
        qVar.a((n) obj);
        return true;
    }
}
