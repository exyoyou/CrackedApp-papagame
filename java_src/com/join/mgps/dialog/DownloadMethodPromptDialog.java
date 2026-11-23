package com.join.mgps.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseActivity;
import com.beizi.fusion.widget.ScrollClickView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.dialog_download_method_prompt)
public class DownloadMethodPromptDialog extends BaseActivity {

    @Extra
    int _from;

    @Extra
    int _from_type;

    @ViewById
    View constraintLayout;

    @Extra
    QueryDownloadInfoResponseData data;

    @Extra
    boolean disableShowSpeedUpPrompt;

    @ViewById
    TextView download;

    @Extra
    String ext;

    @Extra
    boolean fromRecomDown;

    @Extra
    String gameId;

    @Extra
    boolean isForceShow;

    @ViewById
    TextView link;
    b mBarHideEnableObserver;
    private ContentObserver mNavigationBarObserver = new a(new Handler());

    @ViewById
    TextView name;

    @ViewById
    View noPrompt;

    @ViewById
    View noPromptCheck;

    @Pref
    PrefDef_ pref;

    @ViewById
    TextView protocol;

    @ViewById
    View protocolCheck;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    TextView subTitle;

    @ViewById
    TextView title;

    @ViewById
    TextView userProtocolTxt;

    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (Settings.Global.getInt(DownloadMethodPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0) == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadMethodPromptDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadMethodPromptDialog.this.getNavigationBarHeight();
                DownloadMethodPromptDialog.this.constraintLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    private class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            if (!DownloadMethodPromptDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadMethodPromptDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.constraintLayout.getLayoutParams();
                int navigationBarHeight = DownloadMethodPromptDialog.this.getNavigationBarHeight();
                com.join.mgps.Util.v1.e();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = navigationBarHeight;
                DownloadMethodPromptDialog.this.constraintLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void registerNavigationBarObserver() {
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
    }

    @UiThread
    void T(String msg) {
        a3.b(getApplicationContext()).d(msg);
    }

    @AfterViews
    void afterViews() {
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        com.papa.sim.statistic.t.l(this).Y0(Event.showCopyright, AccountUtil_.getInstance_(this).getUid(), this.gameId);
        if (TextUtils.isEmpty(this.gameId)) {
            finish();
            return;
        }
        if (this.isForceShow) {
            this.noPrompt.setVisibility(4);
        }
        this.protocol.setText("《" + com.join.mgps.Util.a0.a(this) + "下载协议》");
        initNavigationBarObserver();
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.data;
        if (queryDownloadInfoResponseData == null) {
            load();
        } else {
            update(queryDownloadInfoResponseData);
        }
    }

    @Click
    void close() {
        com.papa.sim.statistic.t.l(this).Y0(Event.closeCopyright, AccountUtil_.getInstance_(this).getUid(), this.gameId);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void download() {
        String uid = AccountUtil_.getInstance_(this).getUid();
        if (this.data == null) {
            T("获取信息失败");
            return;
        }
        if (!this.protocolCheck.isSelected()) {
            T("请先同意用户协议");
            return;
        }
        if (TextUtils.isEmpty(this.data.getBtnStatus())) {
            return;
        }
        if ("open".equals(this.data.getBtnStatus())) {
            res();
            return;
        }
        if (ScrollClickView.DIR_DOWN.equals(this.data.getBtnStatus())) {
            com.papa.sim.statistic.t.l(this).Y0(Event.downloadCopyright, uid, this.gameId);
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            if (this.data == null || downloadTaskG == null || !(downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 9)) {
                CommonService_.n0 n0Var = (CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("downGameId", this.gameId)).extra("ext", this.ext)).extra("data", this.data)).extra("_from", this._from)).extra("_from_type", this._from_type)).extra("fromRecomDown", this.fromRecomDown)).extra("disableShowSpeedUpPrompt", this.disableShowSpeedUpPrompt);
                QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.data;
                ((CommonService_.n0) ((CommonService_.n0) n0Var.extra("resourceSize", queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getResourceSize() : 0L)).extra("uncheckSelfSupport", true)).a();
            } else if (!TextUtils.isEmpty(downloadTaskG.getCrc_link_type_val())) {
                com.php25.PDownload.d.b(downloadTaskG);
                downloadTaskG.setVer(this.data.getVer());
                downloadTaskG.setVer_name(this.data.getVer_name());
                downloadTaskG.setUrl(this.data.getDownloadURL());
                downloadTaskG.setResource_url_remote(this.data.getResourceURL());
                downloadTaskG.setActual_size(this.data.getActualSize());
                downloadTaskG.setRes_actual_size(this.data.getResourceSize());
                downloadTaskG.setExt(this.ext);
                downloadTaskG.setFromRecomDown(this.fromRecomDown);
                downloadTaskG.setDisableShowSpeedUpPrompt(this.disableShowSpeedUpPrompt);
                com.php25.PDownload.d.c(downloadTaskG, this);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    void initNavigationBarObserver() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.constraintLayout.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                com.join.mgps.Util.v1.e();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.constraintLayout.setLayoutParams(layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean isNavigationBarShow() {
        try {
            if (com.join.mgps.Util.v1.e()) {
                return com.join.mgps.Util.v1.a(this) && !com.join.mgps.Util.v1.f(this);
            }
            if (com.join.mgps.Util.v1.g() && Settings.Global.getInt(getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
                return false;
            }
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            Point point = new Point();
            Point point2 = new Point();
            defaultDisplay.getSize(point);
            defaultDisplay.getRealSize(point2);
            return point2.y != point.y;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void load() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            return;
        }
        try {
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            queryDownloadInfoRequestArgs.setGameId(this.gameId);
            queryDownloadInfoRequestArgs.setUid(uid);
            queryDownloadInfoRequestArgs.setToken(token);
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            ResponseModel<QueryDownloadInfoResponseData> responseModelF0 = this.rpcGameClient.f0(requestModel);
            if (responseModelF0 == null || responseModelF0.getCode() != 600 || responseModelF0.getData() == null) {
                return;
            }
            update(responseModelF0.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void noPromptCheckPlaceholder() {
        setNoPromptCheck(!this.noPromptCheck.isSelected());
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.mBarHideEnableObserver);
            getContentResolver().unregisterContentObserver(this.mNavigationBarObserver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void outside() {
        com.papa.sim.statistic.t.l(this).Y0(Event.closeCopyright, AccountUtil_.getInstance_(this).getUid(), this.gameId);
        finish();
    }

    @Click
    void protocol() {
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.data;
        IntentUtil.getInstance().goShareWebActivity(this, queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getUserProtocolURL() : "");
    }

    @Click
    void protocolCheckPlaceholder() {
        this.protocolCheck.setSelected(!this.protocolCheck.isSelected());
        boolean zIsSelected = this.protocolCheck.isSelected();
        this.download.setBackgroundResource(zIsSelected ? R.drawable.shape_view_bg1 : R.drawable.shape_view_bg2);
        if (zIsSelected || this.noPrompt.getVisibility() != 0) {
            return;
        }
        setNoPromptCheck(false);
    }

    void registerContentResolver() {
        this.mBarHideEnableObserver = new b(new Handler());
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.mBarHideEnableObserver);
        registerNavigationBarObserver();
    }

    @Click
    void res() {
        com.papa.sim.statistic.t.l(this).Y0(Event.openSourceUrl, AccountUtil_.getInstance_(this).getUid(), this.gameId);
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.data;
        IntentUtil.getInstance().goShareWebActivity(this, queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getDownloadHTML() : "");
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.p2.r(this, 16777215, true);
    }

    void setNoPromptCheck(boolean selected) {
        QueryDownloadInfoResponseData queryDownloadInfoResponseData;
        if (selected) {
            if (this.isForceShow || (queryDownloadInfoResponseData = this.data) == null || TextUtils.isEmpty(queryDownloadInfoResponseData.getBtnStatus()) || this.data.getBtnStatus().equals("open")) {
                return;
            }
            if (!this.protocolCheck.isSelected()) {
                T("请先同意用户协议");
                return;
            }
        }
        this.noPromptCheck.setSelected(selected);
        this.pref.noPromptDownload().g(Boolean.valueOf(selected));
    }

    @Click
    void textView77() {
        noPromptCheckPlaceholder();
    }

    @UiThread
    void update(QueryDownloadInfoResponseData data) {
        if (data == null) {
            return;
        }
        this.data = data;
        if (!TextUtils.isEmpty(data.getBtnStatus())) {
            if ("open".equals(data.getBtnStatus())) {
                this.download.setText("立即打开");
                this.noPrompt.setVisibility(4);
            } else if (ScrollClickView.DIR_DOWN.equals(data.getBtnStatus())) {
                this.download.setText("立即下载");
                if (!this.isForceShow) {
                    this.noPrompt.setVisibility(0);
                    if (data.isSelectedNextTips() && data.isSelectedUserProtocol()) {
                        this.noPromptCheck.setSelected(true);
                    } else {
                        this.noPromptCheck.setSelected(false);
                    }
                    this.pref.noPromptDownload().g(Boolean.valueOf(this.noPromptCheck.isSelected()));
                }
            }
        }
        this.name.setText(data.getGameName());
        this.title.setText(data.getTitle());
        this.subTitle.setText(data.getSubTitle());
        this.userProtocolTxt.setText(data.getUserProtocolTxt());
        this.link.setText(data.getDownloadHTML());
        this.protocolCheck.setSelected(data.isSelectedUserProtocol());
        this.download.setBackgroundResource(this.protocolCheck.isSelected() ? R.drawable.shape_view_bg1 : R.drawable.shape_view_bg2);
    }
}
