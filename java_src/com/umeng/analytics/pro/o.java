package com.umeng.analytics.pro;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(14)
public class o implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f84820a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f84821b = 3000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f84822c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f84823d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f84824e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<p> f84825f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f84826g = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!o.this.f84822c || !o.this.f84823d) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> still foreground.");
                return;
            }
            o.this.f84822c = false;
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> went background.");
            for (int i10 = 0; i10 < o.this.f84825f.size(); i10++) {
                ((p) o.this.f84825f.get(i10)).n();
            }
        }
    }

    private o() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f84823d = true;
        a aVar = this.f84826g;
        if (aVar != null) {
            this.f84824e.removeCallbacks(aVar);
            this.f84824e.postDelayed(this.f84826g, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f84823d = false;
        this.f84822c = true;
        a aVar = this.f84826g;
        if (aVar != null) {
            this.f84824e.removeCallbacks(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public synchronized void b(p pVar) {
        if (pVar != null) {
            for (int i10 = 0; i10 < this.f84825f.size(); i10++) {
                if (this.f84825f.get(i10) == pVar) {
                    this.f84825f.remove(i10);
                }
            }
        }
    }

    public static void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(f84820a);
        }
    }

    public static o a() {
        return f84820a;
    }

    public synchronized void a(p pVar) {
        if (pVar != null) {
            this.f84825f.add(pVar);
        }
    }
}
