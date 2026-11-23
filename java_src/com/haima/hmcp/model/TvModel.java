package com.haima.hmcp.model;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.widget.FrameLayout;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.listeners.TvModelListener;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class TvModel {
    public static final int ROM_ORIENTATION_HANDSTAND = 2;
    public static final int ROM_ORIENTATION_LANDSCAPE = 0;
    public static final int ROM_ORIENTATION_PORTRAIT = 3;
    public static final int ROM_ORIENTATION_PORTRAIT_NAGTIVE = 1;
    private static final String TAG = "TvModel";
    private TvModelListener listener;

    private IRenderViewBase getRenderView() {
        TvModelListener tvModelListener = this.listener;
        if (tvModelListener != null) {
            return tvModelListener.onGetRenderView();
        }
        LogUtils.i(TAG, "rotateMouseView fail");
        return null;
    }

    private ScreenOrientation getScreenOrientation() {
        TvModelListener tvModelListener = this.listener;
        if (tvModelListener != null) {
            return tvModelListener.onScreenOrientation();
        }
        LogUtils.i(TAG, "getScreenOrientation fail");
        return ScreenOrientation.LANDSCAPE;
    }

    private FrameLayout getSwitchOrientationTargetView() {
        TvModelListener tvModelListener = this.listener;
        if (tvModelListener != null) {
            return tvModelListener.onGetSwitchOrientationTargetView();
        }
        LogUtils.i(TAG, "getSwitchOrientationTargetView fail");
        return null;
    }

    private boolean isSupportRotate() {
        TvModelListener tvModelListener = this.listener;
        if (tvModelListener != null) {
            return tvModelListener.isSupportRotate();
        }
        LogUtils.i(TAG, "isSupportRotate: listener is null and return default true");
        return true;
    }

    private void returnToInitialState() {
        FrameLayout switchOrientationTargetView = getSwitchOrientationTargetView();
        if (switchOrientationTargetView == null) {
            LogUtils.i(TAG, "returnToInitialState fail, target view is null");
            return;
        }
        AbsIjkVideoView.TV_ROTATE = false;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(switchOrientationTargetView, "rotation", 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(switchOrientationTargetView, "scaleX", 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(switchOrientationTargetView, "scaleY", 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3);
        animatorSet.setDuration(260L);
        animatorSet.start();
    }

    private void rotateMouseView(boolean z10) {
        TvModelListener tvModelListener = this.listener;
        if (tvModelListener != null) {
            tvModelListener.onMouseRotate(z10);
        } else {
            LogUtils.i(TAG, "rotateMouseView fail");
        }
    }

    private void switchOrientationInternal() {
        IRenderViewBase renderView = getRenderView();
        if (renderView == null) {
            LogUtils.i(TAG, "switchOrientationInternal fail, mRenderView is null");
            return;
        }
        float measuredWidth = renderView.getView().getMeasuredWidth();
        float measuredHeight = renderView.getView().getMeasuredHeight();
        float f10 = measuredHeight / measuredWidth;
        if (measuredWidth == 0.0f || measuredHeight == 0.0f) {
            LogUtils.i(TAG, "View width or height is 0");
            return;
        }
        FrameLayout switchOrientationTargetView = getSwitchOrientationTargetView();
        if (switchOrientationTargetView == null) {
            LogUtils.i(TAG, "switchOrientationInternal fail, target view is null");
            return;
        }
        AbsIjkVideoView.TV_ROTATE = true;
        float[] fArr = new float[1];
        fArr[0] = getScreenOrientation() == ScreenOrientation.LANDSCAPE ? 90.0f : -90.0f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(switchOrientationTargetView, "rotation", fArr);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(switchOrientationTargetView, "scaleX", f10);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(switchOrientationTargetView, "scaleY", f10);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3);
        animatorSet.setDuration(260L);
        animatorSet.start();
    }

    public void setListener(TvModelListener tvModelListener) {
        this.listener = tvModelListener;
    }

    public void switchOrientation(String str) {
        try {
            switchOrientation(new JSONObject(str).getInt("orientation"));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    private void switchOrientation(int i10) {
        String str = TAG;
        LogUtils.i(str, "====switchOrientation=====");
        if (!isSupportRotate()) {
            LogUtils.i(str, "====switchOrientation=====, is not support rotate");
            return;
        }
        if (getScreenOrientation() != ScreenOrientation.LANDSCAPE) {
            if (i10 == 0) {
                if (AbsIjkVideoView.TV_ROTATE) {
                    return;
                }
                switchOrientationInternal();
                return;
            } else {
                if (i10 == 3) {
                    returnToInitialState();
                    return;
                }
                return;
            }
        }
        if (i10 == 3) {
            if (AbsIjkVideoView.TV_ROTATE) {
                return;
            }
            rotateMouseView(true);
            switchOrientationInternal();
            return;
        }
        if (i10 == 0) {
            rotateMouseView(false);
            returnToInitialState();
        }
    }
}
