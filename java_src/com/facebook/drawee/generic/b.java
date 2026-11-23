package com.facebook.drawee.generic;

import android.R;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.facebook.common.internal.i;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f27328t = 300;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final s.c f27329u = s.c.f27291h;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final s.c f27330v = s.c.f27292i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f27331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f27333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Drawable f27334d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private s.c f27335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Drawable f27336f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private s.c f27337g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private Drawable f27338h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private s.c f27339i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Drawable f27340j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private s.c f27341k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private s.c f27342l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private Matrix f27343m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private PointF f27344n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private ColorFilter f27345o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private Drawable f27346p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private List<Drawable> f27347q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private Drawable f27348r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private RoundingParams f27349s;

    public b(Resources resources) {
        this.f27331a = resources;
        s();
    }

    private void Z() {
        List<Drawable> list = this.f27347q;
        if (list != null) {
            Iterator<Drawable> it2 = list.iterator();
            while (it2.hasNext()) {
                i.i(it2.next());
            }
        }
    }

    private void s() {
        this.f27332b = 300;
        this.f27333c = 0.0f;
        this.f27334d = null;
        s.c cVar = f27329u;
        this.f27335e = cVar;
        this.f27336f = null;
        this.f27337g = cVar;
        this.f27338h = null;
        this.f27339i = cVar;
        this.f27340j = null;
        this.f27341k = cVar;
        this.f27342l = f27330v;
        this.f27343m = null;
        this.f27344n = null;
        this.f27345o = null;
        this.f27346p = null;
        this.f27347q = null;
        this.f27348r = null;
        this.f27349s = null;
    }

    public static b t(Resources resources) {
        return new b(resources);
    }

    public b A(int fadeDuration) {
        this.f27332b = fadeDuration;
        return this;
    }

    public b B(int resourceId) {
        this.f27338h = this.f27331a.getDrawable(resourceId);
        return this;
    }

    public b C(int resourceId, @Nullable s.c failureImageScaleType) {
        this.f27338h = this.f27331a.getDrawable(resourceId);
        this.f27339i = failureImageScaleType;
        return this;
    }

    public b D(@Nullable Drawable failureDrawable) {
        this.f27338h = failureDrawable;
        return this;
    }

    public b E(Drawable failureDrawable, @Nullable s.c failureImageScaleType) {
        this.f27338h = failureDrawable;
        this.f27339i = failureImageScaleType;
        return this;
    }

    public b F(@Nullable s.c failureImageScaleType) {
        this.f27339i = failureImageScaleType;
        return this;
    }

    public b G(@Nullable Drawable overlay) {
        if (overlay == null) {
            this.f27347q = null;
        } else {
            this.f27347q = Arrays.asList(overlay);
        }
        return this;
    }

    public b H(@Nullable List<Drawable> overlays) {
        this.f27347q = overlays;
        return this;
    }

    public b I(int resourceId) {
        this.f27334d = this.f27331a.getDrawable(resourceId);
        return this;
    }

    public b J(int resourceId, @Nullable s.c placeholderImageScaleType) {
        this.f27334d = this.f27331a.getDrawable(resourceId);
        this.f27335e = placeholderImageScaleType;
        return this;
    }

    public b K(@Nullable Drawable placeholderDrawable) {
        this.f27334d = placeholderDrawable;
        return this;
    }

    public b L(Drawable placeholderDrawable, @Nullable s.c placeholderImageScaleType) {
        this.f27334d = placeholderDrawable;
        this.f27335e = placeholderImageScaleType;
        return this;
    }

    public b M(@Nullable s.c placeholderImageScaleType) {
        this.f27335e = placeholderImageScaleType;
        return this;
    }

    public b N(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.f27348r = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawable);
            this.f27348r = stateListDrawable;
        }
        return this;
    }

    public b O(int resourceId) {
        this.f27340j = this.f27331a.getDrawable(resourceId);
        return this;
    }

    public b P(int resourceId, @Nullable s.c progressBarImageScaleType) {
        this.f27340j = this.f27331a.getDrawable(resourceId);
        this.f27341k = progressBarImageScaleType;
        return this;
    }

    public b Q(@Nullable Drawable progressBarDrawable) {
        this.f27340j = progressBarDrawable;
        return this;
    }

    public b R(Drawable progressBarDrawable, @Nullable s.c progressBarImageScaleType) {
        this.f27340j = progressBarDrawable;
        this.f27341k = progressBarImageScaleType;
        return this;
    }

    public b S(@Nullable s.c progressBarImageScaleType) {
        this.f27341k = progressBarImageScaleType;
        return this;
    }

    public b T(int resourceId) {
        this.f27336f = this.f27331a.getDrawable(resourceId);
        return this;
    }

    public b U(int resourceId, @Nullable s.c retryImageScaleType) {
        this.f27336f = this.f27331a.getDrawable(resourceId);
        this.f27337g = retryImageScaleType;
        return this;
    }

    public b V(@Nullable Drawable retryDrawable) {
        this.f27336f = retryDrawable;
        return this;
    }

    public b W(Drawable retryDrawable, @Nullable s.c retryImageScaleType) {
        this.f27336f = retryDrawable;
        this.f27337g = retryImageScaleType;
        return this;
    }

    public b X(@Nullable s.c retryImageScaleType) {
        this.f27337g = retryImageScaleType;
        return this;
    }

    public b Y(@Nullable RoundingParams roundingParams) {
        this.f27349s = roundingParams;
        return this;
    }

    public a a() {
        Z();
        return new a(this);
    }

    @Nullable
    public ColorFilter b() {
        return this.f27345o;
    }

    @Nullable
    public PointF c() {
        return this.f27344n;
    }

    @Nullable
    public s.c d() {
        return this.f27342l;
    }

    @Nullable
    public Drawable e() {
        return this.f27346p;
    }

    public float f() {
        return this.f27333c;
    }

    public int g() {
        return this.f27332b;
    }

    public Resources getResources() {
        return this.f27331a;
    }

    @Nullable
    public Drawable h() {
        return this.f27338h;
    }

    @Nullable
    public s.c i() {
        return this.f27339i;
    }

    @Nullable
    public List<Drawable> j() {
        return this.f27347q;
    }

    @Nullable
    public Drawable k() {
        return this.f27334d;
    }

    @Nullable
    public s.c l() {
        return this.f27335e;
    }

    @Nullable
    public Drawable m() {
        return this.f27348r;
    }

    @Nullable
    public Drawable n() {
        return this.f27340j;
    }

    @Nullable
    public s.c o() {
        return this.f27341k;
    }

    @Nullable
    public Drawable p() {
        return this.f27336f;
    }

    @Nullable
    public s.c q() {
        return this.f27337g;
    }

    @Nullable
    public RoundingParams r() {
        return this.f27349s;
    }

    public b u() {
        s();
        return this;
    }

    public b v(@Nullable ColorFilter colorFilter) {
        this.f27345o = colorFilter;
        return this;
    }

    public b w(@Nullable PointF focusPoint) {
        this.f27344n = focusPoint;
        return this;
    }

    public b x(@Nullable s.c actualImageScaleType) {
        this.f27342l = actualImageScaleType;
        this.f27343m = null;
        return this;
    }

    public b y(@Nullable Drawable background) {
        this.f27346p = background;
        return this;
    }

    public b z(float desiredAspectRatio) {
        this.f27333c = desiredAspectRatio;
        return this;
    }
}
