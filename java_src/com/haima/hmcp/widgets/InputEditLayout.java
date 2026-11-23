package com.haima.hmcp.widgets;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.DisplayUtil;
import com.haima.hmcp.widgets.view.EditTextPreIme;

/* JADX INFO: loaded from: classes5.dex */
public class InputEditLayout {
    private static final String TAG = "InputEditLayout";
    private Button confirmBtn;
    private LinearLayout linearLayout;
    private EditTextPreIme messageTextView;
    private RelativeLayout relativeLayout;

    public InputEditLayout(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.relativeLayout = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        generateLinearLayout(context);
        ScrollView scrollViewGenerateScrollView = generateScrollView(context);
        generateEditTextPreIme(context);
        generateButton(context);
        scrollViewGenerateScrollView.addView(this.messageTextView);
        this.linearLayout.addView(scrollViewGenerateScrollView);
        this.linearLayout.addView(this.confirmBtn);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        this.relativeLayout.addView(this.linearLayout, layoutParams);
    }

    private void generateButton(Context context) {
        this.confirmBtn = new Button(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DisplayUtil.dp2px(context, 100), DisplayUtil.dp2px(context, 45), 0.0f);
        layoutParams.leftMargin = DisplayUtil.dp2px(context, 5);
        layoutParams.rightMargin = DisplayUtil.dp2px(context, 5);
        this.confirmBtn.setLayoutParams(layoutParams);
        this.confirmBtn.setBackground(ResourceManager.getInstance().getResources().getDrawable(R.drawable.hm_input_send_btn_bg));
        this.confirmBtn.setGravity(17);
        this.confirmBtn.setText(ResourceManager.getString(R.string.haima_hmcp_send));
        this.confirmBtn.setTextColor(-16777216);
        this.confirmBtn.setTextSize(DisplayUtil.sp2px(context, 6));
    }

    private void generateEditTextPreIme(Context context) {
        EditTextPreIme editTextPreIme = new EditTextPreIme(context);
        this.messageTextView = editTextPreIme;
        editTextPreIme.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0f));
        int i10 = Build.VERSION.SDK_INT;
        this.messageTextView.setBackground(ResourceManager.getInstance().getResources().getDrawable(R.drawable.hm_input_et_bg));
        this.messageTextView.setFocusable(true);
        this.messageTextView.setGravity(16);
        this.messageTextView.setImeOptions(268435460);
        this.messageTextView.setInputType(65537);
        this.messageTextView.setMaxLines(1);
        this.messageTextView.setPadding(DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5));
        this.messageTextView.setSingleLine(true);
        this.messageTextView.setTextColor(-16777216);
        this.messageTextView.setCursorVisible(true);
        if (i10 >= 29) {
            this.messageTextView.setTextCursorDrawable(ResourceManager.getInstance().getResources().getDrawable(R.drawable.hm_input_et_cursor));
        }
        this.messageTextView.setTextSize(DisplayUtil.sp2px(context, 10));
    }

    private void generateLinearLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setId(View.generateViewId());
        this.linearLayout.setOrientation(0);
        this.linearLayout.setGravity(16);
        this.linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, DisplayUtil.dp2px(context, 60)));
        this.linearLayout.setBackgroundColor(-1996488705);
        this.linearLayout.setPadding(DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5), DisplayUtil.dp2px(context, 5));
    }

    private ScrollView generateScrollView(Context context) {
        ScrollView scrollView = new ScrollView(context);
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(0, DisplayUtil.dp2px(context, 50), 1.0f));
        scrollView.setFillViewport(false);
        scrollView.setVerticalScrollBarEnabled(true);
        return scrollView;
    }

    public Button getConfirmBtn() {
        return this.confirmBtn;
    }

    public LinearLayout getLinearLayout() {
        return this.linearLayout;
    }

    public EditTextPreIme getMessageTextView() {
        return this.messageTextView;
    }

    public RelativeLayout getRelativeLayout() {
        return this.relativeLayout;
    }
}
