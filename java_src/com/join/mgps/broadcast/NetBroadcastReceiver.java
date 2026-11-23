package com.join.mgps.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.Util.s1;

/* JADX INFO: loaded from: classes3.dex */
public class NetBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f64146a = null;

    public interface a {
        void a(int netMobile);
    }

    public void a(a evevt) {
        this.f64146a = evevt;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                int iB = s1.b(context);
                a aVar = this.f64146a;
                if (aVar != null) {
                    aVar.a(iB);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
