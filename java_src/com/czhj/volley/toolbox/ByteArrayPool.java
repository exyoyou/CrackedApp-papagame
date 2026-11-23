package com.czhj.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ByteArrayPool {
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() { // from class: com.czhj.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25771c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<byte[]> f25769a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<byte[]> f25770b = new ArrayList(64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25772d = 0;

    public ByteArrayPool(int i10) {
        this.f25771c = i10;
    }

    private synchronized void a() {
        while (this.f25772d > this.f25771c) {
            byte[] bArrRemove = this.f25769a.remove(0);
            this.f25770b.remove(bArrRemove);
            this.f25772d -= bArrRemove.length;
        }
    }

    public synchronized byte[] getBuf(int i10) {
        for (int i11 = 0; i11 < this.f25770b.size(); i11++) {
            byte[] bArr = this.f25770b.get(i11);
            if (bArr.length >= i10) {
                this.f25772d -= bArr.length;
                this.f25770b.remove(i11);
                this.f25769a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }

    public synchronized void returnBuf(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f25771c) {
                this.f25769a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f25770b, bArr, BUF_COMPARATOR);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f25770b.add(iBinarySearch, bArr);
                this.f25772d += bArr.length;
                a();
            }
        }
    }
}
