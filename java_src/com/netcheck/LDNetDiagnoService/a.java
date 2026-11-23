package com.netcheck.LDNetDiagnoService;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.haima.hmcp.utils.LogUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AsyncTask {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f75836k = "(?<=from ).*(?=: icmp_seq=1 ttl=)";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC0971a f75837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f75838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f75840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f75841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f75842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f75843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f75844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f75845i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f75846j;

    /* JADX INFO: renamed from: com.netcheck.LDNetDiagnoService.a$a, reason: collision with other inner class name */
    public interface InterfaceC0971a {
        void OnNetPingFinished(String str);
    }

    private class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f75847c = "(?<=\\().*?(?=\\))";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f75848a;

        public b(String str) {
            this.f75848a = str;
            Matcher matcher = Pattern.compile(f75847c).matcher(str);
            if (matcher.find()) {
                this.f75848a = matcher.group();
            }
        }

        public String a() {
            return this.f75848a;
        }
    }

    public a(InterfaceC0971a interfaceC0971a, int i10) {
        this.f75839c = 56;
        this.f75841e = 1048576;
        this.f75842f = 1;
        this.f75843g = 51;
        this.f75844h = 1;
        this.f75845i = "www.baidu.com";
        this.f75846j = false;
        this.f75837a = interfaceC0971a;
        this.f75838b = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.netcheck.LDNetDiagnoService.a$b] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Process] */
    private String c(b bVar, boolean z10) throws Throwable {
        BufferedReader bufferedReader;
        InterruptedException e10;
        IOException e11;
        ?? r10;
        ?? r11;
        String str = "ping -s " + this.f75839c + " -c ";
        if (z10) {
            str = "ping -s 8185 -c  ";
        }
        String str2 = "";
        ?? r12 = 0;
        r12 = 0;
        try {
            try {
                bVar = Runtime.getRuntime().exec(str + this.f75838b + " " + bVar.a());
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(bVar.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null || isCancelled()) {
                                break;
                            }
                            str2 = str2 + line + "|";
                        } catch (IOException e12) {
                            e11 = e12;
                            e11.printStackTrace();
                            r11 = bVar;
                            r10 = bVar;
                            if (bufferedReader != null) {
                            }
                            r10.destroy();
                            return str2;
                        } catch (InterruptedException e13) {
                            e10 = e13;
                            e10.printStackTrace();
                            r10 = bVar;
                            if (bufferedReader != null) {
                                r11 = bVar;
                            }
                            r10.destroy();
                            return str2;
                        }
                    }
                    bufferedReader.close();
                    bVar.waitFor();
                    r11 = bVar;
                } catch (IOException e14) {
                    e11 = e14;
                    bufferedReader = null;
                } catch (InterruptedException e15) {
                    e10 = e15;
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                    if (r12 != 0) {
                        try {
                            r12.close();
                        } catch (Exception unused) {
                            throw th;
                        }
                    }
                    bVar.destroy();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                r12 = str;
            }
        } catch (IOException e16) {
            bufferedReader = null;
            e11 = e16;
            bVar = 0;
        } catch (InterruptedException e17) {
            bufferedReader = null;
            e10 = e17;
            bVar = 0;
        } catch (Throwable th3) {
            th = th3;
            bVar = 0;
        }
        try {
            bufferedReader.close();
            r10 = r11;
            r10.destroy();
        } catch (Exception unused2) {
        }
        return str2;
    }

    public void a() throws Throwable {
        b(this.f75840d, false);
    }

    public void b(String str, boolean z10) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            str = "www.baidu.com";
        }
        this.f75846j = true;
        b bVar = new b(str);
        StringBuilder sb2 = new StringBuilder(256);
        String strC = c(bVar, z10);
        if (isCancelled()) {
            return;
        }
        if (Pattern.compile(f75836k).matcher(strC).find()) {
            LogUtils.i("LDNetPing", "status" + strC);
            sb2.append("\t" + strC);
        } else if (strC.length() == 0) {
            sb2.append("unknown host or network error");
        } else {
            sb2.append("timeout");
        }
        this.f75837a.OnNetPingFinished(sb2.toString());
    }

    public boolean d() {
        return this.f75846j;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) throws Throwable {
        a();
        return null;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        this.f75846j = false;
        LogUtils.i("NetPing", "ping finish");
    }

    public a(InterfaceC0971a interfaceC0971a, int i10, int i11, String str) {
        this.f75838b = 6;
        this.f75839c = 56;
        this.f75841e = 1048576;
        this.f75842f = 1;
        this.f75843g = 51;
        this.f75844h = 1;
        this.f75845i = "www.baidu.com";
        this.f75846j = false;
        this.f75837a = interfaceC0971a;
        if (i10 > 1 && i10 < 51) {
            this.f75838b = i10;
        }
        if (i11 > 1 && i11 < 1048576) {
            this.f75839c = i11;
        }
        this.f75840d = str;
    }
}
