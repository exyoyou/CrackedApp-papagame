package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.motion.j;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f31943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f31944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeInterpolator f31945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f31946e;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    private static void d(@NonNull View view, int i10, int i11) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i10, ViewCompat.getPaddingEnd(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    private boolean e(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f31943b.getPaddingTop() == i11 && this.f31943b.getPaddingBottom() == i12) {
            return z10;
        }
        d(this.f31943b, i11, i12);
        return true;
    }

    @Override // com.google.android.material.snackbar.b
    public void a(int i10, int i11) {
        this.f31943b.setAlpha(0.0f);
        long j10 = i11;
        long j11 = i10;
        this.f31943b.animate().alpha(1.0f).setDuration(j10).setInterpolator(this.f31945d).setStartDelay(j11).start();
        if (this.f31944c.getVisibility() == 0) {
            this.f31944c.setAlpha(0.0f);
            this.f31944c.animate().alpha(1.0f).setDuration(j10).setInterpolator(this.f31945d).setStartDelay(j11).start();
        }
    }

    @Override // com.google.android.material.snackbar.b
    public void b(int i10, int i11) {
        this.f31943b.setAlpha(1.0f);
        long j10 = i11;
        long j11 = i10;
        this.f31943b.animate().alpha(0.0f).setDuration(j10).setInterpolator(this.f31945d).setStartDelay(j11).start();
        if (this.f31944c.getVisibility() == 0) {
            this.f31944c.setAlpha(1.0f);
            this.f31944c.animate().alpha(0.0f).setDuration(j10).setInterpolator(this.f31945d).setStartDelay(j11).start();
        }
    }

    void c(float f10) {
        if (f10 != 1.0f) {
            this.f31944c.setTextColor(s.t(s.d(this, R.attr.colorSurface), this.f31944c.getCurrentTextColor(), f10));
        }
    }

    public Button getActionView() {
        return this.f31944c;
    }

    public TextView getMessageView() {
        return this.f31943b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f31943b = (TextView) findViewById(R.id.snackbar_text);
        this.f31944c = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0055  */
    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean z10 = true;
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f31943b.getLayout();
        boolean z11 = layout != null && layout.getLineCount() > 1;
        if (!z11 || this.f31946e <= 0 || this.f31944c.getMeasuredWidth() <= this.f31946e) {
            if (!z11) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!e(0, dimensionPixelSize, dimensionPixelSize)) {
                z10 = false;
            }
        } else if (!e(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            z10 = false;
        }
        if (z10) {
            super.onMeasure(i10, i11);
        }
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f31946e = i10;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31945d = j.g(context, R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b);
    }
}
