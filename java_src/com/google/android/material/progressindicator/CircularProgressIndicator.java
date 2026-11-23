package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int A = R.style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int B = 0;
    public static final int C = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void t() {
        c cVar = new c((CircularProgressIndicatorSpec) this.f31200b);
        setIndeterminateDrawable(i.w(getContext(), (CircularProgressIndicatorSpec) this.f31200b, cVar));
        setProgressDrawable(e.z(getContext(), (CircularProgressIndicatorSpec) this.f31200b, cVar));
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f31200b).f31220j;
    }

    @Px
    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f31200b).f31219i;
    }

    @Px
    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f31200b).f31218h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public CircularProgressIndicatorSpec i(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndicatorDirection(int i10) {
        ((CircularProgressIndicatorSpec) this.f31200b).f31220j = i10;
        invalidate();
    }

    public void setIndicatorInset(@Px int i10) {
        S s10 = this.f31200b;
        if (((CircularProgressIndicatorSpec) s10).f31219i != i10) {
            ((CircularProgressIndicatorSpec) s10).f31219i = i10;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i10) {
        int iMax = Math.max(i10, getTrackThickness() * 2);
        S s10 = this.f31200b;
        if (((CircularProgressIndicatorSpec) s10).f31218h != iMax) {
            ((CircularProgressIndicatorSpec) s10).f31218h = iMax;
            ((CircularProgressIndicatorSpec) s10).e();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i10) {
        super.setTrackThickness(i10);
        ((CircularProgressIndicatorSpec) this.f31200b).e();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10, A);
        t();
    }
}
