package com.efs.sdk.net;

import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.ProcessUtil;
import com.efs.sdk.base.integrationtesting.IntegrationTestingUtil;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.efs.sdk.base.samplingwhitelist.SamplingWhiteListUtil;
import com.efs.sdk.net.a.a;
import com.efs.sdk.net.a.b;
import com.efs.sdk.net.a.c;
import com.efs.sdk.net.a.d;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class OkHttpListener extends EventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicInteger f26520a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f26521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f26522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f26523d = new ArrayList();

    private void a(String str) {
        Map<String, Long> map;
        try {
            d dVarC = a.a().c(this.f26521b);
            if (dVarC == null || (map = dVarC.E) == null) {
                return;
            }
            map.put(str, Long.valueOf(System.currentTimeMillis()));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b() {
        try {
            final d dVarC = a.a().c(this.f26521b);
            final c cVarA = a.a().a(this.f26521b);
            if (dVarC == null || cVarA == null) {
                return;
            }
            Map<String, Long> map = dVarC.E;
            Map<String, Long> map2 = dVarC.F;
            Log.i("NetTrace-Listener", cVarA.toString());
            if (TextUtils.isEmpty(dVarC.B)) {
                Log.d("NetTrace-Listener", "url is null.");
                return;
            }
            final EfsJSONLog efsJSONLog = new EfsJSONLog("netperf");
            if (map.containsKey(d.f26565d)) {
                efsJSONLog.put("wd_dns", map.get(d.f26565d));
            }
            if (map.containsKey(d.f26566e)) {
                efsJSONLog.put("wd_dnstm", map.get(d.f26566e));
            }
            if (map2.containsKey(d.f26581t)) {
                efsJSONLog.put("wl_dns", map2.get(d.f26581t));
            }
            if (map.containsKey(d.f26567f)) {
                efsJSONLog.put("wd_tcp", map.get(d.f26567f));
            }
            if (map.containsKey(d.f26570i)) {
                efsJSONLog.put("wd_tcptm", map.get(d.f26570i));
            }
            if (map2.containsKey(d.f26583v)) {
                efsJSONLog.put("wl_tcp", map2.get(d.f26583v));
            }
            if (map.containsKey(d.f26568g)) {
                efsJSONLog.put("wd_ssl", map.get(d.f26568g));
            }
            if (map.containsKey(d.f26569h)) {
                efsJSONLog.put("wd_ssltm", map.get(d.f26569h));
            }
            if (map2.containsKey(d.f26582u)) {
                efsJSONLog.put("wl_ssl", map2.get(d.f26582u));
            }
            if (map.containsKey(d.f26572k)) {
                efsJSONLog.put("wd_ds", map.get(d.f26572k));
            }
            if (map.containsKey(d.f26575n)) {
                efsJSONLog.put("wd_dstm", map.get(d.f26575n));
            }
            if (map2.containsKey(d.f26584w) && map2.containsKey(d.f26585x)) {
                efsJSONLog.put("wl_ds", Long.valueOf(map2.get(d.f26584w).longValue() + map2.get(d.f26585x).longValue()));
            }
            if (map.containsKey(d.f26576o)) {
                efsJSONLog.put("wd_srt", map.get(d.f26576o));
            }
            if (map.containsKey(d.f26579r)) {
                efsJSONLog.put("wd_srttm", map.get(d.f26579r));
            }
            if (map2.containsKey(d.f26586y) && map2.containsKey(d.f26587z)) {
                efsJSONLog.put("wl_srt", Long.valueOf(map2.get(d.f26586y).longValue() + map2.get(d.f26587z).longValue()));
            }
            String[] strArrSplit = dVarC.B.split("\\?");
            String str = strArrSplit != null ? strArrSplit[0] : null;
            List list = this.f26523d;
            if (list == null || str == null || list.contains(str)) {
                efsJSONLog.put("wd_ttfb", 0);
                efsJSONLog.put("wd_ttfbtm", 0);
                efsJSONLog.put("wl_ttfb", 0);
            } else {
                this.f26523d.add(str);
                if (map.containsKey(d.f26575n)) {
                    efsJSONLog.put("wd_ttfb", map.get(d.f26575n));
                } else if (map.containsKey(d.f26573l)) {
                    efsJSONLog.put("wd_ttfb", map.get(d.f26573l));
                }
                if (map.containsKey(d.f26576o)) {
                    efsJSONLog.put("wd_ttfbtm", map.get(d.f26576o));
                }
                if (map.containsKey(d.f26576o)) {
                    if (map.containsKey(d.f26575n)) {
                        efsJSONLog.put("wl_ttfb", Long.valueOf(map.get(d.f26576o).longValue() - map.get(d.f26575n).longValue()));
                    } else if (map.containsKey(d.f26573l)) {
                        efsJSONLog.put("wl_ttfb", Long.valueOf(map.get(d.f26576o).longValue() - map.get(d.f26573l).longValue()));
                    }
                }
            }
            if (map.containsKey(d.f26562a)) {
                efsJSONLog.put("wd_rt", map.get(d.f26562a));
            }
            if (map.containsKey(d.f26563b)) {
                efsJSONLog.put("wd_rttm", map.get(d.f26563b));
            }
            if (map2.containsKey(d.f26580s)) {
                efsJSONLog.put("wl_rt", map2.get(d.f26580s));
            }
            efsJSONLog.put("wk_res", dVarC.B);
            efsJSONLog.put("wk_ip", dVarC.C);
            efsJSONLog.put("wk_method", cVarA.f26556e);
            efsJSONLog.put("wk_rc", Integer.valueOf(cVarA.f26559h));
            efsJSONLog.put("wl_up", Long.valueOf(cVarA.f26557f));
            efsJSONLog.put("wl_down", Long.valueOf(cVarA.f26561j));
            efsJSONLog.put("wl_total", Long.valueOf(cVarA.f26557f + cVarA.f26561j));
            b.a(new Runnable() { // from class: com.efs.sdk.net.OkHttpListener.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        try {
                            if (NetManager.getNetConfigManager().getNetRequestBodyCollectState() && !TextUtils.isEmpty(cVarA.f26558g)) {
                                efsJSONLog.put("wk_bd", com.efs.sdk.net.b.a.a(com.efs.sdk.net.b.a.a(cVarA.f26558g.getBytes(), com.efs.sdk.net.b.a.a((dVarC.E.containsKey(d.f26562a) ? String.valueOf(dVarC.E.get(d.f26562a)) : "") + ControllerCenter.getGlobalEnvStruct().getAppid() + ControllerCenter.getGlobalEnvStruct().getSecret()).getBytes())));
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        OkHttpListener.a(dVarC, cVarA, efsJSONLog);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            });
            a.a().d(this.f26521b);
            a.a().b(this.f26521b);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static EventListener.Factory get() {
        return new EventListener.Factory() { // from class: com.efs.sdk.net.OkHttpListener.1
            @Override // okhttp3.EventListener.Factory
            @NotNull
            public final EventListener create(@NotNull Call call) {
                return new OkHttpListener();
            }
        };
    }

    @Override // okhttp3.EventListener
    public void callEnd(@NotNull Call call) {
        super.callEnd(call);
        try {
            Log.d("NetTrace-Listener", "callEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "callEnd net enable false.");
                return;
            }
            a(d.f26563b);
            a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void callFailed(@NotNull Call call, @NotNull IOException iOException) {
        super.callFailed(call, iOException);
        try {
            Log.d("NetTrace-Listener", "callFailed");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "callFailed net enable false.");
                return;
            }
            a(d.f26564c);
            a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void callStart(@NotNull Call call) {
        super.callStart(call);
        try {
            Log.d("NetTrace-Listener", "callStart");
            if (NetManager.getNetConfigManager() != null && NetManager.getNetConfigManager().enableTracer()) {
                this.f26522c = true;
            }
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "callStart net enable false.");
                return;
            }
            this.f26521b = String.valueOf(f26520a.getAndIncrement());
            Log.i("NetTrace-Listener", "requestId is" + this.f26521b);
            a(d.f26562a);
            String url = call.request().url().getUrl();
            try {
                d dVarC = a.a().c(this.f26521b);
                if (dVarC != null) {
                    dVarC.B = url;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void connectEnd(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        try {
            Log.d("NetTrace-Listener", "connectEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "connectEnd net enable false.");
                return;
            }
            a(d.f26570i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void connectFailed(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException iOException) {
        super.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
        try {
            Log.d("NetTrace-Listener", "connectFailed");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "connectFailed net enable false.");
                return;
            }
            a(d.f26571j);
            a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void connectStart(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        super.connectStart(call, inetSocketAddress, proxy);
        try {
            Log.d("NetTrace-Listener", "connectStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "connectStart net enable false.");
                return;
            }
            a(d.f26567f);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(@NotNull Call call, @NotNull Connection connection) {
        super.connectionAcquired(call, connection);
        try {
            Log.d("NetTrace-Listener", "connectionAcquired");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "callStart net enable false.");
                return;
            }
            InetAddress inetAddress = connection.socket().getInetAddress();
            if (inetAddress != null) {
                String hostAddress = inetAddress.getHostAddress();
                try {
                    d dVarC = a.a().c(this.f26521b);
                    if (dVarC != null) {
                        dVarC.C = hostAddress;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(@NotNull Call call, @NotNull String str, @NotNull List<InetAddress> list) {
        super.dnsEnd(call, str, list);
        try {
            Log.d("NetTrace-Listener", "dnsEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "dnsEnd net enable false.");
                return;
            }
            a(d.f26566e);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void dnsStart(@NotNull Call call, @NotNull String str) {
        super.dnsStart(call, str);
        try {
            Log.d("NetTrace-Listener", "dnsStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "dnsStart net enable false.");
                return;
            }
            a(d.f26565d);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(@NotNull Call call, long j10) {
        super.requestBodyEnd(call, j10);
        try {
            Log.d("NetTrace-Listener", "requestBodyEnd");
            call.request().body();
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "requestBodyEnd net enable false.");
                return;
            }
            a(d.f26575n);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(@NotNull Call call) {
        super.requestBodyStart(call);
        try {
            Log.d("NetTrace-Listener", "requestBodyStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "requestBodyStart net enable false.");
                return;
            }
            a(d.f26574m);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(@NotNull Call call, @NotNull Request request) {
        super.requestHeadersEnd(call, request);
        try {
            Log.d("NetTrace-Listener", "requestHeadersEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "requestHeadersEnd net enable false.");
                return;
            }
            a(d.f26573l);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(@NotNull Call call) {
        super.requestHeadersStart(call);
        try {
            Log.d("NetTrace-Listener", "requestHeadersStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "requestHeadersStart net enable false.");
                return;
            }
            a(d.f26572k);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(@NotNull Call call, long j10) {
        super.responseBodyEnd(call, j10);
        try {
            Log.d("NetTrace-Listener", "responseBodyEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "responseBodyEnd net enable false.");
                return;
            }
            a(d.f26579r);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(@NotNull Call call) {
        super.responseBodyStart(call);
        try {
            Log.d("NetTrace-Listener", "responseBodyStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "responseBodyStart net enable false.");
                return;
            }
            a(d.f26578q);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(@NotNull Call call, @NotNull Response response) {
        super.responseHeadersEnd(call, response);
        try {
            Log.d("NetTrace-Listener", "responseHeadersEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "responseHeadersEnd net enable false.");
                return;
            }
            a(d.f26577p);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(@NotNull Call call) {
        super.responseHeadersStart(call);
        try {
            Log.d("NetTrace-Listener", "responseHeadersStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "responseHeadersStart net enable false.");
                return;
            }
            a(d.f26576o);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(@NotNull Call call, @Nullable Handshake handshake) {
        super.secureConnectEnd(call, handshake);
        try {
            Log.d("NetTrace-Listener", "secureConnectEnd");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "secureConnectEnd net enable false.");
                return;
            }
            a(d.f26569h);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(@NotNull Call call) {
        super.secureConnectStart(call);
        try {
            Log.d("NetTrace-Listener", "secureConnectStart");
            if (!this.f26522c && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                Log.d("NetTrace-Listener", "secureConnectStart net enable false.");
                return;
            }
            a(d.f26568g);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a() {
        try {
            d dVarC = a.a().c(this.f26521b);
            if (dVarC != null) {
                Map<String, Long> map = dVarC.E;
                Map<String, Long> map2 = dVarC.F;
                map2.put(d.f26580s, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26562a, d.f26563b)));
                map2.put(d.f26581t, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26565d, d.f26566e)));
                map2.put(d.f26582u, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26568g, d.f26569h)));
                map2.put(d.f26583v, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26567f, d.f26570i)));
                map2.put(d.f26584w, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26572k, d.f26573l)));
                map2.put(d.f26585x, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26574m, d.f26575n)));
                map2.put(d.f26586y, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26576o, d.f26577p)));
                map2.put(d.f26587z, Long.valueOf(com.efs.sdk.net.b.a.a(map, d.f26578q, d.f26579r)));
                b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void a(EfsJSONLog efsJSONLog) {
        try {
            EfsReporter reporter = NetManager.getReporter();
            if (reporter != null) {
                reporter.send(efsJSONLog);
                if (SamplingWhiteListUtil.isHitWL()) {
                    return;
                }
                SharedPreferences sharedPreferences = ControllerCenter.getGlobalEnvStruct().mAppContext.getSharedPreferences("net_launch" + ProcessUtil.getCurrentProcessName(), 0);
                String str = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(new Date(System.currentTimeMillis()));
                if (sharedPreferences != null) {
                    int i10 = sharedPreferences.getInt(str, 0);
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    if (editorEdit != null) {
                        editorEdit.putInt(str, i10 + 1);
                        editorEdit.apply();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static String a(Map<String, String> map, boolean z10, boolean z11) {
        try {
            StringBuilder sb2 = new StringBuilder();
            if (!SamplingWhiteListUtil.isHitWL()) {
                sb2.append("0");
            } else {
                sb2.append("1");
            }
            sb2.append("|");
            sb2.append(NetManager.getNetConfigManager().getExtraRateFlag());
            if (map.size() != 0 && !z10 && z11) {
                sb2.append("|1");
            } else {
                sb2.append("|0");
            }
            sb2.append("|");
            sb2.append(new JSONObject(map).toString());
            return com.efs.sdk.net.b.a.a(com.efs.sdk.net.b.a.a(sb2.toString().getBytes(), ControllerCenter.getGlobalEnvStruct().getSecret().getBytes()));
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x015a  */
    /* JADX WARN: Code duplicated, block: B:83:0x019a  */
    /* JADX WARN: Code duplicated, block: B:86:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:93:0x01be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x01c0  */
    static /* synthetic */ void a(d dVar, c cVar, EfsJSONLog efsJSONLog) {
        boolean zA;
        boolean z10;
        boolean z11;
        int iOptInt;
        String str;
        try {
            SharedPreferences sharedPreferences = ControllerCenter.getGlobalEnvStruct().mAppContext.getSharedPreferences("net_launch" + ProcessUtil.getCurrentProcessName(), 0);
            String str2 = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(new Date(System.currentTimeMillis()));
            if (sharedPreferences != null) {
                int i10 = sharedPreferences.getInt(str2, 0);
                if (!SamplingWhiteListUtil.isHitWL() && NetManager.getNetConfigManager().getDayLimit() != -1 && i10 >= NetManager.getNetConfigManager().getDayLimit()) {
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        Map<String, Object> strategyMap = NetManager.getReporter().getStrategyMap();
        boolean zA2 = com.efs.sdk.net.b.a.a(NetManager.getNetConfigManager().getDataRate());
        String strA = "";
        if (strategyMap == null || strategyMap.size() != 2) {
            zA = false;
            z10 = false;
        } else {
            try {
                zA = com.efs.sdk.net.b.a.a(((Integer) strategyMap.get("rate")).intValue());
                if (!zA2 && !zA) {
                    try {
                        if (!SamplingWhiteListUtil.isHitWL()) {
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z10 = false;
                        th.printStackTrace();
                        if (TextUtils.isEmpty(strA)) {
                            strA = a((Map<String, String>) new HashMap(), zA2, false);
                        }
                        efsJSONLog.put("dx", strA);
                        if (SamplingWhiteListUtil.isHitWL()) {
                            a(efsJSONLog);
                            return;
                        }
                        if (!z10) {
                            if (zA2) {
                            }
                            a(efsJSONLog);
                        } else if (zA2) {
                            a(efsJSONLog);
                        }
                    }
                }
                JSONArray jSONArray = (JSONArray) strategyMap.get("stra");
                HashMap map = new HashMap();
                boolean z12 = true;
                if (jSONArray != null && jSONArray.length() > 0) {
                    int i11 = 0;
                    while (i11 < jSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                        if (TextUtils.isEmpty(dVar.B)) {
                            z11 = false;
                        } else {
                            String strOptString = jSONObjectOptJSONObject.optString("u");
                            if (TextUtils.isEmpty(strOptString)) {
                                z11 = false;
                            } else {
                                if (strOptString.startsWith("^") ^ z12) {
                                    Uri uri = Uri.parse(dVar.B);
                                    int port = uri.getPort();
                                    if (port >= 0 && port <= 65535) {
                                        str = uri.getHost() + ":" + port + uri.getPath();
                                    } else {
                                        str = uri.getHost() + uri.getPath();
                                    }
                                    if (com.efs.sdk.net.b.a.a(str).equalsIgnoreCase(strOptString)) {
                                        iOptInt = jSONObjectOptJSONObject.optInt("v", -1);
                                        if (iOptInt == -1 && iOptInt <= 2) {
                                            int iOptInt2 = jSONObjectOptJSONObject.optInt("s", -1);
                                            if (iOptInt2 != 0) {
                                                if (iOptInt2 == 2 && NetManager.getNetConfigManager().getNetRequestBodyCollectState()) {
                                                    if (!TextUtils.isEmpty(cVar.f26558g)) {
                                                    }
                                                }
                                            }
                                            z11 = true;
                                        }
                                    }
                                    z11 = false;
                                } else if (Pattern.matches(strOptString, dVar.B)) {
                                    iOptInt = jSONObjectOptJSONObject.optInt("v", -1);
                                    if (iOptInt == -1) {
                                    }
                                }
                                z11 = false;
                            }
                        }
                        if (z11) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(jSONObjectOptJSONObject.optInt("i"));
                            map.put(sb2.toString(), "");
                        }
                        i11++;
                        z12 = true;
                    }
                }
                z10 = map.size() != 0;
                try {
                    strA = a(map, zA2, zA);
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
                zA = false;
            }
        }
        if (TextUtils.isEmpty(strA)) {
            strA = a((Map<String, String>) new HashMap(), zA2, false);
        }
        efsJSONLog.put("dx", strA);
        if (SamplingWhiteListUtil.isHitWL()) {
            a(efsJSONLog);
            return;
        }
        if (!z10) {
            if (zA2) {
                a(efsJSONLog);
            }
        } else if (!zA2 || zA) {
            a(efsJSONLog);
        }
    }
}
