package com.join.mgps.activity;

import android.content.Context;
import android.text.InputFilter;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.GameFromBooleanBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_build_game_from)
public class BuildGameFromActivity extends BaseActivity {
    UserInfo accountBean;
    Context context;
    String device_id;

    @ViewById
    EditText ed_game;
    InputFilter[] filter;

    @ViewById
    RelativeLayout iv_back;
    com.join.mgps.rpc.b rpcForumClient;

    @ViewById
    TextView tv_finish;
    String version;

    @AfterViews
    void AfterView() {
        this.context = this;
        this.device_id = "";
        RequestBeanUtil.getInstance(this);
        this.version = RequestBeanUtil.getVersionAndVersionName();
        this.rpcForumClient = com.join.mgps.rpc.impl.a.c0();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        InputFilter[] inputFilterArr = {new com.join.mgps.Util.r1(24, this)};
        this.filter = inputFilterArr;
        this.ed_game.setFilters(inputFilterArr);
        this.ed_game.requestFocus();
    }

    @UiThread
    void Toast(String s10) {
        com.join.mgps.Util.a3.b(this.context).d(s10);
    }

    @Background
    void getData() {
        try {
            if (com.join.android.app.common.utils.m.j(this.context)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.accountBean.getUid()));
                linkedMultiValueMap.add(Constants.TOKEN, this.accountBean.getToken());
                linkedMultiValueMap.add("group_title", this.ed_game.getText().toString().trim());
                linkedMultiValueMap.add("device_id", this.device_id);
                linkedMultiValueMap.add("version", this.version);
                GameFromBooleanBean gameFromBooleanBeanO = this.rpcForumClient.o(linkedMultiValueMap);
                if (gameFromBooleanBeanO != null && gameFromBooleanBeanO.getError() == 0 && gameFromBooleanBeanO.getData().isState()) {
                    Toast("创建成功！");
                    MApplication.f3167a2 = true;
                    finish();
                } else if (gameFromBooleanBeanO.getData().getCode() == 10002) {
                    Toast("游戏单重复！");
                } else if (10001 == gameFromBooleanBeanO.getData().getCode()) {
                    Toast("游戏单不存在！");
                } else {
                    Toast("创建失败！");
                }
            } else {
                Toast("暂无网络！");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void iv_back() {
        finish();
    }

    @Click
    void tv_finish() {
        if (this.ed_game.getText().toString().equals("") || com.join.mgps.Util.t.f(this.ed_game.getText().toString())) {
            com.join.mgps.Util.a3.b(this.context).d("不能为空且不能输入表情！");
        } else {
            getData();
        }
    }
}
