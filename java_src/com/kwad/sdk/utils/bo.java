package com.kwad.sdk.utils;

/* JADX INFO: loaded from: classes2.dex */
public class bo {
    protected final int mHeight;
    protected final int mWidth;

    public bo(int i10, int i11) {
        this.mWidth = i10;
        this.mHeight = i11;
    }

    public final float Ww() {
        return this.mWidth;
    }

    public final float Wx() {
        return this.mHeight;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof bo) {
            bo boVar = (bo) obj;
            if (this.mWidth == boVar.mWidth && this.mHeight == boVar.mHeight) {
                return true;
            }
        }
        return false;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        int i10 = this.mHeight;
        int i11 = this.mWidth;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }
}
