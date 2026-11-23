package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ResultMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.detial_layout)
public class DetialActivity extends BaseActivity {
    private UserInfo accountBean;
    private Context context;

    @Extra
    ExtBean extBean;

    @Extra
    IntentDateBean intentdate;

    @ViewById(resName = "loding_layout")
    LinearLayout loading;

    @ViewById
    LinearLayout loding_faile;
    com.join.mgps.rpc.e recommendClient;
    private Handler handler = new a();
    private boolean isToDetail = true;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            com.join.mgps.Util.g1.c("detial  handler finish");
            DetialActivity.this.finish();
        }
    }

    private void showMain(DetailResultBean detailResultBean) {
        com.join.mgps.Util.g1.c("detial  startActivitydetial");
    }

    @AfterViews
    void afterviews() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        getDetailData();
    }

    @Click
    void backBtn() {
        this.isToDetail = false;
        finish();
        com.join.mgps.Util.g1.c("detial  backbutn");
    }

    @Background
    void getDetailData() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            this.accountBean = accountData;
            ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.recommendClient.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(this.intentdate.getCrc_link_type_val(), accountData != null ? accountData.getUid() : 0, this.extBean));
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                showLodingFailed();
                return;
            }
            List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
            if (data == null || data.size() <= 0) {
                showLodingFailed();
                return;
            }
            DetailResultBean detailResultBean = data.get(0);
            if (detailResultBean != null) {
                showMain(detailResultBean);
            } else {
                showLodingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.g1.c("detial  onDestroy");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        this.isToDetail = false;
        if (keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        if (isTaskRoot()) {
            Intent intent = new Intent();
            intent.setClass(this.context, MGMainActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
        }
        finish();
        com.join.mgps.Util.g1.c("detial  keyDown Back");
        return true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.join.mgps.Util.g1.c("detial  onPause");
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.join.mgps.Util.g1.c("detial  onresume");
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.Util.g1.c("detial  onStop");
        finish();
    }

    @Click
    void relodingimag() {
        showLoding();
        getDetailData();
    }

    @UiThread
    void showLoding() {
        this.loading.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        this.loading.setVisibility(8);
        this.loding_faile.setVisibility(0);
    }
}
