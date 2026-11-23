package com.haima.hmcp.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import com.haima.hmcp.enums.ScreenOrientation;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes5.dex */
public class SoftKeyBoardListener {
    private static final String TAG = "SoftKeyBoardListener";
    public static int rootViewVisibleHeight;
    private static SoftKeyBoardListener softKeyBoardListener;
    private final int REFER_HEIGHT = 200;
    private SoftReference<Activity> activitySoftReference;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener;
    private View rootView;

    public interface OnSoftKeyBoardChangeListener {
        void keyBoardFlowMode();

        void keyBoardHide();

        void keyBoardShowHeight(int i10);
    }

    public SoftKeyBoardListener(Activity activity) {
        if (activity == null) {
            return;
        }
        SoftReference<Activity> softReference = this.activitySoftReference;
        if (softReference != null) {
            softReference.clear();
            this.activitySoftReference = null;
        }
        this.activitySoftReference = new SoftReference<>(activity);
        View decorView = activity.getWindow().getDecorView();
        this.rootView = decorView;
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.utils.SoftKeyBoardListener.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ScreenOrientation convertOrientation;
                int height;
                SoftKeyBoardListener.this.onGlobalLayoutListener = this;
                Rect rect = new Rect();
                SoftKeyBoardListener.this.rootView.getWindowVisibleDisplayFrame(rect);
                int iWidth = rect.width();
                int iHeight = rect.height();
                LogUtils.i(SoftKeyBoardListener.TAG, "键盘视图：visibleWidth:" + iWidth + ", visibleHeight:" + iHeight);
                Activity activity2 = SoftKeyBoardListener.this.getActivity();
                if (activity2 != null) {
                    convertOrientation = Utils.getConvertOrientation(Utils.getSysOrientationRotation(activity2));
                    if (convertOrientation == null) {
                        LogUtils.d(SoftKeyBoardListener.TAG, "键盘，无法获取屏幕方向");
                    } else if (convertOrientation == ScreenOrientation.PORTRAIT) {
                        LogUtils.i(SoftKeyBoardListener.TAG, "键盘视图：当前屏幕方向 竖屏");
                        iHeight = Math.max(iWidth, iHeight);
                    } else {
                        LogUtils.i(SoftKeyBoardListener.TAG, "键盘视图：当前屏幕方向 横屏");
                        iHeight = Math.min(iWidth, iHeight);
                    }
                } else {
                    convertOrientation = null;
                }
                LogUtils.i(SoftKeyBoardListener.TAG, SoftKeyBoardListener.this.toString() + " ,键盘视图判断：当前可见高度:" + iHeight + ",上次可见高度:" + SoftKeyBoardListener.rootViewVisibleHeight);
                int i10 = SoftKeyBoardListener.rootViewVisibleHeight;
                if (i10 == 0) {
                    if (convertOrientation != null) {
                        height = convertOrientation == ScreenOrientation.PORTRAIT ? Math.max(SoftKeyBoardListener.this.rootView.getWidth(), SoftKeyBoardListener.this.rootView.getHeight()) : Math.min(SoftKeyBoardListener.this.rootView.getWidth(), SoftKeyBoardListener.this.rootView.getHeight());
                    } else {
                        height = SoftKeyBoardListener.this.rootView.getHeight();
                    }
                    SoftKeyBoardListener.rootViewVisibleHeight = height;
                    return;
                }
                if (i10 == iHeight) {
                    return;
                }
                if (i10 - iHeight > 200) {
                    if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                        LogUtils.i(SoftKeyBoardListener.TAG, "键盘：keyBoardShowHeight callback " + (SoftKeyBoardListener.rootViewVisibleHeight - iHeight));
                        SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardShowHeight(SoftKeyBoardListener.rootViewVisibleHeight - iHeight);
                    }
                    SoftKeyBoardListener.rootViewVisibleHeight = iHeight;
                    return;
                }
                Activity activity3 = SoftKeyBoardListener.this.getActivity();
                if (activity3 == null) {
                    LogUtils.d(SoftKeyBoardListener.TAG, "键盘悬浮状态、隐藏状态判断 activity is null");
                    if (iHeight - SoftKeyBoardListener.rootViewVisibleHeight <= 200 || !HmIMEManager.getInstance().isShowInput()) {
                        if (iHeight - SoftKeyBoardListener.rootViewVisibleHeight > 200) {
                            if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                                SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardHide();
                            }
                            SoftKeyBoardListener.rootViewVisibleHeight = iHeight;
                            return;
                        }
                        return;
                    }
                    LogUtils.d(SoftKeyBoardListener.TAG, "键盘处于悬浮模式");
                    if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                        SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardFlowMode();
                        LogUtils.d(SoftKeyBoardListener.TAG, "键盘，key board flow mode");
                    } else {
                        LogUtils.d(SoftKeyBoardListener.TAG, "键盘，key board flow mode not callback, onSoftKeyBoardChangeListener is null");
                    }
                    SoftKeyBoardListener.rootViewVisibleHeight = iHeight;
                    return;
                }
                boolean zIsActive = ((InputMethodManager) activity3.getSystemService("input_method")).isActive();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("键盘显示状态：");
                sb2.append(zIsActive ? "显示" : "隐藏");
                LogUtils.d(SoftKeyBoardListener.TAG, sb2.toString());
                int i11 = SoftKeyBoardListener.rootViewVisibleHeight;
                if (iHeight - i11 > 200 && zIsActive) {
                    LogUtils.d(SoftKeyBoardListener.TAG, "键盘处于悬浮模式");
                    if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                        SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardFlowMode();
                        LogUtils.d(SoftKeyBoardListener.TAG, "键盘，key board flow mode");
                    } else {
                        LogUtils.d(SoftKeyBoardListener.TAG, "键盘，key board flow mode not callback, onSoftKeyBoardChangeListener is null");
                    }
                    SoftKeyBoardListener.rootViewVisibleHeight = iHeight;
                    return;
                }
                if (iHeight - i11 <= 200 || zIsActive) {
                    return;
                }
                LogUtils.i(SoftKeyBoardListener.TAG, "键盘：trigger keyboard hide, " + (iHeight - SoftKeyBoardListener.rootViewVisibleHeight));
                if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                    SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardHide();
                }
                SoftKeyBoardListener.rootViewVisibleHeight = iHeight;
            }
        });
    }

    public static void clearVisibleHeight() {
        LogUtils.i(TAG, "键盘-可见高度清零");
        rootViewVisibleHeight = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity getActivity() {
        SoftReference<Activity> softReference = this.activitySoftReference;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public static void setListener(Activity activity, OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        SoftKeyBoardListener softKeyBoardListener2 = softKeyBoardListener;
        if (softKeyBoardListener2 != null) {
            softKeyBoardListener2.release();
            softKeyBoardListener = null;
        }
        if (onSoftKeyBoardChangeListener != null) {
            SoftKeyBoardListener softKeyBoardListener3 = new SoftKeyBoardListener(activity);
            softKeyBoardListener = softKeyBoardListener3;
            softKeyBoardListener3.setOnSoftKeyBoardChangeListener(onSoftKeyBoardChangeListener);
        }
    }

    private void setOnSoftKeyBoardChangeListener(OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        this.onSoftKeyBoardChangeListener = onSoftKeyBoardChangeListener;
    }

    public void release() {
        LogUtils.i(TAG, toString() + " 键盘-release called");
        clearVisibleHeight();
        this.onSoftKeyBoardChangeListener = null;
        if (this.rootView != null && this.onGlobalLayoutListener != null) {
            LogUtils.i(TAG, toString() + " 键盘-release removeOnGlobalLayoutListener called");
            this.rootView.getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
        SoftReference<Activity> softReference = this.activitySoftReference;
        if (softReference != null) {
            softReference.clear();
        }
    }
}
