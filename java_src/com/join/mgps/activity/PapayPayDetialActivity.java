package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayHistoryInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_papay_detial)
public class PapayPayDetialActivity extends BaseActivity {

    @Extra
    PapayHistoryInfo info;

    @ViewById
    TextView money;

    @ViewById
    TextView orderName;

    @ViewById
    TextView orderType;

    @ViewById
    TextView payOderId;

    @ViewById
    TextView payTime;

    @ViewById
    TextView payType;

    @ViewById
    TextView title_textview;

    @AfterViews
    void afterViews() {
        this.title_textview.setText("交易详情");
        this.payOderId.setText(this.info.getOrder_id());
        this.money.setText(this.info.getMoney());
        this.orderType.setText(this.info.getOrder_type());
        this.orderName.setText(this.info.getTitle());
        this.payTime.setText(this.info.getPay_time());
        this.payType.setText(this.info.getPay_type());
    }

    @Click
    void back_image() {
        finish();
    }
}
