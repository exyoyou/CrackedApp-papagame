package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.tencent.stat.common.StatConstants;
import com.tencent.stat.common.StatLogger;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static StatLogger f83929c = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f83930d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static d f83931e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f83932f = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    DefaultHttpClient f83933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Handler f83934b;

    private d() {
        this.f83933a = null;
        this.f83934b = null;
        try {
            HandlerThread handlerThread = new HandlerThread("StatDispatcher");
            handlerThread.start();
            f83930d = handlerThread.getId();
            this.f83934b = new Handler(handlerThread.getLooper());
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 10000);
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            this.f83933a = defaultHttpClient;
            defaultHttpClient.setKeepAliveStrategy(new e(this));
            if (StatConfig.b() != null) {
                this.f83933a.getParams().setParameter("http.route.default-proxy", StatConfig.b());
            }
        } catch (Throwable th) {
            f83929c.e(th);
        }
    }

    static Context a() {
        return f83932f;
    }

    static synchronized d b() {
        if (f83931e == null) {
            f83931e = new d();
        }
        return f83931e;
    }

    static void a(Context context) {
        f83932f = context.getApplicationContext();
    }

    void b(List<String> list, c cVar) {
        Handler handler;
        if (list.isEmpty() || (handler = this.f83934b) == null) {
            return;
        }
        handler.post(new f(this, list, cVar));
    }

    void a(com.tencent.stat.a.e eVar, c cVar) {
        b(Arrays.asList(eVar.d()), cVar);
    }

    void a(List<String> list, c cVar) {
        boolean z10;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            int i10 = 0;
            while (true) {
                z10 = true;
                if (i10 >= list.size()) {
                    break;
                }
                sb2.append(list.get(i10));
                if (i10 != list.size() - 1) {
                    sb2.append(",");
                }
                i10++;
            }
            sb2.append("]");
            String statReportUrl = StatConfig.getStatReportUrl();
            f83929c.i("[" + statReportUrl + "]Send request(" + sb2.toString().length() + "bytes):" + sb2.toString());
            HttpPost httpPost = new HttpPost(statReportUrl);
            httpPost.addHeader("Accept-Encoding", "gzip");
            httpPost.setHeader("Connection", "Keep-Alive");
            httpPost.removeHeaders("Cache-Control");
            HttpHost httpHostA = com.tencent.stat.common.k.a(f83932f);
            if (httpHostA != null) {
                this.f83933a.getParams().setParameter("http.route.default-proxy", com.tencent.stat.common.k.a(f83932f));
                httpPost.addHeader("X-Online-Host", StatConstants.MTA_SERVER);
                httpPost.addHeader("Accept", "*/*");
                httpPost.addHeader("Content-Type", CountlyDbPolicy.FIELD_COUNTLY_JSON);
            } else {
                z10 = false;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = sb2.toString().getBytes("UTF-8");
            int length = bytes.length;
            if (sb2.length() >= 256) {
                if (httpHostA == null) {
                    httpPost.addHeader("Content-Encoding", "rc4,gzip");
                } else {
                    httpPost.addHeader("X-Content-Encoding", "rc4,gzip");
                }
                byteArrayOutputStream.write(new byte[4]);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
                bytes = byteArrayOutputStream.toByteArray();
                ByteBuffer.wrap(bytes, 0, 4).putInt(length);
                f83929c.d("before Gzip:" + length + " bytes, after Gzip:" + bytes.length + " bytes");
            } else if (httpHostA == null) {
                httpPost.addHeader("Content-Encoding", "rc4");
            } else {
                httpPost.addHeader("X-Content-Encoding", "rc4");
            }
            httpPost.setEntity(new ByteArrayEntity(com.tencent.stat.common.e.a(bytes)));
            HttpResponse httpResponseExecute = this.f83933a.execute(httpPost);
            if (z10) {
                this.f83933a.getParams().removeParameter("http.route.default-proxy");
            }
            HttpEntity entity = httpResponseExecute.getEntity();
            int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
            long contentLength = entity.getContentLength();
            f83929c.i("recv response status code:" + statusCode + ", content length:" + contentLength);
            if (contentLength == 0) {
                EntityUtils.toString(entity);
                if (statusCode != 200) {
                    f83929c.error("Server response error code:" + statusCode);
                } else if (cVar != null) {
                    cVar.a();
                }
            } else if (contentLength > 0) {
                InputStream content = entity.getContent();
                DataInputStream dataInputStream = new DataInputStream(content);
                byte[] bArrB = new byte[(int) entity.getContentLength()];
                dataInputStream.readFully(bArrB);
                content.close();
                dataInputStream.close();
                Header firstHeader = httpResponseExecute.getFirstHeader("Content-Encoding");
                if (firstHeader != null) {
                    if (firstHeader.getValue().equalsIgnoreCase("gzip,rc4")) {
                        bArrB = com.tencent.stat.common.e.b(com.tencent.stat.common.k.a(bArrB));
                    } else if (firstHeader.getValue().equalsIgnoreCase("rc4,gzip")) {
                        bArrB = com.tencent.stat.common.k.a(com.tencent.stat.common.e.b(bArrB));
                    } else if (firstHeader.getValue().equalsIgnoreCase("gzip")) {
                        bArrB = com.tencent.stat.common.k.a(bArrB);
                    } else if (firstHeader.getValue().equalsIgnoreCase("rc4")) {
                        bArrB = com.tencent.stat.common.e.b(bArrB);
                    }
                }
                if (statusCode == 200) {
                    try {
                        String str = new String(bArrB, "UTF-8");
                        f83929c.d(str);
                        JSONObject jSONObject = new JSONObject(str);
                        if (!jSONObject.isNull(com.umeng.ccg.a.f84982i)) {
                            StatConfig.a(jSONObject.getJSONObject(com.umeng.ccg.a.f84982i));
                        }
                        if (!jSONObject.isNull("et") && !jSONObject.isNull("st")) {
                            f83929c.d("get mid respone:" + str);
                            if (jSONObject.getInt("et") == com.tencent.stat.a.f.SESSION_ENV.a()) {
                                int i11 = jSONObject.getInt("st");
                                if (i11 != -1 && i11 != 0) {
                                    f83929c.e("error type for st:" + i11);
                                } else if (!jSONObject.isNull("mid")) {
                                    StatMid.updateDeviceInfo(f83932f, jSONObject.getString("mid"));
                                }
                            }
                        }
                    } catch (Throwable th) {
                        f83929c.i(th.toString());
                    }
                    if (cVar != null) {
                        cVar.a();
                    }
                } else {
                    f83929c.error("Server response error code:" + statusCode + ", error:" + new String(bArrB, "UTF-8"));
                }
                content.close();
            } else {
                EntityUtils.toString(entity);
            }
            byteArrayOutputStream.close();
        } catch (Throwable th2) {
            f83929c.e(th2);
            if (cVar != null) {
                try {
                    cVar.b();
                } catch (Throwable th3) {
                    f83929c.e(th3);
                }
            }
        }
    }
}
