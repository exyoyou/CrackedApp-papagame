package com.tencent.bugly.proguard;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes2.dex */
public final class aq extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static aq f83312d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f83314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83315c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f83316e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IntentFilter f83313a = new IntentFilter();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public static synchronized aq a() {
        if (f83312d == null) {
            f83312d = new aq();
        }
        return f83312d;
    }

    public final synchronized void b(Context context) {
        try {
            al.a(aq.class, "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f83314b = context;
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final synchronized void a(String str) {
        if (!this.f83313a.hasAction(str)) {
            this.f83313a.addAction(str);
        }
        al.c("add action %s", str);
    }

    public final synchronized void a(Context context) {
        this.f83314b = context;
        ap.a(new Runnable() { // from class: com.tencent.bugly.proguard.aq.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    al.a(aq.f83312d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        aq.this.f83314b.registerReceiver(aq.f83312d, aq.this.f83313a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f83316e) {
                    this.f83316e = false;
                    return true;
                }
                String strC = ab.c(this.f83314b);
                al.c("is Connect BC ".concat(String.valueOf(strC)), new Object[0]);
                al.a("network %s changed to %s", this.f83315c, String.valueOf(strC));
                if (strC == null) {
                    this.f83315c = null;
                    return true;
                }
                String str = this.f83315c;
                this.f83315c = strC;
                long jCurrentTimeMillis = System.currentTimeMillis();
                ac acVarA = ac.a();
                ai aiVarA = ai.a();
                aa aaVarA = aa.a(context);
                if (acVarA != null && aiVarA != null && aaVarA != null) {
                    if (!strC.equals(str) && jCurrentTimeMillis - aiVarA.a(at.f83342a) > 30000) {
                        al.a("try to upload crash on network changed.", new Object[0]);
                        at atVarA = at.a();
                        if (atVarA != null) {
                            atVarA.a(0L);
                        }
                        al.a("try to upload userinfo on network changed.", new Object[0]);
                        s.f83636b.b();
                    }
                    return true;
                }
                al.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
