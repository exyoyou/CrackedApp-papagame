package gc;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public final HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setConnectTimeout(5000);
                httpURLConnection2.setReadTimeout(5000);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setRequestMethod(str2);
                httpURLConnection2.setRequestProperty("Content-Type", "application/json;charset=utf-8");
                return httpURLConnection2;
            } catch (Exception e10) {
                e = e10;
                httpURLConnection = httpURLConnection2;
                kc.a.a("RealRequest", "getHttpURLConnection error:" + e.getMessage());
                e.printStackTrace();
                return httpURLConnection;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d3 A[Catch: IOException -> 0x00d7, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x00d7, blocks: (B:23:0x0089, B:41:0x00d3), top: B:61:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    public void b(String str, String str2, c cVar) {
        Throwable th;
        HttpURLConnection httpURLConnectionA;
        BufferedWriter bufferedWriter;
        Throwable th2;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                httpURLConnectionA = a(str, "POST");
                try {
                    httpURLConnectionA.connect();
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(httpURLConnectionA.getOutputStream()));
                    try {
                        bufferedWriter.write(str2);
                        bufferedWriter.flush();
                        if (httpURLConnectionA.getResponseCode() == 200) {
                            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnectionA.getInputStream()));
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (TextUtils.isEmpty(line)) {
                                        break;
                                    } else {
                                        sb2.append(line);
                                    }
                                }
                                cVar.a(sb2.toString());
                                bufferedReader2 = bufferedReader;
                            } catch (Throwable th3) {
                                th2 = th3;
                                try {
                                    kc.a.a("RealRequest", "postRequestByJson error:" + th2.getMessage());
                                    cVar.a(new fc.b(-1, th2.getMessage()));
                                    th2.printStackTrace();
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    if (bufferedWriter != null) {
                                        try {
                                            bufferedWriter.close();
                                        } catch (IOException e10) {
                                            e10.printStackTrace();
                                        }
                                    }
                                    if (bufferedReader == null) {
                                    }
                                } finally {
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    if (bufferedWriter != null) {
                                        try {
                                            bufferedWriter.close();
                                        } catch (IOException e11) {
                                            e11.printStackTrace();
                                        }
                                    }
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException e12) {
                                            e12.printStackTrace();
                                        }
                                    }
                                }
                            }
                        } else {
                            kc.a.a("RealRequest", "response code error:" + httpURLConnectionA.getResponseCode());
                            cVar.a(new fc.b(httpURLConnectionA.getResponseCode(), httpURLConnectionA.getResponseMessage()));
                        }
                        httpURLConnectionA.disconnect();
                        try {
                            bufferedWriter.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        bufferedReader = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    bufferedWriter = null;
                    th2 = th;
                    bufferedReader = null;
                    kc.a.a("RealRequest", "postRequestByJson error:" + th2.getMessage());
                    cVar.a(new fc.b(-1, th2.getMessage()));
                    th2.printStackTrace();
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    if (bufferedReader == null) {
                    }
                }
            } catch (IOException e14) {
            }
        } catch (Throwable th6) {
            th = th6;
            httpURLConnectionA = null;
        }
    }
}
