package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.bm;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.io.OutputStream;
import java.net.URL;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f85314a = "10.0.0.172";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f85315b = 80;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f85316c;

    public c(Context context) {
        this.f85316c = context;
    }

    private void a() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f85316c, "sl_domain_p", "");
        if (TextUtils.isEmpty(strImprintProperty)) {
            return;
        }
        a.f85298i = DataHelper.assembleStatelessURL(strImprintProperty);
    }

    private void b() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f85316c, "sl_domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f85316c, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            a.f85297h = DataHelper.assembleStatelessURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            a.f85300k = DataHelper.assembleStatelessURL(strImprintProperty2);
        }
        a.f85298i = a.f85300k;
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.f85324b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f85324b.startsWith("460") || com.umeng.commonsdk.statistics.b.f85324b.startsWith("461")) {
            a.f85298i = a.f85297h;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.net.HttpURLConnection, java.net.URLConnection, javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.StringBuilder] */
    public boolean a(byte[] bArr, String str, String str2, String str3) {
        boolean z10 = false;
        if (bArr != null && str != null) {
            if (SdkVersion.SDK_TYPE == 0) {
                a();
            } else {
                a.f85297h = a.f85300k;
                b();
            }
            String str4 = a.f85298i;
            ?? r11 = str2;
            if (!com.umeng.commonsdk.vchannel.a.f85597c.equalsIgnoreCase(str)) {
                r11 = str4;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 无状态收数域名：" + r11);
            OutputStream outputStream = null;
            try {
                try {
                    r11 = (HttpsURLConnection) new URL(r11 + File.separator + str).openConnection();
                    try {
                        r11.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                        sSLContext.init(null, null, new SecureRandom());
                        r11.setSSLSocketFactory(sSLContext.getSocketFactory());
                        r11.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                        r11.setRequestProperty("Msg-Type", "envelope/json");
                        r11.setRequestProperty("Content-Type", bm.aU + str3);
                        r11.setRequestProperty("SM-IMP", "1");
                        r11.setRequestProperty("User-Agent", DeviceConfig.getCustomAgt());
                        r11.setConnectTimeout(30000);
                        r11.setReadTimeout(30000);
                        r11.setRequestMethod("POST");
                        r11.setDoOutput(true);
                        r11.setDoInput(true);
                        r11.setUseCaches(false);
                        outputStream = r11.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.flush();
                        r11.connect();
                        if (r11.getResponseCode() == 200) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send stateless message success : " + a.f85298i + e.F0 + str);
                            z10 = true;
                        }
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                    } catch (SSLHandshakeException e10) {
                        e = e10;
                        MLog.e("SSLHandshakeException, Failed to send message.", e);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (r11 != 0) {
                        }
                        return z10;
                    } catch (Throwable th) {
                        th = th;
                        MLog.e("Exception,Failed to send message.", th);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        if (r11 != 0) {
                        }
                        return z10;
                    }
                } catch (Throwable th2) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    if (r11 != 0) {
                        try {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> stateless: disconnect connection.");
                            r11.disconnect();
                            throw th2;
                        } catch (Throwable unused5) {
                            throw th2;
                        }
                    }
                    throw th2;
                }
            } catch (SSLHandshakeException e11) {
                e = e11;
                r11 = 0;
            } catch (Throwable th3) {
                th = th3;
                r11 = 0;
            }
            try {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> stateless: disconnect connection.");
                r11.disconnect();
            } catch (Throwable unused6) {
            }
            return z10;
        }
        ULog.i("walle", "[stateless] sendMessage, envelopeByte == null || path == null ");
        return false;
    }
}
