package com.facebook.imagepipeline.systrace;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InterfaceC0581b f28755a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private static volatile d f28756b = null;

    /* JADX INFO: renamed from: com.facebook.imagepipeline.systrace.b$b, reason: collision with other inner class name */
    public interface InterfaceC0581b {
        InterfaceC0581b a(String key, long value);

        InterfaceC0581b b(String key, int value);

        InterfaceC0581b c(String key, double value);

        InterfaceC0581b d(String key, Object value);

        void flush();
    }

    private static final class c implements InterfaceC0581b {
        private c() {
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public InterfaceC0581b a(String key, long value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public InterfaceC0581b b(String key, int value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public InterfaceC0581b c(String key, double value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public InterfaceC0581b d(String key, Object value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public void flush() {
        }
    }

    public interface d {
        boolean b();

        InterfaceC0581b c(String name);

        void d(String name);

        void e();
    }

    private b() {
    }

    public static void a(String name) {
        d().d(name);
    }

    public static InterfaceC0581b b(String name) {
        return d().c(name);
    }

    public static void c() {
        d().e();
    }

    private static d d() {
        if (f28756b == null) {
            synchronized (b.class) {
                if (f28756b == null) {
                    f28756b = new com.facebook.imagepipeline.systrace.a();
                }
            }
        }
        return f28756b;
    }

    public static boolean e() {
        return d().b();
    }

    public static void f(d instance) {
        f28756b = instance;
    }
}
