package com.haima.hmcp.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.HmcpInputConnectionListener;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.HmcpInputConnection;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpHideEditText extends EditText implements HmcpInputConnectionListener {
    private HmcpInputConnection hmcpInputConnection;
    private HmIMEManager.HmKeyBoardListener mListener;
    private OnHmKeyListener onHmKeyListener;

    public interface OnHmKeyListener {
        boolean onKeyDown(int i10, KeyEvent keyEvent);

        boolean onKeyUp(int i10, KeyEvent keyEvent);
    }

    public HmcpHideEditText(Context context) {
        this(context, null);
    }

    private void init(Context context) {
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        CountlyUtil.recordEvent(Constants.COUNTLY_KEYBOARD_SHOW, "onCreateInputConnection：show");
        HmcpInputConnection hmcpInputConnection = this.hmcpInputConnection;
        if (hmcpInputConnection != null) {
            hmcpInputConnection.clearHmKeyBoardListener();
        }
        HmcpInputConnection hmcpInputConnection2 = new HmcpInputConnection(super.onCreateInputConnection(editorInfo), false, this.mListener, HmIMEManager.getInstance().getCurrentActivity());
        this.hmcpInputConnection = hmcpInputConnection2;
        hmcpInputConnection2.setListener(this);
        return this.hmcpInputConnection;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        LogUtils.i("键盘输入KeyUp", "onKeyUp:" + i10);
        if (this.onHmKeyListener != null && HmInputDeviceManager.isJoyStick(keyEvent)) {
            this.onHmKeyListener.onKeyUp(i10, keyEvent);
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // com.haima.hmcp.listeners.HmcpInputConnectionListener
    public boolean onSendKeyEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (action == 0) {
            LogUtils.i("键盘输入KeyDown", "onKeyDown: " + KeyEvent.keyCodeToString(keyCode) + "(" + keyCode + ")");
            OnHmKeyListener onHmKeyListener = this.onHmKeyListener;
            if (onHmKeyListener != null) {
                return onHmKeyListener.onKeyDown(keyEvent.getKeyCode(), keyEvent);
            }
            return false;
        }
        if (action != 1) {
            return false;
        }
        LogUtils.i("键盘输入KeyUp", "onKeyUp: " + KeyEvent.keyCodeToString(keyCode) + "(" + keyCode + ")");
        OnHmKeyListener onHmKeyListener2 = this.onHmKeyListener;
        if (onHmKeyListener2 != null) {
            return onHmKeyListener2.onKeyUp(keyEvent.getKeyCode(), keyEvent);
        }
        return false;
    }

    public void release() {
        HmcpInputConnection hmcpInputConnection = this.hmcpInputConnection;
        if (hmcpInputConnection != null) {
            hmcpInputConnection.setListener(null);
            this.hmcpInputConnection.clearHmKeyBoardListener();
        }
    }

    public void setKeyBoardListener(HmIMEManager.HmKeyBoardListener hmKeyBoardListener) {
        this.mListener = hmKeyBoardListener;
    }

    public void setOnHmKeyListener(OnHmKeyListener onHmKeyListener) {
        this.onHmKeyListener = onHmKeyListener;
    }

    public HmcpHideEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public HmcpHideEditText(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(context);
    }
}
