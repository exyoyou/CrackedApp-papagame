package com.byazt.ia;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.byazt.hv.TTDownloadField;
import com.byazt.nr.m;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 515, 13})
public class tt {
    public static com.byazt.uy.uj nu;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Application f15277c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f15278da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15279i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f15280m;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f15282t;
    public Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f15283u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f15284x;
    public long yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f15285z;
    public List<String> ve = new ArrayList();
    public List<Long> uj = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<String> f15281n = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<Long> f15276a = new ArrayList();
    public int rh = 0;
    public boolean my = false;
    public final Application.ActivityLifecycleCallbacks gt = new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.ia.tt.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            tt.this.sp = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            tt.this.f15284x = System.currentTimeMillis();
            tt.this.ve.add(tt.this.sp);
            tt.this.uj.add(Long.valueOf(tt.this.f15284x));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            String name = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            int iIndexOf = tt.this.ve.indexOf(name);
            if (iIndexOf >= 0 && iIndexOf < tt.this.ve.size()) {
                tt.this.ve.remove(iIndexOf);
                tt.this.uj.remove(iIndexOf);
            }
            tt.this.f15281n.add(name);
            tt.this.f15276a.add(Long.valueOf(System.currentTimeMillis()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            tt.this.f15283u = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            tt.this.yp = System.currentTimeMillis();
            tt.a(tt.this);
            if (tt.this.rh <= 0) {
                tt.this.my = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            tt.this.sl = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            tt.this.f15282t = System.currentTimeMillis();
            tt.this.my = true;
            tt.n(tt.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            tt.this.f15279i = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            tt.this.f15278da = System.currentTimeMillis();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            tt.this.f15285z = tt.nu == null ? activity.getClass().getName() : tt.nu.c(activity);
            tt.this.f15280m = System.currentTimeMillis();
        }
    };

    public tt(@NonNull Context context) {
        this.tt = context;
        if (context instanceof Application) {
            this.f15277c = (Application) context;
        }
        n();
    }

    public static /* synthetic */ int a(tt ttVar) {
        int i10 = ttVar.rh;
        ttVar.rh = i10 - 1;
        return i10;
    }

    public static /* synthetic */ int n(tt ttVar) {
        int i10 = ttVar.rh;
        ttVar.rh = i10 + 1;
        return i10;
    }

    private JSONArray a() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.ve;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.ve.size(); i10++) {
                try {
                    jSONArray.put(c(this.ve.get(i10), this.uj.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray sp() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f15281n;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.f15281n.size(); i10++) {
                try {
                    jSONArray.put(c(this.f15281n.get(i10), this.f15276a.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private void n() {
        Application application = this.f15277c;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.gt);
        }
    }

    public JSONArray tt() {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        JSONArray jSONArray = new JSONArray();
        try {
            ActivityManager activityManager = (ActivityManager) this.tt.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager == null || (runningTasks = activityManager.getRunningTasks(5)) == null) {
                return jSONArray;
            }
            for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                if (runningTaskInfo != null && runningTaskInfo.baseActivity != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", runningTaskInfo.id);
                        jSONObject.put("package_name", runningTaskInfo.baseActivity.getPackageName());
                        jSONObject.put(b.f89370k, runningTaskInfo.description);
                        jSONObject.put("number_of_activities", runningTaskInfo.numActivities);
                        jSONObject.put("number_of_running_activities", runningTaskInfo.numRunning);
                        jSONObject.put("topActivity", runningTaskInfo.topActivity.toString());
                        jSONObject.put("baseActivity", runningTaskInfo.baseActivity.toString());
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return jSONArray;
    }

    public boolean ve() {
        return this.my;
    }

    private JSONObject c(String str, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put("time", j10);
        } catch (JSONException e10) {
            m.c(e10);
        }
        return jSONObject;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("last_create_activity", c(this.sp, this.f15284x));
            jSONObject.put("last_start_activity", c(this.f15279i, this.f15278da));
            jSONObject.put("last_resume_activity", c(this.sl, this.f15282t));
            jSONObject.put("last_pause_activity", c(this.f15283u, this.yp));
            jSONObject.put("last_stop_activity", c(this.f15285z, this.f15280m));
            jSONObject.put("alive_activities", a());
            jSONObject.put("finish_activities", sp());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
