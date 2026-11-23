package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class a implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final HttpURLConnection f5926b;

    public a(@NonNull HttpURLConnection httpURLConnection) {
        this.f5926b = httpURLConnection;
    }

    private String a(HttpURLConnection httpURLConnection) throws IOException {
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

    @Override // com.airbnb.lottie.network.c
    @NonNull
    public InputStream T() throws IOException {
        return this.f5926b.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5926b.disconnect();
    }

    @Override // com.airbnb.lottie.network.c
    @Nullable
    public String contentType() {
        return this.f5926b.getContentType();
    }

    @Override // com.airbnb.lottie.network.c
    @Nullable
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f5926b.getURL() + ". Failed with " + this.f5926b.getResponseCode() + "\n" + a(this.f5926b);
        } catch (IOException e10) {
            com.airbnb.lottie.utils.f.f("get error failed ", e10);
            return e10.getMessage();
        }
    }

    @Override // com.airbnb.lottie.network.c
    public boolean isSuccessful() {
        try {
            return this.f5926b.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }
}
