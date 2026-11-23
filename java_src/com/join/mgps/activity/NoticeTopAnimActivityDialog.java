package com.join.mgps.activity;

import android.os.Bundle;
import android.text.Html;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.nontice_top_anim_dialog_layout)
public class NoticeTopAnimActivityDialog extends BaseActivity {

    @Extra
    int coinNumber;

    @ViewById
    RelativeLayout dialogLayout;

    @ViewById
    Button dialog_button_ok;

    @ViewById
    TextView dialog_content;

    @ViewById
    LinearLayout iv_close;

    @Extra
    String message;

    @ViewById
    TextView nonticeText;

    @Extra
    int state;

    @ViewById
    TextView sub_content;

    @ViewById
    TextView tv_position;

    @AfterViews
    void afterview() {
        int i10 = this.state;
        if (i10 == 0) {
            this.nonticeText.setVisibility(8);
            this.dialogLayout.setVisibility(0);
            this.dialog_button_ok.setText("确认");
            this.dialog_content.setText(this.message);
            this.tv_position.setText("支付失败");
            return;
        }
        if (i10 == 1 || i10 == 2) {
            this.nonticeText.setVisibility(0);
            this.dialogLayout.setVisibility(8);
            this.nonticeText.setText(Html.fromHtml(this.message), TextView.BufferType.SPANNABLE);
            com.join.mgps.Util.e.e(this.nonticeText);
            animtopOut(0);
            return;
        }
        if (i10 != 3) {
            if (i10 != 6) {
                return;
            }
            this.tv_position.setText("支付成功");
            this.nonticeText.setVisibility(0);
            this.dialogLayout.setVisibility(0);
            this.dialog_button_ok.setText("免费领铜板");
            this.dialog_content.setText("您的铜板不多啦，去免费领点吧");
            this.nonticeText.setText(Html.fromHtml(this.message), TextView.BufferType.SPANNABLE);
            com.join.mgps.Util.e.e(this.nonticeText);
            animtopOut(1);
            return;
        }
        this.tv_position.setText("铜板余额不足");
        this.nonticeText.setVisibility(8);
        this.dialogLayout.setVisibility(0);
        this.dialog_button_ok.setText("免费领铜板");
        this.dialog_content.setText(Html.fromHtml(this.message), TextView.BufferType.SPANNABLE);
        this.dialog_content.setTextSize(20.0f);
        this.sub_content.setVisibility(0);
        this.sub_content.setText("当前余额：" + this.coinNumber);
    }

    @UiThread(delay = 2000)
    void animtopOut(int from) {
        com.join.mgps.Util.e.f(this.nonticeText);
        if (from == 0) {
            finishActivity();
        }
    }

    @Click
    void dialog_button_ok() {
        IntentDateBean intentDateBean = new IntentDateBean();
        int i10 = this.state;
        if (i10 == 3 || i10 == 6) {
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72382s);
            ShareWebActivity_.intent(this).b(intentDateBean).start();
        }
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @UiThread(delay = 500)
    void finishActivity() {
        finish();
    }

    @Click
    void iv_close() {
        finish();
    }

    @Click
    void nonticeText() {
        IntentUtil.getInstance().goShareWebActivity(this, "http://h5.5fun.com/helo_copper.html");
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(0, 0);
    }
}
