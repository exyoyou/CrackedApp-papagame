package com.baidu.passbqt.http;

import android.os.Handler;
import android.os.Looper;
import com.baidu.passbqt.NoProguard;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class HttpRequestHandler extends Handler implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final int f8314a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f8315b;

    public HttpRequestHandler(Looper looper) {
        this(looper, false);
    }

    protected byte[] a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            gZIPOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } finally {
            gZIPOutputStream.close();
        }
    }

    public HttpRequestHandler(Looper looper, boolean z10) {
        super(looper);
        this.f8315b = z10;
    }
}
