package com.haima.hmcp.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.HmcpInputConnectionListener;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpInputConnection extends InputConnectionWrapper {
    private static final String TAG = "HmcpInputConnection";
    private float currentRootViewVisibleHeight;
    private final Handler handler;
    private final Runnable hideKeyboardRunnable;
    private final float initRootViewVisibleHeight;
    private boolean isFinish;
    private HmcpInputConnectionListener listener;
    private Activity mActivity;
    private HmIMEManager.HmKeyBoardListener mListener;

    public HmcpInputConnection(InputConnection inputConnection, boolean z10, HmIMEManager.HmKeyBoardListener hmKeyBoardListener, Activity activity) {
        super(inputConnection, z10);
        this.handler = new Handler();
        this.hideKeyboardRunnable = new Runnable() { // from class: com.haima.hmcp.utils.HmcpInputConnection.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmcpInputConnection.this.isNotCoverRootView()) {
                        HmcpInputConnection.this.uploadLog();
                        HmcpInputConnection.this.mListener.onKeyBoardHide();
                        HmcpInputConnection.this.mListener = null;
                    } else {
                        HmcpInputConnection.this.isFinish = false;
                    }
                } catch (Exception e10) {
                    LogUtils.e(HmcpInputConnection.TAG, "isRealHide() Exception:" + e10);
                }
            }
        };
        this.mListener = hmKeyBoardListener;
        this.mActivity = activity;
        float rootViewVisibleHeight = getRootViewVisibleHeight();
        this.initRootViewVisibleHeight = rootViewVisibleHeight;
        LogUtils.i(TAG, "HmcpInputConnection：" + rootViewVisibleHeight);
    }

    private float getRootViewVisibleHeight() {
        try {
            Activity activity = this.mActivity;
            if (activity == null) {
                return 0.0f;
            }
            View decorView = activity.getWindow().getDecorView();
            Rect rect = new Rect();
            decorView.getWindowVisibleDisplayFrame(rect);
            return rect.height();
        } catch (Exception e10) {
            LogUtils.e(TAG, "getRootViewVisibleHeight：" + e10);
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNotCoverRootView() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Activity activity = this.mActivity;
        if (activity == null) {
            return true;
        }
        int height = activity.getWindowManager().getDefaultDisplay().getHeight();
        float rootViewVisibleHeight = getRootViewVisibleHeight();
        float f10 = height;
        float fAbs = Math.abs(rootViewVisibleHeight - f10) / f10;
        LogUtils.i(TAG, rootViewVisibleHeight + "：isCoverRootView：" + fAbs);
        return fAbs < 0.2f;
    }

    private boolean isRootViewVisibleHeightNotChange() {
        this.currentRootViewVisibleHeight = getRootViewVisibleHeight();
        LogUtils.i(TAG, "initRootViewVisibleHeight：" + this.initRootViewVisibleHeight + "---currentRootViewVisibleHeight：" + this.currentRootViewVisibleHeight);
        return this.initRootViewVisibleHeight == this.currentRootViewVisibleHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadLog() {
        CountlyUtil.recordEvent(Constants.COUNTLY_KEYBOARD_HIDE, "finishComposingText：hide  log==" + ("initRootViewVisibleHeight：" + this.initRootViewVisibleHeight + "  currentRootViewVisibleHeight：" + this.currentRootViewVisibleHeight));
    }

    public void clearHmKeyBoardListener() {
        this.handler.removeCallbacks(this.hideKeyboardRunnable);
        this.mListener = null;
        this.mActivity = null;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i10, int i11) {
        if (i10 != 1 && i11 != 0 && i10 != 0) {
            return super.deleteSurroundingText(i10, i11);
        }
        sendKeyEvent(new KeyEvent(0, 67));
        sendKeyEvent(new KeyEvent(1, 67));
        return true;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        LogUtils.i(TAG, "finishComposingText");
        boolean zFinishComposingText = super.finishComposingText();
        if (!this.isFinish && this.mListener != null) {
            this.isFinish = true;
            this.handler.postDelayed(this.hideKeyboardRunnable, 300L);
        }
        return zFinishComposingText;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        HmcpInputConnectionListener hmcpInputConnectionListener = this.listener;
        if (hmcpInputConnectionListener == null) {
            return super.sendKeyEvent(keyEvent);
        }
        boolean zOnSendKeyEvent = hmcpInputConnectionListener.onSendKeyEvent(keyEvent);
        return zOnSendKeyEvent ? zOnSendKeyEvent : super.sendKeyEvent(keyEvent);
    }

    public void setListener(HmcpInputConnectionListener hmcpInputConnectionListener) {
        this.listener = hmcpInputConnectionListener;
    }
}
