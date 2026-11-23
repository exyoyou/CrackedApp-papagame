package com.byazt.hw;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.bwm.x;
import com.byazt.dna.qp;
import com.byazt.nr.gt;
import com.byazt.nr.m;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kuaishou.weapon.p0.bg;
import com.tencent.stat.DeviceInfo;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 77, 20})
public class c implements qp.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static ThreadPoolExecutor f15128i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f15129x;
    public final Context sl;
    public final boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.hm.c f15135u;
    public int yp;
    public volatile boolean ve = false;
    public boolean uj = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15133n = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15130a = 0;
    public long sp = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public AtomicBoolean f15132da = new AtomicBoolean(false);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f15134t = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f15131c = ((qp) com.byazt.ut.uj.getService("thread_service")).getIOHandler();

    public c(Context context, int i10) {
        this.sl = context;
        this.tt = gt.c(context);
        this.yp = i10;
    }

    private com.byazt.hm.c i() {
        if (this.f15135u == null) {
            com.byazt.hm.c.C0328c c0328c = new com.byazt.hm.c.C0328c();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.f15135u = c0328c.c(10L, timeUnit).tt(10L, timeUnit).ve(10L, timeUnit).c();
        }
        return this.f15135u;
    }

    public static ThreadPoolExecutor sp() {
        if (f15128i == null) {
            synchronized (c.class) {
                if (f15128i == null) {
                    com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new x("tnc/AppConfig"));
                    f15128i = ujVar;
                    ujVar.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f15128i;
    }

    private void uj(boolean z10) {
        if (this.f15133n) {
            return;
        }
        if (this.uj) {
            this.uj = false;
            this.f15130a = 0L;
            this.sp = 0L;
        }
        long j10 = z10 ? 360000L : 43200000L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f15130a > j10) {
            if (jCurrentTimeMillis - this.sp > BaseCloudFileManager.STOKEN_VALID_TIME || !this.f15134t) {
                ve();
            }
        }
    }

    private boolean x() {
        String[] strArrA = a();
        if (strArrA != null && strArrA.length != 0) {
            c(0);
        }
        return false;
    }

    public String[] a() {
        String[] strArrA = sp.c().c(this.yp).uj() != null ? sp.c().c(this.yp).uj().a() : null;
        return (strArrA == null || strArrA.length <= 0) ? new String[0] : strArrA;
    }

    public Context getContext() {
        return this.sl;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int i10 = message.what;
        if (i10 == 101) {
            this.f15133n = false;
            this.f15130a = System.currentTimeMillis();
            com.byazt.lf.ve.tt("TNCManager", "doRefresh, succ");
            if (this.uj) {
                c();
            }
            this.f15132da.set(false);
            return;
        }
        if (i10 != 102) {
            return;
        }
        this.f15133n = false;
        if (this.uj) {
            c();
        }
        com.byazt.lf.ve.tt("TNCManager", "doRefresh, error");
        this.f15132da.set(false);
    }

    public void n() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.tt) {
                uj();
            } else {
                tt();
            }
        } catch (Throwable unused) {
        }
    }

    public boolean ve() {
        com.byazt.lf.ve.tt("TNCManager", "doRefresh: updating state " + this.f15132da.get());
        sp().execute(new Runnable() { // from class: com.byazt.hw.c.2
            @Override // java.lang.Runnable
            public void run() {
                boolean zC = com.byazt.lf.a.c(c.this.sl);
                if (zC) {
                    c.this.sp = System.currentTimeMillis();
                    if (c.this.f15132da.compareAndSet(false, true)) {
                        c.this.ve(zC);
                    } else {
                        com.byazt.lf.ve.tt("TNCManager", "doRefresh, already running");
                    }
                }
            }
        });
        return true;
    }

    public static void tt(boolean z10) {
        f15129x = z10;
    }

    public void ve(boolean z10) {
        com.byazt.lf.ve.tt("TNCManager", "doRefresh, actual request");
        uj();
        this.f15133n = true;
        if (!z10) {
            this.f15131c.sendEmptyMessage(102);
            return;
        }
        try {
            x();
        } catch (Exception unused) {
            this.f15132da.set(false);
        }
    }

    public synchronized void tt() {
        if (System.currentTimeMillis() - this.f15130a > bg.f74510s) {
            this.f15130a = System.currentTimeMillis();
            try {
                if (sp.c().c(this.yp).x() != null) {
                    sp.c().c(this.yp).x().tt();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void c() {
        c(false);
    }

    public synchronized void c(boolean z10) {
        if (this.tt) {
            uj(z10);
            return;
        }
        if (this.f15130a <= 0) {
            try {
                sp().execute(new Runnable() { // from class: com.byazt.hw.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void uj() {
        if (this.f15134t) {
            return;
        }
        this.f15134t = true;
        long j10 = com.byazt.nys.tt.tt(this.sl, "ss_app_config", 0).getLong("last_refresh_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j10 > jCurrentTimeMillis) {
            j10 = jCurrentTimeMillis;
        }
        this.f15130a = j10;
        try {
            if (sp.c().c(this.yp).x() != null) {
                sp.c().c(this.yp).x().c();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10) {
        Handler handler = this.f15131c;
        if (handler != null) {
            handler.sendEmptyMessage(i10);
        }
    }

    public static void c(Context context, int i10) {
        c cVarC;
        if (f15129x && (cVarC = sp.c().c(i10, context)) != null) {
            if (gt.c(context)) {
                cVarC.c(true);
            } else {
                cVarC.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!"success".equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor editorEdit = com.byazt.nys.tt.tt(this.sl, "ss_app_config", 0).edit();
            editorEdit.putLong("last_refresh_time", System.currentTimeMillis());
            editorEdit.apply();
        }
        if (sp.c().c(this.yp).x() == null) {
            return true;
        }
        sp.c().c(this.yp).x().c(jSONObject2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i10) {
        String[] strArrA = a();
        if (strArrA != null && strArrA.length > i10) {
            String str = strArrA[i10];
            if (TextUtils.isEmpty(str)) {
                tt(102);
                return;
            }
            try {
                String strC = c(str);
                if (TextUtils.isEmpty(strC)) {
                    tt(102);
                    return;
                }
                com.byazt.va.ve veVarVe = i().ve();
                veVarVe.c(strC);
                c(veVarVe);
                veVarVe.c(new com.byazt.mh.c() { // from class: com.byazt.hw.c.3
                    @Override // com.byazt.mh.c
                    public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                        JSONObject jSONObject;
                        if (ttVar == null || !ttVar.i()) {
                            c.this.c(i10 + 1);
                            return;
                        }
                        String string = null;
                        try {
                            jSONObject = new JSONObject(ttVar.n());
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        if (jSONObject == null) {
                            c.this.c(i10 + 1);
                            return;
                        }
                        try {
                            string = jSONObject.getString("message");
                        } catch (Exception unused2) {
                        }
                        if (!"success".equals(string)) {
                            c.this.c(i10 + 1);
                            return;
                        }
                        try {
                            if (c.this.c(jSONObject)) {
                                c.this.tt(101);
                            } else {
                                c.this.c(i10 + 1);
                            }
                        } catch (Exception unused3) {
                        }
                    }

                    @Override // com.byazt.mh.c
                    public void c(com.byazt.va.uj ujVar, IOException iOException) {
                        c.this.c(i10 + 1);
                    }
                });
                return;
            } catch (Throwable th) {
                com.byazt.lf.ve.tt("AppConfig", "try app config exception: ".concat(String.valueOf(th)));
                return;
            }
        }
        tt(102);
    }

    private String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return "https://" + str + "/get_domains/v4/";
    }

    private void c(com.byazt.va.ve veVar) {
        if (veVar == null) {
            return;
        }
        Address addressC = sp.c().c(this.yp).uj() != null ? sp.c().c(this.yp).uj().c(this.sl) : null;
        if (addressC != null && addressC.hasLatitude() && addressC.hasLongitude()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(addressC.getLatitude());
            veVar.c(BaseVideoView.GPS_LATITUDE, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(addressC.getLongitude());
            veVar.c(BaseVideoView.GPS_LONGITUDE, sb3.toString());
            String locality = addressC.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                veVar.c("city", Uri.encode(locality));
            }
        }
        if (this.ve) {
            veVar.c("force", "1");
        }
        try {
            veVar.c("abi", Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            m.c(th);
        }
        if (sp.c().c(this.yp).uj() != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sp.c().c(this.yp).uj().c());
            veVar.c(DeviceInfo.TAG_ANDROID_ID, sb4.toString());
            veVar.c("device_platform", sp.c().c(this.yp).uj().ve());
            veVar.c("channel", sp.c().c(this.yp).uj().tt());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(sp.c().c(this.yp).uj().uj());
            veVar.c("version_code", sb5.toString());
            veVar.c("custom_info_1", sp.c().c(this.yp).uj().n());
        }
    }

    public static void c(ThreadPoolExecutor threadPoolExecutor) {
        f15128i = threadPoolExecutor;
    }
}
