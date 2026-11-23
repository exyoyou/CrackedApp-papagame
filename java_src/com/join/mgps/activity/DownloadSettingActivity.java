package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.message.MessageSettingActivity_;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccoutLoginOutRequest;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.download_setting_activity)
public class DownloadSettingActivity extends BaseActivity {
    UserInfo accountBean;

    @ViewById
    View accountManager;
    private com.join.mgps.dialog.e appUpdateDialog;

    @ViewById
    ImageView autoDownImageViewWifi;

    @ViewById
    ImageView autoPlayVideoWifi;
    private Context context;
    Dialog dialogU;

    @ViewById
    RelativeLayout downloadPath;

    @ViewById
    View exitLogin;

    @ViewById
    RelativeLayout gprsNotice;

    @ViewById
    ImageView imageGprsNote;

    @ViewById
    ImageView imageViewWifi;

    @ViewById
    TextView nowPathInfo;

    @ViewById
    TextView papaVer;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.e recommendClient;

    @ViewById
    RelativeLayout rl_developer;

    @ViewById
    TextView textGprs;

    @ViewById
    TextView textWifi;

    @ViewById
    TextView title_textview;
    private boolean wifiIsOpen = true;
    private boolean gprsIsOpen = true;
    private String TAG = DownloadSettingActivity.class.getName();
    AlertDialog.Builder dialog = null;

    class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51272b;

