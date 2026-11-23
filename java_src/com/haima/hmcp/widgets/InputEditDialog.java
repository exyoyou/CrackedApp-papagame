package com.haima.hmcp.widgets;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.view.EditTextPreIme;

/* JADX INFO: loaded from: classes5.dex */
public class InputEditDialog extends Dialog {
    private static final String TAG = "InputEditDialog";
    private Button confirmBtn;
    protected InputMethodManager inputManager;
    private Context mContext;
    private InputMethodManager mInputMethodManager;
    private EditTextPreIme.KeyEventPreImeListener mKeyEventPreImeListener;
    private OnTextSendListener mOnTextSendListener;
    private EditTextPreIme messageTextView;
    private RelativeLayout rlDlg;

    public interface OnTextSendListener {
        void onTextSend(String str);
    }

    public InputEditDialog(Context context, View.OnKeyListener onKeyListener, TextView.OnEditorActionListener onEditorActionListener, String str) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        this.mKeyEventPreImeListener = new EditTextPreIme.KeyEventPreImeListener() { // from class: com.haima.hmcp.widgets.InputEditDialog.2
            @Override // com.haima.hmcp.widgets.view.EditTextPreIme.KeyEventPreImeListener
            public void onEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4) {
                    InputEditDialog.this.dismiss();
                }
            }
        };
        this.mContext = context;
        setContentView(R.layout.hm_dialog_input_edit);
        getWindow().setLayout(-1, -2);
        getWindow().setBackgroundDrawableResource(17170445);
        this.inputManager = (InputMethodManager) context.getSystemService("input_method");
        EditTextPreIme editTextPreIme = (EditTextPreIme) findViewById(R.id.et_input_message);
        this.messageTextView = editTextPreIme;
        editTextPreIme.setKeyEventListener(this.mKeyEventPreImeListener);
        this.messageTextView.setInputType(1);
        this.messageTextView.setHint(str);
        this.confirmBtn = (Button) findViewById(R.id.confrim_btn);
        this.mInputMethodManager = (InputMethodManager) this.mContext.getSystemService("input_method");
        this.confirmBtn.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.widgets.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f34124b.lambda$new$0(view);
            }
        });
        this.messageTextView.setOnEditorActionListener(onEditorActionListener);
        this.messageTextView.setSoftKeyListener(HmIMEManager.getInstance().getCurrentActivity(), onKeyListener);
        this.messageTextView.setHmKeyBoardListener(new HmIMEManager.HmKeyBoardListener() { // from class: com.haima.hmcp.widgets.InputEditDialog.1
            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onError() {
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onKeyBoardFlowMode() {
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardHide() {
                LogUtils.e(InputEditDialog.TAG, "==onKeyBoardHide====");
                return false;
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardShowHeight(int i10) {
                return false;
            }
        });
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl_outside_view);
        this.rlDlg = relativeLayout;
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.widgets.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f34126b.lambda$new$1(view);
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.rl_inputdlg_view);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.widgets.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f34130b.lambda$new$2(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        String strTrim = this.messageTextView.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            Toast.makeText(this.mContext.getApplicationContext(), ResourceManager.getString(R.string.haima_hmcp_input_content_empty), 0).show();
        } else {
            this.mOnTextSendListener.onTextSend(strTrim);
            this.mInputMethodManager.showSoftInput(this.messageTextView, 2);
            this.mInputMethodManager.hideSoftInputFromWindow(this.messageTextView.getWindowToken(), 0);
            this.messageTextView.setText("");
            dismiss();
        }
        this.messageTextView.setText((CharSequence) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (view.getId() != R.id.rl_inputdlg_view) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.mInputMethodManager.hideSoftInputFromWindow(this.messageTextView.getWindowToken(), 0);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSoftKeyboard$3(EditText editText) {
        this.inputManager.showSoftInput(editText, 2);
    }

    private void showSoftKeyboard(final EditText editText) {
        if (editText == null) {
            return;
        }
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        editText.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f34121b.lambda$showSoftKeyboard$3(editText);
            }
        }, 50L);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.mInputMethodManager.hideSoftInputFromWindow(this.messageTextView.getWindowToken(), 0);
    }

    public InputMethodManager getInputMethodManager() {
        return this.mInputMethodManager;
    }

    public EditText getMessageEditText() {
        return this.messageTextView;
    }

    public void setOnTextSendListener(OnTextSendListener onTextSendListener) {
        this.mOnTextSendListener = onTextSendListener;
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setSoftInputMode(20);
        showSoftKeyboard(this.messageTextView);
        super.show();
    }
}
