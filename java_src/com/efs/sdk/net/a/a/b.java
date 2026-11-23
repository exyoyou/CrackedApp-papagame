package com.efs.sdk.net.a.a;

import com.efs.sdk.base.core.util.Log;
import com.haima.hmcp.countly.CountlyDbPolicy;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, Long> f26532a = new HashMap();

    static long a(f.b bVar) {
        try {
            byte[] bArrD = bVar.d();
            if (bArrD != null) {
                return bArrD.length;
            }
            return 0L;
        } catch (IOException | OutOfMemoryError e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static InputStream a(String str, String str2, String str3, InputStream inputStream) {
        Log.i("NetTrace-Interceptor", "save interpret response stream");
        com.efs.sdk.net.a.c cVarA = com.efs.sdk.net.a.a.a().a(str);
        cVarA.f26560i = str2;
        if (str2 != null) {
            if (str2.contains("text") || str2.contains(CountlyDbPolicy.FIELD_COUNTLY_JSON)) {
                ByteArrayOutputStream byteArrayOutputStreamA = a(inputStream, cVarA, str3);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStreamA.toByteArray());
                try {
                    byteArrayOutputStreamA.close();
                } catch (IOException e10) {
                    Log.e("NetTrace-Interceptor", "save interpret response stream, e is ".concat(String.valueOf(e10)));
                }
                return byteArrayInputStream;
            }
        }
        cVarA.f26561j = 0L;
        return inputStream;
    }

    private static ByteArrayOutputStream a(InputStream inputStream, com.efs.sdk.net.a.c cVar, String str) {
        BufferedReader bufferedReader;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int i10 = inputStream.read(bArr);
                if (i10 < 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            } catch (IOException e10) {
                Log.e("NetTrace-Interceptor", "parse and save body, e is ".concat(String.valueOf(e10)));
            }
        }
        byteArrayOutputStream.flush();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        if ("gzip".equals(str)) {
            bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(byteArrayInputStream)));
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream));
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb2.append(line + '\n');
        }
        cVar.f26561j = sb2.toString().getBytes().length;
        return byteArrayOutputStream;
    }
}
