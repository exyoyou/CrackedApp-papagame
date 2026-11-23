package com.xinzhu.overmind.server.user;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
import com.xinzhu.haunted.android.os.x;

/* JADX INFO: loaded from: classes8.dex */
public final class MindUserHandle implements Parcelable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f89928c = 100000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f89929d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f89931f = -2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f89933h = -3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f89934i = -4;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f89936k = -10000;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Deprecated
    public static final int f89937l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f89939n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f89940o = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final boolean f89942q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f89943r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f89944s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f89945t = 10000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f89946u = 19999;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f89947v = 50000;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f89948w = 20000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f89949b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final MindUserHandle f89930e = new MindUserHandle(-1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final MindUserHandle f89932g = new MindUserHandle(-2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final MindUserHandle f89935j = new MindUserHandle(-3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Deprecated
    public static final MindUserHandle f89938m = new MindUserHandle(0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final MindUserHandle f89941p = new MindUserHandle(0);
    public static final Parcelable.Creator<MindUserHandle> CREATOR = new a();

    class a implements Parcelable.Creator<MindUserHandle> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindUserHandle createFromParcel(Parcel parcel) {
            return new MindUserHandle(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindUserHandle[] newArray(int i10) {
            return new MindUserHandle[i10];
        }
    }

    public MindUserHandle(int i10) {
        this.f89949b = i10;
    }

    public static boolean B(int i10, int i11) {
        if (a(i10) == a(i11)) {
            return true;
        }
        if (i10 == 1000 || i11 == 1000) {
            return i10 == Process.myUid() || i11 == Process.myUid();
        }
        return false;
    }

    public static boolean C(int i10, int i11) {
        return x(i10) == x(i11);
    }

    public static int E() {
        return x(Process.myUid());
    }

    public static MindUserHandle F(int i10) {
        return i10 == 0 ? f89941p : new MindUserHandle(i10);
    }

    public static int G(String str) {
        if ("all".equals(str)) {
            return -1;
        }
        if ("current".equals(str) || "cur".equals(str)) {
            return -2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("Bad user number: " + str);
        }
    }

    public static MindUserHandle H(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 != -10000) {
            return new MindUserHandle(i10);
        }
        return null;
    }

    public static void J(MindUserHandle mindUserHandle, Parcel parcel) {
        if (mindUserHandle != null) {
            mindUserHandle.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(-10000);
        }
    }

    public static int a(int i10) {
        return i10 % 100000;
    }

    public static int b(int i10) {
        return c(x(i10), a(i10));
    }

    public static int c(int i10, int i11) {
        if (i11 < 10000 || i11 > 19999) {
            return -1;
        }
        return t(i10, (i11 - 10000) + 20000);
    }

    public static int d() {
        return a(Binder.getCallingUid());
    }

    public static int f() {
        return x(Binder.getCallingUid());
    }

    public static int m(int i10) {
        return n(x(i10), a(i10));
    }

    public static int n(int i10, int i11) {
        if (i11 >= 10000 && i11 <= 19999) {
            return (i11 - 10000) + f89947v;
        }
        if (i11 < 0 || i11 > 10000) {
            return -1;
        }
        return i11;
    }

    public static int t(int i10, int i11) {
        return (i10 * 100000) + (i11 % 100000);
    }

    public static int u(int i10) {
        return t(i10, 9997);
    }

    public static MindUserHandle w(int i10) {
        return F(x(i10));
    }

    public static int x(int i10) {
        return i10 / 100000;
    }

    public static boolean y(int i10) {
        int iA;
        return i10 > 0 && (iA = a(i10)) >= 10000 && iA <= 19999;
    }

    public static boolean z(int i10) {
        return i10 >= 0 && a(i10) < 10000;
    }

    @Deprecated
    public boolean A() {
        return equals(f89938m);
    }

    public boolean D() {
        return equals(f89941p);
    }

    public UserHandle I() {
        return (UserHandle) x.c(this.f89949b).f89137a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f89949b == ((MindUserHandle) obj).f89949b;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int getIdentifier() {
        return this.f89949b;
    }

    public int hashCode() {
        return this.f89949b;
    }

    public String toString() {
        return "UserHandle{" + this.f89949b + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89949b);
    }

    public MindUserHandle(Parcel parcel) {
        this.f89949b = parcel.readInt();
    }
}
