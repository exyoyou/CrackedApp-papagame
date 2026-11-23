package com.byazt.fiq;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.alipay.sdk.packet.d;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f14188c;
    public final com.byazt.fiq.c tt;
    public boolean ve = false;
    public int uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14189n = -3;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT, 464})
    public static final class c {
        public static String c(int i10) {
            switch (i10) {
                case 200:
                    return "200_但取号失败";
                case 102101:
                    return "无网络状态";
                case 102102:
                    return OauthResult.RESULT_MSG_NETWORK_EXCEPTION;
                case 102103:
                    return "预取号只开WiFi";
                case 102203:
                    return "输入参数错误";
                case 102204:
                    return "崩溃错误";
                case 102508:
                    return "数据网络切换失败";
                case 200010:
                    return "imsi获取失败或者没有sim卡，预取号失败";
                case 200050:
                    return "EOF异常";
                default:
                    return "wifi取号失败....";
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT, 480})
    private static class tt {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static volatile tt f14193n;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Handler f14194a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ConnectivityManager f14195c;
        public final Runnable sp = new Runnable() { // from class: com.byazt.fiq.a.tt.2
            @Override // java.lang.Runnable
            public void run() {
                tt.this.c();
            }
        };
        public Network tt;
        public boolean uj;
        public ConnectivityManager.NetworkCallback ve;

        private tt(Context context) {
            try {
                this.f14195c = (ConnectivityManager) context.getSystemService("connectivity");
                this.f14194a = new Handler(Looper.getMainLooper());
            } catch (Exception e10) {
                m.c(e10);
            }
        }

        public static tt c(Context context) {
            if (f14193n == null) {
                synchronized (tt.class) {
                    if (f14193n == null) {
                        f14193n = new tt(context);
                    }
                }
            }
            return f14193n;
        }

        @TargetApi(21)
        public void c(final ConnectivityManager.NetworkCallback networkCallback) {
            NetworkInfo networkInfo;
            this.f14194a.removeCallbacks(this.sp);
            ConnectivityManager connectivityManager = this.f14195c;
            if (connectivityManager == null) {
                m.c("transmit_business", "forceNet mConnectivityManager is null");
                return;
            }
            Network network = this.tt;
            if (network != null && !this.uj && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
                m.c("transmit_business", "forceNet reuse network");
                networkCallback.onAvailable(this.tt);
                return;
            }
            ConnectivityManager.NetworkCallback networkCallback2 = this.ve;
            if (networkCallback2 != null) {
                try {
                    this.f14195c.unregisterNetworkCallback(networkCallback2);
                } catch (Exception e10) {
                    m.c(e10);
                    this.ve = null;
                }
                m.c("transmit_business", "forceNet clear");
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
            ConnectivityManager.NetworkCallback networkCallback3 = new ConnectivityManager.NetworkCallback() { // from class: com.byazt.fiq.a.tt.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network2) {
                    try {
                        if (tt.this.f14195c.getNetworkCapabilities(network2).hasTransport(0)) {
                            tt.this.tt = network2;
                            networkCallback.onAvailable(network2);
                            tt.this.uj = false;
                        } else {
                            m.c("transmit_business", "forceNet check fail...");
                            tt.this.tt = null;
                            networkCallback.onAvailable(null);
                            tt.this.uj = true;
                        }
                    } catch (Exception e11) {
                        m.c(e11);
                        networkCallback.onAvailable(null);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network2) {
                    tt.this.uj = true;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onUnavailable() {
                    super.onUnavailable();
                    if (Build.VERSION.SDK_INT >= 26) {
                        networkCallback.onUnavailable();
                    }
                }
            };
            this.ve = networkCallback3;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f14195c.requestNetwork(networkRequestBuild, networkCallback3, 5000);
            } else {
                this.f14195c.requestNetwork(networkRequestBuild, networkCallback3);
            }
        }

        public void c(long j10) {
            this.f14194a.postDelayed(this.sp, j10);
        }

        public void c() {
            if (this.f14195c == null) {
                return;
            }
            try {
                if (this.ve == null) {
                    return;
                }
                m.c("transmit_business", "unregisterNetwork");
                this.f14195c.unregisterNetworkCallback(this.ve);
                this.ve = null;
                this.tt = null;
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public a(Context context, com.byazt.fiq.c cVar) {
        this.f14188c = context;
        this.tt = cVar;
    }

    public void c(String str, ve veVar) {
        if (veVar == null) {
            return;
        }
        boolean zC = n.c(this.f14188c);
        this.uj = n.c(this.f14188c, zC);
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("headers");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("params");
            Map<String, List<String>> mapC = c(jSONObjectOptJSONObject);
            String upperCase = jSONObject.optString(d.f7195s).toUpperCase();
            String strOptString = jSONObject.optString("url");
            this.tt.c(d.f7195s, upperCase);
            this.tt.c("url", strOptString);
            this.f14189n = jSONObject.optInt("operType");
            try {
                if (c(zC, this.tt, veVar)) {
                    if (this.ve) {
                        c(mapC, jSONObjectOptJSONObject2, veVar);
                    } else {
                        c(null, mapC, jSONObjectOptJSONObject2, veVar);
                    }
                }
            } catch (Throwable th) {
                m.c(th);
                veVar.c(false, this.uj, 102204, c.c(102204), null, null);
            }
        } catch (JSONException e10) {
            m.c(e10);
            veVar.c(false, this.uj, 102203, c.c(102203), null, null);
        }
    }

    private Map<String, List<String>> c(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                List list = (List) map.get(next);
                if (list == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(strOptString);
                    map.put(next, arrayList);
                } else {
                    list.add(strOptString);
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return map;
    }

    private boolean c(boolean z10, com.byazt.fiq.c cVar, ve veVar) {
        cVar.c("networktype", this.uj);
        m.c("transmit_business", "preCheck networkType:" + this.uj);
        String packageName = this.f14188c.getPackageName();
        String strC = com.byazt.fiq.tt.c(uj.c(this.f14188c, packageName));
        cVar.c("apppackage", packageName);
        cVar.c("appsign", strC);
        int i10 = this.uj;
        if (i10 == 3) {
            this.ve = true;
        }
        if (!z10) {
            veVar.c(false, i10, 200010, c.c(200010), null, null);
            return false;
        }
        if (i10 == 0) {
            veVar.c(false, i10, 102101, c.c(102101), null, null);
            return false;
        }
        if (i10 != 2) {
            return true;
        }
        veVar.c(false, i10, 102103, c.c(102103), null, null);
        return false;
    }

    @TargetApi(21)
    private void c(final Map<String, List<String>> map, final JSONObject jSONObject, final ve veVar) {
        m.c("transmit_business", "wifiSwitchAndDoRequest");
        final tt ttVarC = tt.c(this.f14188c);
        tt.c(this.f14188c).c(new ConnectivityManager.NetworkCallback() { // from class: com.byazt.fiq.a.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final AtomicBoolean f14190a = new AtomicBoolean(false);

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) throws Throwable {
                m.c("transmit_business", "wifiSwitchAndDoRequest onAvailable:".concat(String.valueOf(network)));
                if (this.f14190a.getAndSet(true) || network == null) {
                    return;
                }
                a.this.c(network, map, jSONObject, veVar);
                ttVarC.c(1000L);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                m.c("transmit_business", "wifiSwitchAndDoRequest onUnavailable");
                veVar.c(false, a.this.uj, 102508, c.c(102508), null, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Network network, Map<String, List<String>> map, JSONObject jSONObject, ve veVar) throws Throwable {
        String strC = this.tt.c("url");
        String strC2 = this.tt.c(d.f7195s);
        sp spVar = new sp(strC, strC2, map, jSONObject);
        spVar.c(this.tt.c("apppackage"));
        spVar.tt(this.tt.c("appsign"));
        if ("get".equalsIgnoreCase(strC2)) {
            spVar.c("Content-Type", "application/x-www-form-urlencoded");
        }
        try {
            com.byazt.zv.c.c(spVar, this.tt.tt("networktype"), this.tt.c("apppackage"), this.f14189n);
            c(network, spVar, veVar);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01de  */
    /* JADX WARN: Code duplicated, block: B:107:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:113:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:117:0x020a  */
    /* JADX WARN: Code duplicated, block: B:124:0x021f  */
    /* JADX WARN: Code duplicated, block: B:127:0x022a  */
    /* JADX WARN: Code duplicated, block: B:131:0x0236  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.byazt.fiq.a] */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.byazt.fiq.ve] */
    @SuppressLint({"NewApi"})
    private void c(Network network, sp spVar, ve veVar) throws Throwable {
        StringBuilder sb2;
        InputStream inputStream;
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        OutputStream outputStream2;
        OutputStream outputStream3;
        int i10;
        int responseCode;
        ?? r12;
        int i11;
        ?? r13;
        HttpsURLConnection httpsURLConnection2;
        m.c("transmit_business", "doRealTransmitRequest: " + spVar.tt());
        SystemClock.elapsedRealtime();
        String string = null;
        boolean z10 = false;
        try {
            URL url = new URL(spVar.tt());
            if (network != null) {
                httpsURLConnection2 = (HttpsURLConnection) network.openConnection(url);
            } else {
                httpsURLConnection2 = (HttpsURLConnection) url.openConnection();
            }
            httpsURLConnection = httpsURLConnection2;
            try {
                Map<String, List<String>> mapC = spVar.c();
                if (mapC != null) {
                    for (String str : mapC.keySet()) {
                        List<String> list = mapC.get(str);
                        if (list != null) {
                            Iterator<String> it2 = list.iterator();
                            while (it2.hasNext()) {
                                httpsURLConnection.addRequestProperty(str, it2.next());
                            }
                        }
                    }
                }
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setInstanceFollowRedirects(false);
                httpsURLConnection.setConnectTimeout(5000);
                httpsURLConnection.setReadTimeout(5000);
                httpsURLConnection.setDefaultUseCaches(false);
                httpsURLConnection.setRequestMethod(spVar.uj());
                if (spVar.uj().equalsIgnoreCase("post")) {
                    m.c("transmit_business", "doRealTransmitRequest params:" + spVar.ve());
                    httpsURLConnection.setDoOutput(true);
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        outputStream.write(spVar.ve().getBytes("utf-8"));
                        outputStream.flush();
                    } catch (IOException e10) {
                        e = e10;
                        sb2 = null;
                        inputStream = null;
                        outputStream3 = null;
                        responseCode = -1;
                        r12 = outputStream3;
                        try {
                            m.uj("transmit_business", "doRealTransmitRequest e: " + e.toString());
                            m.c(e);
                            if (e instanceof EOFException) {
                                i11 = 200050;
                            } else {
                                i11 = 102102;
                            }
                            c(outputStream);
                            c(inputStream);
                            if (httpsURLConnection != null) {
                                httpsURLConnection.disconnect();
                            }
                            veVar.c(false, this.uj, i11, TextUtils.isEmpty(null) ? c.c(i11) : null, r12, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                        } catch (Throwable th) {
                            th = th;
                            i10 = responseCode;
                            r13 = r12;
                            c(outputStream);
                            c(inputStream);
                            if (httpsURLConnection != null) {
                                httpsURLConnection.disconnect();
                            }
                            veVar.c(false, this.uj, i10, TextUtils.isEmpty(null) ? c.c(i10) : null, r13, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        sb2 = null;
                        inputStream = null;
                        outputStream2 = null;
                        i10 = -1;
                        r13 = outputStream2;
                        c(outputStream);
                        c(inputStream);
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        veVar.c(false, this.uj, i10, TextUtils.isEmpty(null) ? c.c(i10) : null, r13, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                        throw th;
                    }
                } else {
                    outputStream = null;
                }
                responseCode = httpsURLConnection.getResponseCode();
                try {
                    Map<String, List<String>> headerFields = httpsURLConnection.getHeaderFields();
                    try {
                        inputStream = httpsURLConnection.getInputStream();
                        try {
                            byte[] bArr = new byte[2048];
                            StringBuilder sb3 = new StringBuilder();
                            while (true) {
                                try {
                                    try {
                                        int i12 = inputStream.read(bArr);
                                        if (i12 <= 0) {
                                            break;
                                        } else {
                                            sb3.append(new String(bArr, 0, i12, "utf-8"));
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        sb2 = sb3;
                                        i10 = responseCode;
                                        r13 = headerFields;
                                        c(outputStream);
                                        c(inputStream);
                                        if (httpsURLConnection != null) {
                                            httpsURLConnection.disconnect();
                                        }
                                        veVar.c(false, this.uj, i10, TextUtils.isEmpty(null) ? c.c(i10) : null, r13, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                                        throw th;
                                    }
                                } catch (IOException e11) {
                                    e = e11;
                                    sb2 = sb3;
                                    r12 = headerFields;
                                    m.uj("transmit_business", "doRealTransmitRequest e: " + e.toString());
                                    m.c(e);
                                    if (e instanceof EOFException) {
                                        i11 = 200050;
                                    } else {
                                        i11 = 102102;
                                    }
                                    c(outputStream);
                                    c(inputStream);
                                    if (httpsURLConnection != null) {
                                        httpsURLConnection.disconnect();
                                    }
                                    veVar.c(false, this.uj, i11, TextUtils.isEmpty(null) ? c.c(i11) : null, r12, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                                }
                            }
                            String string2 = sb3.toString();
                            if (!TextUtils.isEmpty(string2)) {
                                if (!string2.contains("getNewUnicomPhone") && !string2.contains("getTelecomPhone")) {
                                    try {
                                        JSONObject jSONObject = new JSONObject(sb3.toString());
                                        String string3 = jSONObject.getString("resultCode");
                                        if (string3 == null || !string3.equals("103000")) {
                                            string = jSONObject.getString("desc");
                                        } else {
                                            string = "取号成功";
                                            z10 = true;
                                        }
                                    } catch (Exception unused) {
                                    }
                                } else if ((string2.contains("\"result\":0") || string2.contains("\"result\":\"0\"")) && string2.contains("\"data\":")) {
                                    string = "取号成功";
                                    z10 = true;
                                } else {
                                    string = string2.contains("getNewUnicomPhone") ? "联通取号失败" : "电信取号失败";
                                }
                            }
                            c(outputStream);
                            c(inputStream);
                            httpsURLConnection.disconnect();
                            veVar.c(z10, this.uj, responseCode, TextUtils.isEmpty(string) ? c.c(responseCode) : string, headerFields, TextUtils.isEmpty(sb3) ? "" : sb3.toString());
                        } catch (IOException e12) {
                            e = e12;
                            sb2 = null;
                        } catch (Throwable th4) {
                            th = th4;
                            sb2 = null;
                        }
                    } catch (IOException e13) {
                        e = e13;
                        sb2 = null;
                        inputStream = null;
                    } catch (Throwable th5) {
                        th = th5;
                        sb2 = null;
                        inputStream = null;
                    }
                } catch (IOException e14) {
                    e = e14;
                    sb2 = null;
                    inputStream = null;
                    r12 = 0;
                } catch (Throwable th6) {
                    th = th6;
                    sb2 = null;
                    inputStream = null;
                    r12 = 0;
                    i10 = responseCode;
                    r13 = r12;
                    c(outputStream);
                    c(inputStream);
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                    veVar.c(false, this.uj, i10, TextUtils.isEmpty(null) ? c.c(i10) : null, r13, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                sb2 = null;
                inputStream = null;
                outputStream = null;
                outputStream3 = outputStream;
                responseCode = -1;
                r12 = outputStream3;
                m.uj("transmit_business", "doRealTransmitRequest e: " + e.toString());
                m.c(e);
                if (e instanceof EOFException) {
                    i11 = 200050;
                } else {
                    i11 = 102102;
                }
                c(outputStream);
                c(inputStream);
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                veVar.c(false, this.uj, i11, TextUtils.isEmpty(null) ? c.c(i11) : null, r12, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
            } catch (Throwable th7) {
                th = th7;
                sb2 = null;
                inputStream = null;
                outputStream = null;
                outputStream2 = outputStream;
                i10 = -1;
                r13 = outputStream2;
                c(outputStream);
                c(inputStream);
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                veVar.c(false, this.uj, i10, TextUtils.isEmpty(null) ? c.c(i10) : null, r13, TextUtils.isEmpty(sb2) ? "" : sb2.toString());
                throw th;
            }
        } catch (IOException e16) {
            e = e16;
            sb2 = null;
            inputStream = null;
            httpsURLConnection = null;
            outputStream = null;
        } catch (Throwable th8) {
            th = th8;
            sb2 = null;
            inputStream = null;
            httpsURLConnection = null;
            outputStream = null;
        }
    }

    private void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                m.c(e10);
            }
        }
    }
}
