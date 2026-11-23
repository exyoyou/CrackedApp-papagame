package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public abstract class LoadingLayout extends FrameLayout implements com.join.mgps.pulltorefresh.library.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final String f72231m = "PullToRefresh-LoadingLayout";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final Interpolator f72232n = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f72233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final ImageView f72234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final ProgressBar f72235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f72236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextView f72237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TextView f72238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final PullToRefreshBase.Mode f72239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final PullToRefreshBase.Orientation f72240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f72241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f72242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CharSequence f72243l;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f72245b;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f72245b = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72245b[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PullToRefreshBase.Orientation.values().length];
            f72244a = iArr2;
            try {
                iArr2[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f72244a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LoadingLayout(Context context, final PullToRefreshBase.Mode mode, final PullToRefreshBase.Orientation scrollDirection, TypedArray attrs) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable;
        super(context);
        this.f72239h = mode;
        this.f72240i = scrollDirection;
        if (a.f72244a[scrollDirection.ordinal()] != 1) {
            LayoutInflater.from(context).inflate(R.layout.pull_to_refresh_header_vertical, this);
        } else {
            LayoutInflater.from(context).inflate(R.layout.pull_to_refresh_header_horizontal, this);
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fl_inner);
        this.f72233b = frameLayout;
        this.f72237f = (TextView) frameLayout.findViewById(R.id.pull_to_refresh_text);
        this.f72235d = (ProgressBar) this.f72233b.findViewById(R.id.pull_to_refresh_progress);
        this.f72238g = (TextView) this.f72233b.findViewById(R.id.pull_to_refresh_sub_text);
        this.f72234c = (ImageView) this.f72233b.findViewById(R.id.pull_to_refresh_image);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f72233b.getLayoutParams();
        int[] iArr = a.f72245b;
        if (iArr[mode.ordinal()] != 1) {
            layoutParams.gravity = scrollDirection == PullToRefreshBase.Orientation.VERTICAL ? 80 : 5;
            this.f72241j = context.getString(R.string.pull_to_refresh_pull_label);
            this.f72242k = context.getString(R.string.pull_to_refresh_refreshing_label);
            this.f72243l = context.getString(R.string.pull_to_refresh_release_label);
        } else {
            layoutParams.gravity = scrollDirection == PullToRefreshBase.Orientation.VERTICAL ? 48 : 3;
            this.f72241j = context.getString(R.string.pull_to_refresh_from_bottom_pull_label);
            this.f72242k = context.getString(R.string.pull_to_refresh_from_bottom_refreshing_label);
            this.f72243l = context.getString(R.string.pull_to_refresh_from_bottom_release_label);
        }
        if (attrs.hasValue(7) && (drawable = attrs.getDrawable(7)) != null) {
            c.b(this, drawable);
        }
        if (attrs.hasValue(9)) {
            TypedValue typedValue = new TypedValue();
            attrs.getValue(9, typedValue);
            setTextAppearance(typedValue.data);
        }
        if (attrs.hasValue(18)) {
            TypedValue typedValue2 = new TypedValue();
            attrs.getValue(18, typedValue2);
            setSubTextAppearance(typedValue2.data);
        }
        if (attrs.hasValue(10) && (colorStateList2 = attrs.getColorStateList(10)) != null) {
            setTextColor(colorStateList2);
        }
        if (attrs.hasValue(8) && (colorStateList = attrs.getColorStateList(8)) != null) {
            setSubTextColor(colorStateList);
        }
        Drawable drawable2 = attrs.hasValue(2) ? attrs.getDrawable(2) : null;
        if (iArr[mode.ordinal()] != 1) {
            if (attrs.hasValue(5)) {
                drawable2 = attrs.getDrawable(5);
            } else if (attrs.hasValue(6)) {
                b.a("ptrDrawableTop", "ptrDrawableStart");
                drawable2 = attrs.getDrawable(6);
            }
        } else if (attrs.hasValue(4)) {
            drawable2 = attrs.getDrawable(4);
        } else if (attrs.hasValue(3)) {
            b.a("ptrDrawableBottom", "ptrDrawableEnd");
            drawable2 = attrs.getDrawable(3);
        }
        setLoadingDrawable(drawable2 == null ? context.getResources().getDrawable(getDefaultDrawableResId()) : drawable2);
        k();
    }

    private void setSubHeaderText(CharSequence label) {
        if (this.f72238g != null) {
            if (TextUtils.isEmpty(label)) {
                this.f72238g.setVisibility(8);
                return;
            }
            this.f72238g.setText(label);
            if (8 == this.f72238g.getVisibility()) {
                this.f72238g.setVisibility(0);
            }
        }
    }

    private void setSubTextAppearance(int value) {
        TextView textView = this.f72238g;
        if (textView != null) {
            textView.setTextAppearance(getContext(), value);
        }
    }

    private void setSubTextColor(ColorStateList color) {
        TextView textView = this.f72238g;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    private void setTextAppearance(int value) {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setTextAppearance(getContext(), value);
        }
        TextView textView2 = this.f72238g;
        if (textView2 != null) {
            textView2.setTextAppearance(getContext(), value);
        }
    }

    private void setTextColor(ColorStateList color) {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setTextColor(color);
        }
        TextView textView2 = this.f72238g;
        if (textView2 != null) {
            textView2.setTextColor(color);
        }
    }

    public final void a() {
        if (this.f72237f.getVisibility() == 0) {
            this.f72237f.setVisibility(4);
        }
        if (this.f72235d.getVisibility() == 0) {
            this.f72235d.setVisibility(4);
        }
        if (this.f72234c.getVisibility() == 0) {
            this.f72234c.setVisibility(4);
        }
        if (this.f72238g.getVisibility() == 0) {
            this.f72238g.setVisibility(4);
        }
    }

    protected abstract void b(Drawable imageDrawable);

    public final void c(float scaleOfLayout) {
        if (this.f72236e) {
            return;
        }
        d(scaleOfLayout);
    }

    protected abstract void d(float scaleOfLayout);

    public final void e() {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setText(this.f72241j);
        }
        f();
    }

    protected abstract void f();

    public final void g() {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setText(this.f72242k);
        }
        if (this.f72236e) {
            ((AnimationDrawable) this.f72234c.getDrawable()).start();
        } else {
            h();
        }
        TextView textView2 = this.f72238g;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
    }

    public final int getContentSize() {
        return a.f72244a[this.f72240i.ordinal()] != 1 ? this.f72233b.getHeight() : this.f72233b.getWidth();
    }

    protected abstract int getDefaultDrawableResId();

    protected abstract void h();

    public final void i() {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setText(this.f72243l);
        }
        j();
    }

    protected abstract void j();

    public final void k() {
        TextView textView = this.f72237f;
        if (textView != null) {
            textView.setText(this.f72241j);
        }
        this.f72234c.setVisibility(0);
        if (this.f72236e) {
            ((AnimationDrawable) this.f72234c.getDrawable()).stop();
        } else {
            l();
        }
        TextView textView2 = this.f72238g;
        if (textView2 != null) {
            if (TextUtils.isEmpty(textView2.getText())) {
                this.f72238g.setVisibility(8);
            } else {
                this.f72238g.setVisibility(0);
            }
        }
    }

    protected abstract void l();

    public final void m() {
        if (4 == this.f72237f.getVisibility()) {
            this.f72237f.setVisibility(0);
        }
        if (4 == this.f72235d.getVisibility()) {
            this.f72235d.setVisibility(0);
        }
        if (4 == this.f72234c.getVisibility()) {
            this.f72234c.setVisibility(0);
        }
        if (4 == this.f72238g.getVisibility()) {
            this.f72238g.setVisibility(0);
        }
    }

    public final void setHeight(int height) {
        getLayoutParams().height = height;
        requestLayout();
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLastUpdatedLabel(CharSequence label) {
        setSubHeaderText(label);
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public final void setLoadingDrawable(Drawable imageDrawable) {
        this.f72234c.setImageDrawable(imageDrawable);
        this.f72236e = imageDrawable instanceof AnimationDrawable;
        b(imageDrawable);
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setPullLabel(CharSequence pullLabel) {
        this.f72241j = pullLabel;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setRefreshingLabel(CharSequence refreshingLabel) {
        this.f72242k = refreshingLabel;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setReleaseLabel(CharSequence releaseLabel) {
        this.f72243l = releaseLabel;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setTextTypeface(Typeface tf) {
        this.f72237f.setTypeface(tf);
    }

    public final void setWidth(int width) {
        getLayoutParams().width = width;
        requestLayout();
    }
}
