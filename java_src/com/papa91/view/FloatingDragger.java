package com.papa91.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.customview.widget.ViewDragHelper;
import com.papa91.mix.R;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class FloatingDragger implements Observer {
    View floatingBtn;
    FloatingDraggedView floatingDraggedView;
    View floatingView;
    PositionObservable observable = PositionObservable.getInstance();
    int marginLR = 0;
    int marginTop = 0;

    static class PositionObservable extends Observable {
        public static PositionObservable sInstance;

        PositionObservable() {
        }

        public static PositionObservable getInstance() {
            if (sInstance == null) {
                sInstance = new PositionObservable();
            }
            return sInstance;
        }

        public void update() {
            setChanged();
            notifyObservers();
        }
    }

    public FloatingDragger(Context context, View view, View view2) {
        this.floatingView = view2;
        FloatingDraggedView floatingDraggedView = new FloatingDraggedView(context);
        this.floatingDraggedView = floatingDraggedView;
        if (view != null) {
            floatingDraggedView.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
        if (view2 != null) {
            this.floatingDraggedView.addView(view2, new FrameLayout.LayoutParams(-2, -2));
        }
        this.observable.addObserver(this);
    }

    public int dip2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public View getFloatingView() {
        return this.floatingView;
    }

    public View getView() {
        return this.floatingDraggedView;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        FloatingDraggedView floatingDraggedView = this.floatingDraggedView;
        if (floatingDraggedView != null) {
            floatingDraggedView.restorePosition();
        }
    }

    public class FloatingDraggedView extends FrameLayout {
        public static final String KEY_FLOATING_X = "KEY_FLOATING_X";
        public static final String KEY_FLOATING_Y = "KEY_FLOATING_Y";
        ViewDragHelper dragHelper;
        SharedPreferences.Editor editor;
        SharedPreferences sp;

        public FloatingDraggedView(Context context) {
            super(context);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }

        @Override // android.view.View
        public void computeScroll() {
            if (this.dragHelper.continueSettling(true)) {
                invalidate();
            }
        }

        void init() {
            this.dragHelper = ViewDragHelper.create(this, 1.0f, new ViewDragHelper.Callback() { // from class: com.papa91.view.FloatingDragger.FloatingDraggedView.1
                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int clampViewPositionHorizontal(View view, int i10, int i11) {
                    if (i10 > FloatingDraggedView.this.getWidth() - view.getMeasuredWidth()) {
                        return FloatingDraggedView.this.getWidth() - view.getMeasuredWidth();
                    }
                    if (i10 < 0) {
                        return 0;
                    }
                    return i10;
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int clampViewPositionVertical(View view, int i10, int i11) {
                    if (i10 > FloatingDraggedView.this.getHeight() - view.getMeasuredHeight()) {
                        return FloatingDraggedView.this.getHeight() - view.getMeasuredHeight();
                    }
                    if (i10 < 0) {
                        return 0;
                    }
                    return i10;
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int getViewHorizontalDragRange(View view) {
                    return FloatingDraggedView.this.getMeasuredWidth() - view.getMeasuredWidth();
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int getViewVerticalDragRange(View view) {
                    return FloatingDraggedView.this.getMeasuredHeight() - view.getMeasuredHeight();
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewDragStateChanged(int i10) {
                    super.onViewDragStateChanged(i10);
                    if (i10 == 2) {
                        FloatingDragger.this.observable.update();
                    }
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
                    super.onViewPositionChanged(view, i10, i11, i12, i13);
                    FloatingDraggedView.this.savePosition();
                    FloatingDraggedView.this.requestLayout();
                }

                /* JADX WARN: Code duplicated, block: B:21:0x0094  */
                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewReleased(View view, float f10, float f11) {
                    int measuredWidth;
                    int measuredWidth2;
                    int measuredHeight;
                    int measuredHeight2;
                    View view2 = FloatingDragger.this.floatingBtn;
                    if (view == view2) {
                        float x10 = view2.getX();
                        float y10 = FloatingDragger.this.floatingBtn.getY();
                        if (x10 < (FloatingDraggedView.this.getMeasuredWidth() / 2.0f) - (view.getMeasuredWidth() / 2.0f)) {
                            if (x10 >= view.getMeasuredWidth() / 3.0f) {
                                if (y10 < view.getMeasuredHeight() * 3) {
                                    y10 = 0.0f;
                                } else if (y10 > FloatingDraggedView.this.getMeasuredHeight() - (view.getMeasuredHeight() * 3)) {
                                    measuredHeight = FloatingDraggedView.this.getMeasuredHeight();
                                    measuredHeight2 = view.getMeasuredHeight();
                                    y10 = measuredHeight - measuredHeight2;
                                }
                            }
                            x10 = 0.0f;
                        } else {
                            if (x10 > (FloatingDraggedView.this.getMeasuredWidth() - (view.getMeasuredWidth() / 3.0f)) - view.getMeasuredWidth()) {
                                measuredWidth = FloatingDraggedView.this.getMeasuredWidth();
                                measuredWidth2 = view.getMeasuredWidth();
                            } else if (y10 < view.getMeasuredHeight() * 3) {
                                y10 = 0.0f;
                            } else if (y10 > FloatingDraggedView.this.getMeasuredHeight() - (view.getMeasuredHeight() * 3)) {
                                measuredHeight = FloatingDraggedView.this.getMeasuredHeight();
                                measuredHeight2 = view.getMeasuredHeight();
                                y10 = measuredHeight - measuredHeight2;
                            } else {
                                measuredWidth = FloatingDraggedView.this.getMeasuredWidth();
                                measuredWidth2 = view.getMeasuredWidth();
                            }
                            x10 = measuredWidth - measuredWidth2;
                        }
                        FloatingDraggedView.this.dragHelper.smoothSlideViewTo(view, (int) x10, (int) y10);
                        FloatingDraggedView.this.invalidate();
                    }
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public boolean tryCaptureView(View view, int i10) {
                    return view == FloatingDragger.this.floatingBtn;
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            FloatingDragger.this.floatingBtn = (View) findViewById(R.id.floating).getParent();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            savePosition();
            FloatingDragger floatingDragger = FloatingDragger.this;
            floatingDragger.observable.deleteObserver(floatingDragger);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return this.dragHelper.shouldInterceptTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            restorePosition();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.dragHelper.processTouchEvent(motionEvent);
            return true;
        }

        public void restorePosition() {
            float measuredWidth = this.sp.getFloat("KEY_FLOATING_X", -1.0f);
            float f10 = this.sp.getFloat("KEY_FLOATING_Y", -1.0f);
            if (measuredWidth == -1.0f && f10 == -1.0f) {
                FloatingDragger floatingDragger = FloatingDragger.this;
                float f11 = floatingDragger.marginLR;
                f10 = floatingDragger.marginTop;
                this.editor.putFloat("KEY_FLOATING_X", f11);
                this.editor.putFloat("KEY_FLOATING_Y", f10);
                this.editor.commit();
                measuredWidth = f11;
            }
            FloatingDragger floatingDragger2 = FloatingDragger.this;
            int i10 = floatingDragger2.marginLR;
            if (measuredWidth < i10) {
                measuredWidth = i10;
            }
            int i11 = floatingDragger2.marginTop;
            if (f10 < i11) {
                measuredWidth = i11;
            }
            int iDip2px = floatingDragger2.dip2px(getContext(), 12.0f);
            if ((getMeasuredWidth() - measuredWidth) - FloatingDragger.this.floatingBtn.getMeasuredWidth() < FloatingDragger.this.marginLR) {
                int measuredWidth2 = getMeasuredWidth();
                FloatingDragger floatingDragger3 = FloatingDragger.this;
                measuredWidth = (measuredWidth2 - floatingDragger3.marginLR) - floatingDragger3.floatingBtn.getMeasuredWidth();
            }
            int i12 = (int) measuredWidth;
            int i13 = (int) f10;
            FloatingDragger.this.floatingBtn.layout(i12, i13, FloatingDragger.this.floatingBtn.getMeasuredWidth() + i12 + iDip2px, FloatingDragger.this.floatingBtn.getMeasuredHeight() + i13 + iDip2px);
        }

        void savePosition() {
            float x10 = FloatingDragger.this.floatingBtn.getX();
            float y10 = FloatingDragger.this.floatingBtn.getY();
            this.editor.putFloat("KEY_FLOATING_X", x10);
            this.editor.putFloat("KEY_FLOATING_Y", y10);
            this.editor.commit();
        }

        public void showMenuDialog() {
            Toast.makeText(getContext(), "showMenu", 0).show();
        }

        public FloatingDraggedView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }

        public FloatingDraggedView(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }
    }
}
