package com.mp4parser.iso23001.part7;

import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f75728a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k[] f75729b = null;

    private abstract class b implements k {
        private b() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            k kVar = (k) obj;
            return clear() == kVar.clear() && a() == kVar.a();
        }

        public String toString() {
            return "P(" + clear() + "|" + a() + ")";
        }

        /* synthetic */ b(a aVar, b bVar) {
            this();
        }
    }

    private class c extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte f75731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte f75732c;

        public c(int i10, long j10) {
            super(a.this, null);
            this.f75731b = (byte) i10;
            this.f75732c = (byte) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75732c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75731b;
        }
    }

    private class d extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte f75734b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f75735c;

        public d(int i10, long j10) {
            super(a.this, null);
            this.f75734b = (byte) i10;
            this.f75735c = (int) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75735c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75734b;
        }
    }

    private class e extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte f75737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f75738c;

        public e(int i10, long j10) {
            super(a.this, null);
            this.f75737b = (byte) i10;
            this.f75738c = j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75738c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75737b;
        }
    }

    private class f extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte f75740b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private short f75741c;

        public f(int i10, long j10) {
            super(a.this, null);
            this.f75740b = (byte) i10;
            this.f75741c = (short) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75741c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75740b;
        }
    }

    private class g extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte f75744c;

        public g(int i10, long j10) {
            super(a.this, null);
            this.f75743b = i10;
            this.f75744c = (byte) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75744c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75743b;
        }
    }

    private class h extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f75747c;

        public h(int i10, long j10) {
            super(a.this, null);
            this.f75746b = i10;
            this.f75747c = (int) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75747c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75746b;
        }
    }

    private class i extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75749b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f75750c;

        public i(int i10, long j10) {
            super(a.this, null);
            this.f75749b = i10;
            this.f75750c = j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75750c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75749b;
        }
    }

    private class j extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private short f75753c;

        public j(int i10, long j10) {
            super(a.this, null);
            this.f75752b = i10;
            this.f75753c = (short) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75753c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75752b;
        }
    }

    public interface k {
        long a();

        int clear();
    }

    private class l extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private short f75755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte f75756c;

        public l(int i10, long j10) {
            super(a.this, null);
            this.f75755b = (short) i10;
            this.f75756c = (byte) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75756c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75755b;
        }
    }

    private class m extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private short f75758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f75759c;

        public m(int i10, long j10) {
            super(a.this, null);
            this.f75758b = (short) i10;
            this.f75759c = (int) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75759c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75758b;
        }
    }

    private class n extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private short f75761b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f75762c;

        public n(int i10, long j10) {
            super(a.this, null);
            this.f75761b = (short) i10;
            this.f75762c = j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75762c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75761b;
        }
    }

    private class o extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private short f75764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private short f75765c;

        public o(int i10, long j10) {
            super(a.this, null);
            this.f75764b = (short) i10;
            this.f75765c = (short) j10;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f75765c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f75764b;
        }
    }

    public k a(int i10, long j10) {
        if (i10 <= 127) {
            if (j10 <= 127) {
                return new c(i10, j10);
            }
            if (j10 <= 32767) {
                return new f(i10, j10);
            }
            return j10 <= 2147483647L ? new d(i10, j10) : new e(i10, j10);
        }
        if (i10 <= 32767) {
            if (j10 <= 127) {
                return new l(i10, j10);
            }
            if (j10 <= 32767) {
                return new o(i10, j10);
            }
            return j10 <= 2147483647L ? new m(i10, j10) : new n(i10, j10);
        }
        if (j10 <= 127) {
            return new g(i10, j10);
        }
        if (j10 <= 32767) {
            return new j(i10, j10);
        }
        return j10 <= 2147483647L ? new h(i10, j10) : new i(i10, j10);
    }

    public int b() {
        int length = this.f75728a.length;
        k[] kVarArr = this.f75729b;
        return (kVarArr == null || kVarArr.length <= 0) ? length : length + 2 + (kVarArr.length * 6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (!new BigInteger(this.f75728a).equals(new BigInteger(aVar.f75728a))) {
            return false;
        }
        k[] kVarArr = this.f75729b;
        k[] kVarArr2 = aVar.f75729b;
        return kVarArr == null ? kVarArr2 == null : Arrays.equals(kVarArr, kVarArr2);
    }

    public int hashCode() {
        byte[] bArr = this.f75728a;
        int iHashCode = (bArr != null ? Arrays.hashCode(bArr) : 0) * 31;
        k[] kVarArr = this.f75729b;
        return iHashCode + (kVarArr != null ? Arrays.hashCode(kVarArr) : 0);
    }

    public String toString() {
        return "Entry{iv=" + com.coremedia.iso.e.b(this.f75728a) + ", pairs=" + Arrays.toString(this.f75729b) + '}';
    }
}
