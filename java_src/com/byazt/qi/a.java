package com.byazt.qi;

import android.app.Application;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import com.byakv.z.SoftDecTool;
import com.byazt.nr.m;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.coremedia.iso.boxes.d1;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f19157c;
    public static sp sl;
    public static AtomicBoolean tt = new AtomicBoolean(false);
    public static final AtomicBoolean ve = new AtomicBoolean(false);
    public static final AtomicBoolean uj = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f19160n = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f19156a = 0;
    public static int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static tt f19162x = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile DisplayManager.DisplayListener f19159i = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile boolean f19158da = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final AtomicBoolean f19161t = new AtomicBoolean(false);

    public static x a() {
        sp spVar = sl;
        if (spVar != null) {
            return spVar.uj();
        }
        return null;
    }

    public static String n() {
        sp spVar = sl;
        if (spVar != null) {
            return spVar.tt();
        }
        return null;
    }

    public static long sp() {
        return f19156a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static void tt(Handler handler) {
        if (!i.tt() || f19158da || ve() == null) {
            return;
        }
        f19158da = true;
        if (f19159i == null) {
            f19159i = new DisplayManager.DisplayListener() { // from class: com.byazt.qi.a.2
                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayAdded(int i10) {
                    if (i10 != 0) {
                        try {
                            a.c(1003, new Object[]{Integer.valueOf(i10), a.ve()});
                        } catch (Throwable th) {
                            m.c(th);
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayChanged(int i10) {
                    if (i10 != 0) {
                        try {
                            a.c(1005, new Object[]{Integer.valueOf(i10), a.ve()});
                        } catch (Throwable th) {
                            m.c(th);
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayRemoved(int i10) {
                    if (i10 != 0) {
                        try {
                            a.c(1004, new Object[]{Integer.valueOf(i10), a.ve()});
                        } catch (Throwable th) {
                            m.c(th);
                        }
                    }
                }
            };
        }
        ((DisplayManager) ve().getSystemService(HmDataChannelManager.DISPLAY)).registerDisplayListener(f19159i, handler);
    }

    public static boolean uj() {
        sp spVar = sl;
        if (spVar != null) {
            return spVar.ve();
        }
        return false;
    }

    public static Context ve() {
        sp spVar = sl;
        if (spVar != null) {
            return spVar.c();
        }
        return null;
    }

    public static int x() {
        return sp;
    }

    public static void c(sp spVar) {
        sl = spVar;
    }

    public static void c() {
        try {
            Context contextVe = ve();
            if (!uj() || ve.getAndSet(true) || contextVe == null) {
                return;
            }
            if (f19162x != null) {
                tt.c((Application) contextVe).tt((Application) contextVe);
                f19162x = null;
            }
            if (f19159i != null) {
                ((DisplayManager) contextVe.getSystemService(HmDataChannelManager.DISPLAY)).unregisterDisplayListener(f19159i);
                f19158da = false;
                f19159i = null;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static String tt(Throwable th) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(d1.f24745t, 3);
            jSONObject.put("exception:", th.toString());
            jSONObject.put("stacktrace:", Arrays.toString(th.getStackTrace()));
            jSONObject.put("cause:", String.valueOf(th.getCause()));
            f19160n = Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable th2) {
            m.c(th2);
            f19160n = "eyJzdHRzIjozfQ==";
        }
        return f19160n;
    }

    public static String tt() {
        if (f19157c == null) {
            Object objC = c(1011, new Object[0]);
            if (objC instanceof String) {
                f19157c = (String) objC;
            }
        }
        String str = f19157c;
        return str != null ? str : "";
    }

    @DungeonFlag
    public static String c(final long j10) {
        if (i.tt() && sl != null) {
            final Handler handlerC = com.byazt.nr.da.c();
            final x xVarA = a();
            AtomicBoolean atomicBoolean = f19161t;
            if (atomicBoolean.get()) {
                if (TextUtils.isEmpty(f19160n)) {
                    String strGc = SoftDecTool.gc();
                    if (!TextUtils.isEmpty(strGc)) {
                        f19160n = strGc;
                    }
                }
                return TextUtils.isEmpty(f19160n) ? "eyJzdHRzIjoxfQ==" : f19160n;
            }
            atomicBoolean.set(true);
            handlerC.post(new Runnable() { // from class: com.byazt.qi.a.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObjectT;
                    try {
                        if (!a.ve.get()) {
                            tt unused = a.f19162x = tt.c((Application) a.sl.c());
                            a.tt(handlerC);
                        }
                        n.c(a.sl.c());
                        if (SoftDecTool.acs == -1.0d) {
                            SoftDecTool.ua();
                        }
                        AtomicLong atomicLong = new AtomicLong(j10);
                        if (xVarA != null && !a.uj.getAndSet(true)) {
                            atomicLong.set(xVarA.c());
                        }
                        Object objC = a.c(1001, new Object[]{a.sl.c(), Long.valueOf(atomicLong.get())});
                        if (objC instanceof String) {
                            String unused2 = a.f19160n = (String) objC;
                        }
                        if (xVarA != null && !a.tt.getAndSet(true)) {
                            JSONObject jSONObjectC = com.byazt.ig.c.c().c(a.sl.c(), a.sl.tt());
                            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                                xVarA.c("detailed_app_info", jSONObjectC);
                            }
                            a.tt.set(false);
                        }
                        if (xVarA != null && (jSONObjectT = SoftDecTool.t()) != null && jSONObjectT.length() > 0) {
                            xVarA.c("tc_info", jSONObjectT);
                        }
                    } catch (Throwable th) {
                        try {
                            String unused3 = a.f19160n = a.tt(th);
                        } finally {
                            a.f19161t.set(false);
                        }
                    }
                }
            });
        }
        if (TextUtils.isEmpty(f19160n)) {
            String strGc2 = SoftDecTool.gc();
            if (!TextUtils.isEmpty(strGc2)) {
                f19160n = strGc2;
            }
        }
        return TextUtils.isEmpty(f19160n) ? "eyJzdHRzIjoxfQ==" : f19160n;
    }

    @DungeonFlag
    public static Object c(int i10, Object[] objArr) {
        return SoftDecTool.cn(i10, objArr);
    }

    @DungeonFlag
    public static void c(final MotionEvent motionEvent) {
        if (motionEvent == null || !i.tt() || ve() == null) {
            return;
        }
        if (motionEvent.getRawX() > 0.0f || motionEvent.getRawY() > 0.0f) {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.qi.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.c(1002, new Object[]{Integer.valueOf(motionEvent.getDeviceId()), a.ve()});
                }
            });
        }
    }

    @DungeonFlag
    public static void c(long j10, int i10) {
        f19156a = j10;
        sp = i10;
    }

    public static String c(String str, long j10, int i10, boolean z10) {
        try {
            tt ttVar = f19162x;
            if (ttVar != null) {
                return ttVar.c(str, j10, i10, z10);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c(String str, String str2) {
        Object objC = c(1010, new String[]{str, str2});
        return objC instanceof String ? (String) objC : str2;
    }
}
