package com.kwad.sdk.lib.ad.desigin;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.kwad.sdk.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public abstract class CustomActionBarBehavior extends KSCoordinatorLayout.Behavior<RelativeLayout> {
    private int mActionBarBgColor;
    private float mActionBarColorChangeRange;
    private float mActionBarHeight;
    private Activity mActivity;

    public CustomActionBarBehavior(Context context, AttributeSet attributeSet) {
        int dimension;
        super(context, attributeSet);
        if (context instanceof Activity) {
            this.mActivity = (Activity) context;
        }
        Resources resources = context.getResources();
        if (resources != null) {
            this.mActionBarBgColor = -1;
            dimension = (int) resources.getDimension(R.dimen.ksad_title_bar_height);
        } else {
            dimension = 0;
        }
        int i10 = R.attr.ksad_action_bar_height;
        int i11 = R.attr.ksad_action_bar_bg_color;
        int i12 = R.attr.ksad_color_change_range;
        int[] iArr = {i10, i11, i12};
        Arrays.sort(iArr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        this.mActionBarHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(Arrays.binarySearch(iArr, i10), dimension);
        this.mActionBarBgColor = typedArrayObtainStyledAttributes.getColor(Arrays.binarySearch(iArr, i11), this.mActionBarBgColor);
        this.mActionBarColorChangeRange = typedArrayObtainStyledAttributes.getDimensionPixelSize(Arrays.binarySearch(iArr, i12), dimension);
        typedArrayObtainStyledAttributes.recycle();
    }

    protected int getColorWithAlpha(float f10, int i10) {
        return (Math.min(255, Math.max(0, (int) (f10 * 255.0f))) << 24) + (i10 & 16777215);
    }

    protected abstract void initView(RelativeLayout relativeLayout);

    protected void onActionBarHeightChanged(RelativeLayout relativeLayout, float f10) {
        initView(relativeLayout);
        relativeLayout.setBackgroundColor(getColorWithAlpha(transRatio(0.08f, 1.0f, f10), this.mActionBarBgColor));
    }

    public void setActionBarColorChangeRange(int i10) {
        this.mActionBarColorChangeRange = i10;
    }

    protected float transRatio(float f10, float f11, float f12) {
        if (f12 < f10) {
            return 0.0f;
        }
        if (f12 > f11) {
            return 1.0f;
        }
        return (f12 - f10) / (f11 - f10);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean layoutDependsOn(KSCoordinatorLayout kSCoordinatorLayout, RelativeLayout relativeLayout, View view) {
        return view instanceof KSAppBarLayout;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onDependentViewChanged(KSCoordinatorLayout kSCoordinatorLayout, RelativeLayout relativeLayout, View view) {
        onActionBarHeightChanged(relativeLayout, Math.min((-view.getTop()) / (this.mActionBarColorChangeRange - this.mActionBarHeight), 1.0f));
        return true;
    }
}
