package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class MultiPartInputStream extends InputStream implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<InputStream> f75511a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f75512b;

    private boolean a() {
        ArrayList<InputStream> arrayList = this.f75511a;
        return arrayList == null || arrayList.size() <= 0;
    }

    public void addInputStream(InputStream inputStream) throws Throwable {
        this.f75511a.add(inputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (a()) {
            return 0;
        }
        return this.f75511a.get(this.f75512b).available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<InputStream> it2 = this.f75511a.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (a()) {
            return -1;
        }
        int i10 = this.f75511a.get(this.f75512b).read();
        while (i10 < 0) {
            int i11 = this.f75512b + 1;
            this.f75512b = i11;
            if (i11 >= this.f75511a.size()) {
                break;
            }
            i10 = this.f75511a.get(this.f75512b).read();
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        throw new IOException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (a()) {
            return -1;
        }
        int i12 = this.f75511a.get(this.f75512b).read(bArr, i10, i11);
        while (i12 < 0) {
            int i13 = this.f75512b + 1;
            this.f75512b = i13;
            if (i13 >= this.f75511a.size()) {
                break;
            }
            i12 = this.f75511a.get(this.f75512b).read(bArr, i10, i11);
        }
        return i12;
    }
}
