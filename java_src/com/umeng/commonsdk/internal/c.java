package com.umeng.commonsdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.bo;
import com.umeng.analytics.pro.bp;
import com.umeng.analytics.pro.bq;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.q;
import com.umeng.ccg.CcgAgent;
import com.umeng.ccg.ConfigListener;
import com.umeng.commonsdk.UMConfigureImpl;
import com.umeng.commonsdk.UMInnerManager;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.SelfChecker;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.internal.utils.InfoPreferenceAgent;
import com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.i;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.onMessageSendListener;
import com.umeng.commonsdk.vchannel.Sender;
import com.umeng.umzid.ZIDManager;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c implements UMLogDataProtocol {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f85226b = "preInitInvokedFlag";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f85227c = "policyGrantInvokedFlag";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f85228d = "policyGrantResult";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f85229f = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f85237e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f85225a = aw.b().b(aw.f84336q);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Class<?> f85230g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Method f85231h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Method f85232i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Method f85233j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile String f85234k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile String f85235l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f85236m = false;

    static {
        c();
    }

    public c(Context context) {
        if (context != null) {
            this.f85237e = context.getApplicationContext();
        }
    }

    public static String b() {
        Method method;
        if (!TextUtils.isEmpty(f85235l)) {
            return f85235l;
        }
        Class<?> cls = f85230g;
        if (cls == null || (method = f85231h) == null || f85233j == null) {
            return "";
        }
        try {
            Object objInvoke = method.invoke(cls, new Object[0]);
            if (objInvoke == null) {
                return "";
            }
            String str = (String) f85233j.invoke(objInvoke, new Object[0]);
            try {
                f85235l = str;
            } catch (Throwable unused) {
            }
            return str;
        } catch (Throwable unused2) {
            return "";
        }
    }

    private static void c() {
        try {
            f85230g = ZIDManager.class;
            Method declaredMethod = ZIDManager.class.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod != null) {
                f85231h = declaredMethod;
            }
            Method declaredMethod2 = f85230g.getDeclaredMethod("getZID", Context.class);
            if (declaredMethod2 != null) {
                f85232i = declaredMethod2;
            }
            Method declaredMethod3 = f85230g.getDeclaredMethod("getSDKVersion", new Class[0]);
            if (declaredMethod3 != null) {
                f85233j = declaredMethod3;
            }
        } catch (Throwable unused) {
        }
    }

    private void d() {
        bo boVarA = bo.a(this.f85237e);
        bp bpVarA = boVarA.a(bq.f84478c);
        if (bpVarA != null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建成真正信封。");
            try {
                String str = bpVarA.f84470a;
                String str2 = bpVarA.f84471b;
                JSONObject jSONObjectA = new com.umeng.commonsdk.statistics.b().a(this.f85237e.getApplicationContext(), new JSONObject(bpVarA.f84472c), new JSONObject(bpVarA.f84473d), bpVarA.f84474e, str2, bpVarA.f84475f);
                if (jSONObjectA == null || !jSONObjectA.has("exception")) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 成功! 删除二级缓存记录。");
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 失败。删除二级缓存记录");
                }
                boVarA.a(bq.f84478c, str);
                boVarA.b();
            } catch (Throwable unused) {
            }
        }
    }

    private void e() {
        if (f85236m) {
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
                return;
            }
            f85236m = false;
        } else if (FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            f85236m = true;
            a(this.f85237e, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.4
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(String str) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> OAID云控参数更新(不采集->采集)：采集完成");
                    if (TextUtils.isEmpty(str)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> oaid返回null或者空串，不需要 伪冷启动。");
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = c.this.f85237e.getSharedPreferences(i.f85412a, 0);
                        if (sharedPreferences != null) {
                            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                            editorEdit.putString(i.f85413b, str);
                            editorEdit.commit();
                        }
                    } catch (Throwable unused) {
                    }
                    UMWorkDispatch.sendEvent(c.this.f85237e, a.f85218w, b.a(c.this.f85237e).a(), null);
                }
            });
        }
    }

    private void f() {
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            f85236m = true;
            UMConfigureImpl.registerInterruptFlag();
            UMConfigureImpl.init(this.f85237e);
            f85229f++;
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 要读取 oaid，需等待读取结果.");
            UMConfigureImpl.registerMessageSendListener(new onMessageSendListener() { // from class: com.umeng.commonsdk.internal.c.5
                @Override // com.umeng.commonsdk.utils.onMessageSendListener
                public void onMessageSend() {
                    if (c.this.f85237e != null) {
                        UMWorkDispatch.sendEvent(c.this.f85237e, a.f85219x, b.a(c.this.f85237e).a(), null);
                    }
                    UMConfigureImpl.removeMessageSendListener(this);
                }
            });
            a(this.f85237e, true);
        }
    }

    private void g() {
        if (f85229f <= 0) {
            h();
            e(this.f85237e);
        }
    }

    private void h() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 真实构建条件满足，开始构建业务信封。");
        if (UMUtils.isMainProgress(this.f85237e)) {
            f(this.f85237e);
            UMInnerManager.sendInnerPackage(this.f85237e);
            if (!FieldManager.allow(com.umeng.commonsdk.utils.d.ar) && SdkVersion.SDK_TYPE == 0 && UMUtils.isMainProgress(this.f85237e)) {
                Context context = this.f85237e;
                UMWorkDispatch.sendEvent(context, a.G, b.a(context).a(), null, 5000L);
            }
            Context context2 = this.f85237e;
            UMWorkDispatch.sendEvent(context2, q.a.f84879z, CoreProtocol.getInstance(context2), null);
            Context context3 = this.f85237e;
            UMWorkDispatch.sendEvent(context3, a.f85215t, b.a(context3).a(), null);
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j10) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:98:0x02bb  */
    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i10) throws JSONException, IllegalAccessException, InvocationTargetException {
        SharedPreferences.Editor editorEdit;
        boolean z10 = true;
        boolean z11 = false;
        ULog.i("walle", "[internal] workEvent");
        if (com.umeng.commonsdk.utils.c.a()) {
            if (32802 == i10) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 静默模式：进入心跳处理逻辑!");
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jB = com.umeng.commonsdk.utils.c.b(this.f85237e);
                boolean zE = com.umeng.commonsdk.utils.c.e(this.f85237e);
                if (com.umeng.commonsdk.utils.c.a(jB, jCurrentTimeMillis, com.umeng.commonsdk.utils.c.a(this.f85237e))) {
                    if (UMFrUtils.hasEnvelopeFile(this.f85237e, UMLogDataProtocol.UMBusinessType.U_Silent)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 静默心跳信封文件已存在，尝试发送之!");
                    } else {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建静默心跳信封.");
                        b(this.f85237e);
                    }
                    UMEnvelopeBuild.registerNetReceiver(this.f85237e);
                }
                if (zE) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send REBUILD_DB msg in silent mode.");
                Context context = this.f85237e;
                UMWorkDispatch.sendEvent(context, q.a.f84869p, CoreProtocol.getInstance(context), null, 2000L);
            }
            return;
        }
        try {
            switch (i10) {
                case a.f85201f /* 32769 */:
                    ULog.i("walle", "[internal] workEvent send envelope");
                    UMInternalManagerAgent.class.getMethod("sendInternalEnvelopeByStateful2", Context.class).invoke(UMInternalManagerAgent.class, this.f85237e);
                    break;
                case a.f85203h /* 32771 */:
                    if (obj != null && (obj instanceof com.umeng.commonsdk.internal.utils.b)) {
                        JSONObject jSONObject = new JSONObject();
                        com.umeng.commonsdk.internal.utils.b bVar = (com.umeng.commonsdk.internal.utils.b) obj;
                        try {
                            jSONObject.put("le", bVar.f85248a);
                            jSONObject.put("vol", bVar.f85249b);
                            jSONObject.put("temp", bVar.f85250c);
                            jSONObject.put("st", bVar.f85251d);
                            jSONObject.put("ct", bVar.f85252e);
                            jSONObject.put("ts", bVar.f85253f);
                            break;
                        } catch (Throwable unused) {
                        }
                        String string = jSONObject.toString();
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "battery info: " + string);
                        UMInternalUtilsAgent.class.getMethod("saveBattery", Context.class, String.class).invoke(UMInternalUtilsAgent.class, this.f85237e, string);
                        break;
                    }
                    break;
                case a.f85207l /* 32775 */:
                    InfoPreferenceAgent.class.getMethod("saveUA", Context.class, String.class).invoke(InfoPreferenceAgent.class, this.f85237e, (String) obj);
                    break;
                case a.f85209n /* 32777 */:
                    ULog.i("walle", "[internal] workEvent send envelope");
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(bm.aR, "1.2.0");
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(bm.ay, new JSONObject());
                    JSONObject jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(this.f85237e, jSONObject2, jSONObject3);
                    if (jSONObjectBuildEnvelopeWithExtHeader != null && !jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                        ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
                        break;
                    }
                    break;
                case a.f85210o /* 32779 */:
                    Sender.handleEvent(this.f85237e, (com.umeng.commonsdk.vchannel.b) obj);
                    break;
                case a.f85211p /* 32781 */:
                    if (!UMFrUtils.hasEnvelopeFile(this.f85237e, UMLogDataProtocol.UMBusinessType.U_ZeroEnv)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文");
                        a(this.f85237e);
                    } else {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 零号报文信封文件已存在，尝试发送之!");
                    }
                    break;
                case a.f85214s /* 32784 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 零号报文流程，接收到云控配置加载成功通知(成功收到零号报文应答)。");
                    f();
                    f85229f--;
                    g();
                    UMUtils.saveSDKComponent();
                    break;
                case a.f85215t /* 32785 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]接收到消费二级缓存数据通知.");
                    if (!bo.a(this.f85237e).c()) {
                        d();
                        if (!UMWorkDispatch.eventHasExist(a.f85215t)) {
                            Context context2 = this.f85237e;
                            UMWorkDispatch.sendEvent(context2, a.f85215t, b.a(context2).a(), null);
                        }
                    } else {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]已消费完毕,二级缓存数据库为空.");
                    }
                    break;
                case a.f85216u /* 32786 */:
                    UMCrashManager.buildEnvelope(this.f85237e, obj);
                    break;
                case a.f85217v /* 32787 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 触发2号仓遗留信封检查动作。");
                    String strA = com.umeng.commonsdk.stateless.d.a(this.f85237e, false);
                    String strA2 = com.umeng.commonsdk.stateless.d.a(this.f85237e, true);
                    if (!TextUtils.isEmpty(strA)) {
                        File file = new File(strA);
                        if (file.exists() && file.isDirectory()) {
                            z11 = true;
                        }
                    }
                    if (TextUtils.isEmpty(strA2)) {
                        z10 = z11;
                    } else {
                        File file2 = new File(strA2);
                        if (!file2.exists() || !file2.isDirectory()) {
                            z10 = z11;
                        }
                    }
                    if (!z10) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 触发2号仓遗留信封检查，没有需要处理的目录，不需要处理。");
                    } else if (!com.umeng.commonsdk.stateless.b.a()) {
                        new com.umeng.commonsdk.stateless.b(this.f85237e);
                        com.umeng.commonsdk.stateless.b.b();
                    } else {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 触发2号仓遗留信封检查，Sender已创建，不需要处理。");
                    }
                    break;
                case a.f85218w /* 32788 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 云控下发参数更新，触发 伪冷启动。");
                    com.umeng.commonsdk.statistics.b.a();
                    e();
                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.E) && !UMWorkDispatch.eventHasExist()) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 云控下发参数更新 前台计数器功能 打开，触发 5秒周期检查机制");
                        Context context3 = this.f85237e;
                        UMWorkDispatch.sendEventEx(context3, q.a.E, CoreProtocol.getInstance(context3), null, 5000L);
                    }
                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.F)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 云控下发参数更新 FirstResume功能 打开，触发 trigger");
                        n.a(this.f85237e).b(this.f85237e);
                    }
                    break;
                case a.f85219x /* 32790 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 成功接收到(OAID)读取结束通知。");
                    f85229f--;
                    g();
                    break;
                case a.f85220y /* 32791 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 正常冷启动流程，接收到云控配置加载成功通知。");
                    UMInnerManager.sendInnerPackage(this.f85237e);
                    if (!FieldManager.allow(com.umeng.commonsdk.utils.d.ar) && SdkVersion.SDK_TYPE == 0 && UMUtils.isMainProgress(this.f85237e)) {
                        Context context4 = this.f85237e;
                        UMWorkDispatch.sendEvent(context4, a.G, b.a(context4).a(), null, 5000L);
                    }
                    e(this.f85237e);
                    UMUtils.saveSDKComponent();
                    break;
                case a.f85221z /* 32792 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 保存隐私授权结果.");
                    if (obj instanceof Integer) {
                        int iIntValue = ((Integer) obj).intValue();
                        SharedPreferences sharedPreferences = this.f85237e.getApplicationContext().getSharedPreferences(f85225a, 0);
                        if (sharedPreferences != null) {
                            sharedPreferences.edit().putInt("policyGrantResult", iIntValue).commit();
                        }
                    }
                    break;
                case a.A /* 32793 */:
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 保存preInit执行结果及授权API是否调用结果.");
                    if (obj instanceof JSONObject) {
                        JSONObject jSONObject4 = (JSONObject) obj;
                        if (jSONObject4.has(a.J)) {
                            int i11 = jSONObject4.getInt(a.J);
                            int i12 = jSONObject4.getInt(a.K);
                            int i13 = jSONObject4.getInt("policyGrantResult");
                            SharedPreferences sharedPreferences2 = this.f85237e.getApplicationContext().getSharedPreferences(f85225a, 0);
                            if (sharedPreferences2 != null && (editorEdit = sharedPreferences2.edit()) != null) {
                                editorEdit.putInt(f85226b, i11);
                                editorEdit.putInt(f85227c, i12);
                                editorEdit.putInt("policyGrantResult", i13);
                                editorEdit.commit();
                            }
                            File file3 = new File(this.f85237e.getFilesDir().getAbsolutePath() + File.separator + bq.f84488m);
                            if (!file3.exists()) {
                                file3.createNewFile();
                            }
                        }
                    }
                    break;
                case a.B /* 32800 */:
                    File file4 = new File(this.f85237e.getFilesDir().getAbsolutePath() + File.separator + bq.f84488m);
                    if (file4.exists()) {
                        file4.delete();
                    }
                    break;
                case a.C /* 32801 */:
                    SelfChecker.doCheck(this.f85237e);
                    break;
                case a.E /* 32803 */:
                    ConnectivityManager connectivityManager = (ConnectivityManager) this.f85237e.getSystemService("connectivity");
                    if (connectivityManager == null) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> ConnectivityManager is null!");
                        com.umeng.commonsdk.framework.a.a(false);
                        com.umeng.commonsdk.stateless.b.a(false);
                    } else {
                        try {
                            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                            if (activeNetworkInfo == null) {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> NetworkInfo is null!");
                                com.umeng.commonsdk.framework.a.a(false);
                                com.umeng.commonsdk.stateless.b.a(false);
                            } else if (activeNetworkInfo.isAvailable()) {
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network state changed: Available");
                                com.umeng.commonsdk.framework.a.a(true);
                                com.umeng.commonsdk.stateless.b.a(true);
                            } else {
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network state changed: unAvailable");
                                com.umeng.commonsdk.framework.a.a(false);
                                com.umeng.commonsdk.stateless.b.a(false);
                            }
                        } catch (Throwable unused2) {
                            com.umeng.commonsdk.framework.a.a(false);
                            com.umeng.commonsdk.stateless.b.a(false);
                            return;
                        }
                    }
                    break;
                case a.F /* 32804 */:
                    d(this.f85237e);
                    break;
                case a.G /* 32805 */:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv CLOUD_CONFIG_TRIGGER msg.");
                    CcgAgent.registerConfigListener(new ConfigListener() { // from class: com.umeng.commonsdk.internal.c.6
                        @Override // com.umeng.ccg.ConfigListener
                        public void onConfigReady(JSONObject jSONObject5) {
                            if (jSONObject5 == null) {
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "onConfigReady: empty config!");
                                return;
                            }
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "onConfigReady:" + jSONObject5.toString());
                            com.umeng.ccg.c.a(c.this.f85237e, 201, com.umeng.ccg.d.a(), jSONObject5);
                        }
                    });
                    SharedPreferences sharedPreferencesA = at.a(this.f85237e);
                    if (sharedPreferencesA != null) {
                        long j10 = sharedPreferencesA.getLong(at.f84308a, 0L);
                        if (j10 < Long.MAX_VALUE) {
                            j10++;
                        }
                        sharedPreferencesA.edit().putLong(at.f84308a, j10).commit();
                    }
                    CcgAgent.init(this.f85237e);
                    break;
            }
        } catch (Throwable unused3) {
        }
    }

    public String a() {
        Method method;
        if (!TextUtils.isEmpty(f85234k)) {
            return f85234k;
        }
        Class<?> cls = f85230g;
        if (cls == null || (method = f85231h) == null || f85232i == null) {
            return "";
        }
        try {
            Object objInvoke = method.invoke(cls, new Object[0]);
            if (objInvoke == null) {
                return "";
            }
            String str = (String) f85232i.invoke(objInvoke, this.f85237e);
            try {
                f85234k = str;
            } catch (Throwable unused) {
            }
            return str;
        } catch (Throwable unused2) {
            return "";
        }
    }

    private void b(Context context) {
        try {
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, bm.f84404g, "");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("appkey"), UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(bm.f84404g), strImprintProperty);
            JSONObject jSONObjectBuildSilentEnvelopeWithExtHeader = UMEnvelopeBuild.buildSilentEnvelopeWithExtHeader(context, jSONObject, null, UMServerURL.SILENT_HEART_BEAT);
            if (jSONObjectBuildSilentEnvelopeWithExtHeader != null && jSONObjectBuildSilentEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建心跳报文失败.");
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建心跳报文 成功!!!");
            }
        } catch (Throwable unused) {
        }
    }

    private void a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("appkey"), UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMGlobalContext.getInstance(context).getAppVersion());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(bm.f84421x), "Android");
            JSONObject jSONObjectBuildZeroEnvelopeWithExtHeader = UMEnvelopeBuild.buildZeroEnvelopeWithExtHeader(context, jSONObject, null, UMServerURL.ZCFG_PATH);
            if (jSONObjectBuildZeroEnvelopeWithExtHeader != null && jSONObjectBuildZeroEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文失败.");
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文 成功!!!");
            }
        } catch (Throwable unused) {
        }
    }

    private void e(Context context) {
        Object objInvoke;
        Method declaredMethod;
        Context applicationContext = context.getApplicationContext();
        String appkey = UMUtils.getAppkey(context);
        try {
            Class<?> clsA = a("com.umeng.umzid.ZIDManager");
            Method declaredMethod2 = clsA.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod2 == null || (objInvoke = declaredMethod2.invoke(clsA, new Object[0])) == null || (declaredMethod = clsA.getDeclaredMethod("init", Context.class, String.class, a("com.umeng.umzid.IZIDCompletionCallback"))) == null) {
                return;
            }
            declaredMethod.invoke(objInvoke, applicationContext, appkey, null);
        } catch (Throwable unused) {
        }
    }

    private static void c(final Context context) {
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            a(context, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.3
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(String str) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = context.getSharedPreferences(i.f85412a, 0);
                        if (sharedPreferences == null || sharedPreferences.getString(i.f85413b, "").equalsIgnoreCase(str)) {
                            return;
                        }
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 更新本地缓存OAID");
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(i.f85413b, str);
                        editorEdit.commit();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    private static void f(Context context) {
        File file = new File(context.getFilesDir().getAbsolutePath() + File.separator + bq.f84487l);
        if (file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    public static void a(final Context context, final boolean z10) {
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SharedPreferences sharedPreferences = context.getSharedPreferences(i.f85412a, 0);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strA = ay.a(context);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (!TextUtils.isEmpty(strA) && sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(i.f85414c, (jCurrentTimeMillis2 - jCurrentTimeMillis) + "");
                        editorEdit.commit();
                    }
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                        editorEdit2.putString(i.f85413b, strA);
                        editorEdit2.commit();
                    }
                    if (DeviceConfig.isHonorDevice()) {
                        if (bk.c()) {
                            String strC = ay.c(context);
                            if (sharedPreferences != null) {
                                SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
                                editorEdit3.putString(com.umeng.commonsdk.statistics.idtracking.c.f85389b, strC);
                                editorEdit3.commit();
                            }
                        } else if (bk.b() && sharedPreferences != null) {
                            SharedPreferences.Editor editorEdit4 = sharedPreferences.edit();
                            editorEdit4.putString(com.umeng.commonsdk.statistics.idtracking.c.f85389b, strA);
                            editorEdit4.commit();
                        }
                    }
                    if (z10) {
                        UMConfigureImpl.removeInterruptFlag();
                    }
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    private void d(Context context) {
        long jLongValue;
        long jLongValue2;
        if (context == null) {
            return;
        }
        String str = AnalyticsConfig.RTD_SP_FILE;
        String strA = com.umeng.common.b.a(context, str, "debugkey");
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        String strA2 = com.umeng.common.b.a(context, str, AnalyticsConfig.RTD_START_TIME);
        String strA3 = com.umeng.common.b.a(context, str, "period");
        if (TextUtils.isEmpty(strA2)) {
            jLongValue = 0;
        } else {
            try {
                jLongValue = Long.valueOf(strA2).longValue();
            } catch (Throwable unused) {
                jLongValue = 0;
            }
        }
        if (TextUtils.isEmpty(strA3)) {
            jLongValue2 = 0;
        } else {
            try {
                jLongValue2 = Long.valueOf(strA3).longValue();
            } catch (Throwable unused2) {
                jLongValue2 = 0;
            }
        }
        if (jLongValue == 0 || jLongValue2 == 0) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存startTime或者duration值无效，清除缓存数据");
            com.umeng.common.b.a(context, AnalyticsConfig.RTD_SP_FILE);
            return;
        }
        if (System.currentTimeMillis() - jLongValue > jLongValue2 * 60 * 1000) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存dk值已经超时，清除缓存数据。");
            com.umeng.common.b.a(context, AnalyticsConfig.RTD_SP_FILE);
            if (AnalyticsConfig.isRealTimeDebugMode()) {
                AnalyticsConfig.turnOffRealTimeDebug();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put("debugkey", strA);
        if (AnalyticsConfig.isRealTimeDebugMode()) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存dk值在有效期内，切换到埋点验证模式。");
        AnalyticsConfig.turnOnRealTimeDebug(map);
    }

    private static void a(Context context, final OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.2
            @Override // java.lang.Runnable
            public void run() {
                String strA = ay.a(applicationContext);
                OnGetOaidListener onGetOaidListener2 = onGetOaidListener;
                if (onGetOaidListener2 != null) {
                    onGetOaidListener2.onGetOaid(strA);
                }
            }
        }).start();
    }

    private static Class<?> a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
