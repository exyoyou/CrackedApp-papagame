package com.papa91.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.widget.htmltext.ClickableTableSpan;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.papa91.arc.widget.htmltext.OnClickATagListener;
import com.papa91.mix.R;

/* JADX INFO: loaded from: classes2.dex */
public class RealNameLoginDialog extends Dialog {
    public static final int BTN_CENTER = 4;
    public static final int BTN_CLOSE = 1;
    public static final int BTN_LEFT = 2;
    public static final int BTN_RIGHT = 3;
    private static Context context;
    private static RealNameLoginDialog dialog;
    private View close;
    private Button dialog_button_center;
    private Button dialog_button_left;
    private Button dialog_button_right;
    private HtmlTextView dialog_content;
    private boolean flag;
    private OnBtnClickListener mListener;
    PopwindowBean realNameCheckInfo;
    private TextView tip_title;

    public interface OnBtnClickListener {
        void onClick(RealNameLoginDialog realNameLoginDialog, int i10, ButtonBean buttonBean);
    }

    static class UrlClickSpan extends ClickableTableSpan {
        UrlClickSpan() {
        }

        @Override // com.papa91.arc.widget.htmltext.ClickableTableSpan
        public ClickableTableSpan newInstance() {
            return this;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#3C43E7"));
        }
    }

    public RealNameLoginDialog(Context context2) {
        super(context2, R.style.MyDialog);
        this.flag = false;
    }

    public static RealNameLoginDialog getInstance(Context context2) {
        if (dialog == null || context2 != context) {
            dialog = new RealNameLoginDialog(context2, R.style.MyDialog);
        }
        return dialog;
    }

    private void initData() {
        PopwindowBean popwindowBean = this.realNameCheckInfo;
        if (popwindowBean != null) {
            this.tip_title.setText(popwindowBean.getTitle());
            this.dialog_content.setHighlightColor(getContext().getResources().getColor(17170445));
            this.dialog_content.setClickableTableSpan(new UrlClickSpan());
            this.dialog_content.setOnClickATagListener(new OnClickATagListener() { // from class: com.papa91.view.d
                @Override // com.papa91.arc.widget.htmltext.OnClickATagListener
                public final boolean onClick(View view, String str, String str2) {
                    return this.f78093a.lambda$initData$0(view, str, str2);
                }
            });
            this.dialog_content.setHtml(this.realNameCheckInfo.getSubTitle());
            setButton(this.dialog_button_left, 2, this.realNameCheckInfo.getButtonLeft());
            setButton(this.dialog_button_right, 3, this.realNameCheckInfo.getButtonRight());
            setButton(this.dialog_button_center, 4, this.realNameCheckInfo.getButtonCenter());
            setButton(this.close, 1, this.realNameCheckInfo.getButtonClose());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initData$0(View view, String str, String str2) {
        MarketUtil.intent(getContext(), "4", "0", str2, "", "");
        return true;
    }

    private void setButton(View view, final int i10, final ButtonBean buttonBean) {
        if (buttonBean == null) {
            view.setVisibility(4);
            return;
        }
        view.setVisibility(0);
        if (view instanceof Button) {
            ((Button) view).setText(buttonBean.getButtonHint());
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.RealNameLoginDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (RealNameLoginDialog.this.mListener != null) {
                    RealNameLoginDialog.this.mListener.onClick(RealNameLoginDialog.this, i10, buttonBean);
                }
            }
        });
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.flag);
        setContentView(R.layout.realname_notice_dialog);
        this.tip_title = (TextView) findViewById(R.id.tip_title);
        this.dialog_content = (HtmlTextView) findViewById(R.id.dialog_content);
        this.dialog_button_left = (Button) findViewById(R.id.dialog_button_left);
        this.dialog_button_right = (Button) findViewById(R.id.dialog_button_right);
        this.dialog_button_center = (Button) findViewById(R.id.dialog_button_center);
        this.close = findViewById(R.id.close);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        window.setAttributes(attributes);
        initData();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4 && keyEvent.getAction() == 0 && this.flag) {
            dismiss();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public RealNameLoginDialog setDialogData(PopwindowBean popwindowBean) {
        this.realNameCheckInfo = popwindowBean;
        if (this.tip_title != null) {
            initData();
        }
        return this;
    }

    public RealNameLoginDialog setDialogListener(OnBtnClickListener onBtnClickListener) {
        this.mListener = onBtnClickListener;
        return this;
    }

    public RealNameLoginDialog setIsCancelable(boolean z10) {
        setCancelable(z10);
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        Context context2 = context;
        if (context2 == null || !((Activity) context2).isFinishing()) {
            super.show();
        }
    }

    public RealNameLoginDialog(Context context2, int i10) {
        super(context2, i10);
        this.flag = false;
        context = context2;
    }

    protected RealNameLoginDialog(Context context2, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        super(context2, z10, onCancelListener);
        this.flag = false;
    }
}
