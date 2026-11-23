package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class h {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f26878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f26879c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f26880d;

        private static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            @Nullable
            String f26881a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            @Nullable
            Object f26882b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            @Nullable
            a f26883c;

            private a() {
            }
        }

        private a h() {
            a aVar = new a();
            this.f26879c.f26883c = aVar;
            this.f26879c = aVar;
            return aVar;
        }

        private b i(@Nullable Object value) {
            h().f26882b = value;
            return this;
        }

        private b j(String name, @Nullable Object value) {
            a aVarH = h();
            aVarH.f26882b = value;
            aVarH.f26881a = (String) i.i(name);
            return this;
        }

        public b a(String name, char value) {
            return j(name, String.valueOf(value));
        }

        public b b(String name, double value) {
            return j(name, String.valueOf(value));
        }

        public b c(String name, float value) {
            return j(name, String.valueOf(value));
        }

        public b d(String name, int value) {
            return j(name, String.valueOf(value));
        }

        public b e(String name, long value) {
            return j(name, String.valueOf(value));
        }

        public b f(String name, @Nullable Object value) {
            return j(name, value);
        }

        public b g(String name, boolean value) {
            return j(name, String.valueOf(value));
        }

        public b k(char value) {
            return i(String.valueOf(value));
        }

        public b l(double value) {
            return i(String.valueOf(value));
        }

        public b m(float value) {
            return i(String.valueOf(value));
        }

        public b n(int value) {
            return i(String.valueOf(value));
        }

        public b o(long value) {
            return i(String.valueOf(value));
        }

        public b p(@Nullable Object value) {
            return i(value);
        }

        public b q(boolean value) {
            return i(String.valueOf(value));
        }

        public b r() {
            this.f26880d = true;
            return this;
        }

        public String toString() {
            boolean z10 = this.f26880d;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f26877a);
            sb2.append('{');
            String str = "";
            for (a aVar = this.f26878b.f26883c; aVar != null; aVar = aVar.f26883c) {
                Object obj = aVar.f26882b;
                if (!z10 || obj != null) {
                    sb2.append(str);
                    String str2 = aVar.f26881a;
                    if (str2 != null) {
                        sb2.append(str2);
                        sb2.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb2.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb2.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    str = ", ";
                }
            }
            sb2.append('}');
            return sb2.toString();
        }

        private b(String className) {
            a aVar = new a();
            this.f26878b = aVar;
            this.f26879c = aVar;
            this.f26880d = false;
            this.f26877a = (String) i.i(className);
        }
    }

    private h() {
    }

    @CheckReturnValue
    public static boolean a(@Nullable Object a10, @Nullable Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    public static <T> T b(@Nullable T t10, @Nullable T t11) {
        return t10 != null ? t10 : (T) i.i(t11);
    }

    public static int c(@Nullable Object... objects) {
        return Arrays.hashCode(objects);
    }

    public static b d(Class<?> clazz) {
        return new b(clazz.getSimpleName());
    }

    public static b e(Object self) {
        return new b(self.getClass().getSimpleName());
    }

    public static b f(String className) {
        return new b(className);
    }
}
