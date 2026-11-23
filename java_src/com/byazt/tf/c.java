package com.byazt.tf;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1042, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f20162c = 6;
    public static tt tt = C0439c.c();

    /* JADX INFO: renamed from: com.byazt.tf.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1042, 44})
    private static final class C0439c extends tt {

        /* JADX INFO: renamed from: com.byazt.tf.c$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 1042, 810})
        private static class C0440c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final C0439c f20163c = new C0439c();
        }

        public static C0439c c() {
            return C0440c.f20163c;
        }

        @Override // com.byazt.tf.c.tt
        public void tt(String str, String str2) {
            m.uj(str, str2);
        }

        @Override // com.byazt.tf.c.tt
        public void ve(String str, String str2) {
            m.tt(str, str2);
        }

        private C0439c() {
        }

        @Override // com.byazt.tf.c.tt
        public void c(String str, String str2) {
            m.c(str, str2);
        }

        @Override // com.byazt.tf.c.tt
        public void c(String str, String str2, Throwable th) {
            m.ve(str, str2, th);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1042, 175})
    public static abstract class tt {
        public void c(String str, String str2) {
        }

        public void tt(String str, String str2) {
        }

        public void ve(String str, String str2) {
        }

        public void c(String str, String str2, Throwable th) {
        }

        public boolean c(int i10) {
            return c.c() <= i10;
        }
    }

    public static int c() {
        return f20162c;
    }

    public static boolean tt() {
        return f20162c <= 3;
    }

    public static void uj(String str, String str2) {
        if (str2 != null && tt.c(6)) {
            tt.tt(str, str2);
        }
    }

    public static void ve(String str, String str2) {
        if (str2 != null && tt.c(5)) {
            tt.ve(str, str2);
        }
    }

    public static void c(String str) {
        c("Logger", str);
    }

    public static void tt(String str, String str2) {
        if (str2 != null && tt.c(4)) {
            tt.c(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (str2 == null) {
            return;
        }
        tt.c(3);
    }

    public static void c(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && tt.c(6)) {
            tt.c(str, str2, th);
        }
    }

    public static void tt(String str) {
        uj("Logger", str);
    }
}
