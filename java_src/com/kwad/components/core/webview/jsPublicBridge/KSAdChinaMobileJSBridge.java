package com.kwad.components.core.webview.jsPublicBridge;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.Keep;
import androidx.core.content.ContextCompat;
import com.alipay.sdk.packet.d;
import com.kwad.sdk.core.a.b;
import com.kwad.sdk.core.a.g;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.f;
import com.kwad.sdk.utils.SystemUtil;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.aq;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import x.a;

/* JADX INFO: loaded from: classes2.dex */
public class KSAdChinaMobileJSBridge {
    private static int aoN = 5000;
    private static final List<String> aoO = Arrays.asList("46000", "46002", "46007", "46004");
    private static final List<String> aoP = Arrays.asList("46003", "46005", "46011");
    private static final List<String> aoQ = Arrays.asList("46001", "46006", "46009");
    private WebView ade;
    private ConnectivityManager aoL;
    private TelephonyManager aoM;
    private Context mContext;

    enum OperatorType {
        CHINA_MOBILE(1),
        CHINA_TELECOM(2),
        CHINA_UNICOM(3),
        NO_PHONE_NUMBER_ACCESS_PERMISSION_UNDER_WIFI(-1),
        DATA_NOT_OPENED(-2),
        FAIL(-3);

        public final int value;

        OperatorType(int i10) {
            this.value = i10;
        }
    }

