package com.sigmob.sdk.base.views.gif;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class f implements a.InterfaceC1023a {
    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public Bitmap a(int width, int height, Bitmap.Config config) {
        return Bitmap.createBitmap(width, height, config);
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public int[] b(int size) {
        return new int[size];
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public void a(byte[] bytes) {
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public void a(int[] array) {
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC1023a
    public byte[] a(int size) {
        return new byte[size];
    }
}
