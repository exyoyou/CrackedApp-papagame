package com.sdk.c;

import android.text.TextUtils;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Boolean f78471a = Boolean.valueOf(d.f78521a);

    /* JADX WARN: Code duplicated, block: B:36:0x009e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a0  */
    public String a(HttpURLConnection httpURLConnection, b bVar, String str) {
        StringBuilder sb2;
        long j10;
        long j11 = 0;
        try {
            long contentLength = httpURLConnection.getContentLength();
            if (!((com.sdk.a.c) bVar).a(contentLength, 0L, true)) {
                return null;
            }
            sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), str));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        j10 = contentLength;
                        break;
                    }
                    sb2.append(line);
                    sb2.append('\n');
                    long length = 0;
                    if (!TextUtils.isEmpty(line)) {
                        int length2 = line.length();
                        if (length2 < 100) {
                            length = line.getBytes(str).length;
                        } else {
                            int i10 = 0;
                            while (i10 < length2) {
                                int i11 = i10 + 100;
                                length += (long) new String(line.substring(i10, i11 < length2 ? i11 : length2)).getBytes(str).length;
                                i10 = i11;
                            }
                        }
                    }
                    j11 += length;
                    j10 = contentLength;
                    if (!((com.sdk.a.c) bVar).a(contentLength, j11, false)) {
                        break;
                    }
                    contentLength = j10;
                }
                ((com.sdk.a.c) bVar).a(j10, j11, true);
            } catch (Exception e10) {
                e = e10;
                LogUtils.e("StringDownloadHandler", e.getMessage(), f78471a);
            }
            if (sb2 == null) {
                return null;
            }
            return sb2.toString().trim();
        } catch (Exception e11) {
            e = e11;
            sb2 = null;
        }
        LogUtils.e("StringDownloadHandler", e.getMessage(), f78471a);
        if (sb2 == null) {
            return null;
        }
        return sb2.toString().trim();
    }
}
