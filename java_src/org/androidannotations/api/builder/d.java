package org.androidannotations.api.builder;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import org.androidannotations.api.builder.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class d<I extends d<I, F>, F> extends c {
    protected Bundle args = new Bundle();

    public I arg(Bundle bundle) {
        this.args.putAll(bundle);
        return this;
    }

    public Bundle args() {
        return this.args;
    }

    public abstract F build();

    public I integerArrayListArg(String str, ArrayList<Integer> arrayList) {
        this.args.putIntegerArrayList(str, arrayList);
        return this;
    }

    public I parcelableArrayListArg(String str, ArrayList<? extends Parcelable> arrayList) {
        this.args.putParcelableArrayList(str, arrayList);
        return this;
    }

    public I stringArrayListArg(String str, ArrayList<String> arrayList) {
        this.args.putStringArrayList(str, arrayList);
        return this;
    }

    public I arg(String str, boolean z10) {
        this.args.putBoolean(str, z10);
        return this;
    }

    public I arg(String str, byte b10) {
        this.args.putByte(str, b10);
        return this;
    }

    public I arg(String str, char c10) {
        this.args.putChar(str, c10);
        return this;
    }

    public I arg(String str, short s10) {
        this.args.putShort(str, s10);
        return this;
    }

    public I arg(String str, int i10) {
        this.args.putInt(str, i10);
        return this;
    }

    public I arg(String str, long j10) {
        this.args.putLong(str, j10);
        return this;
    }

    public I arg(String str, float f10) {
        this.args.putFloat(str, f10);
        return this;
    }

    public I arg(String str, double d10) {
        this.args.putDouble(str, d10);
        return this;
    }

    public I arg(String str, String str2) {
        this.args.putString(str, str2);
        return this;
    }

    public I arg(String str, CharSequence charSequence) {
        this.args.putCharSequence(str, charSequence);
        return this;
    }

    public I arg(String str, Parcelable parcelable) {
        this.args.putParcelable(str, parcelable);
        return this;
    }

    public I arg(String str, Parcelable[] parcelableArr) {
        this.args.putParcelableArray(str, parcelableArr);
        return this;
    }

    public I arg(String str, SparseArray<? extends Parcelable> sparseArray) {
        this.args.putSparseParcelableArray(str, sparseArray);
        return this;
    }

    public I arg(String str, Serializable serializable) {
        this.args.putSerializable(str, serializable);
        return this;
    }

    public I arg(String str, boolean[] zArr) {
        this.args.putBooleanArray(str, zArr);
        return this;
    }

    public I arg(String str, byte[] bArr) {
        this.args.putByteArray(str, bArr);
        return this;
    }

    public I arg(String str, short[] sArr) {
        this.args.putShortArray(str, sArr);
        return this;
    }

    public I arg(String str, char[] cArr) {
        this.args.putCharArray(str, cArr);
        return this;
    }

    public I arg(String str, int[] iArr) {
        this.args.putIntArray(str, iArr);
        return this;
    }

    public I arg(String str, long[] jArr) {
        this.args.putLongArray(str, jArr);
        return this;
    }

    public I arg(String str, float[] fArr) {
        this.args.putFloatArray(str, fArr);
        return this;
    }

    public I arg(String str, double[] dArr) {
        this.args.putDoubleArray(str, dArr);
        return this;
    }

    public I arg(String str, String[] strArr) {
        this.args.putStringArray(str, strArr);
        return this;
    }

    public I arg(String str, Bundle bundle) {
        this.args.putBundle(str, bundle);
        return this;
    }
}
