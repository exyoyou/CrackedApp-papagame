package org.cocos2dx.lib;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxTextInputWraper implements TextWatcher, TextView.OnEditorActionListener {
    private static final String TAG = "Cocos2dxTextInputWraper";
    private final Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private String mOriginText;
    private String mText;

    public Cocos2dxTextInputWraper(Cocos2dxGLSurfaceView cocos2dxGLSurfaceView) {
        this.mCocos2dxGLSurfaceView = cocos2dxGLSurfaceView;
    }

    private boolean isFullScreenEdit() {
        return ((InputMethodManager) this.mCocos2dxGLSurfaceView.getCocos2dxEditText().getContext().getSystemService("input_method")).isFullscreenMode();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (isFullScreenEdit()) {
            return;
        }
        int length = editable.length() - this.mText.length();
        if (length > 0) {
            this.mCocos2dxGLSurfaceView.insertText(editable.subSequence(this.mText.length(), editable.length()).toString());
        } else {
            while (length < 0) {
                this.mCocos2dxGLSurfaceView.deleteBackward();
                length++;
            }
        }
        this.mText = editable.toString();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.mText = charSequence.toString();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        if (this.mCocos2dxGLSurfaceView.getCocos2dxEditText() == textView && isFullScreenEdit()) {
            String str = this.mOriginText;
            if (str != null) {
                for (int length = str.length(); length > 0; length--) {
                    this.mCocos2dxGLSurfaceView.deleteBackward();
                }
            }
            String string = textView.getText().toString();
            if (string != null) {
                if (string.compareTo("") == 0) {
                    string = "\n";
                }
                if ('\n' != string.charAt(string.length() - 1)) {
                    string = string + '\n';
                }
            }
            this.mCocos2dxGLSurfaceView.insertText(string);
        }
        if (i10 != 6) {
            return false;
        }
        this.mCocos2dxGLSurfaceView.requestFocus();
        return false;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void setOriginText(String str) {
        this.mOriginText = str;
    }
}
