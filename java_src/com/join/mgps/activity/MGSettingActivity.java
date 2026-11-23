package com.join.mgps.activity;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.setting_activity)
public class MGSettingActivity extends BaseFragmentActivity {
    private String TAG = getClass().getSimpleName();

    @ViewById
    TextView about;
    private AccountBean accountData;
    private com.join.mgps.dialog.e appUpdateDialog;

    @ViewById
    ImageView back_image;

    @ViewById
    RelativeLayout checkVerLayout;
    private Context context;
    private long lastClick;

    @ViewById
    RelativeLayout papaAboutLayout;

    @ViewById
    TextView papaVer;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.e recommendClient;

    @ViewById
    RelativeLayout responsibility;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    TextView title_textview;

    @AfterViews
    void AfterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        TextUtils.isEmpty("wufun");
        this.about.setText("关于悟饭");
        showUI();
        TextView textView = this.papaVer;
        if (textView != null) {
            textView.setText(com.join.mgps.Util.w.d(this.context));
        }
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

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.join.mgps.dialog.e eVar = this.appUpdateDialog;
        if (eVar == null || !eVar.isShowing()) {
            return;
        }
        this.appUpdateDialog.dismiss();
    }

    @Click
    void papaAboutLayout() {
        MGPapaAboutActivity_.intent(this.context).start();
    }

    @Click
    void responsibility() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        TextUtils.isEmpty("wufun");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72349j + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    @Click
    void shareToFrendsLayout() {
        com.join.mgps.Util.w.i(this.context);
    }

    @UiThread
    void showUI() {
        this.title_textview.setText(this.about.getText());
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
}
