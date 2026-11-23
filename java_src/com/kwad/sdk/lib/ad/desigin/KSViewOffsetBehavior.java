package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class KSViewOffsetBehavior<V extends View> extends KSCoordinatorLayout.Behavior<V> {
    private int mTempLeftRightOffset;
    private int mTempTopBottomOffset;
    private KSViewOffsetHelper mViewOffsetHelper;

    public KSViewOffsetBehavior() {
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public int getLeftAndRightOffset() {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.getLeftAndRightOffset();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.getTopAndBottomOffset();
        }
        return 0;
    }

    protected void layoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10) {
        kSCoordinatorLayout.onLayoutChild(v10, i10);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onLayoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10) {
        layoutChild(kSCoordinatorLayout, v10, i10);
        if (this.mViewOffsetHelper == null) {
            this.mViewOffsetHelper = new KSViewOffsetHelper(v10);
        }
        this.mViewOffsetHelper.onViewLayout();
        int i11 = this.mTempTopBottomOffset;
        if (i11 != 0) {
            this.mViewOffsetHelper.setTopAndBottomOffset(i11);
            this.mTempTopBottomOffset = 0;
        }
        int i12 = this.mTempLeftRightOffset;
        if (i12 == 0) {
            return true;
        }
        this.mViewOffsetHelper.setLeftAndRightOffset(i12);
        this.mTempLeftRightOffset = 0;
        return true;
    }

    public boolean setLeftAndRightOffset(int i10) {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.setLeftAndRightOffset(i10);
        }
        this.mTempLeftRightOffset = i10;
        return false;
    }

    public boolean setTopAndBottomOffset(int i10) {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.setTopAndBottomOffset(i10);
        }
        this.mTempTopBottomOffset = i10;
        return false;
    }

    public KSViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }
}
