package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f81911d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f81912e = Pattern.compile("GET /(.*) HTTP");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f81913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f81914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f81915c;

    public f(String request) {
        n.a(request);
        long jA = a(request);
        this.f81914b = Math.max(0L, jA);
        this.f81915c = jA >= 0;
        this.f81913a = b(request);
    }

    private long a(String request) {
        Matcher matcher = f81911d.matcher(request);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String request) {
        Matcher matcher = f81912e.matcher(request);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + request + "`: url not found!");
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f81914b + ", partial=" + this.f81915c + ", uri='" + this.f81913a + "'}";
    }

    public static f a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new f(sb2.toString());
            }
            sb2.append(line);
            sb2.append('\n');
        }
    }
}
