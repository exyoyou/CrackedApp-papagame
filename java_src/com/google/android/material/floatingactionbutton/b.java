package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f30677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ExtendedFloatingActionButton f30678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<Animator.AnimatorListener> f30679c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.a f30680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private i f30681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private i f30682f;

    class a extends Property<ExtendedFloatingActionButton, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(com.google.android.material.animation.b.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.M.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f30678b.M.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f10) {
            int colorForState = extendedFloatingActionButton.M.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f30678b.M.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (com.google.android.material.animation.b.a(0.0f, Color.alpha(colorForState) / 255.0f, f10.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f10.floatValue() == 1.0f) {
                extendedFloatingActionButton.X(extendedFloatingActionButton.M);
            } else {
                extendedFloatingActionButton.X(colorStateListValueOf);
            }
        }
    }

    b(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.f30678b = extendedFloatingActionButton;
        this.f30677a = extendedFloatingActionButton.getContext();
        this.f30680d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void a() {
        this.f30680d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final i b() {
        i iVar = this.f30682f;
        if (iVar != null) {
            return iVar;
        }
        if (this.f30681e == null) {
            this.f30681e = i.d(this.f30677a, f());
        }
        return (i) Preconditions.checkNotNull(this.f30681e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @Nullable
    public i c() {
        return this.f30682f;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void e(@NonNull Animator.AnimatorListener animatorListener) {
        this.f30679c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet g() {
        return o(b());
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void j() {
        this.f30680d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void k(@NonNull Animator.AnimatorListener animatorListener) {
        this.f30679c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void l(@Nullable i iVar) {
        this.f30682f = iVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @NonNull
    public final List<Animator.AnimatorListener> m() {
        return this.f30679c;
    }

    @NonNull
    AnimatorSet o(@NonNull i iVar) {
        ArrayList arrayList = new ArrayList();
        if (iVar.j("opacity")) {
            arrayList.add(iVar.f("opacity", this.f30678b, View.ALPHA));
        }
        if (iVar.j("scale")) {
            arrayList.add(iVar.f("scale", this.f30678b, View.SCALE_Y));
            arrayList.add(iVar.f("scale", this.f30678b, View.SCALE_X));
        }
        if (iVar.j("width")) {
            arrayList.add(iVar.f("width", this.f30678b, ExtendedFloatingActionButton.f30613l1));
        }
        if (iVar.j("height")) {
            arrayList.add(iVar.f("height", this.f30678b, ExtendedFloatingActionButton.f30615p1));
        }
        if (iVar.j("paddingStart")) {
            arrayList.add(iVar.f("paddingStart", this.f30678b, ExtendedFloatingActionButton.f30616q1));
        }
        if (iVar.j("paddingEnd")) {
            arrayList.add(iVar.f("paddingEnd", this.f30678b, ExtendedFloatingActionButton.f30617r1));
        }
        if (iVar.j("labelOpacity")) {
            arrayList.add(iVar.f("labelOpacity", this.f30678b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f30680d.c(animator);
    }
}
