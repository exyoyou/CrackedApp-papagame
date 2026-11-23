package com.byazt.xy;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2098, 20})
public class c implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HttpURLConnection f22113c;

    public c(HttpURLConnection httpURLConnection) {
        this.f22113c = httpURLConnection;
    }

    @Override // com.byazt.xy.uj
    public boolean c() {
        try {
            return this.f22113c.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22113c.disconnect();
    }

    @Override // com.byazt.xy.uj
    public InputStream tt() throws IOException {
        return this.f22113c.getInputStream();
    }

    @Override // com.byazt.xy.uj
    public String uj() {
        try {
            if (c()) {
                return null;
            }
            return "Unable to fetch " + this.f22113c.getURL() + ". Failed with " + this.f22113c.getResponseCode() + "\n" + c(this.f22113c);
        } catch (IOException e10) {
            com.byazt.kk.a.c("get error failed ", e10);
            return e10.getMessage();
        }
    }

    @Override // com.byazt.xy.uj
    public String ve() {
        return this.f22113c.getContentType();
    }

    private String c(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb2.append(line);
                    sb2.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }
}
