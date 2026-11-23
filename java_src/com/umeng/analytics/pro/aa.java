package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class aa {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile aa f84237c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private y f84238a = new z();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f84239b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<a> f84240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f84241e;

    public interface a {
        void a(String str, long j10, long j11, long j12);

        void a(String str, String str2, long j10, long j11, long j12);
    }

    private aa() {
    }

    public static aa a() {
        if (f84237c == null) {
            synchronized (aa.class) {
                if (f84237c == null) {
                    f84237c = new aa();
                }
            }
        }
        return f84237c;
    }

    private String f(Context context) {
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(context).edit();
            editorEdit.putString(w.f84911d, d(context));
            editorEdit.commit();
        } catch (Exception unused) {
        }
        long jH = h(context);
        long jI = i(context);
        String str = this.f84239b;
        long jA = w.a(context);
        long j10 = jA * 5000;
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count 值完成，count次数：" + jA);
        if (!FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foreground count druation云控参数关闭。");
        } else if (UMWorkDispatch.eventHasExist()) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，终止checker timer.");
            UMWorkDispatch.removeEvent();
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。");
        }
        a(jI, jH, j10, str, false);
        this.f84239b = this.f84238a.a(context);
        a(jI, jH, j10, str, true);
        this.f84238a.a(context, this.f84239b);
        return this.f84239b;
    }

    private boolean g(Context context) {
        return !TextUtils.isEmpty(this.f84239b) && k.a(context).a(this.f84239b) > 0;
    }

    private long h(Context context) {
        return a(context, w.f84913f);
    }

    private long i(Context context) {
        return a(context, w.f84908a);
    }

    private boolean j(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(appContext);
            long j10 = sharedPreferences.getLong(w.f84912e, 0L);
            long j11 = sharedPreferences.getLong(w.f84913f, 0L);
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.E) && j10 > 0 && j11 == 0) {
                long jA = w.a(appContext);
                if (jA > 0) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> last session end time stamp = 0, reconstruct it by foreground count value.");
                    j11 = j10 + (jA * 5000);
                }
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j11 - j10));
            return this.f84238a.a(j10, j11);
        } catch (Exception unused) {
            return false;
        }
    }

    public long b() {
        return this.f84238a.a();
    }

    public String c(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.f84239b = f(appContext);
        } catch (Exception unused) {
        }
        return this.f84239b;
    }

    public String d(Context context) {
        if (TextUtils.isEmpty(this.f84239b)) {
            try {
                this.f84239b = PreferenceWrapper.getDefault(context).getString("session_id", null);
            } catch (Exception unused) {
            }
        }
        return this.f84239b;
    }

    public boolean e(Context context) {
        if (TextUtils.isEmpty(this.f84239b)) {
            this.f84239b = d(context);
        }
        return TextUtils.isEmpty(this.f84239b) || j(context) || g(context);
    }

    public synchronized String b(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.f84239b = d(appContext);
        if (e(appContext)) {
            try {
                this.f84239b = f(appContext);
            } catch (Exception unused) {
            }
        }
        return this.f84239b;
    }

    public void a(long j10) {
        this.f84238a.a(j10);
    }

    public String a(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        String string = "";
        try {
            synchronized (aa.class) {
                string = PreferenceWrapper.getDefault(appContext).getString(w.f84911d, "");
            }
        } catch (Exception unused) {
        }
        return string;
    }

    public void b(a aVar) {
        List<a> list;
        if (aVar == null || (list = this.f84240d) == null || list.size() == 0) {
            return;
        }
        this.f84240d.remove(aVar);
    }

    public String a(Context context, long j10) {
        if (TextUtils.isEmpty(this.f84241e)) {
            String str = "SUB" + j10;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(String.format("%0" + (32 - str.length()) + com.kuaishou.weapon.p0.t.f74895t, 0));
            this.f84241e = sb2.toString();
        }
        return this.f84241e;
    }

    private long a(Context context, String str) {
        long j10;
        try {
            j10 = PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (Exception unused) {
            j10 = 0;
        }
        return j10 <= 0 ? System.currentTimeMillis() : j10;
    }

    private void a(long j10, long j11, long j12, String str, boolean z10) {
        List<a> list = this.f84240d;
        if (list != null) {
            for (a aVar : list) {
                if (z10) {
                    try {
                        aVar.a(str, this.f84239b, j10, j11, j12);
                    } catch (Exception unused) {
                    }
                } else {
                    aVar.a(this.f84239b, j10, j11, j12);
                }
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f84240d == null) {
            this.f84240d = new ArrayList();
        }
        if (this.f84240d.contains(aVar)) {
            return;
        }
        this.f84240d.add(aVar);
    }
}
