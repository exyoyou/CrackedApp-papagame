package com.kwad.sdk.lib.ad.desigin;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import com.kwad.sdk.R;
import com.kwad.sdk.utils.az;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class CustomReboundBehavior extends CustomAppBarLayoutBehavior {
    private static final int DEFAULT_REBOUND_MAX_OFFSET = 150;
    private static final int REBOUND_ANIM_TIME = 200;
    private static final String TAG = CustomReboundBehavior.class.toString();
    private static final int TYPE_UNKNOWN = -1;
    private WeakReference<KSAppBarLayout> mAppBartReference;
    private WeakReference<KSCoordinatorLayout> mCoordinatorReference;
    private List<CustomReboundOffsetCallback> mCustomReboundOffsetCallbacks;
    private boolean mEnableRebound;
    private a mHeaderTopBottomOffsetChangeListener;
    private int mOffsetDelta;
    private int mOffsetRebound;
    private int mPreHeadHeight;
    private final int mReboundMaxOffset;
    private ValueAnimator mReboundRecoverAnimator;
    private View mReboundView;
    private final int mReboundViewId;
    private int mReboundViewOriginHeight;
    private int mReboundViewOriginWidth;

    public interface a {
    }

    public CustomReboundBehavior(CustomAppBarBehaviorParams customAppBarBehaviorParams) {
        super(customAppBarBehaviorParams);
        this.mReboundMaxOffset = customAppBarBehaviorParams.mReboundMaxOffset;
        this.mEnableRebound = customAppBarBehaviorParams.mEnableRebound;
        int i10 = customAppBarBehaviorParams.mReboundViewId;
        this.mReboundViewId = i10;
        if (i10 == 0) {
            throw new IllegalArgumentException("should set rebound view id , with 'reboundViewId'");
        }
    }

    private void animateReboundRecover(final KSCoordinatorLayout kSCoordinatorLayout, final KSAppBarLayout kSAppBarLayout) {
        ValueAnimator valueAnimator = this.mReboundRecoverAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.mReboundRecoverAnimator = valueAnimator2;
            valueAnimator2.setDuration(200L);
            this.mReboundRecoverAnimator.setInterpolator(new DecelerateInterpolator());
            this.mReboundRecoverAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.sdk.lib.ad.desigin.CustomReboundBehavior.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CustomReboundBehavior.this.updateReboundHeaderHeight(kSCoordinatorLayout, kSAppBarLayout, ((Integer) valueAnimator3.getAnimatedValue()).intValue(), 2);
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.mReboundRecoverAnimator.cancel();
        }
        this.mReboundRecoverAnimator.setIntValues(this.mOffsetRebound, 0);
        this.mReboundRecoverAnimator.start();
    }

    private void checkShouldReboundRecover(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
        if (this.mOffsetRebound > 0) {
            animateReboundRecover(kSCoordinatorLayout, kSAppBarLayout);
        }
    }

    private int getHeaderExpandedHeight(KSAppBarLayout kSAppBarLayout) {
        int childCount = kSAppBarLayout.getChildCount();
        int measuredHeight = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = kSAppBarLayout.getChildAt(i10);
            KSAppBarLayout.b bVar = (KSAppBarLayout.b) childAt.getLayoutParams();
            measuredHeight += ((LinearLayout.LayoutParams) bVar).bottomMargin + ((LinearLayout.LayoutParams) bVar).topMargin + childAt.getMeasuredHeight();
        }
        return Math.max(0, measuredHeight);
    }

    private static int getScreenWidthPx(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    private int updateReboundByScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10, int i11) {
        if (kSAppBarLayout.getHeight() >= this.mPreHeadHeight && i10 == 1) {
            return i11;
        }
        updateReboundOffsetByScroll(kSCoordinatorLayout, kSAppBarLayout, this.mOffsetRebound + (i11 / 3));
        return getTopBottomOffsetForScrollingSibling() - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateReboundHeaderHeight(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10, int i11) {
        int i12;
        if (kSAppBarLayout.getHeight() < this.mPreHeadHeight || i10 < 0 || i10 > (i12 = this.mReboundMaxOffset)) {
            return;
        }
        this.mOffsetRebound = i10;
        List<CustomReboundOffsetCallback> list = this.mCustomReboundOffsetCallbacks;
        if (list != null && this.mEnableRebound) {
            float f10 = (i10 * 1.0f) / i12;
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mCustomReboundOffsetCallbacks.get(size).rebound(i11, f10, this.mOffsetRebound);
            }
        }
        View view = this.mReboundView;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.mReboundViewOriginHeight + i10;
            int i13 = layoutParams.width;
            int i14 = this.mReboundViewOriginWidth;
            if (i13 != i14) {
                layoutParams.width = i14;
            }
            this.mReboundView.setLayoutParams(layoutParams);
        }
        kSCoordinatorLayout.dispatchDependentViewsChanged(kSAppBarLayout);
    }

    private void updateReboundOffsetByScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10) {
        ValueAnimator valueAnimator = this.mReboundRecoverAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mReboundRecoverAnimator.cancel();
        }
        updateReboundHeaderHeight(kSCoordinatorLayout, kSAppBarLayout, i10, 1);
    }

    public void addReboundOffsetCallback(CustomReboundOffsetCallback customReboundOffsetCallback) {
        if (this.mCustomReboundOffsetCallbacks == null) {
            this.mCustomReboundOffsetCallbacks = new ArrayList();
        }
        this.mCustomReboundOffsetCallbacks.add(customReboundOffsetCallback);
    }

    public void clearReboundOffsetCallback() {
        List<CustomReboundOffsetCallback> list = this.mCustomReboundOffsetCallbacks;
        if (list != null) {
            list.clear();
        }
    }

    public int getOffsetDelta() {
        return this.mOffsetDelta;
    }

    public int getOffsetRebound() {
        return this.mOffsetRebound;
    }

    public int getReboundMaxOffset() {
        return this.mReboundMaxOffset;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior, com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset() + this.mOffsetDelta;
    }

    public boolean isEnableRebound() {
        return this.mEnableRebound;
    }

    public void removeReboundOffsetCallback(CustomReboundOffsetCallback customReboundOffsetCallback) {
        List<CustomReboundOffsetCallback> list = this.mCustomReboundOffsetCallbacks;
        if (list != null) {
            list.remove(customReboundOffsetCallback);
        }
    }

    public void setEnableRebound(boolean z10) {
        WeakReference<KSAppBarLayout> weakReference;
        this.mEnableRebound = z10;
        WeakReference<KSCoordinatorLayout> weakReference2 = this.mCoordinatorReference;
        if (weakReference2 == null || weakReference2.get() == null || (weakReference = this.mAppBartReference) == null || weakReference.get() == null) {
            return;
        }
        animateReboundRecover(this.mCoordinatorReference.get(), this.mAppBartReference.get());
    }

    public void setHeaderTopBottomOffsetChangeListener(a aVar) {
        this.mHeaderTopBottomOffsetChangeListener = aVar;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public void onFlingFinished(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
        super.onFlingFinished(kSCoordinatorLayout, kSAppBarLayout);
        checkShouldReboundRecover(kSCoordinatorLayout, kSAppBarLayout);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior, com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10, int i11, int i12, int i13) {
        boolean zOnMeasureChild = super.onMeasureChild(kSCoordinatorLayout, kSAppBarLayout, i10, i11, i12, i13);
        if (this.mPreHeadHeight != kSAppBarLayout.getMeasuredHeight() && kSAppBarLayout.getMeasuredHeight() != 0) {
            this.mPreHeadHeight = getHeaderExpandedHeight(kSAppBarLayout);
        }
        if (this.mReboundView == null) {
            View viewFindViewById = kSAppBarLayout.findViewById(this.mReboundViewId);
            az.g(viewFindViewById, String.format(Locale.US, "find rebound view with id %d is null", Integer.valueOf(this.mReboundViewId)));
            this.mReboundViewOriginHeight = viewFindViewById.getMeasuredHeight();
            this.mReboundViewOriginWidth = getScreenWidthPx(viewFindViewById.getContext());
            this.mReboundView = viewFindViewById;
        }
        if (this.mCoordinatorReference == null) {
            this.mCoordinatorReference = new WeakReference<>(kSCoordinatorLayout);
        }
        if (this.mAppBartReference == null) {
            this.mAppBartReference = new WeakReference<>(kSAppBarLayout);
        }
        return zOnMeasureChild;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior, com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public void onNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i10, int i11, int i12, int i13, int i14) {
        if (i13 < 0 && i14 == 1 && this.mHeaderTopBottomOffsetChangeListener != null) {
            getTopBottomOffsetForScrollingSibling();
            kSAppBarLayout.getDownNestedScrollRange();
        }
        super.onNestedScroll(kSCoordinatorLayout, kSAppBarLayout, view, i10, i11, i12, i13, i14);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onStartNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, View view2, int i10, int i11) {
        ValueAnimator valueAnimator;
        boolean zOnStartNestedScroll = super.onStartNestedScroll(kSCoordinatorLayout, kSAppBarLayout, view, view2, i10, i11);
        if (zOnStartNestedScroll && (valueAnimator = this.mReboundRecoverAnimator) != null && valueAnimator.isRunning()) {
            this.mReboundRecoverAnimator.cancel();
        }
        return zOnStartNestedScroll;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public void onStopNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i10) {
        super.onStopNestedScroll(kSCoordinatorLayout, kSAppBarLayout, view, i10);
        checkShouldReboundRecover(kSCoordinatorLayout, kSAppBarLayout);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior, com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i10, i11, i12, -1);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarLayoutBehavior
    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i10, int i11, int i12, int i13) {
        if (!this.mEnableRebound) {
            return super.setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i10, i11, i12, i13);
        }
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        if (this.mOffsetRebound > 0 && kSAppBarLayout.getHeight() >= this.mPreHeadHeight) {
            return updateReboundByScroll(kSCoordinatorLayout, kSAppBarLayout, i13, i10);
        }
        int scrollableSize = getScrollableSize();
        int i14 = i10 - topBottomOffsetForScrollingSibling;
        if (i14 <= 0) {
            if (scrollableSize <= 0) {
                return -i14;
            }
            int i15 = scrollableSize + i10;
            if (i15 <= 0) {
                setTopAndBottomOffset(-scrollableSize);
                return i15;
            }
        }
        if (i11 != 0 && topBottomOffsetForScrollingSibling >= i11 && topBottomOffsetForScrollingSibling <= i12) {
            int iClamp = MathUtils.clamp(i10, i11, i12);
            if (topBottomOffsetForScrollingSibling == iClamp) {
                if (topBottomOffsetForScrollingSibling != i11) {
                    return updateReboundByScroll(kSCoordinatorLayout, kSAppBarLayout, i13, i10);
                }
                return 0;
            }
            int iInterpolateOffset = kSAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(kSAppBarLayout, iClamp) : iClamp;
            boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
            this.mOffsetDelta = iClamp - iInterpolateOffset;
            int i16 = topBottomOffsetForScrollingSibling - iClamp;
            if (!topAndBottomOffset && kSAppBarLayout.hasChildWithInterpolator()) {
                kSCoordinatorLayout.dispatchDependentViewsChanged(kSAppBarLayout);
            }
            kSAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            updateAppBarLayoutDrawableState(kSCoordinatorLayout, kSAppBarLayout, iClamp, iClamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
            return i16;
        }
        this.mOffsetDelta = 0;
        return 0;
    }

    public CustomReboundBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i10 = (int) ((context.getResources().getDisplayMetrics().density * 150.0f) + 0.5f);
        int i11 = R.attr.ksad_reboundMaxOffset;
        int i12 = R.attr.ksad_reboundViewId;
        int i13 = R.attr.ksad_enableRebound;
        int[] iArr = {i11, i12, i13};
        Arrays.sort(iArr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        this.mReboundMaxOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(Arrays.binarySearch(iArr, i11), i10);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(Arrays.binarySearch(iArr, i12), 0);
        this.mReboundViewId = resourceId;
        this.mEnableRebound = typedArrayObtainStyledAttributes.getBoolean(Arrays.binarySearch(iArr, i13), true);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId == 0) {
            throw new IllegalArgumentException("should set rebound view id , with 'reboundViewId'");
        }
    }
}
