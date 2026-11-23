package com.join.mgps.activity;

import android.content.Intent;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.fragment.ForumIndexFragment_;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_forum_index)
public class ForumIndexActivity extends BaseAppCompatActivity {
    boolean activityHasDes = false;
    com.join.mgps.fragment.t1 forumWelcomeFragment;
    private FragmentManager fragmentManager;

    @Pref
    PrefDef_ prefDef;

    @AfterViews
    void afterViews() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        com.join.mgps.fragment.t1 t1Var = this.forumWelcomeFragment;
        if (t1Var == null) {
            ForumIndexFragment_ forumIndexFragment_ = new ForumIndexFragment_();
            this.forumWelcomeFragment = forumIndexFragment_;
            fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, forumIndexFragment_);
        } else {
            fragmentTransactionBeginTransaction.show(t1Var);
        }
        try {
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void clearOldCache(PopupAdBean adBean) {
        if (adBean == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (adBean.getBig_pic() != null && adBean.getBig_pic().size() > 0) {
            int size = adBean.getBig_pic().size();
            for (int i10 = 0; i10 < size; i10++) {
                RecomDatabean recomDatabean = adBean.getBig_pic().get(i10);
                if (recomDatabean.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
                    String pic_remote = recomDatabean.getMain().getPic_remote();
                    if (com.join.mgps.Util.t2.i(pic_remote)) {
                        arrayList.add(com.join.mgps.Util.z.b(this) + com.join.mgps.Util.o0.t(pic_remote));
                    }
                }
            }
        }
        File fileB = com.join.mgps.Util.z.b(this);
        if (fileB != null) {
            try {
                if (fileB.exists() && fileB.isDirectory()) {
                    for (File file : fileB.listFiles()) {
                        if (file.isFile()) {
                            if (arrayList.contains(file + "")) {
                                continue;
                            } else {
                                UtilsMy.delete(file);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHomePopupAd() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showHomePopupAd(null);
            return;
        }
        try {
            com.join.mgps.rpc.impl.d dVarO1 = com.join.mgps.rpc.impl.d.O1();
            ResultMainBean<PopupAdBean> resultMainBeanBody = dVarO1.N1().M1(RequestBeanUtil.getInstance(this).getHomePopupAd(false, 0)).execute().body();
            if (resultMainBeanBody == null || resultMainBeanBody.getFlag() != 1) {
                showHomePopupAd(null);
            } else {
                showHomePopupAd(resultMainBeanBody.getMessages().getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showHomePopupAd(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0066  */
    boolean isHomePopupAdCached(PopupAdBean adBean) {
        boolean z10;
        RecomDatabean recomDatabean;
        boolean z11 = false;
        if (adBean != null) {
            try {
                if (adBean.getBig_pic() == null || adBean.getBig_pic().size() <= 0) {
                    z10 = false;
                } else {
                    int size = adBean.getBig_pic().size();
                    int i10 = 0;
                    for (int i11 = 0; i11 < size; i11++) {
                        RecomDatabean recomDatabean2 = adBean.getBig_pic().get(i11);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (com.join.mgps.Util.t0.n(pic_remote) || isHomePopupAdLocalCached(pic_remote)) {
                                i10++;
                            } else {
                                com.join.mgps.Util.t0.f(pic_remote, this, com.join.mgps.Util.z.b(this), null);
                            }
                        }
                    }
                    if (i10 == size) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            } catch (Exception e10) {
                e = e10;
                e.printStackTrace();
                return z11;
            }
        } else {
            z10 = false;
        }
        if (adBean != null) {
            try {
                if (adBean.getMore() != null && adBean.getMore().size() > 0 && (recomDatabean = adBean.getMore().get(0)) != null && recomDatabean.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
                    String pic_remote2 = recomDatabean.getMain().getPic_remote();
                    if (com.join.mgps.Util.t0.n(pic_remote2) || isHomePopupAdLocalCached(pic_remote2)) {
                        z10 &= true;
                    } else {
                        com.join.mgps.Util.t0.f(pic_remote2, this, com.join.mgps.Util.z.b(this), null);
                    }
                }
            } catch (Exception e11) {
                e = e11;
                z11 = z10;
                e.printStackTrace();
                return z11;
            }
        }
        return z10;
    }

    boolean isHomePopupAdLocalCached(String url) {
        return new File(com.join.mgps.Util.z.b(this), com.join.mgps.Util.o0.t(url)).exists();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        com.join.mgps.fragment.t1 t1Var = this.forumWelcomeFragment;
        if (t1Var != null) {
            t1Var.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.join.android.app.component.video.a.c0(this, "ForumPostsFragment")) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.activityHasDes = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.join.mgps.fragment.t1 t1Var = this.forumWelcomeFragment;
        if (t1Var != null) {
            t1Var.F0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.fragment.t1 t1Var = this.forumWelcomeFragment;
        if (t1Var != null) {
            t1Var.s0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLoad(PopupAdBean adBean) {
        RecomDatabean recomDatabean;
        if (adBean != null) {
            try {
                if (adBean.getBig_pic() != null && adBean.getBig_pic().size() > 0) {
                    int size = adBean.getBig_pic().size();
                    for (int i10 = 0; i10 < size; i10++) {
                        RecomDatabean recomDatabean2 = adBean.getBig_pic().get(i10);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (!isHomePopupAdLocalCached(pic_remote)) {
                                com.join.mgps.Util.t0.f(pic_remote, this, com.join.mgps.Util.z.b(this), null);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (adBean == null || adBean.getMore() == null || adBean.getMore().size() <= 0 || (recomDatabean = adBean.getMore().get(0)) == null || recomDatabean.getMain() == null || !com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
            return;
        }
        String pic_remote2 = recomDatabean.getMain().getPic_remote();
        if (isHomePopupAdLocalCached(pic_remote2)) {
            return;
        }
        com.join.mgps.Util.t0.f(pic_remote2, this, com.join.mgps.Util.z.b(this), null);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0090 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:2:0x0000, B:6:0x0038, B:8:0x003e, B:10:0x004c, B:12:0x0052, B:14:0x005e, B:16:0x0069, B:22:0x0090, B:25:0x009a, B:30:0x00a4, B:32:0x00c7, B:20:0x0073), top: B:37:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a4 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:2:0x0000, B:6:0x0038, B:8:0x003e, B:10:0x004c, B:12:0x0052, B:14:0x005e, B:16:0x0069, B:22:0x0090, B:25:0x009a, B:30:0x00a4, B:32:0x00c7, B:20:0x0073), top: B:37:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c7 A[Catch: Exception -> 0x00d5, TRY_LEAVE, TryCatch #0 {Exception -> 0x00d5, blocks: (B:2:0x0000, B:6:0x0038, B:8:0x003e, B:10:0x004c, B:12:0x0052, B:14:0x005e, B:16:0x0069, B:22:0x0090, B:25:0x009a, B:30:0x00a4, B:32:0x00c7, B:20:0x0073), top: B:37:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    void showHomePopupAd(PopupAdBean adBean) {
        boolean z10;
        try {
            long jLongValue = this.prefDef.homePopupAdLastTime().d().longValue();
            int iIntValue = this.prefDef.homePopupAdCount().d().intValue();
            String strD = this.prefDef.homePopupAdLast().d();
            boolean z11 = false;
            if (!com.join.android.app.common.utils.i.h(jLongValue)) {
                strD = "";
                iIntValue = 0;
            }
            if (adBean == null && com.join.mgps.Util.t2.i(strD)) {
                adBean = (PopupAdBean) JsonMapper.getInstance().fromJson(strD, PopupAdBean.class);
            }
            if (adBean == null || adBean.getAd_switch() == null || !adBean.getAd_switch().equals("1")) {
                return;
            }
            String jsonString = JsonMapper.toJsonString(adBean);
            if (jsonString.equals(strD)) {
                if (iIntValue >= adBean.getStart_up_counts()) {
                    z10 = false;
                }
                if (z10) {
                    jsonString = JsonMapper.toJsonString(adBean);
                    preLoad(adBean);
                    if (iIntValue != 0 || isHomePopupAdCached(adBean)) {
                        z11 = z10;
                    }
                }
                if (z11) {
                    this.prefDef.homePopupAdLastTime().g(Long.valueOf(System.currentTimeMillis()));
                    this.prefDef.homePopupAdCount().g(Integer.valueOf(iIntValue + 1));
                    if (this.activityHasDes) {
                    }
                    HomePopupAdQWActivity_.r(this).a(jsonString).startForResult(10002);
                }
            }
            this.prefDef.homePopupAdLast().g(jsonString);
            this.prefDef.homePopupAdCount().g(0);
            clearOldCache(adBean);
            iIntValue = 0;
            z10 = true;
            if (z10) {
                jsonString = JsonMapper.toJsonString(adBean);
                preLoad(adBean);
                if (iIntValue != 0) {
                }
                z11 = z10;
            }
            if (z11) {
                this.prefDef.homePopupAdLastTime().g(Long.valueOf(System.currentTimeMillis()));
                this.prefDef.homePopupAdCount().g(Integer.valueOf(iIntValue + 1));
                if (this.activityHasDes) {
                    HomePopupAdQWActivity_.r(this).a(jsonString).startForResult(10002);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this) || com.join.mgps.Util.r0.Y0(this)) {
            return;
        }
        com.join.mgps.rpc.b bVarC0 = com.join.mgps.rpc.impl.a.c0();
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(this).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = bVarC0.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI != null && accountResultMainBeanI.getError() == 0 && accountResultMainBeanI.getData().is_success()) {
                AccountUtil_.getInstance_(this).saveAccountData(g8.a.a(accountResultMainBeanI.getData().getUser_info()), this);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
