package com.byazt.no;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.hs.da;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.haima.hmcp.proto.GSSDK;
import e0.a;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f17540c;
    public static long tt;
    public static final Handler uj;
    public static final HandlerThread ve;

    static {
        HandlerThread handlerThread = new HandlerThread("Downloader-preconnecter");
        ve = handlerThread;
        tt();
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        uj = handler;
        handler.post(new Runnable() { // from class: com.byazt.no.tt.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Process.setThreadPriority(10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static void tt() {
        f17540c = com.byazt.k.c.ve().c("preconnect_connection_outdate_time", a.f90863b);
        tt = com.byazt.k.c.ve().c("preconnect_head_info_outdate_time", a.f90863b);
        c.c().c(com.byazt.k.c.ve().c("preconnect_max_cache_size", 3));
    }

    public static Looper c() {
        return ve.getLooper();
    }

    public static void c(final String str, final da daVar) {
        uj.post(new Runnable() { // from class: com.byazt.no.tt.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                ve veVarC = null;
                if (TextUtils.isEmpty(str)) {
                    da daVar2 = daVar;
                    if (daVar2 != null) {
                        daVar2.c(null);
                        return;
                    }
                    return;
                }
                try {
                    List<com.byazt.t.ve> listTt = tt.tt(0L, null, null);
                    veVarC = c.c().c(str) ? c.c().c(str, listTt) : null;
                    if (veVarC == null) {
                        ve veVar = new ve(str, listTt, 0L);
                        try {
                            veVar.c();
                            if (veVar.n()) {
                                c.c().c(str, veVar);
                            }
                            veVarC = veVar;
                        } catch (Exception e10) {
                            e = e10;
                            veVarC = veVar;
                            m.c(e);
                            try {
                                veVarC.ve();
                                return;
                            } catch (Throwable unused) {
                                return;
                            }
                        } catch (Throwable th) {
                            th = th;
                            veVarC = veVar;
                            try {
                                veVarC.ve();
                            } catch (Throwable unused2) {
                            }
                            throw th;
                        }
                    }
                    Map<String, String> mapI = veVarC.i();
                    da daVar3 = daVar;
                    if (daVar3 != null) {
                        daVar3.c(mapI);
                    }
                    try {
                        veVarC.ve();
                    } catch (Throwable unused3) {
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<com.byazt.t.ve> tt(long j10, DownloadInfo downloadInfo, List<com.byazt.t.ve> list) {
        return com.byazt.w.a.c(list, downloadInfo == null ? null : downloadInfo.geteTag(), j10, 0L);
    }
}
