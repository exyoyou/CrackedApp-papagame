package cn.fly.commons.cc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class i extends BroadcastReceiver implements y<i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f1222a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f1222a != null) {
            try {
                ArrayList<Object> arrayList = new ArrayList<>(1);
                arrayList.add(intent);
                this.f1222a.a("onReceive", arrayList);
            } catch (Throwable unused) {
            }
        }
    }

    public void a(n nVar) {
        this.f1222a = nVar;
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(i iVar, Class<i> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        Object obj;
        if (!"setHandler".equals(str) || objArr.length != 1 || (obj = objArr[0]) == null || !(obj instanceof n)) {
            return false;
        }
        iVar.a((n) obj);
        return true;
    }
}
