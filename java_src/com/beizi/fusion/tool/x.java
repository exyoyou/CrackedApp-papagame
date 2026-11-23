package com.beizi.fusion.tool;

import android.content.Context;
import android.os.Debug;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.beizi.fusion.model.DevInfo;
import com.beizi.fusion.model.EnvInfo;
import com.beizi.fusion.model.RequestInfo;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.umeng.analytics.pro.bm;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10681a = "HttpUtil";

    /* JADX WARN: Code duplicated, block: B:44:0x00ae A[Catch: IOException -> 0x00c9, TRY_ENTER, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3 A[Catch: IOException -> 0x00c9, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b8 A[Catch: IOException -> 0x00c9, TRY_LEAVE, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c5 A[Catch: IOException -> 0x00c9, TRY_ENTER, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00cd A[Catch: IOException -> 0x00c9, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00d2 A[Catch: IOException -> 0x00c9, TRY_LEAVE, TryCatch #0 {IOException -> 0x00c9, blocks: (B:44:0x00ae, B:46:0x00b3, B:48:0x00b8, B:55:0x00c5, B:59:0x00cd, B:61:0x00d2, B:33:0x009b), top: B:77:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00e5 A[Catch: IOException -> 0x00e1, TryCatch #5 {IOException -> 0x00e1, blocks: (B:67:0x00dd, B:71:0x00e5, B:73:0x00ea), top: B:80:0x00dd }] */
    /* JADX WARN: Code duplicated, block: B:73:0x00ea A[Catch: IOException -> 0x00e1, TRY_LEAVE, TryCatch #5 {IOException -> 0x00e1, blocks: (B:67:0x00dd, B:71:0x00e5, B:73:0x00ea), top: B:80:0x00dd }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.StringBuffer] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static String a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection2;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        BufferedReader bufferedReader4;
        ?? stringBuffer = new StringBuffer();
        try {
            try {
                try {
                    HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection3.setRequestMethod("GET");
                        httpURLConnection3.setConnectTimeout(10000);
                        httpURLConnection3.setReadTimeout(5000);
                        httpURLConnection3.setUseCaches(false);
                        if (!TextUtils.isEmpty(str2)) {
                            httpURLConnection3.setRequestProperty("User-Agent", str2);
                        }
                        httpURLConnection3.setChunkedStreamingMode(0);
                        httpURLConnection3.setRequestProperty("Connection", "close");
                        httpURLConnection3.setDoInput(true);
                        httpURLConnection3.connect();
                        int responseCode = httpURLConnection3.getResponseCode();
                        ac.a(f10681a, "get code:" + responseCode);
                        if (responseCode != 200) {
                            httpURLConnection3.disconnect();
                            return null;
                        }
                        InputStream inputStream = httpURLConnection3.getInputStream();
                        try {
                            bufferedReader4 = new BufferedReader(new InputStreamReader(inputStream));
                            while (true) {
                                try {
                                    String line = bufferedReader4.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    stringBuffer.append(line);
                                } catch (Exception e10) {
                                    e = e10;
                                    Exception exc = e;
                                    stringBuffer = inputStream;
                                    e = exc;
                                    bufferedReader3 = bufferedReader4;
                                    str = httpURLConnection3;
                                    e.printStackTrace();
                                    if (bufferedReader3 != null) {
                                        bufferedReader3.close();
                                    }
                                    if (stringBuffer != 0) {
                                        stringBuffer.close();
                                    }
                                    if (str != 0) {
                                        str.disconnect();
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    stringBuffer = inputStream;
                                    th = th2;
                                    bufferedReader3 = bufferedReader4;
                                    str = httpURLConnection3;
                                    th.printStackTrace();
                                    if (bufferedReader3 != null) {
                                        bufferedReader3.close();
                                    }
                                    if (stringBuffer != 0) {
                                        stringBuffer.close();
                                    }
                                    if (str != 0) {
                                        str.disconnect();
                                    }
                                    return null;
                                }
                            }
                            String string = stringBuffer.toString();
                            try {
                                bufferedReader4.close();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                httpURLConnection3.disconnect();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            return string;
                        } catch (Exception e12) {
                            e = e12;
                            bufferedReader4 = null;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedReader4 = null;
                        }
                    } catch (Exception e13) {
                        e = e13;
                        bufferedReader2 = null;
                        httpURLConnection2 = httpURLConnection3;
                        bufferedReader3 = bufferedReader2;
                        stringBuffer = bufferedReader2;
                        str = httpURLConnection2;
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedReader = null;
                        httpURLConnection = httpURLConnection3;
                        bufferedReader3 = bufferedReader;
                        stringBuffer = bufferedReader;
                        str = httpURLConnection;
                        th.printStackTrace();
                        if (bufferedReader3 != null) {
                            bufferedReader3.close();
                        }
                        if (stringBuffer != 0) {
                            stringBuffer.close();
                        }
                        if (str != 0) {
                            str.disconnect();
                        }
                        return null;
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            } catch (Exception e15) {
                e = e15;
                httpURLConnection2 = null;
                bufferedReader2 = null;
            } catch (Throwable th5) {
                th = th5;
                httpURLConnection = null;
                bufferedReader = null;
            }
            e.printStackTrace();
            if (bufferedReader3 != null) {
                bufferedReader3.close();
            }
            if (stringBuffer != 0) {
                stringBuffer.close();
            }
            if (str != 0) {
                str.disconnect();
            }
            return null;
        } catch (Throwable th6) {
            if (bufferedReader3 != null) {
                try {
                    bufferedReader3.close();
                    if (stringBuffer != 0) {
                        stringBuffer.close();
                    }
                    if (str != 0) {
                        str.disconnect();
                    }
                } catch (IOException e16) {
                    e16.printStackTrace();
                    throw th6;
                }
            } else {
                if (stringBuffer != 0) {
                    stringBuffer.close();
                }
                if (str != 0) {
                    str.disconnect();
                }
            }
            throw th6;
        }
    }

    private static byte[] b(Context context, String str) {
        try {
            RequestInfo requestInfo = RequestInfo.getInstance(context);
            if (!requestInfo.isInit) {
                requestInfo.init();
            }
            DevInfo devInfo = requestInfo.getDevInfo();
            EnvInfo envInfo = requestInfo.getEnvInfo();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", "5.3.0.3");
            jSONObject.put("srcType", 1);
            jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, System.currentTimeMillis());
            jSONObject.put("appid", str);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("sdkUID", devInfo.getSdkUID());
            jSONObject2.put("sdkUIDOrig", devInfo.getSdkUIDOrig());
            jSONObject2.put(bm.f84421x, devInfo.getOs());
            jSONObject2.put("platform", 2);
            jSONObject2.put("devType", Integer.valueOf(devInfo.getDevType()));
            jSONObject2.put(bn.f7598j, devInfo.getBrand());
            jSONObject2.put(bn.f7597i, devInfo.getModel());
            jSONObject2.put(bm.f84423z, devInfo.getResolution());
            jSONObject2.put("screenSize", devInfo.getScreenSize());
            jSONObject2.put("language", devInfo.getLanguage());
            jSONObject2.put("density", devInfo.getDensity());
            jSONObject2.put("root", devInfo.getRoot());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("net", Integer.valueOf(envInfo.getNet()));
            jSONObject3.put("isp", Integer.valueOf(envInfo.getIsp()));
            jSONObject.putOpt("devInfo", jSONObject2);
            jSONObject.putOpt("envInfo", jSONObject3);
            String strA = b.a(aa.a(), jSONObject.toString());
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            return strA.getBytes();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00db A[Catch: IOException -> 0x00e7, TryCatch #13 {IOException -> 0x00e7, blocks: (B:62:0x00d6, B:64:0x00db, B:66:0x00e0, B:67:0x00e3), top: B:122:0x00d6 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00e0 A[Catch: IOException -> 0x00e7, TryCatch #13 {IOException -> 0x00e7, blocks: (B:62:0x00d6, B:64:0x00db, B:66:0x00e0, B:67:0x00e3), top: B:122:0x00d6 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ed A[Catch: IOException -> 0x0117, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0117, blocks: (B:72:0x00ed, B:89:0x0113, B:47:0x00b4), top: B:114:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0101 A[Catch: IOException -> 0x010d, TryCatch #10 {IOException -> 0x010d, blocks: (B:79:0x00fc, B:81:0x0101, B:83:0x0106, B:84:0x0109), top: B:120:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0106 A[Catch: IOException -> 0x010d, TryCatch #10 {IOException -> 0x010d, blocks: (B:79:0x00fc, B:81:0x0101, B:83:0x0106, B:84:0x0109), top: B:120:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0113 A[Catch: IOException -> 0x0117, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0117, blocks: (B:72:0x00ed, B:89:0x0113, B:47:0x00b4), top: B:114:0x0001 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v35 */
    public static String a(String str, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection2;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        HttpURLConnection httpURLConnection3;
        ?? r10;
        ?? r11;
        ?? r12;
        HttpURLConnection httpURLConnection4;
        OutputStream outputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader4;
        OutputStream outputStream2;
        InputStream inputStream;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader5;
        OutputStream outputStream3;
        InputStream inputStream2;
        BufferedReader bufferedReader6;
        BufferedReader bufferedReader7;
        try {
            try {
                try {
                    HttpURLConnection httpURLConnection5 = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection5.setRequestMethod("POST");
                        httpURLConnection5.setRequestProperty("Content-Length", String.valueOf(bArr.length));
                        httpURLConnection5.setRequestProperty("Content-Type", "application/json");
                        httpURLConnection5.setConnectTimeout(20000);
                        httpURLConnection5.setReadTimeout(20000);
                        httpURLConnection5.setDoOutput(true);
                        httpURLConnection5.setDoInput(true);
                        httpURLConnection5.connect();
                        if (bArr.length > 0) {
                            outputStream = httpURLConnection5.getOutputStream();
                            try {
                                outputStream.write(bArr);
                                outputStream = outputStream;
                            } catch (Exception e10) {
                                e = e10;
                                r10 = 0;
                                bufferedReader3 = null;
                                r11 = outputStream;
                                r12 = 0;
                                httpURLConnection4 = httpURLConnection5;
                                e.printStackTrace();
                                str = httpURLConnection4;
                                if (r12 != 0) {
                                    try {
                                        r12.close();
                                        if (r10 != 0) {
                                            r10.close();
                                        }
                                        if (bufferedReader3 != null) {
                                            bufferedReader3.close();
                                        }
                                        httpURLConnection4.disconnect();
                                        str = httpURLConnection4;
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                        str = e11;
                                    }
                                }
                                if (r11 != 0) {
                                    r11.close();
                                    r12 = r12;
                                    r11 = r11;
                                    r10 = r10;
                                    bufferedReader3 = bufferedReader3;
                                    str = str;
                                }
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                r10 = 0;
                                bufferedReader3 = null;
                                r11 = outputStream;
                                r12 = 0;
                                httpURLConnection3 = httpURLConnection5;
                                th.printStackTrace();
                                str = httpURLConnection3;
                                if (r12 != 0) {
                                    try {
                                        r12.close();
                                        if (r10 != 0) {
                                            r10.close();
                                        }
                                        if (bufferedReader3 != null) {
                                            bufferedReader3.close();
                                        }
                                        httpURLConnection3.disconnect();
                                        str = httpURLConnection3;
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                        str = e12;
                                    }
                                }
                                if (r11 != 0) {
                                    r11.close();
                                    r12 = r12;
                                    r11 = r11;
                                    r10 = r10;
                                    bufferedReader3 = bufferedReader3;
                                    str = str;
                                }
                                return null;
                            }
                        } else {
                            outputStream = null;
                        }
                        r11 = 200;
                        if (httpURLConnection5.getResponseCode() != 200) {
                            if (outputStream != null) {
                                outputStream.close();
                                r12 = outputStream;
                                str = httpURLConnection5;
                            }
                            return null;
                        }
                        InputStream inputStream3 = httpURLConnection5.getInputStream();
                        try {
                            InputStreamReader inputStreamReader3 = new InputStreamReader(inputStream3);
                            try {
                                BufferedReader bufferedReader8 = new BufferedReader(inputStreamReader3);
                                try {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    while (true) {
                                        String line = bufferedReader8.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        stringBuffer.append(line);
                                    }
                                    String string = stringBuffer.toString();
                                    if (inputStream3 != null) {
                                        try {
                                            inputStream3.close();
                                            inputStreamReader3.close();
                                            bufferedReader8.close();
                                            httpURLConnection5.disconnect();
                                        } catch (IOException e13) {
                                            e13.printStackTrace();
                                        }
                                    }
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException e14) {
                                            e14.printStackTrace();
                                        }
                                    }
                                    return string;
                                } catch (Exception e15) {
                                    e = e15;
                                    bufferedReader7 = bufferedReader8;
                                    inputStreamReader2 = inputStreamReader3;
                                    inputStream2 = inputStream3;
                                    bufferedReader5 = bufferedReader7;
                                    outputStream3 = outputStream;
                                    r11 = outputStream3;
                                    r12 = inputStream2;
                                    r10 = inputStreamReader2;
                                    bufferedReader3 = bufferedReader5;
                                    httpURLConnection4 = httpURLConnection5;
                                    e.printStackTrace();
                                    str = httpURLConnection4;
                                    if (r12 != 0) {
                                        r12.close();
                                        if (r10 != 0) {
                                            r10.close();
                                        }
                                        if (bufferedReader3 != null) {
                                            bufferedReader3.close();
                                        }
                                        httpURLConnection4.disconnect();
                                        str = httpURLConnection4;
                                    }
                                    if (r11 != 0) {
                                        r11.close();
                                        r12 = r12;
                                        r11 = r11;
                                        r10 = r10;
                                        bufferedReader3 = bufferedReader3;
                                        str = str;
                                    }
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader6 = bufferedReader8;
                                    inputStreamReader = inputStreamReader3;
                                    inputStream = inputStream3;
                                    bufferedReader4 = bufferedReader6;
                                    outputStream2 = outputStream;
                                    r11 = outputStream2;
                                    r12 = inputStream;
                                    r10 = inputStreamReader;
                                    bufferedReader3 = bufferedReader4;
                                    httpURLConnection3 = httpURLConnection5;
                                    th.printStackTrace();
                                    str = httpURLConnection3;
                                    if (r12 != 0) {
                                        r12.close();
                                        if (r10 != 0) {
                                            r10.close();
                                        }
                                        if (bufferedReader3 != null) {
                                            bufferedReader3.close();
                                        }
                                        httpURLConnection3.disconnect();
                                        str = httpURLConnection3;
                                    }
                                    if (r11 != 0) {
                                        r11.close();
                                        r12 = r12;
                                        r11 = r11;
                                        r10 = r10;
                                        bufferedReader3 = bufferedReader3;
                                        str = str;
                                    }
                                    return null;
                                }
                            } catch (Exception e16) {
                                bufferedReader7 = null;
                                e = e16;
                            } catch (Throwable th3) {
                                bufferedReader6 = null;
                                th = th3;
                            }
                        } catch (Exception e17) {
                            inputStreamReader2 = null;
                            bufferedReader5 = null;
                            outputStream3 = outputStream;
                            inputStream2 = inputStream3;
                            e = e17;
                        } catch (Throwable th4) {
                            inputStreamReader = null;
                            bufferedReader4 = null;
                            outputStream2 = outputStream;
                            inputStream = inputStream3;
                            th = th4;
                        }
                    } catch (Exception e18) {
                        e = e18;
                        bufferedReader2 = null;
                        httpURLConnection2 = httpURLConnection5;
                        BufferedReader bufferedReader9 = bufferedReader2;
                        BufferedReader bufferedReader10 = bufferedReader9;
                        bufferedReader3 = bufferedReader10;
                        r12 = bufferedReader2;
                        r11 = bufferedReader9;
                        r10 = bufferedReader10;
                        httpURLConnection4 = httpURLConnection2;
                        e.printStackTrace();
                        str = httpURLConnection4;
                        if (r12 != 0) {
                            r12.close();
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                            }
                            httpURLConnection4.disconnect();
                            str = httpURLConnection4;
                        }
                        if (r11 != 0) {
                            r11.close();
                            r12 = r12;
                            r11 = r11;
                            r10 = r10;
                            bufferedReader3 = bufferedReader3;
                            str = str;
                        }
                        return null;
                    } catch (Throwable th5) {
                        th = th5;
                        bufferedReader = null;
                        httpURLConnection = httpURLConnection5;
                        BufferedReader bufferedReader11 = bufferedReader;
                        BufferedReader bufferedReader12 = bufferedReader11;
                        bufferedReader3 = bufferedReader12;
                        r12 = bufferedReader;
                        r11 = bufferedReader11;
                        r10 = bufferedReader12;
                        httpURLConnection3 = httpURLConnection;
                        th.printStackTrace();
                        str = httpURLConnection3;
                        if (r12 != 0) {
                            r12.close();
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                            }
                            httpURLConnection3.disconnect();
                            str = httpURLConnection3;
                        }
                        if (r11 != 0) {
                            r11.close();
                            r12 = r12;
                            r11 = r11;
                            r10 = r10;
                            bufferedReader3 = bufferedReader3;
                            str = str;
                        }
                        return null;
                    }
                } catch (IOException e19) {
                    e19.printStackTrace();
                }
            } catch (Exception e20) {
                e = e20;
                httpURLConnection2 = null;
                bufferedReader2 = null;
            } catch (Throwable th6) {
                th = th6;
                httpURLConnection = null;
                bufferedReader = null;
            }
        } catch (Throwable th7) {
            if (r12 != 0) {
                try {
                    r12.close();
                    if (r10 != 0) {
                        r10.close();
                    }
                    if (bufferedReader3 != null) {
                        bufferedReader3.close();
                    }
                    str.disconnect();
                } catch (IOException e21) {
                    e21.printStackTrace();
                }
            }
            if (r11 != 0) {
                try {
                    r11.close();
                    throw th7;
                } catch (IOException e22) {
                    e22.printStackTrace();
                    throw th7;
                }
            }
            throw th7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0196 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0171 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x018c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x01aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0167 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:? A[SYNTHETIC] */
    public static String a(String str, File file) throws Throwable {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        InputStream inputStream;
        InputStream inputStream2;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        DataOutputStream dataOutputStream;
        InputStream inputStream3;
        InputStreamReader inputStreamReader3;
        StringBuffer stringBuffer = new StringBuffer();
        DataOutputStream dataOutputStream2 = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
            dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            try {
                dataOutputStream.writeBytes("--*****\r\n");
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"file\";filename=\"" + file.getName() + x.a.f97579g + "\r\n");
                dataOutputStream.writeBytes("\r\n");
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    dataOutputStream.write(bArr, 0, i10);
                    try {
                        e.printStackTrace();
                        if (dataOutputStream != null) {
                            try {
                                dataOutputStream.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        if (inputStreamReader2 != null) {
                            try {
                                inputStreamReader2.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        dataOutputStream2 = dataOutputStream;
                        BufferedReader bufferedReader3 = bufferedReader2;
                        inputStream = inputStream2;
                        inputStreamReader = inputStreamReader2;
                        bufferedReader = bufferedReader3;
                        if (dataOutputStream2 != null) {
                            try {
                                dataOutputStream2.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e15) {
                                e15.printStackTrace();
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e16) {
                                e16.printStackTrace();
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                                throw th;
                            } catch (IOException e17) {
                                e17.printStackTrace();
                                throw th;
                            }
                        }
                        throw th;
                    }
                }
                dataOutputStream.writeBytes("\r\n");
                fileInputStream.close();
                dataOutputStream.writeBytes("--*****--\r\n");
                dataOutputStream.flush();
                if (httpURLConnection.getResponseCode() == 200) {
                    inputStream3 = httpURLConnection.getInputStream();
                    try {
                        inputStreamReader = new InputStreamReader(inputStream3);
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                stringBuffer = new StringBuffer();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    stringBuffer.append(line);
                                    stringBuffer.append("\n");
                                }
                            } catch (Exception e18) {
                                inputStreamReader3 = inputStreamReader;
                                inputStream2 = inputStream3;
                                e = e18;
                                bufferedReader2 = bufferedReader;
                                inputStreamReader2 = inputStreamReader3;
                                e.printStackTrace();
                                if (dataOutputStream != null) {
                                    dataOutputStream.close();
                                }
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                                if (inputStreamReader2 != null) {
                                    inputStreamReader2.close();
                                }
                                if (inputStream2 != null) {
                                    inputStream2.close();
                                }
                                return null;
                            } catch (Throwable th2) {
                                dataOutputStream2 = dataOutputStream;
                                inputStream = inputStream3;
                                th = th2;
                                if (dataOutputStream2 != null) {
                                    dataOutputStream2.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                    throw th;
                                }
                                throw th;
                            }
                        } catch (Exception e19) {
                            bufferedReader2 = null;
                            inputStreamReader3 = inputStreamReader;
                            inputStream2 = inputStream3;
                            e = e19;
                            inputStreamReader2 = inputStreamReader3;
                            e.printStackTrace();
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            if (inputStreamReader2 != null) {
                                inputStreamReader2.close();
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            return null;
                        } catch (Throwable th3) {
                            inputStream = inputStream3;
                            th = th3;
                            bufferedReader = null;
                            dataOutputStream2 = dataOutputStream;
                            if (dataOutputStream2 != null) {
                                dataOutputStream2.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                                throw th;
                            }
                            throw th;
                        }
                    } catch (Exception e20) {
                        inputStreamReader2 = null;
                        bufferedReader2 = null;
                        inputStream2 = inputStream3;
                        e = e20;
                    } catch (Throwable th4) {
                        inputStream = inputStream3;
                        th = th4;
                        inputStreamReader = null;
                        bufferedReader = null;
                    }
                } else {
                    inputStream3 = null;
                    inputStreamReader = null;
                    bufferedReader = null;
                }
                String string = stringBuffer.toString();
                try {
                    dataOutputStream.close();
                } catch (IOException e21) {
                    e21.printStackTrace();
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (IOException e23) {
                        e23.printStackTrace();
                    }
                }
                if (inputStream3 != null) {
                    try {
                        inputStream3.close();
                    } catch (IOException e24) {
                        e24.printStackTrace();
                    }
                }
                return string;
            } catch (Exception e25) {
                e = e25;
                inputStream2 = null;
                inputStreamReader2 = null;
                bufferedReader2 = null;
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
                bufferedReader = null;
                inputStream = null;
            }
        } catch (Exception e26) {
            e = e26;
            inputStream2 = null;
            inputStreamReader2 = null;
            bufferedReader2 = null;
            dataOutputStream = null;
        } catch (Throwable th6) {
            th = th6;
            inputStreamReader = null;
            bufferedReader = null;
            inputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00fd A[Catch: IOException -> 0x013f, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #16 {IOException -> 0x013f, blocks: (B:70:0x00fd, B:93:0x013b, B:52:0x00c6), top: B:109:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x013b A[Catch: IOException -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #16 {IOException -> 0x013f, blocks: (B:70:0x00fd, B:93:0x013b, B:52:0x00c6), top: B:109:0x0018 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.InputStreamReader] */
    public static String a(Context context, String str, String str2, Boolean bool) {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection2;
        OutputStream outputStream2;
        ?? r10;
        OutputStream outputStream3;
        ?? r11;
        ?? r12;
        ?? r13;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        if (context != null && str != null && str2 != null) {
            byte[] bArrB = bool.booleanValue() ? b(context, str2) : a(context, str2);
            try {
                if (bArrB == null) {
                    return null;
                }
                try {
                    httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(bArrB.length));
                        httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                        httpURLConnection2.setConnectTimeout(10000);
                        httpURLConnection2.setReadTimeout(5000);
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.connect();
                        if (bArrB.length > 0) {
                            outputStream2 = httpURLConnection2.getOutputStream();
                            try {
                                outputStream2.write(bArrB);
                            } catch (Exception unused) {
                                inputStream = null;
                                outputStream3 = null;
                                r11 = outputStream3;
                                r13 = outputStream3;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        r13.close();
                                        r11.close();
                                        httpURLConnection2.disconnect();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                if (outputStream2 != null) {
                                    outputStream2.close();
                                }
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                outputStream = outputStream2;
                                r12 = 0;
                                r10 = 0;
                                httpURLConnection = httpURLConnection2;
                                inputStream = null;
                                try {
                                    th.printStackTrace();
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            r12.close();
                                            r10.close();
                                            httpURLConnection.disconnect();
                                        } catch (IOException e11) {
                                            e11.printStackTrace();
                                        }
                                    }
                                    if (outputStream != null) {
                                    }
                                    return null;
                                } finally {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            r12.close();
                                            r10.close();
                                            httpURLConnection.disconnect();
                                        } catch (IOException e12) {
                                            e12.printStackTrace();
                                        }
                                    }
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException e13) {
                                            e13.printStackTrace();
                                        }
                                    }
                                }
                            }
                        } else {
                            outputStream2 = null;
                        }
                        if (httpURLConnection2.getResponseCode() == 200) {
                            inputStream = httpURLConnection2.getInputStream();
                            try {
                                InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream);
                                try {
                                    BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                                    try {
                                        StringBuffer stringBuffer = new StringBuffer();
                                        while (true) {
                                            String line = bufferedReader3.readLine();
                                            if (line == null) {
                                                break;
                                            }
                                            stringBuffer.append(line);
                                        }
                                        String string = stringBuffer.toString();
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                                inputStreamReader2.close();
                                                bufferedReader3.close();
                                                httpURLConnection2.disconnect();
                                            } catch (IOException e14) {
                                                e14.printStackTrace();
                                            }
                                        }
                                        if (outputStream2 != null) {
                                            try {
                                                outputStream2.close();
                                            } catch (IOException e15) {
                                                e15.printStackTrace();
                                            }
                                        }
                                        return string;
                                    } catch (Exception unused2) {
                                        r11 = bufferedReader3;
                                        r13 = inputStreamReader2;
                                        if (inputStream != null) {
                                            inputStream.close();
                                            r13.close();
                                            r11.close();
                                            httpURLConnection2.disconnect();
                                        }
                                        if (outputStream2 != null) {
                                            outputStream2.close();
                                        }
                                        return null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedReader2 = bufferedReader3;
                                        inputStreamReader = inputStreamReader2;
                                        bufferedReader = bufferedReader2;
                                        outputStream = outputStream2;
                                        httpURLConnection = httpURLConnection2;
                                        r12 = inputStreamReader;
                                        r10 = bufferedReader;
                                        th.printStackTrace();
                                        if (inputStream != null) {
                                            inputStream.close();
                                            r12.close();
                                            r10.close();
                                            httpURLConnection.disconnect();
                                        }
                                        if (outputStream != null) {
                                        }
                                        return null;
                                    }
                                } catch (Exception unused3) {
                                    r11 = 0;
                                    r13 = inputStreamReader2;
                                } catch (Throwable th3) {
                                    bufferedReader2 = null;
                                    th = th3;
                                }
                            } catch (Exception unused4) {
                                outputStream3 = null;
                                r11 = outputStream3;
                                r13 = outputStream3;
                                if (inputStream != null) {
                                    inputStream.close();
                                    r13.close();
                                    r11.close();
                                    httpURLConnection2.disconnect();
                                }
                                if (outputStream2 != null) {
                                    outputStream2.close();
                                }
                                return null;
                            } catch (Throwable th4) {
                                inputStreamReader = null;
                                bufferedReader = null;
                                httpURLConnection2 = httpURLConnection2;
                                inputStream = inputStream;
                                th = th4;
                            }
                        } else if (outputStream2 != null) {
                            outputStream2.close();
                        }
                    } catch (Exception unused5) {
                        inputStream = null;
                        outputStream2 = null;
                        outputStream3 = outputStream2;
                        r11 = outputStream3;
                        r13 = outputStream3;
                        if (inputStream != null) {
                            inputStream.close();
                            r13.close();
                            r11.close();
                            httpURLConnection2.disconnect();
                        }
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        return null;
                    } catch (Throwable th5) {
                        th = th5;
                        httpURLConnection = httpURLConnection2;
                        inputStream = null;
                        outputStream = null;
                        OutputStream outputStream4 = outputStream;
                        r10 = outputStream4;
                        r12 = outputStream4;
                        th.printStackTrace();
                        if (inputStream != null) {
                            inputStream.close();
                            r12.close();
                            r10.close();
                            httpURLConnection.disconnect();
                        }
                        if (outputStream != null) {
                        }
                        return null;
                    }
                } catch (Exception unused6) {
                    inputStream = null;
                    httpURLConnection2 = null;
                    outputStream2 = null;
                } catch (Throwable th6) {
                    th = th6;
                    inputStream = null;
                    httpURLConnection = null;
                    outputStream = null;
                }
            } catch (IOException e16) {
            }
        }
        return null;
    }

    private static byte[] a(Context context, String str) {
        try {
            RequestInfo requestInfo = RequestInfo.getInstance(context);
            if (!requestInfo.isInit) {
                requestInfo.init();
            }
            DevInfo devInfo = requestInfo.getDevInfo();
            EnvInfo envInfo = requestInfo.getEnvInfo();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", str);
            jSONObject.put("packageName", au.c(context));
            jSONObject.put("installTime", String.valueOf(au.a(context)));
            jSONObject.put("updateTime", String.valueOf(au.b(context)));
            jSONObject.put("uploadTime", String.valueOf(System.currentTimeMillis()));
            jSONObject.put("appVersion", au.d(context));
            jSONObject.put("sdkVersion", "5.3.0.3");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("sdkUID", devInfo.getSdkUID());
            jSONObject2.put("sdkUIDOrig", devInfo.getSdkUIDOrig());
            if (!TextUtils.isEmpty(devInfo.getOaid())) {
                jSONObject2.put("oaid", devInfo.getOaid());
            } else if (!TextUtils.isEmpty(requestInfo.getCustomOaid())) {
                jSONObject2.put("oaid", requestInfo.getCustomOaid());
            }
            if (!TextUtils.isEmpty(devInfo.getHonorOaid())) {
                jSONObject2.put("honorOaid", devInfo.getHonorOaid());
            }
            jSONObject2.put("gaid", devInfo.getGaid());
            jSONObject2.put(bm.f84421x, devInfo.getOs());
            jSONObject2.put("platform", "2");
            jSONObject2.put("devType", devInfo.getDevType());
            jSONObject2.put(bn.f7598j, devInfo.getBrand());
            jSONObject2.put(bn.f7597i, devInfo.getModel());
            jSONObject2.put(bm.f84423z, devInfo.getResolution());
            jSONObject2.put("screenSize", devInfo.getScreenSize());
            jSONObject2.put("language", devInfo.getLanguage());
            jSONObject2.put("density", devInfo.getDensity());
            jSONObject2.put("root", devInfo.getRoot());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("net", envInfo.getNet());
            jSONObject3.put("isp", envInfo.getIsp());
            jSONObject3.put("developerMode", au.g(context));
            jSONObject3.put("isDebugApk", au.f(context));
            jSONObject3.put("isDebugConnected", Debug.isDebuggerConnected());
            jSONObject3.put("isWifiProxy", au.h(context));
            jSONObject3.put("isVpn", au.b());
            jSONObject3.put("isSimulator", r.a().a(context));
            jSONObject.putOpt("devInfo", jSONObject2);
            jSONObject.putOpt("envInfo", jSONObject3);
            String strA = a.a(jSONObject.toString(), aa.b());
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            return strA.getBytes();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
