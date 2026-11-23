package com.beizi.ad.internal.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.beizi.ad.internal.e.d;
import com.beizi.ad.internal.e.e;
import com.kuaishou.weapon.p0.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f8881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<a> f8882b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Timer f8883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8884d;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f8889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f8890b = 0;

        a(String str) {
            this.f8889a = str;
        }
    }

    private b(Context context) {
        if (context != null) {
            this.f8884d = context.getPackageManager().checkPermission(g.f74778b, context.getPackageName()) == 0;
        }
    }

    private void c(Context context) {
        if (this.f8883c == null) {
            final WeakReference weakReference = new WeakReference(context);
            Timer timer = new Timer();
            this.f8883c = timer;
            timer.scheduleAtFixedRate(new TimerTask() { // from class: com.beizi.ad.internal.d.b.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Context context2 = (Context) weakReference.get();
                    if (context2 == null) {
                        b.this.a();
                        return;
                    }
                    while (!b.this.f8882b.isEmpty() && b.this.b(context2)) {
                        boolean z10 = false;
                        final a aVar = (a) b.this.f8882b.remove(0);
                        if (aVar.f8890b < 3) {
                            new d(z10, true) { // from class: com.beizi.ad.internal.d.b.1.1
                                /* JADX INFO: Access modifiers changed from: protected */
                                @Override // com.beizi.ad.internal.e.d, android.os.AsyncTask
                                /* JADX INFO: renamed from: a */
                                public void onPostExecute(e eVar) {
                                    if (eVar == null || (!eVar.a() && eVar.b() == com.beizi.ad.internal.e.g.CONNECTION_FAILURE)) {
                                        aVar.f8890b++;
                                        b.this.f8882b.add(aVar);
                                    }
                                }

                                @Override // com.beizi.ad.internal.e.d
                                protected String a() {
                                    return aVar.f8889a;
                                }
                            }.execute(new Void[0]);
                        }
                    }
                    if (b.this.f8882b.isEmpty()) {
                        b.this.a();
                    }
                }
            }, 10000L, 10000L);
        }
    }

    public static b a(Context context) {
        if (f8881a == null) {
            f8881a = new b(context);
        }
        return f8881a;
    }

    public boolean b(Context context) {
        try {
            if (!this.f8884d) {
                return true;
            }
            if (context == null) {
                return false;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public synchronized void a(String str, Context context) {
        this.f8882b.add(new a(str));
        c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Timer timer = this.f8883c;
        if (timer != null) {
            timer.cancel();
            this.f8883c = null;
        }
    }
}
