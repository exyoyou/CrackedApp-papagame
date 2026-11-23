package com.kuaishou.weapon.p0;

import android.os.Build;
import com.kuaishou.weapon.p0.jni.Engine;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class cr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f74652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f74653b;

    public cr() {
        b();
    }

    private int a(Method method) {
        try {
            int i10 = f74652a;
            if (i10 <= 1 || method == null) {
                return 0;
            }
            return Engine.mmo(method, i10, method.getModifiers());
        } catch (Exception unused) {
            return 0;
        }
    }

    private void b() {
        if (!Engine.loadSuccess || f74653b) {
            return;
        }
        boolean zB = cp.b();
        int i10 = Build.VERSION.SDK_INT;
        if (zB && i10 < 29 && i10 > 22) {
            f74652a = Engine.off();
        }
        f74653b = true;
    }

    private boolean c() {
        return f74653b && f74652a > 1;
    }

    public int a(Class cls, String str, Object... objArr) {
        try {
            if (c()) {
                return a(df.a(cls, str, objArr));
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int a(int i10, Class cls, String str, Object... objArr) {
        Method methodA;
        try {
            if (!c() || (methodA = df.a(cls, str, objArr)) == null) {
                return 0;
            }
            return Engine.mqc(methodA, i10);
        } catch (Exception unused) {
            return 0;
        }
    }

    public int a() {
        if (!c()) {
            return -1;
        }
        long jA = co.f74641b.a();
        long jA2 = co.f74640a.a();
        if (f74652a == jA) {
            return (int) jA2;
        }
        return -1;
    }
}
