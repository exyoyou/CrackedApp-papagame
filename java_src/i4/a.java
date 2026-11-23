package i4;

import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.PropagatesNullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static volatile InterfaceC1172a f91481a;

    /* JADX INFO: renamed from: i4.a$a, reason: collision with other inner class name */
    public interface InterfaceC1172a {
        @Nullable
        Runnable a(Runnable runnable, String tag);

        boolean b();

        void c(Object token, Throwable th);

        @Nullable
        void d(Object token);

        @Nullable
        Object e(String tag);

        @Nullable
        Object f(Object token, @Nullable String tag);
    }

    @Nullable
    public static Runnable a(@Nullable @PropagatesNullable Runnable runnable, @Nullable String tag) {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null || runnable == null) {
            return runnable;
        }
        if (tag == null) {
            tag = "";
        }
        return interfaceC1172a.a(runnable, tag);
    }

    public static boolean b() {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null) {
            return false;
        }
        return interfaceC1172a.b();
    }

    public static void c(@Nullable Object token, Throwable th) {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null || token == null) {
            return;
        }
        interfaceC1172a.c(token, th);
    }

    @Nullable
    public static Object d(@Nullable String tag) {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null || tag == null) {
            return null;
        }
        return interfaceC1172a.e(tag);
    }

    @Nullable
    public static Object e(@Nullable Object token, @Nullable String tag) {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null || token == null) {
            return null;
        }
        return interfaceC1172a.f(token, tag);
    }

    public static void f(@Nullable Object token) {
        InterfaceC1172a interfaceC1172a = f91481a;
        if (interfaceC1172a == null || token == null) {
            return;
        }
        interfaceC1172a.d(token);
    }

    public static void g(@Nullable InterfaceC1172a instrumenter) {
        f91481a = instrumenter;
    }
}