    public KSAdChinaMobileJSBridge(WebView webView) {
        this.ade = webView;
        try {
            Context context = ServiceProvider.getContext();
            this.mContext = context;
            this.aoL = (ConnectivityManager) context.getSystemService("connectivity");
            this.aoM = (TelephonyManager) this.mContext.getSystemService("phone");
            c.d("KSAdChinaMobileJSBridge", "init KSAdChinaMobileJSBridge succeed");
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
    }

    private void bv(String str) {
        try {
            Map<String, String> jSON2MapString = ac.parseJSON2MapString(str);
            String str2 = jSON2MapString.get("url");
            if (str2.isEmpty()) {
                t(-2, "url参数为空");
                return;
            }
            final URL url = new URL(str2);
            final String strBz = bz(jSON2MapString.get(d.f7195s));
            if (strBz.isEmpty()) {
                t(-2, "method参数为空");
                return;
            }
            jSON2MapString.get("operType");
            String str3 = jSON2MapString.get("headers");
            if (str3.isEmpty()) {
                t(-2, "headers参数为空");
                return;
            }
            final Map<String, String> jSON2MapString2 = ac.parseJSON2MapString(str3);
            final String str4 = jSON2MapString.get("params");
            if (str4.isEmpty()) {
                t(-2, "params参数为空");
                return;
            }
            this.aoL.requestNetwork(new NetworkRequest.Builder().addCapability(12).addTransportType(0).build(), new ConnectivityManager.NetworkCallback() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdChinaMobileJSBridge.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onAvailable(final Network network) {
                    new Thread(new Runnable() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdChinaMobileJSBridge.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                if (!KSAdChinaMobileJSBridge.this.aoL.getNetworkCapabilities(network).hasTransport(0)) {
                                    KSAdChinaMobileJSBridge.this.t(-1, "network 移动数据未打开");
                                    return;
                                }
                                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) network.openConnection(url);
                                httpsURLConnection.setConnectTimeout(KSAdChinaMobileJSBridge.aoN);
                                httpsURLConnection.setReadTimeout(KSAdChinaMobileJSBridge.aoN);
                                httpsURLConnection.setRequestMethod(strBz);
                                for (Map.Entry entry : jSON2MapString2.entrySet()) {
                                    httpsURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                }
                                HashMap map = new HashMap();
                                String[] strArrB = KSAdChinaMobileJSBridge.b(KSAdChinaMobileJSBridge.this);
                                map.put("ipv4List", strArrB[0]);
                                map.put("ipv6List", strArrB[1]);
                                map.put("networkType", String.valueOf(KSAdChinaMobileJSBridge.this.ym()));
                                map.put("packageName", ((f) ServiceProvider.get(f.class)).getAppName());
                                String[] strArrBy = KSAdChinaMobileJSBridge.this.by(ac.parseMap2JSON(map).toString());
                                if (!strArrBy[0].isEmpty() && !strArrBy[1].isEmpty()) {
                                    httpsURLConnection.setRequestProperty("sdkSecret", strArrBy[0]);
                                    httpsURLConnection.setRequestProperty("sdkData", strArrBy[1]);
                                    if (strBz.equals("POST")) {
                                        httpsURLConnection.setDoOutput(true);
                                        httpsURLConnection.setRequestProperty("Charset", "UTF-8");
                                        httpsURLConnection.setRequestProperty("Content-Type", "application/json");
                                        OutputStream outputStream = httpsURLConnection.getOutputStream();
                                        outputStream.write(str4.getBytes());
                                        outputStream.close();
                                    } else {
                                        httpsURLConnection.setDoOutput(false);
                                    }
                                    int responseCode = httpsURLConnection.getResponseCode();
                                    if (responseCode != 200) {
                                        KSAdChinaMobileJSBridge.this.t(responseCode, httpsURLConnection.getErrorStream().toString());
                                        return;
                                    }
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream(), "UTF-8"));
                                    String str5 = "";
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            bufferedReader.close();
                                            KSAdChinaMobileJSBridge.this.bw(str5);
                                            KSAdChinaMobileJSBridge.this.aoL.unregisterNetworkCallback(this);
                                            return;
                                        }
                                        str5 = str5 + line;
                                    }
                                }
                            } catch (Exception e10) {
                                c.printStackTraceOnly(e10);
                                KSAdChinaMobileJSBridge.this.t(-5, e10.getMessage());
                            }
                        }
                    }).start();
                }
            });
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            t(-5, e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bw(String str) {
        final String str2 = String.format(Locale.US, "javascript:window.receiveNetworkSwitch({data:\"%s\", netType:%d})", bx(str), Integer.valueOf(ym()));
        this.ade.post(new Runnable() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdChinaMobileJSBridge.2
            @Override // java.lang.Runnable
            public final void run() {
                c.d("KSAdChinaMobileJSBridge", "jsSuccessCall: " + str2);
                KSAdChinaMobileJSBridge.this.ade.evaluateJavascript(str2, null);
            }
        });
    }

    private static String bx(String str) {
        if (str == null) {
            return null;
        }
        return str.replace(a.f97579g, "\\\"");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] by(String str) {
        String[] strArr = new String[2];
        try {
            String strKX = e.KX();
            c.d("KSAdChinaMobileJSBridge", "public key is " + strKX);
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            c.d("KSAdChinaMobileJSBridge", "aesKey: " + bArr);
            String str2 = new String(com.kwad.sdk.core.a.c.LN().encode(g.e(bArr, strKX)), StandardCharsets.UTF_8);
            c.d("KSAdChinaMobileJSBridge", "sdkScret: " + str2);
            String str3 = new String(com.kwad.sdk.core.a.c.LN().encode(b.d(bArr, str)), StandardCharsets.UTF_8);
            c.d("KSAdChinaMobileJSBridge", "sdkData: " + str3);
            strArr[0] = str2;
            strArr[1] = str3;
        } catch (Exception e10) {
            t(-3, e10.getMessage());
        }
        return strArr;
    }

    private static String bz(String str) {
        if (str.equals("post")) {
            return "POST";
        }
        return str.equals("get") ? "GET" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(int i10, String str) {
        final String str2 = String.format(Locale.US, "javascript:window.receiveNetworkSwitch({resultCode: %d, desc: %s})", Integer.valueOf(i10), str);
        this.ade.post(new Runnable() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdChinaMobileJSBridge.3
            @Override // java.lang.Runnable
            public final void run() {
                c.d("KSAdChinaMobileJSBridge", "jsFailCall: " + str2);
                KSAdChinaMobileJSBridge.this.ade.evaluateJavascript(str2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int ym() {
        boolean zBooleanValue;
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (this.aoL == null) {
                return -1;
            }
            if (i10 >= 26) {
                zBooleanValue = this.aoM.isDataEnabled();
            } else {
                Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                declaredMethod.setAccessible(true);
                zBooleanValue = ((Boolean) declaredMethod.invoke(this.aoL, new Object[0])).booleanValue();
            }
            boolean zIsWifiConnected = aq.isWifiConnected(this.mContext);
            if (zBooleanValue && zIsWifiConnected) {
                return 3;
            }
            if (zBooleanValue) {
                return 1;
            }
            return zIsWifiConnected ? 2 : -1;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            return -1;
        }
    }

    private static String[] yn() {
        String[] strArr = {"", ""};
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (!networkInterfaceNextElement.getName().toLowerCase().contains("wlan")) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && !inetAddressNextElement.isLinkLocalAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                if (inetAddressNextElement instanceof Inet6Address) {
                                    sb2.append(hostAddress);
                                    sb2.append(",");
                                } else if (inetAddressNextElement instanceof Inet4Address) {
                                    sb3.append(hostAddress);
                                    sb3.append(",");
                                }
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb2)) {
                sb2 = sb2.delete(sb2.length() - 1, sb2.length());
            }
            if (!TextUtils.isEmpty(sb3)) {
                sb3 = sb3.delete(sb3.length() - 1, sb3.length());
            }
            strArr[0] = sb3.toString();
            strArr[1] = sb2.toString();
            c.d("KSAdChinaMobileJSBridge", "ipv4List: " + strArr[0]);
            c.d("KSAdChinaMobileJSBridge", "ipv6List: " + strArr[1]);
        } catch (Exception unused) {
        }
        return strArr;
    }

    @JavascriptInterface
    @Keep
    public int ksadGetOperJudge() {
        try {
            c.d("KSAdChinaMobileJSBridge", "ksadGetOperJudge called");
            String simOperator = this.aoM.getSimOperator();
            if (aoO.contains(simOperator)) {
                return OperatorType.CHINA_MOBILE.value;
            }
            if (aoP.contains(simOperator)) {
                return OperatorType.CHINA_TELECOM.value;
            }
            if (aoQ.contains(simOperator)) {
                return OperatorType.CHINA_UNICOM.value;
            }
            c.d("KSAdChinaMobileJSBridge", "ksadGetOperJudge operator:" + simOperator + " not in list");
            return OperatorType.FAIL.value;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            return OperatorType.FAIL.value;
        }
    }

    @JavascriptInterface
    @Keep
    public void ksadGetPhoneNumber(String str) {
        Boolean boolValueOf;
        if (!SystemUtil.b(this.mContext, com.kuaishou.weapon.p0.g.f74778b)) {
            t(-1, "无网络权限");
            return;
        }
        try {
            c.d("KSAdChinaMobileJSBridge", "ksadGetPhoneNumber called, data:" + str);
            int type = this.aoL.getActiveNetworkInfo().getType();
            if (type == 0) {
                bv(str);
                return;
            }
            if (type == 1) {
                boolean z10 = 1 != this.aoM.getSimState();
                boolean z11 = ContextCompat.checkSelfPermission(this.mContext, "android.permission.CHANGE_NETWORK_STATE") == 0;
                if (Build.VERSION.SDK_INT >= 26) {
                    boolValueOf = Boolean.valueOf(this.aoM.isDataEnabled());
                } else {
                    Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                    declaredMethod.setAccessible(true);
                    boolValueOf = (Boolean) declaredMethod.invoke(this.aoL, new Object[0]);
                }
                if (z10 && z11 && boolValueOf.booleanValue()) {
                    bv(str);
                    return;
                }
                if (!z10) {
                    t(-1, "sim卡不可用");
                } else if (!z11) {
                    t(-1, "无网络切换权限");
                } else {
                    if (boolValueOf.booleanValue()) {
                        return;
                    }
                    t(-1, "移动数据未打开");
                }
            }
        } catch (Exception e10) {
            t(-5, e10.toString());
        }
    }

    static /* synthetic */ String[] b(KSAdChinaMobileJSBridge kSAdChinaMobileJSBridge) {
        return yn();
    }
}
