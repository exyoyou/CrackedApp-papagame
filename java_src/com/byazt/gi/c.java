package com.byazt.gi;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.gq.t;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 678, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f14529a = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f14530n = "";
    public static volatile c sp = null;
    public static String uj = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ve f14531c;
    public Context sl;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f14536x = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14533i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f14532da = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List<Pair<tt, uj>> f14534t = new ArrayList();
    public final List<Object> tt = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ServiceConnection f14535u = new ServiceConnection() { // from class: com.byazt.gi.c.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (c.this.ve) {
                c.this.c(false);
                c.this.f14531c = ve.c.c(iBinder);
                c.this.ve();
                Iterator<Object> it2 = c.this.tt.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (c.this.ve) {
                c.this.c(false);
                c cVar = c.this;
                cVar.f14531c = null;
                Iterator<Object> it2 = cVar.tt.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }
    };
    public String yp = "";
    public final Object ve = new Object();

    private c() {
    }

    public static c c() {
        if (sp == null) {
            synchronized (c.class) {
                if (sp == null) {
                    sp = new c();
                }
            }
        }
        return sp;
    }

    public void tt() {
        if (this.f14531c != null) {
            this.sl.unbindService(this.f14535u);
            this.f14531c = null;
        }
        this.tt.clear();
        this.f14534t.clear();
    }

    public boolean uj() {
        return this.f14532da;
    }

    public void ve() {
        for (Pair<tt, uj> pair : this.f14534t) {
            try {
                this.f14531c.c((tt) pair.first, (uj) pair.second);
            } catch (RemoteException e10) {
                m.c(e10);
            }
        }
        this.f14534t.clear();
    }

    public boolean c(Context context, boolean z10) {
        if (TextUtils.isEmpty(uj)) {
            JSONObject jSONObjectI = t.i();
            String strOptString = jSONObjectI.optString("s");
            uj = com.byazt.i.ve.c(jSONObjectI.optString("q"), strOptString);
            f14530n = com.byazt.i.ve.c(jSONObjectI.optString("u"), strOptString);
            f14529a = com.byazt.i.ve.c(jSONObjectI.optString(IAdInterListener.AdReqParam.WIDTH), strOptString);
        }
        this.f14533i = z10;
        if (context == null) {
            return true;
        }
        this.sl = context.getApplicationContext();
        if (TextUtils.isEmpty(f14529a)) {
            f14529a = this.sl.getPackageName();
        }
        if (this.f14531c != null || uj()) {
            return true;
        }
        return this.sl.bindService(c(context), this.f14535u, 33);
    }

    public Intent c(Context context) {
        Intent intent = new Intent();
        intent.setAction(uj);
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.size() != 1) {
            return null;
        }
        Iterator<ResolveInfo> it2 = listQueryIntentServices.iterator();
        while (it2.hasNext()) {
            ServiceInfo serviceInfo = it2.next().serviceInfo;
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (f14530n.equals(str)) {
                ComponentName componentName = new ComponentName(str, str2);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public void c(tt ttVar, uj ujVar) {
        synchronized (this.ve) {
            ttVar.f14540n = f14529a;
            if (TextUtils.isEmpty(ttVar.f14538a)) {
                ttVar.f14538a = this.yp;
            }
            ve veVar = this.f14531c;
            if (veVar != null) {
                try {
                    veVar.c(ttVar, ujVar);
                } catch (RemoteException e10) {
                    m.c(e10);
                }
            } else if (uj() || c(this.sl, this.f14533i)) {
                this.f14534t.add(Pair.create(ttVar, ujVar));
            }
        }
    }

    public void c(boolean z10) {
        this.f14532da = z10;
    }
}
