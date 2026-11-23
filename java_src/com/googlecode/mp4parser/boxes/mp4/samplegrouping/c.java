package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f33656g = "rash";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short f33657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short f33658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<a> f33659c = new LinkedList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f33660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f33661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private short f33662f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        short f33664b;

        public a(int i10, short s10) {
            this.f33663a = i10;
            this.f33664b = s10;
        }

        public int a() {
            return this.f33663a;
        }

        public short b() {
            return this.f33664b;
        }

        public void c(int i10) {
            this.f33663a = i10;
        }

        public void d(short s10) {
            this.f33664b = s10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f33663a == aVar.f33663a && this.f33664b == aVar.f33664b;
        }

        public int hashCode() {
            return (this.f33663a * 31) + this.f33664b;
        }

        public String toString() {
            return "{availableBitrate=" + this.f33663a + ", targetRateShare=" + ((int) this.f33664b) + '}';
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        short s10 = this.f33657a;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(s10 == 1 ? 13 : (s10 * 6) + 11);
        byteBufferAllocate.putShort(this.f33657a);
        if (this.f33657a == 1) {
            byteBufferAllocate.putShort(this.f33658b);
        } else {
            for (a aVar : this.f33659c) {
                byteBufferAllocate.putInt(aVar.a());
                byteBufferAllocate.putShort(aVar.b());
            }
        }
        byteBufferAllocate.putInt(this.f33660d);
        byteBufferAllocate.putInt(this.f33661e);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f33662f);
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        short s10 = byteBuffer.getShort();
        this.f33657a = s10;
        int i10 = s10;
        if (s10 == 1) {
            this.f33658b = byteBuffer.getShort();
        } else {
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    break;
                }
                this.f33659c.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), byteBuffer.getShort()));
                i10 = i11;
            }
        }
        this.f33660d = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f33661e = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f33662f = (short) com.coremedia.iso.g.p(byteBuffer);
    }

    public short d() {
        return this.f33662f;
    }

    public List<a> e() {
        return this.f33659c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f33662f != cVar.f33662f || this.f33660d != cVar.f33660d || this.f33661e != cVar.f33661e || this.f33657a != cVar.f33657a || this.f33658b != cVar.f33658b) {
            return false;
        }
        List<a> list = this.f33659c;
        List<a> list2 = cVar.f33659c;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int f() {
        return this.f33660d;
    }

    public int g() {
        return this.f33661e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f33656g;
    }

    public short h() {
        return this.f33657a;
    }

    public int hashCode() {
        int i10 = ((this.f33657a * 31) + this.f33658b) * 31;
        List<a> list = this.f33659c;
        return ((((((i10 + (list != null ? list.hashCode() : 0)) * 31) + this.f33660d) * 31) + this.f33661e) * 31) + this.f33662f;
    }

    public short i() {
        return this.f33658b;
    }

    public void j(short s10) {
        this.f33662f = s10;
    }

    public void k(List<a> list) {
        this.f33659c = list;
    }

    public void l(int i10) {
        this.f33660d = i10;
    }

    public void m(int i10) {
        this.f33661e = i10;
    }

    public void n(short s10) {
        this.f33657a = s10;
    }

    public void o(short s10) {
        this.f33658b = s10;
    }
}
