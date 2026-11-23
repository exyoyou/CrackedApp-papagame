package com.kuaishou.weapon.p0;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public class co {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static co f74640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static co f74641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static co f74642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f74643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f74644e;

    enum a {
        DWORD(4),
        QWORD(8);


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f74648c;

        a(int i10) {
            this.f74648c = i10;
        }
    }

    static {
        c();
    }

    private static void c() {
        f74640a = new co();
        f74641b = new co();
        f74642c = new co();
        co coVar = f74641b;
        a aVar = a.DWORD;
        coVar.a(aVar);
        int i10 = Build.VERSION.SDK_INT;
        if (cp.a()) {
            co coVar2 = f74640a;
            a aVar2 = a.QWORD;
            coVar2.a(aVar2);
            f74642c.a(aVar2);
            switch (i10) {
                case 21:
                    f74640a.a(40L);
                    f74640a.a(aVar2);
                    f74642c.a(32L);
                    f74642c.a(aVar2);
                    f74641b.a(56L);
                    return;
                case 22:
                    f74640a.a(52L);
                    f74642c.a(44L);
                    f74641b.a(20L);
                    return;
                case 23:
                    f74640a.a(48L);
                    f74642c.a(40L);
                    f74641b.a(12L);
                    return;
                case 24:
                case 25:
                    f74640a.a(48L);
                    f74642c.a(40L);
                    f74641b.a(4L);
                    return;
                case 26:
                case 27:
                    f74640a.a(40L);
                    f74642c.a(32L);
                    f74641b.a(4L);
                    return;
                case 28:
                case 29:
                    f74640a.a(32L);
                    f74642c.a(24L);
                    f74641b.a(4L);
                    return;
                default:
                    throw new RuntimeException("API LEVEL: " + i10 + " is not supported now : (");
            }
        }
        f74640a.a(aVar);
        f74642c.a(aVar);
        switch (i10) {
            case 21:
                f74640a.a(40L);
                co coVar3 = f74640a;
                a aVar3 = a.QWORD;
                coVar3.a(aVar3);
                f74642c.a(32L);
                f74642c.a(aVar3);
                f74641b.a(56L);
                return;
            case 22:
                f74640a.a(44L);
                f74642c.a(40L);
                f74641b.a(20L);
                return;
            case 23:
                f74640a.a(36L);
                f74642c.a(32L);
                f74641b.a(12L);
                return;
            case 24:
            case 25:
                f74640a.a(32L);
                f74642c.a(28L);
                f74641b.a(4L);
                return;
            case 26:
            case 27:
                f74640a.a(28L);
                f74642c.a(24L);
                f74641b.a(4L);
                return;
            case 28:
            case 29:
                f74640a.a(24L);
                f74642c.a(20L);
                f74641b.a(4L);
                return;
            default:
                throw new RuntimeException("API LEVEL: " + i10 + " is not supported now : (");
        }
    }

    public long a() {
        return this.f74643d;
    }

    public a b() {
        return this.f74644e;
    }

    public void a(long j10) {
        this.f74643d = j10;
    }

    public void a(a aVar) {
        this.f74644e = aVar;
    }
}
