package com.facebook.drawee.components;

import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static a f27048a;

    /* JADX INFO: renamed from: com.facebook.drawee.components.a$a, reason: collision with other inner class name */
    public interface InterfaceC0563a {
        void release();
    }

    public static synchronized a b() {
        if (f27048a == null) {
            f27048a = new b();
        }
        return f27048a;
    }

    static boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public abstract void a(InterfaceC0563a releasable);

    public abstract void d(InterfaceC0563a releasable);
}
