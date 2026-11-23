package org.aspectj.runtime.internal.cflowstack;

import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public class f implements d {

    private static class a extends ThreadLocal implements org.aspectj.runtime.internal.cflowstack.a {

        /* JADX INFO: renamed from: org.aspectj.runtime.internal.cflowstack.f$a$a, reason: collision with other inner class name */
        static class C1224a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            protected int f95171a = 0;

            C1224a() {
            }
        }

        private a() {
        }

        @Override // org.aspectj.runtime.internal.cflowstack.a
        public void a() {
            e().f95171a--;
        }

        @Override // org.aspectj.runtime.internal.cflowstack.a
        public void b() {
            remove();
        }

        @Override // org.aspectj.runtime.internal.cflowstack.a
        public void c() {
            e().f95171a++;
        }

        @Override // org.aspectj.runtime.internal.cflowstack.a
        public boolean d() {
            return e().f95171a != 0;
        }

        public C1224a e() {
            return (C1224a) get();
        }

        @Override // java.lang.ThreadLocal
        public Object initialValue() {
            return new C1224a();
        }
    }

    private static class b extends ThreadLocal implements c {
        private b() {
        }

        @Override // org.aspectj.runtime.internal.cflowstack.c
        public void a() {
            remove();
        }

        @Override // org.aspectj.runtime.internal.cflowstack.c
        public Stack b() {
            return (Stack) get();
        }

        @Override // java.lang.ThreadLocal
        public Object initialValue() {
            return new Stack();
        }
    }

    @Override // org.aspectj.runtime.internal.cflowstack.d
    public org.aspectj.runtime.internal.cflowstack.a a() {
        return new a();
    }

    @Override // org.aspectj.runtime.internal.cflowstack.d
    public c b() {
        return new b();
    }
}
