package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.czhj.sdk.common.Constants;
import com.windmill.sdk.WMConstants;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* JADX INFO: loaded from: classes4.dex */
public class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f50160a = "HttpUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final MediaType f50161b = MediaType.parse("image/png");

    private y0() {
    }

    public static String a(String path, boolean isDebug) throws Throwable {
        HttpURLConnection httpURLConnection;
        Exception e10;
        String str = "";
        HttpURLConnection httpURLConnection2 = null;
        int i10 = 0;
        while (i10 < 2) {
            try {
                if (!t2.h(path)) {
                    httpURLConnection = (HttpURLConnection) new URL(path).openConnection();
                    try {
                        try {
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setConnectTimeout(5000);
                            httpURLConnection.setReadTimeout(10000);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            if (httpURLConnection.getResponseCode() == 200) {
                                InputStream inputStream = httpURLConnection.getInputStream();
                                while (true) {
                                    int i11 = inputStream.read();
                                    if (i11 != -1) {
                                        byteArrayOutputStream.write(i11);
                                    } else {
                                        byteArrayOutputStream.flush();
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        String str2 = new String(byteArray, 0, byteArray.length);
                                        try {
                                            inputStream.close();
                                            byteArrayOutputStream.close();
                                            httpURLConnection.disconnect();
                                            return str2;
                                        } catch (Exception e11) {
                                            e10 = e11;
                                            str = str2;
                                        }
                                    }
                                }
                            } else {
                                httpURLConnection2 = httpURLConnection;
                            }
                        } catch (Exception e12) {
                            e10 = e12;
                        }
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection2 = httpURLConnection;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                    e10.printStackTrace();
                    i10++;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    httpURLConnection2 = httpURLConnection;
                }
                if (httpURLConnection2 == null) {
                    break;
                }
                httpURLConnection2.disconnect();
                break;
            } catch (Exception e13) {
                httpURLConnection = httpURLConnection2;
                e10 = e13;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return str;
    }

    public static String b(String path, boolean isDebug, Map<String, String> args) {
        h1.e(f50160a, "doPostRequest", "url=" + path);
        String strTrim = "";
        int i10 = 0;
        while (i10 < 2) {
            try {
                h1.e(f50160a, "doPostRequest", "retry=" + i10);
                if (t2.h(path)) {
                    break;
                }
                if (!t2.h(path) && args != null && args.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry<String, String> entry : args.entrySet()) {
                        arrayList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                    }
                    BasicHttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, 5000);
                    HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
                    SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", b3.a(), 443));
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                    HttpPost httpPost = new HttpPost(path);
                    if (!arrayList.isEmpty()) {
                        httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                    }
                    HttpResponse httpResponseExecute = defaultHttpClient.execute(httpPost);
                    HttpEntity entity = httpResponseExecute.getStatusLine().getStatusCode() == 200 ? httpResponseExecute.getEntity() : null;
                    if (entity == null) {
                        break;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(entity.getContent(), "UTF-8"));
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    }
                    strTrim = sb2.toString().trim();
                    break;
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                i10++;
                strTrim = WMConstants.TIMER_STAGE_NONE;
            }
        }
        h1.e(f50160a, "doPostRequest", "url=" + path, "response=" + strTrim);
        return strTrim;
    }

    public static String c(String url, String json, String ip) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "utf-8");
            httpURLConnection.setRequestProperty("Content-type", "application/json");
            httpURLConnection.setRequestProperty("accept", "application/json");
            httpURLConnection.setRequestProperty("X-WuFan-APP-ID", "wufan-third-game-api-event");
            httpURLConnection.setRequestProperty("X-Real-IP", ip);
            httpURLConnection.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(json);
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                return "";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer("");
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    h1.e(GrantCredentialsPermissionActivity.f89267i, ((Object) stringBuffer) + "");
                    bufferedReader.close();
                    httpURLConnection.disconnect();
                    return stringBuffer.toString();
                }
                stringBuffer.append(line);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED;
    }

    public static void e(String[] uploadFiles, String uid, String token, String gameId, String archiveName, String archiveFileName) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(com.join.mgps.rpc.h.f72403z + "/cloud/backupArchive").openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            for (int i10 = 0; i10 < uploadFiles.length; i10++) {
                String str = uploadFiles[i10];
                String strSubstring = str.substring(str.lastIndexOf("//") + 1);
                dataOutputStream.writeBytes("uid=" + URLEncoder.encode(uid) + "&token=" + URLEncoder.encode(token) + "&gameId=" + URLEncoder.encode(gameId) + "&archiveName=" + URLEncoder.encode(archiveName) + "&archiveFileName=" + URLEncoder.encode(archiveFileName));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("--");
                sb2.append("*****");
                sb2.append("/r/n");
                dataOutputStream.writeBytes(sb2.toString());
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"file" + i10 + "\";filename=\"" + strSubstring + x.a.f97579g + "/r/n");
                dataOutputStream.writeBytes("/r/n");
                FileInputStream fileInputStream = new FileInputStream(str);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i11 = fileInputStream.read(bArr);
                    if (i11 != -1) {
                        dataOutputStream.write(bArr, 0, i11);
                    }
                }
                dataOutputStream.writeBytes("/r/n");
                fileInputStream.close();
            }
            dataOutputStream.writeBytes("--*****--/r/n");
            dataOutputStream.flush();
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                int i12 = inputStream.read();
                if (i12 == -1) {
                    break;
                } else {
                    stringBuffer.append((char) i12);
                }
            }
            String string = stringBuffer.toString();
            if (string.contains("successfully")) {
                int iIndexOf = string.indexOf("url =") + 5;
                System.out.println(string.substring(iIndexOf, string.indexOf("/n", iIndexOf)).trim());
            }
            dataOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String f(File file, String uid, String token, String gameId, String typeId, String describe) {
        try {
            Response responseExecute = new OkHttpClient().newCall(new Request.Builder().url(com.join.mgps.rpc.h.f72345i + "/android/v2/game/gamescreenshot/addPic").post(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("file", file.getName(), RequestBody.create(MediaType.parse("image/png"), file)).addFormDataPart("uid", uid).addFormDataPart(Constants.TOKEN, token).addFormDataPart("gameId", gameId).addFormDataPart("typeId", typeId).addFormDataPart("describe", describe).build()).build()).execute();
            String strString = responseExecute.body().string();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" upload jsonString =");
            sb2.append(strString);
            return !responseExecute.isSuccessful() ? "" : strString;
        } catch (IOException unused) {
            return "";
        }
    }
}
