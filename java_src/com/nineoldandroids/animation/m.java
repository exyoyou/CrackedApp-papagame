package com.nineoldandroids.animation;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76252a = new f("alpha");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76253b = new g("pivotX");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76254c = new h("pivotY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76255d = new i("translationX");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76256e = new j("translationY");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76257f = new k("rotation");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76258g = new l("rotationX");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76259h = new C0987m("rotationY");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76260i = new n("scaleX");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76261j = new a("scaleY");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Integer> f76262k = new b("scrollX");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Integer> f76263l = new c("scrollY");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76264m = new d("x");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f76265n = new e("y");

    static class a extends com.nineoldandroids.util.a<View> {
        a(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).j());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).A(f10);
        }
    }

    static class b extends com.nineoldandroids.util.b<View> {
        b(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Integer a(View view) {
            return Integer.valueOf(com.nineoldandroids.view.animation.a.I(view).k());
        }

        @Override // com.nineoldandroids.util.b
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, int i10) {
            com.nineoldandroids.view.animation.a.I(view).B(i10);
        }
    }

    static class c extends com.nineoldandroids.util.b<View> {
        c(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Integer a(View view) {
            return Integer.valueOf(com.nineoldandroids.view.animation.a.I(view).l());
        }

        @Override // com.nineoldandroids.util.b
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, int i10) {
            com.nineoldandroids.view.animation.a.I(view).C(i10);
        }
    }

    static class d extends com.nineoldandroids.util.a<View> {
        d(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).p());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).F(f10);
        }
    }

    static class e extends com.nineoldandroids.util.a<View> {
        e(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).q());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).G(f10);
        }
    }

    static class f extends com.nineoldandroids.util.a<View> {
        f(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).b());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).t(f10);
        }
    }

    static class g extends com.nineoldandroids.util.a<View> {
        g(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).d());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).u(f10);
        }
    }

    static class h extends com.nineoldandroids.util.a<View> {
        h(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).e());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).v(f10);
        }
    }

    static class i extends com.nineoldandroids.util.a<View> {
        i(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).m());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).D(f10);
        }
    }

    static class j extends com.nineoldandroids.util.a<View> {
        j(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).o());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).E(f10);
        }
    }

    static class k extends com.nineoldandroids.util.a<View> {
        k(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).f());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).w(f10);
        }
    }

    static class l extends com.nineoldandroids.util.a<View> {
        l(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).g());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).x(f10);
        }
    }

    /* JADX INFO: renamed from: com.nineoldandroids.animation.m$m, reason: collision with other inner class name */
    static class C0987m extends com.nineoldandroids.util.a<View> {
        C0987m(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).h());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).y(f10);
        }
    }

    static class n extends com.nineoldandroids.util.a<View> {
        n(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.I(view).i());
        }

        @Override // com.nineoldandroids.util.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(View view, float f10) {
            com.nineoldandroids.view.animation.a.I(view).z(f10);
        }
    }

    private m() {
    }
}
