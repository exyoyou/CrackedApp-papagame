package cn.fly.commons.cc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class q implements ServiceConnection, y<q> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f1227a;

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f1227a != null) {
            try {
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(componentName);
                arrayList.add(iBinder);
                this.f1227a.a("onServiceConnected", arrayList);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f1227a != null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(componentName);
            this.f1227a.a("onServiceDisconnected", arrayList);
        }
    }

    public void a(n nVar) {
        this.f1227a = nVar;
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(q qVar, Class<q> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (!"setHandler".equals(str) || objArr.length != 1) {
            return false;
        }
        qVar.a((n) objArr[0]);
        return true;
    }
}
