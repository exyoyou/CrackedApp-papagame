package cn.com.chinatelecom.account.a;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f719a = "a";

    /* JADX WARN: Code duplicated, block: B:34:0x00ae A[Catch: Exception -> 0x0098, TRY_ENTER, TryCatch #3 {Exception -> 0x0098, blocks: (B:22:0x0094, B:26:0x009c, B:34:0x00ae, B:36:0x00b3), top: B:54:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3 A[Catch: Exception -> 0x0098, TRY_LEAVE, TryCatch #3 {Exception -> 0x0098, blocks: (B:22:0x0094, B:26:0x009c, B:34:0x00ae, B:36:0x00b3), top: B:54:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c2 A[Catch: Exception -> 0x00be, TRY_LEAVE, TryCatch #0 {Exception -> 0x00be, blocks: (B:40:0x00ba, B:44:0x00c2), top: B:48:0x00ba }] */
    public static String a(Context context, String str, String str2) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        String string = "";
        BufferedReader bufferedReader = null;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestProperty("accept", "*/*");
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.addRequestProperty("Accept-Charset", "UTF-8");
                if (TextUtils.isEmpty(str2)) {
                    httpURLConnection.connect();
                } else {
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream()));
                    dataOutputStream.write(str2.getBytes("UTF-8"));
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
                if (httpURLConnection.getResponseCode() == 200) {
                    inputStream2 = httpURLConnection.getInputStream();
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream2));
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line);
                                sb2.append("\n");
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                try {
                                    th.printStackTrace();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                } catch (Throwable th3) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                            if (inputStream2 != null) {
                                                inputStream2.close();
                                            }
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                            throw th3;
                                        }
                                    } else if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                    throw th3;
                                }
                            }
                        }
                        string = sb2.toString();
                        bufferedReader = bufferedReader2;
                    } catch (Throwable th4) {
                        inputStream = inputStream2;
                        th = th4;
                        InputStream inputStream3 = inputStream;
                        th = th;
                        inputStream2 = inputStream3;
                        th.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        return string;
                    }
                } else {
                    inputStream2 = null;
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return string;
    }
}
