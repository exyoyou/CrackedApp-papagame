package cn.fly.commons.cc;

import android.database.ContentObserver;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class l extends ContentObserver implements y<l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f1223a;

    public l() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        if (this.f1223a != null) {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(Boolean.valueOf(z10));
            this.f1223a.a("onChange", arrayList);
        }
    }

    public void a(n nVar) {
        this.f1223a = nVar;
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(l lVar, Class<l> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        Object obj;
        if (!"setHandler".equals(str) || objArr.length != 1 || (obj = objArr[0]) == null || !(obj instanceof n)) {
            return false;
        }
        lVar.a((n) obj);
        return true;
    }
}
