package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.cn;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.f;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.internal.d;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f85335b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f85336c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f85337d = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f85338o = "thtstart";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f85339p = "gkvc";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f85340q = "ekvc";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f85341a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.internal.c f85343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImprintHandler f85344g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f f85345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImprintHandler.a f85346i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Defcon f85348k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f85349l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f85350m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f85351n;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Context f85352r;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f85342e = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ABTest f85347j = null;

    public c(Context context) {
        this.f85345h = null;
        this.f85346i = null;
        this.f85348k = null;
        this.f85349l = 0L;
        this.f85350m = 0;
        this.f85351n = 0;
        this.f85341a = null;
        this.f85352r = context;
        this.f85346i = ImprintHandler.getImprintService(context).c();
        this.f85348k = Defcon.getService(this.f85352r);
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f85352r);
        this.f85349l = sharedPreferences.getLong(f85338o, 0L);
        this.f85350m = sharedPreferences.getInt(f85339p, 0);
        this.f85351n = sharedPreferences.getInt(f85340q, 0);
        this.f85341a = UMEnvelopeBuild.imprintProperty(this.f85352r, "track_list", null);
        ImprintHandler imprintService = ImprintHandler.getImprintService(this.f85352r);
        this.f85344g = imprintService;
        imprintService.a(new d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(ImprintHandler.a aVar) {
                c.this.f85348k.onImprintChanged(aVar);
                c cVar = c.this;
                cVar.f85341a = UMEnvelopeBuild.imprintProperty(cVar.f85352r, "track_list", null);
            }
        });
        if (!UMConfigure.needSendZcfgEnv(this.f85352r)) {
            this.f85345h = f.a(this.f85352r);
        }
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.f85352r);
        this.f85343f = cVar;
        cVar.a(StatTracer.getInstance(this.f85352r));
    }

    public boolean a(File file) {
        String strC;
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name)) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a aVarA = com.umeng.commonsdk.statistics.internal.a.a(this.f85352r);
            aVarA.e(name);
            boolean zA = aVarA.a(name);
            boolean zB = aVarA.b(name);
            boolean zC = aVarA.c(name);
            boolean zD = aVarA.d(name);
            String strD = com.umeng.commonsdk.stateless.d.d(name);
            if (!TextUtils.isEmpty(strD)) {
                strC = com.umeng.commonsdk.stateless.d.c(strD);
            } else if (zD) {
                strC = UMServerURL.SILENT_HEART_BEAT;
            } else {
                strC = zC ? UMServerURL.ZCFG_PATH : UMServerURL.PATH_ANALYTICS;
            }
            byte[] bArrA = this.f85343f.a(byteArray, zA, zC, strC);
            int iA = bArrA == null ? 1 : a(bArrA);
            if (UMConfigure.isDebugLog()) {
                if (zD && iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "heart beat req: succeed.");
                } else if (zC && iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Zero req: succeed.");
                } else if (zB && iA == 2) {
                    MLog.d("本次启动数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send instant data: succeed.");
                } else if (zA && iA == 2) {
                    MLog.d("普通统计数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send analytics data: succeed.");
                } else if (iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Inner req: succeed.");
                }
            }
            if (iA == 2) {
                f fVar = this.f85345h;
                if (fVar != null) {
                    fVar.e();
                }
                StatTracer.getInstance(this.f85352r).saveSate();
                if (zD) {
                    String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f85352r, "iss", "");
                    if (!TextUtils.isEmpty(strImprintProperty)) {
                        if ("1".equalsIgnoreCase(strImprintProperty)) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 更新静默心跳最后一次成功请求时间.");
                            com.umeng.commonsdk.utils.c.a(this.f85352r, System.currentTimeMillis());
                        } else if ("0".equalsIgnoreCase(strImprintProperty)) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 静默模式 -> 正常模式。重置 last req time");
                            com.umeng.commonsdk.utils.c.a(this.f85352r, 0L);
                            com.umeng.commonsdk.utils.c.d(this.f85352r);
                        }
                    }
                }
            } else if (iA == 3) {
                StatTracer.getInstance(this.f85352r).saveSate();
                if (zC) {
                    FieldManager.a().a(this.f85352r);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 零号报文应答内容报错!!! ，特殊处理!，继续正常流程。");
                    Context context = this.f85352r;
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f85214s, com.umeng.commonsdk.internal.b.a(context).a(), null);
                    return true;
                }
            }
            return iA == 2;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f85352r, th);
            return false;
        }
    }

    private int a(byte[] bArr) {
        Response response = new Response();
        try {
            new by(new cn.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.f85344g.b(response.getImprint());
                this.f85344g.d();
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f85352r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }
}
