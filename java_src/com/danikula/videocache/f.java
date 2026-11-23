package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f26021d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f26022e = Pattern.compile("GET /(.*) HTTP");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26025c;

    public f(String str) {
        n.d(str);
        long jA = a(str);
        this.f26024b = Math.max(0L, jA);
        this.f26025c = jA >= 0;
        this.f26023a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f26021d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f26022e.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public static f c(InputStream inputStream) throws IOException {
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

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f26024b + ", partial=" + this.f26025c + ", uri='" + this.f26023a + "'}";
    }
}
