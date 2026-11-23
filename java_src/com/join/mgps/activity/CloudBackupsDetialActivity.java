package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.sql.Date;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud_backups_detial_layout)
public class CloudBackupsDetialActivity extends BaseActivity {
    private AccountBean accountBean;

    @Extra
    CloudBackupsCanUseBean bean;
    private Context context;

    @ViewById
    TextView gameHostoryNumber;

    @ViewById
    TextView gameKeySetNumber;

    @ViewById
    TextView gamelistnumber;

    @ViewById
    TextView phoneType;
    com.join.mgps.rpc.b rpcClient;

    @ViewById
    TextView timeText;

    @ViewById
    TextView title_textview;

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        this.title_textview.setText("备份数据详情");
        this.phoneType.setText(this.bean.getBrand_name());
        this.timeText.setText(com.join.mgps.Util.e0.e(new Date(Long.parseLong(this.bean.getAdd_time()) * 1000), "yyyy-MM.dd HH:mm"));
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void deletbutn() {
    }

    @Click
    void recoder() {
        CloudRecodingActivity_.intent(this.context).b(true).a(this.bean).start();
    }
}
