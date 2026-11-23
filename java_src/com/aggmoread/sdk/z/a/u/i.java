package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class i {
    public static byte[] a(Context context, int i10) {
        return a(context.getResources().openRawResource(i10));
    }

    public static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
