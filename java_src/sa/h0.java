package sa;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes8.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f97014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f97015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f97016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f97017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f97018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f97019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f97020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f97021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f97022i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f97023j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f97024k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f97025l;

    static {
        if (!com.xinzhu.overmind.utils.e.g()) {
            int i10 = f97014a;
            int i11 = i10 + 1;
            f97015b = i10;
            int i12 = i11 + 1;
            f97016c = i11;
            int i13 = i12 + 1;
            f97018e = i12;
            int i14 = i13 + 1;
            f97019f = i13;
            int i15 = i14 + 1;
            f97020g = i14;
            int i16 = i15 + 1;
            f97021h = i15;
            int i17 = i16 + 1;
            f97022i = i16;
            int i18 = i17 + 1;
            f97023j = i17;
            int i19 = i18 + 1;
            f97024k = i18;
            f97014a = i19 + 1;
            f97025l = i19;
            return;
        }
        int i20 = f97014a;
        int i21 = i20 + 1;
        f97015b = i20;
        int i22 = i21 + 1;
        f97016c = i21;
        int i23 = i22 + 1;
        f97017d = i22;
        int i24 = i23 + 1;
        f97018e = i23;
        int i25 = i24 + 1;
        f97019f = i24;
        int i26 = i25 + 1;
        f97020g = i25;
        int i27 = i26 + 1;
        f97021h = i26;
        int i28 = i27 + 1;
        f97022i = i27;
        int i29 = i28 + 1;
        f97023j = i28;
        int i30 = i29 + 1;
        f97024k = i29;
        f97014a = i30 + 1;
        f97025l = i30;
    }

    public static void A(int i10) {
        f97022i = i10;
    }

    public static void B(int i10) {
        f97019f = i10;
    }

    public static void C(int i10) {
        f97020g = i10;
    }

    public static void D(int i10) {
        f97021h = i10;
    }

    public static int a() {
        return f97015b;
    }

    public static String b(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97016c;
        if (length < i10) {
            return null;
        }
        return (String) objArr[i10];
    }

    public static int c() {
        return f97016c;
    }

    public static int d(Object[] objArr) {
        if (objArr == null) {
            return -1;
        }
        int length = objArr.length;
        int i10 = f97023j;
        if (length < i10) {
            return -1;
        }
        return ((Integer) objArr[i10]).intValue();
    }

    public static int e() {
        return f97023j;
    }

    public static Object f(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97015b;
        if (length < i10) {
            return null;
        }
        return objArr[i10];
    }

    public static Intent g(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97018e;
        if (length < i10) {
            return null;
        }
        return (Intent) objArr[i10];
    }

    public static int h() {
        return f97018e;
    }

    public static Bundle i(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97025l;
        if (length < i10) {
            return null;
        }
        return (Bundle) objArr[i10];
    }

    public static int j() {
        return f97025l;
    }

    public static Object k(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97024k;
        if (length < i10) {
            return null;
        }
        return objArr[i10];
    }

    public static int l() {
        return f97024k;
    }

    public static int m(Object[] objArr) {
        if (objArr == null) {
            return -1;
        }
        int length = objArr.length;
        int i10 = f97022i;
        if (length < i10) {
            return -1;
        }
        return ((Integer) objArr[i10]).intValue();
    }

    public static int n() {
        return f97022i;
    }

    public static String o(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97019f;
        if (length < i10) {
            return null;
        }
        return (String) objArr[i10];
    }

    public static int p() {
        return f97019f;
    }

    public static IBinder q(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97020g;
        if (length < i10) {
            return null;
        }
        return (IBinder) objArr[i10];
    }

    public static int r() {
        return f97020g;
    }

    public static String s(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        int i10 = f97021h;
        if (length < i10) {
            return null;
        }
        return (String) objArr[i10];
    }

    public static int t() {
        return f97021h;
    }

    public static void u(int i10) {
        f97015b = i10;
    }

    public static void v(int i10) {
        f97016c = i10;
    }

    public static void w(int i10) {
        f97023j = i10;
    }

    public static void x(int i10) {
        f97018e = i10;
    }

    public static void y(int i10) {
        f97025l = i10;
    }

    public static void z(int i10) {
        f97024k = i10;
    }
}
