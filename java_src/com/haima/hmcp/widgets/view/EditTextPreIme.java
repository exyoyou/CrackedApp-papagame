package com.haima.hmcp.widgets.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.LogUtils;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes5.dex */
public class EditTextPreIme extends EditText {
    private static final String TAG = "EditTextPreIme";
    private final Handler handler;
    private final Runnable hideKeyboardRunnable;
    private boolean isFinish;
    private Activity mActivity;
    private HmIMEManager.HmKeyBoardListener mHmKeyBoardListener;
    private KeyEventPreImeListener mKeyEventPreImeListener;
    private View.OnKeyListener mKeyListener;

    public interface KeyEventPreImeListener {
        void onEvent(KeyEvent keyEvent);
    }

    private class MyInputConnection extends InputConnectionWrapper {
        public MyInputConnection(InputConnection inputConnection, boolean z10) {
            super(inputConnection, z10);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i10, int i11) {
            if (i10 == 1 && i11 == 0) {
                return sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67));
            }
            return super.deleteSurroundingText(i10, i11);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean finishComposingText() {
            LogUtils.e(EditTextPreIme.TAG, "==finishComposingText====");
            if (!EditTextPreIme.this.isFinish && EditTextPreIme.this.mHmKeyBoardListener != null) {
                EditTextPreIme.this.isFinish = true;
                EditTextPreIme.this.handler.postDelayed(EditTextPreIme.this.hideKeyboardRunnable, 100L);
            }
            return super.finishComposingText();
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean sendKeyEvent(KeyEvent keyEvent) {
            if (TextUtils.isEmpty(getTextBeforeCursor(1, 1)) && EditTextPreIme.this.mKeyListener != null) {
                EditTextPreIme.this.mKeyListener.onKey(EditTextPreIme.this, keyEvent.getKeyCode(), keyEvent);
            }
            return super.sendKeyEvent(keyEvent);
        }
    }

    public EditTextPreIme(Context context) {
        super(context);
        this.handler = new Handler();
        this.hideKeyboardRunnable = new Runnable() { // from class: com.haima.hmcp.widgets.view.EditTextPreIme.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (EditTextPreIme.this.isNotCoverRootView()) {
                        EditTextPreIme.this.mHmKeyBoardListener.onKeyBoardHide();
                        EditTextPreIme.this.mHmKeyBoardListener = null;
                    } else {
                        EditTextPreIme.this.isFinish = false;
                    }
                } catch (Exception e10) {
                    LogUtils.e(EditTextPreIme.TAG, "isRealHide() Exception:" + e10);
                }
            }
        };
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

    @Override // android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        KeyEventPreImeListener keyEventPreImeListener;
        if (keyEvent.getKeyCode() == 4 && (keyEventPreImeListener = this.mKeyEventPreImeListener) != null) {
            keyEventPreImeListener.onEvent(keyEvent);
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new MyInputConnection(super.onCreateInputConnection(editorInfo), true);
    }

    public void setHmKeyBoardListener(HmIMEManager.HmKeyBoardListener hmKeyBoardListener) {
        this.mHmKeyBoardListener = hmKeyBoardListener;
    }

    public void setKeyEventListener(KeyEventPreImeListener keyEventPreImeListener) {
        this.mKeyEventPreImeListener = keyEventPreImeListener;
    }

    public void setSoftKeyListener(Activity activity, View.OnKeyListener onKeyListener) {
        this.mActivity = activity;
        this.mKeyListener = onKeyListener;
    }

    public EditTextPreIme(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.handler = new Handler();
        this.hideKeyboardRunnable = new Runnable() { // from class: com.haima.hmcp.widgets.view.EditTextPreIme.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (EditTextPreIme.this.isNotCoverRootView()) {
                        EditTextPreIme.this.mHmKeyBoardListener.onKeyBoardHide();
                        EditTextPreIme.this.mHmKeyBoardListener = null;
                    } else {
                        EditTextPreIme.this.isFinish = false;
                    }
                } catch (Exception e10) {
                    LogUtils.e(EditTextPreIme.TAG, "isRealHide() Exception:" + e10);
                }
            }
        };
    }

    public EditTextPreIme(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.handler = new Handler();
        this.hideKeyboardRunnable = new Runnable() { // from class: com.haima.hmcp.widgets.view.EditTextPreIme.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (EditTextPreIme.this.isNotCoverRootView()) {
                        EditTextPreIme.this.mHmKeyBoardListener.onKeyBoardHide();
                        EditTextPreIme.this.mHmKeyBoardListener = null;
                    } else {
                        EditTextPreIme.this.isFinish = false;
                    }
                } catch (Exception e10) {
                    LogUtils.e(EditTextPreIme.TAG, "isRealHide() Exception:" + e10);
                }
            }
        };
    }
}
