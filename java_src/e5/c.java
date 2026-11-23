package e5;

import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f90871a = false;

    public static void a(int i10) {
    }

    public static void b(String str) {
    }

    public static void c(short[] sArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                System.out.printf("%3d, ", Short.valueOf(sArr[i10]));
                i10++;
            }
            System.out.println();
        }
    }

    public static final void d(ShortBuffer shortBuffer) {
        for (int i10 = 0; i10 < 8; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                System.out.printf("%3d, ", Short.valueOf(shortBuffer.get()));
            }
            System.out.println();
        }
    }

    public static final void e(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                System.out.printf("%3d, ", Integer.valueOf(iArr[i10]));
                i10++;
            }
            System.out.println();
        }
    }

    public static final void f(short[] sArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                System.out.printf("%3d, ", Short.valueOf(sArr[i10]));
                i10++;
            }
            System.out.println();
        }
    }

    public static void g(String str) {
    }

    public static void h(String str, Object... objArr) {
    }
}
