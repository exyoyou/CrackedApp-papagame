package com.windmill.sdk.common;

import android.app.Activity;
import android.app.Application;
import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.point.PointEntityWMActive;
import com.windmill.sdk.point.PointType;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class o implements com.windmill.sdk.utils.a.InterfaceC1083a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f86805a;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static WeakReference<Activity> f86806j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f86811f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f86813h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f86814i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86807b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86808c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86809d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86810e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f86812g = new HashMap();

    private o(Application application) {
        this.f86813h = 0L;
        try {
            com.windmill.sdk.utils.a.a().a(application);
            com.windmill.sdk.utils.a.a().a(this);
            this.f86813h = System.currentTimeMillis();
            this.f86814i = UUID.randomUUID().toString();
            WMLogUtil.i("session_start: " + this.f86813h + ":" + this.f86814i);
            a("session_start", this.f86814i, "0", String.valueOf(this.f86813h));
        } catch (Throwable th) {
            WMLogUtil.e(th.getMessage());
        }
    }

    public static o a(Application application) {
        if (f86805a == null) {
            synchronized (o.class) {
                if (f86805a == null) {
                    f86805a = new o(application);
                }
            }
        }
        return f86805a;
    }

    public static o d() {
        return f86805a;
    }

    public int b() {
        return this.f86807b;
    }

    public String c() {
        return this.f86814i;
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        f86806j = new WeakReference<>(activity);
        String simpleName = activity.getClass().getSimpleName();
        this.f86811f = simpleName;
        this.f86812g.put(simpleName, simpleName);
        this.f86808c = true;
        this.f86809d = false;
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        this.f86812g.remove(activity.getClass().getSimpleName());
        if (this.f86812g.size() == 0 && this.f86808c) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = (jCurrentTimeMillis - this.f86813h) / 1000;
            WMLogUtil.i("onActivityDestroyed session_end: " + jCurrentTimeMillis + ":" + this.f86814i + ":" + j10);
            a("session_end", this.f86814i, String.valueOf(j10), String.valueOf(jCurrentTimeMillis));
            this.f86813h = System.currentTimeMillis();
            this.f86808c = false;
        }
        if (this.f86812g.size() == 0) {
            this.f86810e = true;
        }
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onPause(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
        this.f86809d = !activity.getClass().getSimpleName().equals(this.f86811f);
        this.f86811f = activity.getClass().getSimpleName();
        if (!this.f86808c || this.f86810e) {
            this.f86810e = false;
            this.f86814i = UUID.randomUUID().toString();
            this.f86813h = System.currentTimeMillis();
            this.f86808c = true;
            WMLogUtil.i("onActivityResumed session_start: " + this.f86813h + ":" + this.f86814i);
            a("session_start", this.f86814i, "0", String.valueOf(this.f86813h));
        }
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onStart(Activity activity) {
        this.f86807b++;
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onStop(Activity activity) {
        this.f86807b--;
        if (activity.getClass().getSimpleName().equals(this.f86811f)) {
            if (!this.f86809d || this.f86812g.size() == 1) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j10 = (jCurrentTimeMillis - this.f86813h) / 1000;
                WMLogUtil.i("onActivityStopped session_end: " + jCurrentTimeMillis + ":" + this.f86814i + ":" + j10);
                a("session_end", this.f86814i, String.valueOf(j10), String.valueOf(jCurrentTimeMillis));
                this.f86813h = System.currentTimeMillis();
                this.f86808c = false;
            }
        }
    }

    public PointEntityWMActive a(String category, String active_id, String duration, String active_time) {
        PointEntityWMActive pointEntityWMActive = new PointEntityWMActive();
        pointEntityWMActive.setAc_type(PointType.WIND_MILL_ACTIVE);
        pointEntityWMActive.setCategory(category);
        pointEntityWMActive.setActive_id(active_id);
        pointEntityWMActive.setDuration(duration);
        pointEntityWMActive.setTimestamp(active_time);
        try {
            if (com.windmill.sdk.strategy.d.a().b() != null) {
                String strSerialize = JSONSerializer.Serialize(com.windmill.sdk.strategy.d.a().b());
                if (!TextUtils.isEmpty(strSerialize)) {
                    HashMap map = new HashMap();
                    map.put("custom_info", strSerialize);
                    pointEntityWMActive.setOptions(map);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        pointEntityWMActive.commit();
        return pointEntityWMActive;
    }

    public static Activity a() {
        WeakReference<Activity> weakReference = f86806j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
}
