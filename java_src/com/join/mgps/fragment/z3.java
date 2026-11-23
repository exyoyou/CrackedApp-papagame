package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView;
import com.join.mgps.receiver.BootReceiver_;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.mg_manage_fragment)
public class z3 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f71552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.mgps.adapter.k3 f71553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UserInfo f71554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XListView f71555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.join.mgps.rpc.b f71556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.c f71557h;

    @Receiver(actions = {p5.a.f96211o})
    void M(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        if (stringExtra2.equals(BootReceiver_.f72254a)) {
            if ("com.papa91.vba".equals(stringExtra) || "com.papa91.gba".equals(stringExtra)) {
                boolean zE = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.vba");
                boolean zE2 = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.gba");
                if (zE && zE2) {
                    this.f71553d.e(true);
                    return;
                }
                return;
            }
            return;
        }
        if (!stringExtra2.equals(BootReceiver_.f72255b)) {
            stringExtra2.equals(BootReceiver_.f72257d);
            return;
        }
        boolean zE3 = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.vba");
        boolean zE4 = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.gba");
        if (zE3 || zE4) {
            this.f71553d.e(false);
        }
    }

    @Background
    void N() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f71552c).getAccountData();
        this.f71554e = accountData;
        if (accountData == null) {
            Q();
            return;
        }
        if (com.join.android.app.common.utils.m.j(this.f71552c)) {
            try {
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.f71554e.getUid());
                bVarNewBuilder.setToken(this.f71554e.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(getContext()));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultA = this.f71557h.A(bVarNewBuilder.build());
                if (responseResultA != null) {
                    if (responseResultA.getError() == 200) {
                        P(responseResultA.getData());
                    } else if (responseResultA.getError() == 701) {
                        O(701);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void O(int indexFrom) {
        AccountUtil_.getInstance_(this.f71552c).accountLoginOut(this.f71552c);
        com.join.mgps.Util.a3.b(this.f71552c).d("验证登录失败，请重新登录.");
        this.f71553d.d(null);
    }

    @UiThread
    void P(UserInfo accountBean) {
        UserInfo userInfo;
        if (accountBean == null || (userInfo = this.f71554e) == null) {
            return;
        }
        this.f71554e = userInfo.toBuilder().setAccount(accountBean.getAccount()).setAvatarSrc(accountBean.getAvatarSrc()).setPapaMoney(accountBean.getPapaMoney()).setMobile(accountBean.getMobile()).setGender(accountBean.getGender()).setUid(accountBean.getUid()).setLevel(accountBean.getLevel()).setAccount(accountBean.getAccount()).setNickname(accountBean.getNickname()).setSecretKey(accountBean.getSecretKey()).setExp(accountBean.getExp()).setPwdSetUp(accountBean.getPwdSetUp()).build();
        AccountUtil_.getInstance_(this.f71552c).saveAccountData(this.f71554e, this.f71552c);
        this.f71553d.d(this.f71554e);
    }

    @UiThread
    void Q() {
        this.f71553d.d(null);
    }

    @AfterViews
    void afterViews() {
        this.f71556g = com.join.mgps.rpc.impl.a.c0();
        this.f71557h = com.join.mgps.rpc.impl.b.C();
        FragmentActivity activity = getActivity();
        this.f71552c = activity;
        this.f71554e = AccountUtil_.getInstance_(activity).getAccountData();
        com.join.mgps.adapter.k3 k3Var = new com.join.mgps.adapter.k3(this.f71552c);
        this.f71553d = k3Var;
        k3Var.d(this.f71554e);
        this.f71555f.setAdapter((ListAdapter) this.f71553d);
        boolean zE = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.vba");
        boolean zE2 = com.join.android.app.common.utils.g.t0(this.f71552c).e(this.f71552c, "com.papa91.gba");
        if (zE && zE2) {
            this.f71553d.e(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        N();
    }
}