        a(final boolean val$b) {
            this.f51272b = val$b;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            com.join.mgps.pref.h.n(DownloadSettingActivity.this).k0(!this.f51272b);
            DownloadSettingActivity.this.autoPlayVideoWifi.setImageResource(R.drawable.ic_notif_closed);
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
        }
    }

    class c implements com.join.mgps.dialog.a1.f {
        c() {
        }

        @Override // com.join.mgps.dialog.a1.f
        public void a() {
            DownloadSettingActivity.this.textGprs.setText("永不提醒");
        }

        @Override // com.join.mgps.dialog.a1.f
        public void b() {
            DownloadSettingActivity.this.textGprs.setText("大于30M提醒");
        }

        @Override // com.join.mgps.dialog.a1.f
        public void c() {
            DownloadSettingActivity.this.textGprs.setText("大于100M提醒");
        }

        @Override // com.join.mgps.dialog.a1.f
        public void d() {
            DownloadSettingActivity.this.textGprs.setText("每次都提醒");
        }

        @Override // com.join.mgps.dialog.a1.f
        public void e() {
            DownloadSettingActivity.this.textGprs.setText("大于50M提醒");
        }
    }

    private void clearCheckIn() {
        this.prefDef.lastCheckInTime().g(0L);
    }

    @Click
    void accountManager() {
        MYAccountDetialActivity_.intent(this.context).start();
    }

    @AfterViews
    void afterview() {
        com.join.mgps.Util.g1.d(this.TAG, "afterview");
        this.title_textview.setText("设置");
        this.context = this;
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.papaVer.setText(com.join.mgps.Util.w.d(this.context));
        if (com.join.mgps.pref.h.n(this).x()) {
            this.autoPlayVideoWifi.setImageResource(R.drawable.ic_notif_open);
        } else {
            this.autoPlayVideoWifi.setImageResource(R.drawable.ic_notif_closed);
        }
        try {
            if (AccountUtil_.getInstance_(this.context).isTourist() || AccountUtil_.getInstance_(this.context).getAccountData().getUid() == 0) {
                this.accountManager.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int iIntValue = this.prefDef.gprsNoticeInfo().d().intValue();
        if (iIntValue == 0) {
            this.textGprs.setText("每次都提醒");
        } else if (iIntValue == 1) {
            this.textGprs.setText("大于30M提醒");
        } else if (iIntValue == 2) {
            this.textGprs.setText("大于50M提醒");
        } else if (iIntValue == 3) {
            this.textGprs.setText("大于100M提醒");
        } else if (iIntValue == 4) {
            this.textGprs.setText("永不提醒");
        }
        String strG = com.join.mgps.pref.h.n(this.context).g();
        this.nowPathInfo.setText(strG);
        long jC = com.join.mgps.Util.f2.c(strG);
        long jB = com.join.mgps.Util.f2.b(strG);
        this.nowPathInfo.setText("可用空间：" + UtilsMy.j(jC) + net.lingala.zip4j.util.e.F0 + UtilsMy.j(jB) + "\n存储位置：" + strG);
        if (this.prefDef.isAutoWifiDownUpdate().d().booleanValue()) {
            this.autoDownImageViewWifi.setImageResource(R.drawable.handshank_virtualkey_on);
        } else {
            this.autoDownImageViewWifi.setImageResource(R.drawable.handshank_virtualkey_off);
        }
        if (AccountUtil_.getInstance_(this.context).isTourist()) {
            this.exitLogin.setVisibility(8);
        }
        this.rl_developer.setVisibility(8);
    }

    @Click
    void autoDownImageViewWifi() {
        org.androidannotations.api.sharedpreferences.d dVarIsAutoWifiDownUpdate = this.prefDef.isAutoWifiDownUpdate();
        Boolean bool = Boolean.TRUE;
        if (dVarIsAutoWifiDownUpdate.e(bool).booleanValue()) {
            this.autoDownImageViewWifi.setImageResource(R.drawable.handshank_virtualkey_off);
            this.prefDef.isAutoWifiDownUpdate().g(Boolean.FALSE);
        } else {
            this.autoDownImageViewWifi.setImageResource(R.drawable.handshank_virtualkey_on);
            this.prefDef.isAutoWifiDownUpdate().g(bool);
        }
    }

    @Click
    void autoDownLayoutWifi() {
        autoDownImageViewWifi();
    }

    @Click
    void autoPlayVideoWifi() {
        boolean zX = com.join.mgps.pref.h.n(this).x();
        if (!zX) {
            com.join.mgps.pref.h.n(this).k0(!zX);
            this.autoPlayVideoWifi.setImageResource(R.drawable.ic_notif_open);
            return;
        }
        Dialog dialog = this.dialogU;
        if (dialog == null) {
            this.dialog = new AlertDialog.Builder(this.context, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.dialog.setTitle("提示");
        this.dialog.setMessage("该设置应用于游戏下载后的推荐，建议您保留开启。");
        this.dialog.setPositiveButton("仍要关闭", new a(zX));
        this.dialog.setNegativeButton("取消", new b());
        this.dialogU = this.dialog.show();
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void checkVerLayout() {
        checkVersion();
    }

    @Background
    public void checkVersion() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            error("网络似乎不通哦~");
            return;
        }
        try {
            ResultMainBean<List<APKVersionMainBean>> resultMainBeanZ1 = this.recommendClient.z1(RequestBeanUtil.getInstance(getApplicationContext()).getApkVersion(2, 1, 0));
            ApkVersionbean apkVersionbean = resultMainBeanZ1.getMessages().getData().get(0).getApp().get(0);
            if (resultMainBeanZ1.getFlag() == 1) {
                String[] strArrB = com.join.android.app.common.utils.q.n(getApplicationContext()).B();
                String ver = apkVersionbean.getVer();
                int i10 = Integer.parseInt(ver.split("_")[0]);
                int i11 = Integer.parseInt(apkVersionbean.getVer_compatible().split("_")[0]);
                if (Integer.parseInt(strArrB[0]) <= i10) {
                    VersionDto versionDto = new VersionDto();
                    versionDto.setAndroidUrl(apkVersionbean.getDown_url());
                    versionDto.setVersionNo(Integer.parseInt(ver.split("_")[0]));
                    versionDto.setInfo(apkVersionbean.getVer_info());
                    versionDto.setHead_pic(apkVersionbean.getHead_pic());
                    versionDto.setTow_tpl_back_ground_pic(apkVersionbean.getTow_tpl_back_ground_pic());
                    versionDto.setTpl_type(apkVersionbean.getTpl_type());
                    if (Integer.parseInt(strArrB[0]) >= i10) {
                        error("无需更新,已是最新版本");
                    } else if (Float.parseFloat(strArrB[0]) < i11) {
                        showVersionDownLoadHint(versionDto, true);
                    } else {
                        showVersionDownLoadHint(versionDto, false);
                    }
                } else {
                    error("无需更新,已是最新版本");
                }
            }
        } catch (Exception unused) {
            error("网络似乎不通哦~");
        }
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

    @Click
    void downloadPath() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String error_msg) {
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }

    @Click
    void exitLogin() {
        loginOutBack();
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
        this.accountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        deleteLocalUserIcon();
        clearCheckIn();
        k6.a.a(this.context);
        com.join.mgps.Util.a3.b(this.context).d("退出登录成功");
        this.prefDef.singleGameShowDialog().g("");
        finish();
    }

    @Click({R.id.rl_developer})
    void goDeveloper() {
        DeveloperActivity_.intent(this).start();
    }

    @Click
    void gprsNotice() {
        com.join.mgps.dialog.a1 a1VarW = com.join.mgps.Util.h0.h0(this.context).w(this.context);
        a1VarW.j(new c());
        a1VarW.k(this.prefDef);
        a1VarW.show();
    }

    @Receiver(actions = {p5.a.f96217r})
    void loginOut(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loginOutBack() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                AccoutLoginOutRequest accoutLoginOutRequest = new AccoutLoginOutRequest();
                accoutLoginOutRequest.setUid(this.accountBean.getUid() + "");
                accoutLoginOutRequest.setSign(com.join.mgps.Util.k2.g(accoutLoginOutRequest));
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanG = com.join.mgps.rpc.impl.a.c0().g(accoutLoginOutRequest.getParams());
                if (accountResultMainBeanG != null && accountResultMainBeanG.getError() == 0) {
                    if (accountResultMainBeanG.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                    } else {
                        showToast(accountResultMainBeanG.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.g1.d(this.TAG, "onDestroy");
    }

    @Click
    void pushLayout() {
        if (IntentUtil.getInstance().goLogin(this.context)) {
            return;
        }
        MessageSettingActivity_.intent(this.context).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String error_msg) {
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }

    @UiThread
    public void showVersionDownLoadHint(final VersionDto versionDto, boolean mandatory) {
        SharedPreferences.Editor editorEdit = getSharedPreferences("VersionXML", 0).edit();
        editorEdit.putBoolean("Mandatory", mandatory);
        editorEdit.putString("VersionDto", JsonMapper.getInstance().toJson(versionDto));
        editorEdit.commit();
        if (this.appUpdateDialog == null) {
            this.appUpdateDialog = new com.join.mgps.dialog.e(this, R.style.HKDialogLoading, versionDto, mandatory);
        }
        if (this.appUpdateDialog.isShowing()) {
            return;
        }
        this.appUpdateDialog.show();
    }

    @Click
    void videoPlaySetting() {
        VideoSettingActivity_.intent(this.context).start();
    }
}
