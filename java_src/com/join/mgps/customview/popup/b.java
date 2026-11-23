package com.join.mgps.customview.popup;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.github.snowdream.android.app.downloader.DownloadException;
import com.join.mgps.customview.wheel.picker.WheelView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b<V extends View> extends com.join.mgps.customview.popup.a<View> {
    protected int A;
    protected int B;
    protected int C;
    protected TextView D;
    protected TextView E;
    protected View F;
    protected View G;
    protected View H;
    protected View I;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f66747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66748k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected int f66749l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f66750m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f66751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f66752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f66753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f66754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f66755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected CharSequence f66756s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected CharSequence f66757t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected CharSequence f66758u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f66759v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f66760w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f66761x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected int f66762y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f66763z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            b.this.a();
            b.this.J();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.customview.popup.b$b, reason: collision with other inner class name */
    class ViewOnClickListenerC0716b implements View.OnClickListener {
        ViewOnClickListenerC0716b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            b.this.a();
            b.this.K();
        }
    }

    public b(Activity activity) {
        super(activity);
        this.f66747j = true;
        this.f66748k = -13388315;
        this.f66749l = 1;
        this.f66750m = -1;
        this.f66751n = 40;
        this.f66752o = 15;
        this.f66753p = 0;
        this.f66754q = 0;
        this.f66755r = true;
        this.f66756s = "";
        this.f66757t = "";
        this.f66758u = "";
        this.f66759v = -13388315;
        this.f66760w = -13388315;
        this.f66761x = -16777216;
        this.f66762y = WheelView.W;
        this.f66763z = 0;
        this.A = 0;
        this.B = 0;
        this.C = -1;
        this.f66756s = activity.getString(R.string.cancel);
        this.f66757t = activity.getString(R.string.ok);
    }

    public TextView D() {
        TextView textView = this.D;
        if (textView != null) {
            return textView;
        }
        throw new NullPointerException("please call show at first");
    }

    public TextView E() {
        TextView textView = this.E;
        if (textView != null) {
            return textView;
        }
        throw new NullPointerException("please call show at first");
    }

    public View F() {
        View view = this.F;
        if (view != null) {
            return view;
        }
        throw new NullPointerException("please call show at first");
    }

    @NonNull
    protected abstract V G();

    @Nullable
    protected View H() {
        View view = this.I;
        if (view != null) {
            return view;
        }
        return null;
    }

    @Nullable
    protected View I() {
        View view = this.G;
        if (view != null) {
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f66737b);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, q6.a.H(this.f66737b, this.f66751n)));
        relativeLayout.setBackgroundColor(this.f66750m);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(this.f66737b);
        this.D = textView;
        textView.setVisibility(this.f66755r ? 0 : 8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(15, -1);
        this.D.setLayoutParams(layoutParams);
        this.D.setBackgroundColor(0);
        this.D.setGravity(17);
        int iH = q6.a.H(this.f66737b, this.f66752o);
        this.D.setPadding(iH, 0, iH, 0);
        if (!TextUtils.isEmpty(this.f66756s)) {
            this.D.setText(this.f66756s);
        }
        this.D.setTextColor(q6.a.n(this.f66759v, this.f66762y));
        int i10 = this.f66763z;
        if (i10 != 0) {
            this.D.setTextSize(i10);
        }
        this.D.setOnClickListener(new a());
        relativeLayout.addView(this.D);
        if (this.F == null) {
            TextView textView2 = new TextView(this.f66737b);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            int iH2 = q6.a.H(this.f66737b, this.f66752o);
            layoutParams2.leftMargin = iH2;
            layoutParams2.rightMargin = iH2;
            layoutParams2.addRule(14, -1);
            layoutParams2.addRule(15, -1);
            textView2.setLayoutParams(layoutParams2);
            textView2.setGravity(17);
            if (!TextUtils.isEmpty(this.f66758u)) {
                textView2.setText(this.f66758u);
            }
            textView2.setTextColor(this.f66761x);
            int i11 = this.B;
            if (i11 != 0) {
                textView2.setTextSize(i11);
            }
            this.F = textView2;
        }
        relativeLayout.addView(this.F);
        this.E = new TextView(this.f66737b);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(11, -1);
        layoutParams3.addRule(15, -1);
        this.E.setLayoutParams(layoutParams3);
        this.E.setBackgroundColor(0);
        this.E.setGravity(17);
        this.E.setPadding(iH, 0, iH, 0);
        if (!TextUtils.isEmpty(this.f66757t)) {
            this.E.setText(this.f66757t);
        }
        this.E.setTextColor(q6.a.n(this.f66760w, this.f66762y));
        int i12 = this.A;
        if (i12 != 0) {
            this.E.setTextSize(i12);
        }
        this.E.setOnClickListener(new ViewOnClickListenerC0716b());
        relativeLayout.addView(this.E);
        return relativeLayout;
    }

    protected void J() {
    }

    protected void K() {
    }

    public void L(@ColorInt int backgroundColor) {
        this.C = backgroundColor;
    }

    public void M(@StringRes int textRes) {
        N(this.f66737b.getString(textRes));
    }

    public void N(CharSequence cancelText) {
        TextView textView = this.D;
        if (textView != null) {
            textView.setText(cancelText);
        } else {
            this.f66756s = cancelText;
        }
    }

    public void O(@ColorInt int cancelTextColor) {
        TextView textView = this.D;
        if (textView != null) {
            textView.setTextColor(cancelTextColor);
        } else {
            this.f66759v = cancelTextColor;
        }
    }

    public void P(@IntRange(from = DownloadException.OPERATION_NOT_VALID, to = 40) int cancelTextSize) {
        this.f66763z = cancelTextSize;
    }

    public void Q(boolean cancelVisible) {
        TextView textView = this.D;
        if (textView != null) {
            textView.setVisibility(cancelVisible ? 0 : 8);
        } else {
            this.f66755r = cancelVisible;
        }
    }

    public void R(int leftAndRight, int topAndBottom) {
        this.f66753p = leftAndRight;
        this.f66754q = topAndBottom;
    }

    public void S(View footerView) {
        this.I = footerView;
    }

    public void T(View headerView) {
        this.G = headerView;
    }

    public void U(int pressedTextColor) {
        this.f66762y = pressedTextColor;
    }

    public void V(@StringRes int textRes) {
        W(this.f66737b.getString(textRes));
    }

    public void W(CharSequence submitText) {
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(submitText);
        } else {
            this.f66757t = submitText;
        }
    }

    public void X(@ColorInt int submitTextColor) {
        TextView textView = this.E;
        if (textView != null) {
            textView.setTextColor(submitTextColor);
        } else {
            this.f66760w = submitTextColor;
        }
    }

    public void Y(@IntRange(from = DownloadException.OPERATION_NOT_VALID, to = 40) int submitTextSize) {
        this.A = submitTextSize;
    }

    public void Z(@StringRes int textRes) {
        a0(this.f66737b.getString(textRes));
    }

    public void a0(CharSequence titleText) {
        View view = this.F;
        if (view == null || !(view instanceof TextView)) {
            this.f66758u = titleText;
        } else {
            ((TextView) view).setText(titleText);
        }
    }

    public void b0(@ColorInt int titleTextColor) {
        View view = this.F;
        if (view == null || !(view instanceof TextView)) {
            this.f66761x = titleTextColor;
        } else {
            ((TextView) view).setTextColor(titleTextColor);
        }
    }

    public void c0(@IntRange(from = DownloadException.OPERATION_NOT_VALID, to = 40) int titleTextSize) {
        this.B = titleTextSize;
    }

    public void d0(View titleView) {
        this.F = titleView;
    }

    public void e0(@ColorInt int topBackgroundColor) {
        this.f66750m = topBackgroundColor;
    }

    public void f0(@IntRange(from = DownloadException.OPERATION_NOT_VALID, to = 80) int topHeight) {
        this.f66751n = topHeight;
    }

    public void g0(@ColorInt int topLineColor) {
        this.f66748k = topLineColor;
    }

    public void h0(int topLineHeightPixels) {
        this.f66749l = topLineHeightPixels;
    }

    public void i0(boolean topLineVisible) {
        this.f66747j = topLineVisible;
    }

    @Override // com.join.mgps.customview.popup.a
    protected final View j() {
        LinearLayout linearLayout = new LinearLayout(this.f66737b);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setBackgroundColor(this.C);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setPadding(0, 0, 0, 0);
        linearLayout.setClipToPadding(false);
        View viewI = I();
        if (viewI != null) {
            linearLayout.addView(viewI);
        }
        if (this.f66747j) {
            View view = new View(this.f66737b);
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f66749l));
            view.setBackgroundColor(this.f66748k);
            linearLayout.addView(view);
        }
        if (this.H == null) {
            this.H = G();
        }
        int i10 = this.f66753p;
        int iH = i10 > 0 ? q6.a.H(this.f66737b, i10) : 0;
        int i11 = this.f66754q;
        int iH2 = i11 > 0 ? q6.a.H(this.f66737b, i11) : 0;
        this.H.setPadding(iH, iH2, iH, iH2);
        ViewGroup viewGroup = (ViewGroup) this.H.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.H);
        }
        linearLayout.addView(this.H, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        View viewH = H();
        if (viewH != null) {
            linearLayout.addView(viewH);
        }
        return linearLayout;
    }

    public void j0(int topPadding) {
        this.f66752o = topPadding;
    }
}
