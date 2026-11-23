package com.mp4parser.iso14496.part15;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f75599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f75601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f75602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f75603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<byte[]> f75604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<byte[]> f75605g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f75606h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f75607i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f75608j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f75609k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public List<byte[]> f75610l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f75611m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f75612n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f75613o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f75614p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f75615q;

    public b() {
        this.f75604f = new ArrayList();
        this.f75605g = new ArrayList();
        this.f75606h = true;
        this.f75607i = 1;
        this.f75608j = 0;
        this.f75609k = 0;
        this.f75610l = new ArrayList();
        this.f75611m = 63;
        this.f75612n = 7;
        this.f75613o = 31;
        this.f75614p = 31;
        this.f75615q = 31;
    }

    public void a(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f75599a);
        com.coremedia.iso.i.m(byteBuffer, this.f75600b);
        com.coremedia.iso.i.m(byteBuffer, this.f75601c);
        com.coremedia.iso.i.m(byteBuffer, this.f75602d);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f75611m, 6);
        dVar.a(this.f75603e, 2);
        dVar.a(this.f75612n, 3);
        dVar.a(this.f75605g.size(), 5);
        for (byte[] bArr : this.f75604f) {
            com.coremedia.iso.i.f(byteBuffer, bArr.length);
            byteBuffer.put(bArr);
        }
        com.coremedia.iso.i.m(byteBuffer, this.f75605g.size());
        for (byte[] bArr2 : this.f75605g) {
            com.coremedia.iso.i.f(byteBuffer, bArr2.length);
            byteBuffer.put(bArr2);
        }
        if (this.f75606h) {
            int i10 = this.f75600b;
            if (i10 == 100 || i10 == 110 || i10 == 122 || i10 == 144) {
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
                dVar2.a(this.f75613o, 6);
                dVar2.a(this.f75607i, 2);
                dVar2.a(this.f75614p, 5);
                dVar2.a(this.f75608j, 3);
                dVar2.a(this.f75615q, 5);
                dVar2.a(this.f75609k, 3);
                for (byte[] bArr3 : this.f75610l) {
                    com.coremedia.iso.i.f(byteBuffer, bArr3.length);
                    byteBuffer.put(bArr3);
                }
            }
        }
    }

    public long b() {
        int i10;
        Iterator<byte[]> it2 = this.f75604f.iterator();
        long length = 6;
        while (it2.hasNext()) {
            length = length + 2 + ((long) it2.next().length);
        }
        long length2 = length + 1;
        Iterator<byte[]> it3 = this.f75605g.iterator();
        while (it3.hasNext()) {
            length2 = length2 + 2 + ((long) it3.next().length);
        }
        if (this.f75606h && ((i10 = this.f75600b) == 100 || i10 == 110 || i10 == 122 || i10 == 144)) {
            length2 += 4;
            Iterator<byte[]> it4 = this.f75610l.iterator();
            while (it4.hasNext()) {
                length2 = length2 + 2 + ((long) it4.next().length);
            }
        }
        return length2;
    }

    public String[] c() {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.f75605g) {
            try {
                arrayList.add(f5.e.b(new ByteArrayInputStream(bArr, 1, bArr.length - 1)).toString());
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> d() {
        ArrayList arrayList = new ArrayList(this.f75605g.size());
        Iterator<byte[]> it2 = this.f75605g.iterator();
        while (it2.hasNext()) {
            arrayList.add(com.coremedia.iso.e.b(it2.next()));
        }
        return arrayList;
    }

    public String[] e() {
        String string;
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.f75604f) {
            try {
                string = f5.h.c(new com.googlecode.mp4parser.authoring.tracks.i(new ByteArrayInputStream(bArr, 1, bArr.length - 1))).toString();
            } catch (IOException unused) {
                string = "not parsable";
            }
            arrayList.add(string);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> f() {
        ArrayList arrayList = new ArrayList(this.f75610l.size());
        Iterator<byte[]> it2 = this.f75610l.iterator();
        while (it2.hasNext()) {
            arrayList.add(com.coremedia.iso.e.b(it2.next()));
        }
        return arrayList;
    }

    public List<String> g() {
        ArrayList arrayList = new ArrayList(this.f75604f.size());
        Iterator<byte[]> it2 = this.f75604f.iterator();
        while (it2.hasNext()) {
            arrayList.add(com.coremedia.iso.e.b(it2.next()));
        }
        return arrayList;
    }

    public String toString() {
        return "AvcDecoderConfigurationRecord{configurationVersion=" + this.f75599a + ", avcProfileIndication=" + this.f75600b + ", profileCompatibility=" + this.f75601c + ", avcLevelIndication=" + this.f75602d + ", lengthSizeMinusOne=" + this.f75603e + ", hasExts=" + this.f75606h + ", chromaFormat=" + this.f75607i + ", bitDepthLumaMinus8=" + this.f75608j + ", bitDepthChromaMinus8=" + this.f75609k + ", lengthSizeMinusOnePaddingBits=" + this.f75611m + ", numberOfSequenceParameterSetsPaddingBits=" + this.f75612n + ", chromaFormatPaddingBits=" + this.f75613o + ", bitDepthLumaMinus8PaddingBits=" + this.f75614p + ", bitDepthChromaMinus8PaddingBits=" + this.f75615q + '}';
    }

    public b(ByteBuffer byteBuffer) {
        int i10;
        this.f75604f = new ArrayList();
        this.f75605g = new ArrayList();
        this.f75606h = true;
        this.f75607i = 1;
        this.f75608j = 0;
        this.f75609k = 0;
        this.f75610l = new ArrayList();
        this.f75611m = 63;
        this.f75612n = 7;
        this.f75613o = 31;
        this.f75614p = 31;
        this.f75615q = 31;
        this.f75599a = com.coremedia.iso.g.p(byteBuffer);
        this.f75600b = com.coremedia.iso.g.p(byteBuffer);
        this.f75601c = com.coremedia.iso.g.p(byteBuffer);
        this.f75602d = com.coremedia.iso.g.p(byteBuffer);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f75611m = cVar.c(6);
        this.f75603e = cVar.c(2);
        this.f75612n = cVar.c(3);
        int iC = cVar.c(5);
        for (int i11 = 0; i11 < iC; i11++) {
            byte[] bArr = new byte[com.coremedia.iso.g.i(byteBuffer)];
            byteBuffer.get(bArr);
            this.f75604f.add(bArr);
        }
        long jP = com.coremedia.iso.g.p(byteBuffer);
        for (int i12 = 0; i12 < jP; i12++) {
            byte[] bArr2 = new byte[com.coremedia.iso.g.i(byteBuffer)];
            byteBuffer.get(bArr2);
            this.f75605g.add(bArr2);
        }
        if (byteBuffer.remaining() < 4) {
            this.f75606h = false;
        }
        if (this.f75606h && ((i10 = this.f75600b) == 100 || i10 == 110 || i10 == 122 || i10 == 144)) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            this.f75613o = cVar2.c(6);
            this.f75607i = cVar2.c(2);
            this.f75614p = cVar2.c(5);
            this.f75608j = cVar2.c(3);
            this.f75615q = cVar2.c(5);
            this.f75609k = cVar2.c(3);
            long jP2 = com.coremedia.iso.g.p(byteBuffer);
            for (int i13 = 0; i13 < jP2; i13++) {
                byte[] bArr3 = new byte[com.coremedia.iso.g.i(byteBuffer)];
                byteBuffer.get(bArr3);
                this.f75610l.add(bArr3);
            }
            return;
        }
        this.f75607i = -1;
        this.f75608j = -1;
        this.f75609k = -1;
    }
}
