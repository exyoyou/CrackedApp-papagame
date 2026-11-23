package com.kwad.sdk.crash.report.upload;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.Constants;
import com.join.mgps.Util.o0;
import com.kwad.sdk.core.network.p;
import com.kwad.sdk.crash.utils.h;
import com.kwad.sdk.utils.y;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static void a(@NonNull File file, @NonNull String str, String str2, @NonNull Map<String, String> map, @NonNull a aVar) throws Throwable {
        DataInputStream dataInputStream;
        OutputStream outputStream;
        com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "uploadLogFile " + Thread.currentThread());
        com.kwad.sdk.core.network.c cVar = new com.kwad.sdk.core.network.c();
        String string = UUID.randomUUID().toString();
        String name = file.getName();
        String str3 = "https://" + com.kwad.sdk.core.network.idc.a.Mo().Z("ulog", "ulog-sdk.gifshow.com") + "/rest/log/sdk/file/upload";
        int i10 = -1;
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str3).openConnection();
            try {
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setConnectTimeout(5000);
                httpURLConnection2.setReadTimeout(5000);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setRequestProperty("connection", "Keep-Alive");
                httpURLConnection2.setRequestProperty("User-Agent", p.getUserAgent());
                httpURLConnection2.setRequestProperty("Charset", "UTF-8");
                httpURLConnection2.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + string);
                httpURLConnection2.setRequestProperty("Content-MD5", Base64.encodeToString(com.kwad.sdk.utils.a.hD(file.getPath()), 2));
                httpURLConnection2.setRequestProperty("file-type", o0.f49827a + y.getExtension(file.getName()));
                httpURLConnection2.setRequestProperty("origin-name", name);
                httpURLConnection2.setRequestProperty("Cookie", "did=" + str);
                httpURLConnection2.connect();
                outputStream = httpURLConnection2.getOutputStream();
                try {
                    for (String str4 : map.keySet()) {
                        outputStream.write(f(str4, map.get(str4), string));
                    }
                    byte[] bytes = ("\r\n--" + string + "--\r\n").getBytes();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("--");
                    sb2.append(string);
                    sb2.append("\r\n");
                    sb2.append("Content-Disposition: form-data;name=\"file\";filename=\"" + name + "\"\r\n");
                    sb2.append("Content-Type: application/octet-stream\r\n\r\n");
                    outputStream.write(sb2.toString().getBytes());
                    dataInputStream = new DataInputStream(new FileInputStream(file));
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i11 = dataInputStream.read(bArr);
                            if (i11 == -1) {
                                break;
                            } else {
                                outputStream.write(bArr, 0, i11);
                            }
                        }
                        outputStream.write("\r\n".getBytes());
                        outputStream.write(bytes);
                        outputStream.flush();
                        int responseCode = httpURLConnection2.getResponseCode();
                        cVar.code = responseCode;
                        cVar.aSW = responseCode;
                        if (responseCode == 200) {
                            cVar.aSY = h.inputStream2String(httpURLConnection2.getInputStream());
                            try {
                                if (new JSONObject(cVar.aSY).optInt("result", -1) == 1) {
                                    aVar.QK();
                                } else {
                                    e eVar = e.bgb;
                                    aVar.QJ();
                                }
                            } catch (JSONException unused) {
                                e eVar2 = e.bgc;
                                aVar.QJ();
                            }
                            com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "response.body= " + cVar.aSY);
                        } else {
                            e eVar3 = e.bga;
                            e.bga.CZ();
                            aVar.QJ();
                            com.kwad.sdk.core.network.idc.a aVarMo = com.kwad.sdk.core.network.idc.a.Mo();
                            int i12 = cVar.code;
                            if (i12 == 0) {
                                i12 = -1;
                            }
                            aVarMo.a(str3, i12, (Throwable) null);
                        }
                        com.kwad.sdk.crash.utils.b.closeQuietly(httpURLConnection2);
                    } catch (Exception e10) {
                        e = e10;
                        httpURLConnection = httpURLConnection2;
                        try {
                            e eVar4 = e.bga;
                            e.getCause();
                            aVar.QJ();
                            com.kwad.sdk.core.network.idc.a aVarMo2 = com.kwad.sdk.core.network.idc.a.Mo();
                            int i13 = cVar.code;
                            if (i13 != 0) {
                                i10 = i13;
                            }
                            aVarMo2.a(str3, i10, e);
                            com.kwad.sdk.core.d.c.printStackTrace(e);
                            com.kwad.sdk.crash.utils.b.closeQuietly(httpURLConnection);
                        } catch (Throwable th) {
                            th = th;
                            com.kwad.sdk.crash.utils.b.closeQuietly(httpURLConnection);
                            com.kwad.sdk.crash.utils.b.closeQuietly(dataInputStream);
                            com.kwad.sdk.crash.utils.b.closeQuietly(outputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        httpURLConnection = httpURLConnection2;
                        com.kwad.sdk.crash.utils.b.closeQuietly(httpURLConnection);
                        com.kwad.sdk.crash.utils.b.closeQuietly(dataInputStream);
                        com.kwad.sdk.crash.utils.b.closeQuietly(outputStream);
                        throw th;
                    }
                } catch (Exception e11) {
                    e = e11;
                    dataInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    dataInputStream = null;
                }
            } catch (Exception e12) {
                e = e12;
                dataInputStream = null;
                outputStream = null;
            } catch (Throwable th4) {
                th = th4;
                dataInputStream = null;
                outputStream = null;
            }
        } catch (Exception e13) {
            e = e13;
            dataInputStream = null;
            outputStream = null;
        } catch (Throwable th5) {
            th = th5;
            dataInputStream = null;
            outputStream = null;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(dataInputStream);
        com.kwad.sdk.crash.utils.b.closeQuietly(outputStream);
    }

    private static byte[] f(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(str3);
        sb2.append("\r\n");
        sb2.append("Content-Disposition: form-data; name=\"" + str + x.a.f97579g);
        sb2.append("\r\n");
        sb2.append("Content-Length: " + str2.length());
        sb2.append("\r\n");
        sb2.append("\r\n");
        sb2.append(str2);
        sb2.append("\r\n");
        return sb2.toString().getBytes();
    }

    private static Map<String, String> a(f fVar) {
        HashMap map = new HashMap();
        if (fVar == null) {
            return map;
        }
        if (!TextUtils.isEmpty(fVar.bgl)) {
            map.put("uploadToken", fVar.bgl);
        }
        if (!TextUtils.isEmpty(fVar.bgi)) {
            map.put(NotificationCompat.CATEGORY_SYSTEM, fVar.bgi);
        }
        if (!TextUtils.isEmpty(fVar.bgh)) {
            map.put("did", fVar.bgh);
        }
        if (!TextUtils.isEmpty(fVar.bgg)) {
            map.put("sid", fVar.bgg);
        }
        if (!TextUtils.isEmpty(fVar.beC)) {
            map.put("appver", fVar.beC);
        }
        if (!TextUtils.isEmpty(fVar.mTaskId)) {
            map.put("taskId", fVar.mTaskId);
        }
        if (!TextUtils.isEmpty(fVar.mToken)) {
            map.put(Constants.TOKEN, fVar.mToken);
        }
        if (!TextUtils.isEmpty(fVar.bgf)) {
            map.put("uid", fVar.bgf);
        }
        if (!TextUtils.isEmpty(fVar.bgj)) {
            map.put("extraInfo", fVar.bgj);
        }
        return map;
    }

    public static void a(File file, f fVar, a aVar) throws Throwable {
        a(file, fVar.bgh, fVar.mToken, a(fVar), aVar);
    }
}
