package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface b extends CircularRevealHelper.a {

    /* JADX INFO: renamed from: com.google.android.material.circularreveal.b$b, reason: collision with other inner class name */
    public static class C0596b implements TypeEvaluator<e> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator<e> f30022b = new C0596b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30023a = new e();

        @Override // android.animation.TypeEvaluator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f10, @NonNull e eVar, @NonNull e eVar2) {
            this.f30023a.b(z4.a.f(eVar.f30027a, eVar2.f30027a, f10), z4.a.f(eVar.f30028b, eVar2.f30028b, f10), z4.a.f(eVar.f30029c, eVar2.f30029c, f10));
            return this.f30023a;
        }
    }

    public static class c extends Property<b, e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<b, e> f30024a = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(@NonNull b bVar) {
            return bVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull b bVar, @Nullable e eVar) {
            bVar.setRevealInfo(eVar);
        }
    }

    public static class d extends Property<b, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<b, Integer> f30025a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(@NonNull b bVar) {
            return Integer.valueOf(bVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull b bVar, @NonNull Integer num) {
            bVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final float f30026d = Float.MAX_VALUE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f30027a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f30028b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f30029c;

        public boolean a() {
            return this.f30029c == Float.MAX_VALUE;
        }

        public void b(float f10, float f11, float f12) {
            this.f30027a = f10;
            this.f30028b = f11;
            this.f30029c = f12;
        }

        public void c(@NonNull e eVar) {
            b(eVar.f30027a, eVar.f30028b, eVar.f30029c);
        }

        private e() {
        }

        public e(float f10, float f11, float f12) {
            this.f30027a = f10;
            this.f30028b = f11;
            this.f30029c = f12;
        }

        public e(@NonNull e eVar) {
            this(eVar.f30027a, eVar.f30028b, eVar.f30029c);
        }
    }

    void a();

    void d();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    e getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i10);

    void setRevealInfo(@Nullable e eVar);
}
