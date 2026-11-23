package com.join.mgps.activity;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameVerByBg;
import com.join.mgps.dto.ResultMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_link_proxy)
public class LinkProxyActivity extends BaseAppCompatActivity {

    @ViewById
    ForumLoadingView loadingView;
    com.join.mgps.rpc.e rpcClient;

    class a extends ForumLoadingView.e {
        a(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            LinkProxyActivity.this.loading();
        }
    }

    class b extends ForumLoadingView.e {
        b(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            LinkProxyActivity.this.loading();
        }
    }

    class c extends ForumLoadingView.e {
        c(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            LinkProxyActivity.this.loading();
        }
    }

    private void goMarket() {
        int i10;
        showSubLoading(true);
        String strA = com.join.mgps.Util.l1.a(this, getIntent());
        if (TextUtils.isEmpty(strA)) {
            showSubLoading(false);
            return;
        }
        String str = "";
        try {
            try {
                str = getPackageManager().getPackageInfo(strA, 0).versionName;
                i10 = getPackageManager().getPackageInfo(strA, 0).versionCode;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                i10 = 0;
            }
            requestGameVerByBg(strA, i10, str);
        } catch (Exception unused) {
            showSubLoading(false);
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        changeLoadingState(1);
        goMarket();
    }

    @UiThread
    void changeLoadingState(int state) {
        ForumLoadingView forumLoadingView = this.loadingView;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.j(2);
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new c(forumLoadingView2));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.setListener(new a(forumLoadingView));
            this.loadingView.j(9);
        } else {
            if (state != 10) {
                return;
            }
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new b(forumLoadingView3));
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.j(10);
        }
    }

    @UiThread
    void goGameDetail(GameVerByBg bean) {
        if (bean == null) {
            return;
        }
        String game_id = bean.getGame_id();
        String tpl_type = bean.getTpl_type();
        int jump_type = bean.getJump_type();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(game_id);
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setJump_type(jump_type);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("updateFromMarket");
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    @UiThread
    void goMain() {
        IntentUtil.getInstance().goMGMainActivity2Front(this);
    }

    void loading() {
        goMarket();
    }

    @Background
    void requestGameVerByBg(String pkg, int versionCode, String versionName) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showMessage(getString(R.string.net_connect_failed));
            showSubLoading(false);
            return;
        }
        if (this.rpcClient == null) {
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        }
        ResultMainBean resultMainBean = null;
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData != null) {
                accountData.getUid();
            }
            ResultMainBean<GameVerByBg> resultMainBeanB1 = this.rpcClient.b1(RequestBeanUtil.getInstance(this).getGameVerByBgArgs(pkg, versionCode, versionName));
            String error_info = "抱歉，未找到该游戏";
            if (resultMainBeanB1 == null || resultMainBeanB1.getFlag() != 1) {
                if (resultMainBeanB1 != null && !TextUtils.isEmpty(resultMainBeanB1.getError_info())) {
                    error_info = resultMainBeanB1.getError_info();
                }
                showMessage(error_info);
                goMain();
            } else if (resultMainBeanB1.getMessages() == null || resultMainBeanB1.getMessages().getData() == null || TextUtils.isEmpty(resultMainBeanB1.getMessages().getData().getGame_id())) {
                showMessage("抱歉，未找到该游戏");
                goMain();
            } else {
                goGameDetail(resultMainBeanB1.getMessages().getData());
            }
            showSubLoading(false);
        } catch (Exception e10) {
            e10.printStackTrace();
            showMessage(0 != 0 ? resultMainBean.getError_info() : "服务访问异常，请稍后再试");
            showSubLoading(false);
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @UiThread
    void showSubLoading(boolean show) {
        if (show) {
            this.loadingView.m();
            changeLoadingState(1);
        } else {
            changeLoadingState(2);
            finish();
        }
    }
}
