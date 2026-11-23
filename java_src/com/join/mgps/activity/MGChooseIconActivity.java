package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.component.album.MyIconActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.HeadPicRequestBean;
import com.join.mgps.dto.UserHeadPortrait;
import com.wufan.user.service.protobuf.UserInfo;
import io.reactivex.functions.Consumer;
import java.io.File;
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
@EActivity(R.layout.mg_choose_layout)
public class MGChooseIconActivity extends FragmentActivity {
    UserInfo accountBean;
    MApplication application;
    private com.join.mgps.adapter.f chooseAdapter;

    @ViewById
    GridView chooseGridView;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;

    @Extra
    int from;
    private List<HeadPortraitTable> headPortraitTableLocal;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    TextView title_textview;
    private List<HeadPortraitTable> lists = new ArrayList();
    private boolean hasLocal = false;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: com.join.mgps.activity.MGChooseIconActivity$a$a, reason: collision with other inner class name */
        class C0673a implements Consumer<com.tbruyelle.rxpermissions2.b> {
            C0673a() {
            }

            @Override // io.reactivex.functions.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
                if (!permission.f83019b) {
                    if (permission.f83020c) {
                        return;
                    }
                    com.join.mgps.Util.h0.h0(MGChooseIconActivity.this.context).Z(MGChooseIconActivity.this.context, permission);
                } else {
                    Intent intent = new Intent();
                    intent.setClass(MGChooseIconActivity.this.context, MyIconActivity.class);
                    intent.putExtra("from", MGChooseIconActivity.this.from);
                    MGChooseIconActivity.this.context.startActivity(intent);
                }
            }
        }

        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 == 0) {
                new com.tbruyelle.rxpermissions2.c(MGChooseIconActivity.this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new C0673a());
                return;
            }
            MGChooseIconActivity.this.chooseAdapter.b(i10);
            MGChooseIconActivity mGChooseIconActivity = MGChooseIconActivity.this;
            mGChooseIconActivity.updatedata(((HeadPortraitTable) mGChooseIconActivity.lists.get(i10)).getHead_portrait_pic());
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.context = this;
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.title_textview.setText("选择图像");
        this.chooseGridView.setSelector(new ColorDrawable(0));
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.chooseGridView.setOnItemClickListener(new a());
        this.headPortraitTableLocal = t6.y.n().d();
        com.join.mgps.adapter.f fVar = new com.join.mgps.adapter.f(this.context, this.lists, this.accountBean.getAvatarSrc(), false);
        this.chooseAdapter = fVar;
        this.chooseGridView.setAdapter((ListAdapter) fVar);
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

    @Click
    void back_image() {
        finish();
    }

    void deleteLocalUserIcon() {
        try {
            String localUserIcon = AccountUtil_.getInstance_(this).getLocalUserIcon();
            if (com.join.mgps.Util.t2.i(localUserIcon)) {
                File file = new File(localUserIcon);
                if (file.exists()) {
                    file.delete();
                    Fresco.getImagePipeline().e(com.join.android.app.common.utils.l.H(file));
                }
            }
            AccountUtil_.getInstance_(this).setLocalUserIcon(null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }

    @Background
    void getUserHeadPortrait() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            if (this.hasLocal) {
                return;
            }
            showLoadingFailed();
            return;
        }
        try {
            HeadPicRequestBean headPicRequestBean = new HeadPicRequestBean();
            headPicRequestBean.setUid(this.accountBean.getUid());
            headPicRequestBean.setToken(this.accountBean.getToken());
            headPicRequestBean.setSign(com.join.mgps.Util.k2.g(headPicRequestBean));
            AccountResultMainBean<UserHeadPortrait> accountResultMainBeanJ = this.rpcAccountClient.J(headPicRequestBean.getParams());
            if (accountResultMainBeanJ != null && accountResultMainBeanJ.getError() == 0 && accountResultMainBeanJ.getData().isIs_success()) {
                this.hasLocal = true;
                showSuccess(accountResultMainBeanJ.getData().getHead_portrait_pic());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            if (!this.hasLocal) {
                showLoadingFailed();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.dialog.dismiss();
        }
        super.onDestroy();
    }

    @Click
    void relodingimag() {
        showUi();
        getUserHeadPortrait();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showLoading() {
        this.dialog.show();
    }

    @UiThread
    void showLoadingFailed() {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.chooseGridView.setVisibility(8);
    }

    @UiThread
    void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @UiThread
    void showSuccess(List<String> strings) {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.chooseGridView.setVisibility(0);
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
            this.chooseGridView.setVisibility(0);
        } else {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.chooseGridView.setVisibility(8);
        }
    }

    @UiThread
    void success(String avatarSrc) {
        UserInfo.b builder = this.accountBean.toBuilder();
        builder.setAvatarSrc(avatarSrc);
        this.accountBean = builder.build();
        AccountUtil_.getInstance_(this.context).saveAccountData(this.accountBean, this);
        w6.a.b().c();
        try {
            com.join.android.app.common.utils.l.k(avatarSrc);
            deleteLocalUserIcon();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        setResult(10001);
        finish();
    }

    @Background
    void updatedata(String avatarSrc) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoading();
        try {
            AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
            accountChangeUserinfoRequestBean.setGender(this.accountBean.getGender());
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
                success(avatarSrc);
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
