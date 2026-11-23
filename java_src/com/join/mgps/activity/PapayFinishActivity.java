package com.join.mgps.activity;

import android.text.Html;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.PapayResult;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_papay_finish)
public class PapayFinishActivity extends BaseActivity {
    MApplication application;

    @ViewById
    Button backButn;

    @ViewById
    ImageView imageSuccessOrFailed;

    @ViewById
    TextView orderid;

    @ViewById
    TextView pabiNumber;

    @Extra
    PapayResult papayResult;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView userName;

    @ViewById
    TextView vipRecharge;

    @Extra
    boolean vipRechargeSuccess;

    @AfterViews
    void afterview() {
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.title_textview.setText("订单支付");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            this.userName.setText(Html.fromHtml("用户：<font color='0x3b3b3b' >" + accountData.getAccount() + "</font>"), TextView.BufferType.SPANNABLE);
        }
        if (this.papayResult.getStatus() == 1) {
            this.imageSuccessOrFailed.setImageResource(R.drawable.papay_success_image);
            this.pabiNumber.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.papayResult.getPayProduct() + "</font>购买成功"), TextView.BufferType.SPANNABLE);
        } else if (this.papayResult.getStatus() == 4) {
            this.imageSuccessOrFailed.setImageResource(R.drawable.papay_failed_image);
            this.pabiNumber.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.papayResult.getPayProduct() + "</font>等待支付"), TextView.BufferType.SPANNABLE);
        } else {
            this.imageSuccessOrFailed.setImageResource(R.drawable.papay_failed_image);
            this.pabiNumber.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.papayResult.getPayProduct() + "</font>购买失败,原因：" + this.papayResult.getMessage()), TextView.BufferType.SPANNABLE);
        }
        if (this.vipRechargeSuccess) {
            this.vipRecharge.setText("VIP购买成功后，请重启悟饭游戏厅，VIP即生效");
        }
    }

    @Click
    void backButn() {
        finish();
    }

    @Click
    void back_image() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.application.j();
    }
}
