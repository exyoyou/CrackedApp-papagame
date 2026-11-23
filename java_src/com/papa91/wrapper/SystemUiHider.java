package com.papa91.wrapper;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SystemUiHider {
    public static final int FLAG_FULLSCREEN = 2;
    public static final int FLAG_HIDE_NAVIGATION = 6;
    public static final int FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES = 1;
    private static OnVisibilityChangeListener sDummyListener = new OnVisibilityChangeListener() { // from class: com.papa91.wrapper.SystemUiHider.1
        @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
        public void onVisibilityChange(boolean z10) {
        }
    };
    protected Activity mActivity;
    protected View mAnchorView;
    protected int mFlags;
    protected OnVisibilityChangeListener mOnVisibilityChangeListener = sDummyListener;

    public interface OnVisibilityChangeListener {
        void onVisibilityChange(boolean z10);
    }

    protected SystemUiHider(Activity activity, View view, int i10) {
        this.mActivity = activity;
        this.mAnchorView = view;
        this.mFlags = i10;
    }

    public static SystemUiHider getInstance(Activity activity, View view, int i10) {
        return Wrapper.SDK_INT >= 11 ? new SystemUiHiderHoneycomb(activity, view, i10) : new SystemUiHiderBase(activity, view, i10);
    }

    public abstract void hide();

    public abstract boolean isVisible();

    public void setOnVisibilityChangeListener(OnVisibilityChangeListener onVisibilityChangeListener) {
        if (onVisibilityChangeListener == null) {
            onVisibilityChangeListener = sDummyListener;
        }
        this.mOnVisibilityChangeListener = onVisibilityChangeListener;
    }

    public abstract void setup();

    public abstract void show();

    public void toggle() {
        if (isVisible()) {
            hide();
        } else {
            show();
        }
    }
}
