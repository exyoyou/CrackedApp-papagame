package com.papa91.view.smartpopupwindow;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.widget.PopupWindowCompat;

/* JADX INFO: loaded from: classes2.dex */
public class SmartPopupWindow extends PopupWindow {
    private boolean isOnlyGetWH;
    private boolean isTouchOutsideDismiss;
    private float mAlpha;
    private View mAnchorView;
    private int mAnimationStyle;
    private View mContentView;
    private Context mContext;
    private int mHeight;
    private int mHorizontalGravity;
    private int mOffsetX;
    private int mOffsetY;
    private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    private int mVerticalGravity;
    private int mWidth;

    public static class Builder {
        private SmartPopupWindow mWindow;

        private Builder(Activity activity, View view) {
            SmartPopupWindow smartPopupWindow = new SmartPopupWindow(activity);
            this.mWindow = smartPopupWindow;
            smartPopupWindow.mContext = activity;
            this.mWindow.mContentView = view;
        }

        public static Builder build(Activity activity, View view) {
            return new Builder(activity, view);
        }

        public SmartPopupWindow createPopupWindow() {
            this.mWindow.init();
            return this.mWindow;
        }

        public Builder setAlpha(float f10) {
            this.mWindow.mAlpha = f10;
            return this;
        }

        public Builder setAnimationStyle(int i10) {
            this.mWindow.mAnimationStyle = i10;
            return this;
        }

        public Builder setOutsideTouchDismiss(boolean z10) {
            this.mWindow.isTouchOutsideDismiss = z10;
            return this;
        }

        public Builder setSize(int i10, int i11) {
            this.mWindow.mWidth = i10;
            this.mWindow.mHeight = i11;
            return this;
        }
    }

    public SmartPopupWindow(Context context) {
        this(context, null);
    }

    private void addGlobalLayoutListener(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    }

