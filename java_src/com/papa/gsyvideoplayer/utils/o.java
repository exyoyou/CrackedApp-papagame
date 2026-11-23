package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;

/* JADX INFO: loaded from: classes2.dex */
public class o implements IMediaDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AssetFileDescriptor f77113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f77114b;

    public o(AssetFileDescriptor assetFileDescriptor) {
        this.f77113a = assetFileDescriptor;
    }

    public static o a(Context context, Uri uri) {
        try {
            return new o(context.getApplicationContext().getContentResolver().openAssetFileDescriptor(uri, "r"));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public void close() throws IOException {
        AssetFileDescriptor assetFileDescriptor = this.f77113a;
        if (assetFileDescriptor != null) {
            assetFileDescriptor.close();
        }
        this.f77113a = null;
        this.f77114b = null;
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public long getSize() throws IOException {
        long length = this.f77113a.getLength();
        if (this.f77114b == null) {
            this.f77114b = b(this.f77113a.createInputStream());
        }
        return length;
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
        long j11 = 1 + j10;
        byte[] bArr2 = this.f77114b;
        if (j11 >= bArr2.length) {
            return -1;
        }
        if (((long) i11) + j10 >= bArr2.length) {
            int length = (int) (((long) bArr2.length) - j10);
            if (length > bArr.length) {
                length = bArr.length;
            }
            i11 = length - 1;
        }
        System.arraycopy(bArr2, (int) j10, bArr, i10, i11);
        return i11;
    }
}
