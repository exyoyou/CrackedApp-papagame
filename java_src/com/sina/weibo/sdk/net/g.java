package com.sina.weibo.sdk.net;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class g implements f {
    private int code;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private InputStream f82249p;

    public g(int i10, InputStream inputStream) {
        this.code = i10;
        this.f82249p = inputStream;
    }

    @Override // com.sina.weibo.sdk.net.f
    public final String f() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = this.f82249p.read(bArr);
            if (i10 == -1) {
                String string = byteArrayOutputStream.toString();
                byteArrayOutputStream.close();
                return string;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }
}
