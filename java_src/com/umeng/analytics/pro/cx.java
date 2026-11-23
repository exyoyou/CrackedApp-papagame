package com.umeng.analytics.pro;

/* JADX INFO: loaded from: classes9.dex */
public class cx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f84609a = Integer.MAX_VALUE;

    public static void a(int i10) {
        f84609a = i10;
    }

    public static void a(cu cuVar, byte b10) throws cb {
        a(cuVar, b10, f84609a);
    }

    public static void a(cu cuVar, byte b10, int i10) throws cb {
        if (i10 > 0) {
            int i11 = 0;
            switch (b10) {
                case 2:
                    cuVar.t();
                    return;
                case 3:
                    cuVar.u();
                    return;
                case 4:
                    cuVar.y();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    cuVar.v();
                    return;
                case 8:
                    cuVar.w();
                    return;
                case 10:
                    cuVar.x();
                    return;
                case 11:
                    cuVar.A();
                    return;
                case 12:
                    cuVar.j();
                    while (true) {
                        byte b11 = cuVar.l().f84586b;
                        if (b11 == 0) {
                            cuVar.k();
                            return;
                        } else {
                            a(cuVar, b11, i10 - 1);
                            cuVar.m();
                        }
                    }
                    break;
                case 13:
                    cr crVarN = cuVar.n();
                    while (i11 < crVarN.f84592c) {
                        int i12 = i10 - 1;
                        a(cuVar, crVarN.f84590a, i12);
                        a(cuVar, crVarN.f84591b, i12);
                        i11++;
                    }
                    cuVar.o();
                    return;
                case 14:
                    cy cyVarR = cuVar.r();
                    while (i11 < cyVarR.f84611b) {
                        a(cuVar, cyVarR.f84610a, i10 - 1);
                        i11++;
                    }
                    cuVar.s();
                    return;
                case 15:
                    cq cqVarP = cuVar.p();
                    while (i11 < cqVarP.f84589b) {
                        a(cuVar, cqVarP.f84588a, i10 - 1);
                        i11++;
                    }
                    cuVar.q();
                    return;
            }
        } else {
            throw new cb("Maximum skip depth exceeded");
        }
    }

    public static cw a(byte[] bArr, cw cwVar) {
        if (bArr[0] > 16) {
            return new co.a();
        }
        return (bArr.length <= 1 || (bArr[1] & 128) == 0) ? cwVar : new co.a();
    }
}
