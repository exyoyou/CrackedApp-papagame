package com.nineoldandroids.view;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: com.nineoldandroids.view.a$a, reason: collision with other inner class name */
    private static final class C0988a {
        private C0988a() {
        }

        static void A(View view, float f10) {
            view.setX(f10);
        }

        static void B(View view, float f10) {
            view.setY(f10);
        }

        static float a(View view) {
            return view.getAlpha();
        }

        static float b(View view) {
            return view.getPivotX();
        }

        static float c(View view) {
            return view.getPivotY();
        }

        static float d(View view) {
            return view.getRotation();
        }

        static float e(View view) {
            return view.getRotationX();
        }

        static float f(View view) {
            return view.getRotationY();
        }

        static float g(View view) {
            return view.getScaleX();
        }

        static float h(View view) {
            return view.getScaleY();
        }

        static float i(View view) {
            return view.getScrollX();
        }

        static float j(View view) {
            return view.getScrollY();
        }

        static float k(View view) {
            return view.getTranslationX();
        }

        static float l(View view) {
            return view.getTranslationY();
        }

        static float m(View view) {
            return view.getX();
        }

        static float n(View view) {
            return view.getY();
        }

        static void o(View view, float f10) {
            view.setAlpha(f10);
        }

        static void p(View view, float f10) {
            view.setPivotX(f10);
        }

        static void q(View view, float f10) {
            view.setPivotY(f10);
        }

        static void r(View view, float f10) {
            view.setRotation(f10);
        }

        static void s(View view, float f10) {
            view.setRotationX(f10);
        }

        static void t(View view, float f10) {
            view.setRotationY(f10);
        }

        static void u(View view, float f10) {
            view.setScaleX(f10);
        }

        static void v(View view, float f10) {
            view.setScaleY(f10);
        }

        static void w(View view, int i10) {
            view.setScrollX(i10);
        }

        static void x(View view, int i10) {
            view.setScrollY(i10);
        }

        static void y(View view, float f10) {
            view.setTranslationX(f10);
        }

        static void z(View view, float f10) {
            view.setTranslationY(f10);
        }
    }

    private a() {
    }

    public static void A(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).F(f10);
        } else {
            C0988a.A(view, f10);
        }
    }

    public static void B(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).G(f10);
        } else {
            C0988a.B(view, f10);
        }
    }

    public static float a(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).b() : C0988a.a(view);
    }

    public static float b(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).d() : C0988a.b(view);
    }

    public static float c(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).e() : C0988a.c(view);
    }

    public static float d(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).f() : C0988a.d(view);
    }

    public static float e(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).g() : C0988a.e(view);
    }

    public static float f(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).h() : C0988a.f(view);
    }

    public static float g(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).i() : C0988a.g(view);
    }

    public static float h(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).j() : C0988a.h(view);
    }

    public static float i(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).k() : C0988a.i(view);
    }

    public static float j(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).l() : C0988a.j(view);
    }

    public static float k(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).m() : C0988a.k(view);
    }

    public static float l(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).o() : C0988a.l(view);
    }

    public static float m(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).p() : C0988a.m(view);
    }

    public static float n(View view) {
        return com.nineoldandroids.view.animation.a.f76321r ? com.nineoldandroids.view.animation.a.I(view).q() : C0988a.n(view);
    }

    public static void o(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).t(f10);
        } else {
            C0988a.o(view, f10);
        }
    }

    public static void p(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).u(f10);
        } else {
            C0988a.p(view, f10);
        }
    }

    public static void q(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).v(f10);
        } else {
            C0988a.q(view, f10);
        }
    }

    public static void r(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).w(f10);
        } else {
            C0988a.r(view, f10);
        }
    }

    public static void s(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).x(f10);
        } else {
            C0988a.s(view, f10);
        }
    }

    public static void t(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).y(f10);
        } else {
            C0988a.t(view, f10);
        }
    }

    public static void u(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).z(f10);
        } else {
            C0988a.u(view, f10);
        }
    }

    public static void v(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).A(f10);
        } else {
            C0988a.v(view, f10);
        }
    }

    public static void w(View view, int i10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).B(i10);
        } else {
            C0988a.w(view, i10);
        }
    }

    public static void x(View view, int i10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).C(i10);
        } else {
            C0988a.x(view, i10);
        }
    }

    public static void y(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).D(f10);
        } else {
            C0988a.y(view, f10);
        }
    }

    public static void z(View view, float f10) {
        if (com.nineoldandroids.view.animation.a.f76321r) {
            com.nineoldandroids.view.animation.a.I(view).E(f10);
        } else {
            C0988a.z(view, f10);
        }
    }
}
