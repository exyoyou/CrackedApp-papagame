package com.byazt.qi;

import android.app.Activity;
import android.app.Application;
import android.util.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.byazt.hv.TTDownloadField;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.join.mgps.activity.TagGameListActivity_;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ve f19177c;
    public final ArrayList<String> tt = new ArrayList<>();
    public final AtomicBoolean ve = new AtomicBoolean(false);
    public long uj = System.currentTimeMillis();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19181n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f19178a = 0;
    public String sp = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19182x = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f19180i = "";

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f19179da = false;
    public boolean sl = false;

    public static ve c(Application application) {
        if (f19177c == null) {
            synchronized (ve.class) {
                if (f19177c == null) {
                    ve veVar = new ve();
                    f19177c = veVar;
                    veVar.f19179da = da.c(application);
                    f19177c.sl = da.c(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                    f19177c.c();
                }
            }
        }
        return f19177c;
    }

    public void tt(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.tt.contains(localClassName)) {
            this.tt.remove(localClassName);
        }
        if (this.tt.size() == 0) {
            this.uj = System.currentTimeMillis();
            this.ve.set(true);
            this.f19182x = localClassName;
        }
    }

    public void c(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.tt.size() == 0) {
            this.sp = localClassName;
            this.f19181n = System.currentTimeMillis();
            this.f19178a = System.currentTimeMillis() - this.uj;
            this.ve.set(false);
        }
        if (!this.tt.contains(localClassName)) {
            this.tt.add(localClassName);
        }
        this.f19180i = localClassName;
    }

    private void c() {
        int size;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(objInvoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                declaredField3.setAccessible(true);
                for (int i10 = 0; i10 < size; i10++) {
                    Object objValueAt = arrayMap.valueAt(i10);
                    if (!((Boolean) declaredField2.get(objValueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(objValueAt)).getLocalClassName();
                        if (!this.tt.contains(localClassName)) {
                            this.tt.add(localClassName);
                        }
                    }
                }
                this.ve.set(this.tt.size() <= 0);
            }
        } catch (Exception unused) {
        }
    }

    public String c(String str, long j10, int i10, boolean z10) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - this.f19181n;
        long j12 = jCurrentTimeMillis - j10;
        int i11 = j12 < 500 ? 1 : 0;
        if (this.ve.get() && this.sl) {
            i11 |= 2;
        }
        if (!this.ve.get() && this.f19178a >= 5000 && j11 < 1000) {
            i11 = this.f19182x.equals(this.f19180i) ? i11 | 4 : i11 | 8;
        }
        try {
            string = new JSONObject().put("rst", i11).put("bakdur", this.f19178a).put("popt", j11).put("uct", j12).put("isbak", this.ve).put("alert", this.sl).put("rit", i10).put(TagGameListActivity_.TAG_EXTRA, str).put(NotificationCompat.CATEGORY_SYSTEM, this.f19179da).put("size", this.tt.size()).put("mutipro", z10).toString();
        } catch (JSONException unused) {
            string = "";
        }
        this.sp = "";
        this.f19178a = 0L;
        this.f19181n = 0L;
        this.uj = System.currentTimeMillis();
        return string;
    }
}
