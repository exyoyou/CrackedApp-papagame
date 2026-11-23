package com.aggmoread.sdk.z.a.p;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3785b = new a(99);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f3786c = new C0087b(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f3787d = new c(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f3788e = new d(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3789a;

    static class a extends b {
        a(int i10) {
            super(i10, null);
        }

        public String toString() {
            return t7.a.f97139c;
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.p.b$b, reason: collision with other inner class name */
    static class C0087b extends b {
        C0087b(int i10) {
            super(i10, null);
        }

        public String toString() {
            return "CMCC";
        }
    }

    static class c extends b {
        c(int i10) {
            super(i10, null);
        }

        public String toString() {
            return "TELECOM";
        }
    }

    static class d extends b {
        d(int i10) {
            super(i10, null);
        }

        public String toString() {
            return "UNICOM";
        }
    }

    private b(int i10) {
        this.f3789a = i10;
    }

    public final int a() {
        return this.f3789a;
    }

    /* synthetic */ b(int i10, a aVar) {
        this(i10);
    }
}
