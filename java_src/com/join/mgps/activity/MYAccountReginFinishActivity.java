package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.component.album.MyIconActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.HeadPicRequestBean;
import com.join.mgps.dto.UserHeadPortrait;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_reginfinish_layout)
public class MYAccountReginFinishActivity extends BaseActivity {
    private static final String TAG = "MYAccountReginFinishActivity";
    private String HeadPortraitUrl;

    @Extra
    AccountBean accountBean;
    MApplication application;
    private com.join.mgps.adapter.f chooseAdapter;

    @ViewById
    MyGridView chooseGridView;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;

    @Extra
    int fromWhere;
    private long lastClick;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    Button reginFinish;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    ScrollView scrollView;

    @ViewById
    TextView title_textview;
    private int nameSize = 0;
    private boolean distroyed = false;
    private List<HeadPortraitTable> lists = new ArrayList();
    private List<HeadPortraitTable> headPortraitTableLocal = new ArrayList();
    private boolean hasLocal = false;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: com.join.mgps.activity.MYAccountReginFinishActivity$a$a, reason: collision with other inner class name */
        class C0674a implements Consumer<com.tbruyelle.rxpermissions2.b> {
            C0674a() {
            }

            @Override // io.reactivex.functions.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
                if (permission.f83019b) {
                    Intent intent = new Intent();
                    intent.setClass(MYAccountReginFinishActivity.this.context, MyIconActivity.class);
                    MYAccountReginFinishActivity.this.context.startActivity(intent);
                } else {
                    if (permission.f83020c) {
                        return;
                    }
                    com.join.mgps.Util.a3.b(MYAccountReginFinishActivity.this.context).d("需要授权存储权限");
                }
            }
        }

        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 == 0) {
                new com.tbruyelle.rxpermissions2.c(MYAccountReginFinishActivity.this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new C0674a());
                return;
            }
            MYAccountReginFinishActivity.this.chooseAdapter.b(i10);
            MYAccountReginFinishActivity mYAccountReginFinishActivity = MYAccountReginFinishActivity.this;
            mYAccountReginFinishActivity.HeadPortraitUrl = ((HeadPortraitTable) mYAccountReginFinishActivity.lists.get(i10)).getHead_portrait_pic();
        }
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        int i10 = this.fromWhere;
        if (i10 == 1 || i10 == 2) {
            this.title_textview.setText("注册成功");
        } else if (i10 == 3) {
            this.title_textview.setText("修改头像");
        }
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.context = this;
        com.join.mgps.adapter.f fVar = new com.join.mgps.adapter.f(this.context, this.lists, this.accountBean.getAvatarSrc(), true);
        this.chooseAdapter = fVar;
        this.chooseGridView.setAdapter((ListAdapter) fVar);
        this.chooseGridView.setSelector(new ColorDrawable(0));
        this.chooseGridView.setOnItemClickListener(new a());
        this.headPortraitTableLocal = t6.y.n().d();
        HeadPortraitTable headPortraitTable = new HeadPortraitTable();
        headPortraitTable.setId(R.drawable.choose_butn_selector);
        headPortraitTable.setHead_portrait_pic("相机");
        this.lists.add(headPortraitTable);
        List<HeadPortraitTable> list = this.headPortraitTableLocal;
        if (list != null && list.size() > 0) {
            this.lists.addAll(this.headPortraitTableLocal);
            this.chooseAdapter.notifyDataSetChanged();
            this.hasLocal = true;
        }
        showUi();
        getUserHeadPortrait();
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this).d(error_msg);
    }

    @Background
    void getUserHeadPortrait() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            lodingFailedButShowDefault();
            return;
        }
        try {
            try {
                HeadPicRequestBean headPicRequestBean = new HeadPicRequestBean();
                headPicRequestBean.setUid(this.accountBean.getUid());
                headPicRequestBean.setToken(this.accountBean.getToken());
                headPicRequestBean.setSign(com.join.mgps.Util.k2.g(headPicRequestBean));
                AccountResultMainBean<UserHeadPortrait> accountResultMainBeanJ = this.rpcAccountClient.J(headPicRequestBean.getParams());
                if (accountResultMainBeanJ == null || accountResultMainBeanJ.getError() != 0) {
                    lodingFailedButShowDefault();
                    error("连接失败，请稍后再试。");
                } else if (accountResultMainBeanJ.getData().isIs_success()) {
                    showSuccess(accountResultMainBeanJ.getData().getHead_portrait_pic());
                } else {
                    lodingFailedButShowDefault();
                    error(accountResultMainBeanJ.getData().getError_msg());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                lodingFailedButShowDefault();
                error("连接失败，请稍后再试。");
            }
        } finally {
            showLodingDismis();
        }
    }

    @UiThread
    void lodingFailedButShowDefault() {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.scrollView.setVisibility(0);
        this.chooseGridView.setVisibility(0);
        this.chooseAdapter.notifyDataSetChanged();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.distroyed = true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Click
    void reginFinish() {
        if (System.currentTimeMillis() - this.lastClick <= 2000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        updatedata(this.HeadPortraitUrl);
    }

    @Background
    void registerByThirdWay(String avatarSrc) {
    }

    @UiThread
    void showLoding() {
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var;
        if (this.distroyed || (f1Var = this.dialog) == null) {
            return;
        }
        f1Var.dismiss();
    }

    @UiThread
    void showSuccess(List<String> strings) {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.chooseGridView.setVisibility(0);
        this.scrollView.setVisibility(0);
        t6.y.n().a();
        for (int i10 = 0; i10 < strings.size(); i10++) {
            HeadPortraitTable headPortraitTable = new HeadPortraitTable();
            headPortraitTable.setHead_portrait_pic(strings.get(i10));
            t6.y.n().k(headPortraitTable);
        }
        List<HeadPortraitTable> listD = t6.y.n().d();
        this.lists.removeAll(this.headPortraitTableLocal);
        this.lists.addAll(listD);
        this.chooseAdapter.notifyDataSetChanged();
    }

    @UiThread
    void showUi() {
        if (this.hasLocal) {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            this.scrollView.setVisibility(0);
        } else {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.scrollView.setVisibility(8);
        }
    }

    @UiThread
    void updateSuccess() {
        this.application.j();
    }

    @Background
    void updatedata(String avatarSrc) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
            accountChangeUserinfoRequestBean.setGender(1);
            accountChangeUserinfoRequestBean.setAccount(this.accountBean.getAccount());
            accountChangeUserinfoRequestBean.setNick_name(this.accountBean.getNickname());
            accountChangeUserinfoRequestBean.setUid(this.accountBean.getUid());
            accountChangeUserinfoRequestBean.setToken(this.accountBean.getToken());
            accountChangeUserinfoRequestBean.setAvatar_src(avatarSrc);
            accountChangeUserinfoRequestBean.setSign(com.join.mgps.Util.k2.g(accountChangeUserinfoRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanH = this.rpcAccountClient.h(accountChangeUserinfoRequestBean.getParams());
            if (accountResultMainBeanH == null || accountResultMainBeanH.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultMainBeanH.getData().is_success()) {
                updateSuccess();
            } else {
                error(accountResultMainBeanH.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }
}