    private int calculateX(View view, int i10, int i11, int i12) {
        int width;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    width = view.getWidth();
                } else {
                    if (i10 != 4) {
                        return i12;
                    }
                    i11 -= view.getWidth();
                }
            }
            return i12 - i11;
        }
        width = (view.getWidth() / 2) - (i11 / 2);
        return i12 + width;
    }

    private int calculateY(View view, int i10, int i11, int i12) {
        int height;
        if (i10 != 0) {
            if (i10 == 1) {
                i11 += view.getHeight();
            } else if (i10 == 3) {
                height = view.getHeight();
            } else if (i10 != 4) {
                return i12;
            }
            return i12 - i11;
        }
        height = (view.getHeight() / 2) + (i11 / 2);
        return i12 - height;
    }

    private void dismissBackgroundAnimator() {
        float f10 = this.mAlpha;
        if (f10 >= 1.0f) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartPopupWindow.this.setWindowBackgroundAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setDuration(360L);
        valueAnimatorOfFloat.start();
    }

    private static int getDropDownMeasureSpecMode(int i10) {
        return i10 != -2 ? 1073741824 : 0;
    }

    private static int makeDropDownMeasureSpec(int i10) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10), getDropDownMeasureSpecMode(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeGlobalLayoutListener() {
        if (getContentView() != null) {
            getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWindowBackgroundAlpha(float f10) {
        Context context = this.mContext;
        if (context != null && (context instanceof Activity)) {
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f10;
            window.setAttributes(attributes);
        }
    }

    private void showBackgroundAnimator() {
        float f10 = this.mAlpha;
        if (f10 >= 1.0f) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, f10);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartPopupWindow.this.setWindowBackgroundAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setDuration(360L);
        valueAnimatorOfFloat.start();
    }

    private void touchOutsideDismiss(boolean z10) {
        if (z10) {
            setFocusable(true);
            setOutsideTouchable(true);
            setBackgroundDrawable(new ColorDrawable(0));
            return;
        }
        setFocusable(true);
        setOutsideTouchable(false);
        setBackgroundDrawable(null);
        getContentView().setFocusable(true);
        getContentView().setFocusableInTouchMode(true);
        getContentView().setOnKeyListener(new View.OnKeyListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.1
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i10, KeyEvent keyEvent) {
                if (i10 != 4) {
                    return false;
                }
                SmartPopupWindow.this.dismiss();
                return true;
            }
        });
        setTouchInterceptor(new View.OnTouchListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int x10 = (int) motionEvent.getX();
                int y10 = (int) motionEvent.getY();
                return (motionEvent.getAction() == 0 && (x10 < 0 || x10 >= SmartPopupWindow.this.mWidth || y10 < 0 || y10 >= SmartPopupWindow.this.mHeight)) || motionEvent.getAction() == 4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocation(int i10, int i11, @NonNull View view, int i12, int i13, int i14, int i15) {
        update(view, calculateX(view, i13, i10, i14), calculateY(view, i12, i11, i15), i10, i11);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        dismissBackgroundAnimator();
        removeGlobalLayoutListener();
    }

    public void init() {
        setContentView(this.mContentView);
        setHeight(this.mHeight);
        setWidth(this.mWidth);
        touchOutsideDismiss(this.isTouchOutsideDismiss);
        int i10 = this.mAnimationStyle;
        if (i10 != -1) {
            setAnimationStyle(i10);
        }
    }

    public void showAtAnchorView(@NonNull View view, int i10, int i11) {
        showAtAnchorView(view, i10, i11, true);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i10, int i11, int i12) {
        this.isOnlyGetWH = true;
        this.mAnchorView = view;
        this.mOffsetX = i11;
        this.mOffsetY = i12;
        addGlobalLayoutListener(getContentView());
        super.showAtLocation(view, i10, i11, i12);
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void showAtAnchorView(@NonNull View view, int i10, int i11, boolean z10) {
        showAtAnchorView(view, i10, i11, 0, 0, z10);
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mWidth = -2;
        this.mHeight = -2;
        this.mAlpha = 1.0f;
        this.isTouchOutsideDismiss = true;
        this.mAnimationStyle = -1;
        this.isOnlyGetWH = true;
        this.mVerticalGravity = 2;
        this.mHorizontalGravity = 1;
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SmartPopupWindow smartPopupWindow = SmartPopupWindow.this;
                smartPopupWindow.mWidth = smartPopupWindow.getContentView().getWidth();
                SmartPopupWindow smartPopupWindow2 = SmartPopupWindow.this;
                smartPopupWindow2.mHeight = smartPopupWindow2.getContentView().getHeight();
                if (SmartPopupWindow.this.isOnlyGetWH) {
                    SmartPopupWindow.this.removeGlobalLayoutListener();
                    return;
                }
                SmartPopupWindow smartPopupWindow3 = SmartPopupWindow.this;
                smartPopupWindow3.updateLocation(smartPopupWindow3.mWidth, SmartPopupWindow.this.mHeight, SmartPopupWindow.this.mAnchorView, SmartPopupWindow.this.mVerticalGravity, SmartPopupWindow.this.mHorizontalGravity, SmartPopupWindow.this.mOffsetX, SmartPopupWindow.this.mOffsetY);
                SmartPopupWindow.this.removeGlobalLayoutListener();
            }
        };
        this.mContext = context;
    }

    public void showAtAnchorView(@NonNull View view, int i10, int i11, int i12, int i13) {
        showAtAnchorView(view, i10, i11, i12, i13, true);
    }

    public void showAtAnchorView(@NonNull View view, int i10, int i11, int i12, int i13, boolean z10) {
        this.isOnlyGetWH = false;
        this.mAnchorView = view;
        this.mOffsetX = i12;
        this.mOffsetY = i13;
        this.mVerticalGravity = i10;
        this.mHorizontalGravity = i11;
        showBackgroundAnimator();
        View contentView = getContentView();
        addGlobalLayoutListener(contentView);
        setClippingEnabled(z10);
        contentView.measure(makeDropDownMeasureSpec(getWidth()), makeDropDownMeasureSpec(getHeight()));
        int measuredWidth = contentView.getMeasuredWidth();
        int measuredHeight = contentView.getMeasuredHeight();
        if (!z10) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            i12 += iArr[0];
            i13 += iArr[1] + view.getHeight();
        }
        int iCalculateY = calculateY(view, i10, measuredHeight, i13);
        int iCalculateX = calculateX(view, i11, measuredWidth, i12);
        if (z10) {
            PopupWindowCompat.showAsDropDown(this, view, iCalculateX, iCalculateY, 0);
        } else {
            showAtLocation(view, 0, iCalculateX, iCalculateY);
        }
    }
}
