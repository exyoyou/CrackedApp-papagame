package q.rorbin.badgeview;

import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes10.dex */
public interface a {

    /* JADX INFO: renamed from: q.rorbin.badgeview.a$a, reason: collision with other inner class name */
    public interface InterfaceC1236a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f96436a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f96437b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f96438c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f96439d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f96440e = 5;

        void a(int i10, a aVar, View view);
    }

    float a(boolean z10);

    float b(boolean z10);

    float c(boolean z10);

    a d(int i10);

    boolean e();

    a f(float f10, boolean z10);

    a g(int i10);

    Drawable getBadgeBackground();

    int getBadgeBackgroundColor();

    int getBadgeGravity();

    int getBadgeNumber();

    String getBadgeText();

    int getBadgeTextColor();

    PointF getDragCenter();

    View getTargetView();

    a h(float f10, float f11, boolean z10);

    void hide(boolean z10);

    a i(boolean z10);

    a j(boolean z10);

    a k(float f10, boolean z10);

    a l(Drawable drawable, boolean z10);

    boolean m();

    a n(View view);

    a o(String str);

    boolean p();

    a q(InterfaceC1236a interfaceC1236a);

    float r(boolean z10);

    a s(int i10);

    a t(int i10, float f10, boolean z10);

    a u(int i10);

    a v(Drawable drawable);

    a w(float f10, boolean z10);
}
