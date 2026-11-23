package com.join.mgps.base.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import com.BaseAppCompatActivity;
import com.join.kotlin.base.dialog.DialogActivityManager;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseDialogActivity extends BaseAppCompatActivity {
    protected IDialogActivityCallback callback;
    private boolean mCloseOnTouchOutside = true;
    private String _key_call = "";

    private boolean isOutOfBounds(Context context, MotionEvent event) {
        if (getContentView() == null) {
            return true;
        }
        int x10 = (int) event.getX();
        int y10 = (int) event.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(context).getScaledWindowTouchSlop();
        getContentView();
        Rect rect = new Rect();
        getContentView().getGlobalVisibleRect(rect);
        int i10 = -scaledWindowTouchSlop;
        return x10 < i10 || y10 < i10 || !rect.contains(x10, y10);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback != null) {
            iDialogActivityCallback.onActivityDismiss(this);
        }
        DialogActivityManager.get().unregisterCallback(this._key_call);
    }

    public IDialogActivityCallback getCallback() {
        return this.callback;
    }

    public View getContentView() {
        return null;
    }

    void hideNavigationBar() {
        setSystemUiVisibility();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getIntent() != null) {
            this._key_call = getIntent().getStringExtra("_key_call");
        }
        IDialogActivityCallback callback = DialogActivityManager.get().getCallback(this._key_call);
        this.callback = callback;
        if (callback != null) {
            callback.onActivityShow(this);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        if (!shouldCloseOnTouch(this, event)) {
            return super.onTouchEvent(event);
        }
        finish();
        return true;
    }

    void setSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public boolean shouldCloseOnTouch(Context context, MotionEvent event) {
        return this.mCloseOnTouchOutside && getContentView() != null && ((event.getAction() == 1 && isOutOfBounds(context, event)) || event.getAction() == 4);
    }
}
