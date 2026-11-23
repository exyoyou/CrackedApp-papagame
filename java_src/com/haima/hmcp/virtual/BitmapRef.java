package com.haima.hmcp.virtual;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class BitmapRef {
    private Bitmap defaultBitmap;
    private Bitmap networkBitmap;

    public BitmapRef() {
        this(null);
    }

    public void clear() {
        this.defaultBitmap = null;
        this.networkBitmap = null;
    }

    public Bitmap get() {
        Bitmap bitmap = this.networkBitmap;
        return bitmap != null ? bitmap : this.defaultBitmap;
    }

    public boolean hasNetwork() {
        return this.networkBitmap != null;
    }

    public void set(Bitmap bitmap) {
        this.defaultBitmap = bitmap;
    }

    public void setDefault(Bitmap bitmap) {
        this.defaultBitmap = bitmap;
    }

    public void setNetwork(Bitmap bitmap) {
        this.networkBitmap = bitmap;
        if (bitmap != null) {
            this.defaultBitmap = null;
        }
    }

    public BitmapRef(Bitmap bitmap) {
        this.defaultBitmap = bitmap;
        this.networkBitmap = null;
    }
}
