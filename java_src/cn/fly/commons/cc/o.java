package cn.fly.commons.cc;

import android.net.ConnectivityManager;
import android.net.Network;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class o implements y<o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f1225a;

    private ConnectivityManager.NetworkCallback a() {
        return new ConnectivityManager.NetworkCallback() { // from class: cn.fly.commons.cc.o.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(network);
                o.this.f1225a.a(cn.fly.commons.o.a("011;dkBeUfddd0dWdiWgd:ffMgf"), arrayList);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(network);
                o.this.f1225a.a(cn.fly.commons.o.a("006<dk:e,fedkfiIi"), arrayList);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                super.onUnavailable();
            }
        };
    }

    public void a(n nVar) {
        this.f1225a = nVar;
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(o oVar, Class<o> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        Object obj;
        if ("setHandler".equals(str) && objArr.length == 1 && (obj = objArr[0]) != null && (obj instanceof n)) {
            oVar.a((n) obj);
        } else {
            if (!cn.fly.commons.o.a("019JdiLeFdiWi,egKfi2fgdkdjehed,dgg3ff1dcCeh").equals(str) || objArr.length != 0) {
                return false;
            }
            objArr2[0] = oVar.a();
        }
        return true;
    }
}
