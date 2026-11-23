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
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.beizi.fusion.widget.ScrollClickView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.layout_sheet_game_resource)
public class DownloadMethodMultiDialog extends BaseActivity {

    @Extra
    int _from;

    @Extra
    int _from_type;

    @ViewById
    ImageView checkboxAgreement;

    @ViewById
    ImageView checkboxNoMore;

    @ViewById
    View constraintLayout;

    @Extra
    QueryDownloadInfoResponseData data;

    @Extra
    boolean disableShowSpeedUpPrompt;

    @ViewById
    TextView download;

    @Extra
    DownloadGameArgsBean downloadArgs;

    @Extra
    ArrayList<String> downloadHtmls;

    @Extra
    String ext;

    @Extra
    boolean fromRecomDown;

    @Extra
    String gameId;

    @Extra
    boolean hideNoMore;
    private boolean isExpand;

    @Extra
    boolean isForceShow;
    private boolean isGameInstalled;

    @ViewById
    TextView link;

    @ViewById
    LinearLayout llAgreement;

    @ViewById
    LinearLayout llNoMore;
    b mBarHideEnableObserver;
    private ContentObserver mNavigationBarObserver = new a(new Handler());

    @Pref
    PrefDef_ pref;

    @ViewById
    TextView protocol;

    @ViewById
    RecyclerView recyclerView;
    private c resourceAdapter;
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
            if (Settings.Global.getInt(DownloadMethodMultiDialog.this.getContentResolver(), "navigationbar_is_min", 0) == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodMultiDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadMethodMultiDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodMultiDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadMethodMultiDialog.this.getNavigationBarHeight();
                DownloadMethodMultiDialog.this.constraintLayout.setLayoutParams(layoutParams2);
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
            if (!DownloadMethodMultiDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodMultiDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadMethodMultiDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodMultiDialog.this.constraintLayout.getLayoutParams();
                int navigationBarHeight = DownloadMethodMultiDialog.this.getNavigationBarHeight();
                com.join.mgps.Util.v1.e();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = navigationBarHeight;
                DownloadMethodMultiDialog.this.constraintLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    class c extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public c(List<String> data) {
            super(R.layout.layout_sheet_game_resource_item, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, View view) {
            DownloadMethodMultiDialog downloadMethodMultiDialog = DownloadMethodMultiDialog.this;
            if (downloadMethodMultiDialog.data == null) {
                downloadMethodMultiDialog.T("获取信息失败");
            } else if (downloadMethodMultiDialog.checkboxAgreement.isSelected()) {
                IntentUtil.getInstance().goShareWebActivity(this.mContext, str);
            } else {
                DownloadMethodMultiDialog.this.T("请先同意用户协议");
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final String item) {
            helper.setText(R.id.tvGameName, DownloadMethodMultiDialog.this.data.getGameName()).setText(R.id.tvGameUrl, item);
            helper.setVisible(R.id.divider, helper.getLayoutPosition() < getItemCount() - 1);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f67646b.t(item, view);
                }
            });
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

    private void initRecyclerview(QueryDownloadInfoResponseData data) {
        final List<String> downloadHtmls = data.getDownloadHtmls();
        new ArrayList();
        if (downloadHtmls != null) {
            this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
            c cVar = new c((downloadHtmls.size() <= 3 || this.isExpand) ? downloadHtmls : downloadHtmls.subList(0, 3));
            this.resourceAdapter = cVar;
            this.recyclerView.setAdapter(cVar);
            if (downloadHtmls.size() <= 3 || this.isExpand) {
                return;
            }
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.item_game_resource_footer, (ViewGroup) null);
            viewInflate.findViewById(R.id.footer).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f67636b.lambda$initRecyclerview$0(downloadHtmls, view);
                }
            });
            this.resourceAdapter.addFooterView(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initRecyclerview$0(List list, View view) {
        this.isExpand = true;
        this.resourceAdapter.setNewData(list);
        this.resourceAdapter.removeAllFooterView();
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
            this.llNoMore.setVisibility(8);
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
    void checkboxAgreement() {
        this.checkboxAgreement.setSelected(!this.checkboxAgreement.isSelected());
        boolean zIsSelected = this.checkboxAgreement.isSelected();
        this.download.setBackgroundResource(zIsSelected ? R.drawable.detail_simple_multi_bg : R.drawable.shape_view_bg2);
        this.checkboxAgreement.setImageResource(zIsSelected ? R.drawable.ic_copyright_checkbox_selected : R.drawable.ic_copyright_checkbox_unselected);
        if (zIsSelected || this.llNoMore.getVisibility() != 0) {
            return;
        }
        setNoPromptCheck(false);
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
        if (!this.checkboxAgreement.isSelected()) {
            T("请先同意用户协议");
            return;
        }
        if (this.isGameInstalled) {
            UtilsMy.p4(this, q5.f.M().G(this.gameId), "2");
            finish();
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
                CommonService_.n0 n0Var = (CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("downGameId", this.gameId)).extra("ext", this.ext)).extra("data", this.data)).extra("_from", this._from)).extra("_from_type", this._from_type)).extra("fromRecomDown", this.fromRecomDown)).extra("_downloadArgs", this.downloadArgs)).extra("disableShowSpeedUpPrompt", this.disableShowSpeedUpPrompt);
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

    @Click
    void llNoMore() {
        noPromptCheckPlaceholder();
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

    void noPromptCheckPlaceholder() {
        setNoPromptCheck(!this.checkboxNoMore.isSelected());
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
            if (!this.checkboxAgreement.isSelected()) {
                T("请先同意用户协议");
                return;
            }
        }
        this.checkboxNoMore.setSelected(selected);
        this.checkboxNoMore.setImageResource(selected ? R.drawable.ic_copyright_checkbox_selected : R.drawable.ic_copyright_checkbox_unselected);
        if (this.hideNoMore) {
            return;
        }
        this.pref.noPromptDownload().g(Boolean.valueOf(selected));
    }

    @UiThread
    void update(QueryDownloadInfoResponseData data) {
        if (data == null) {
            return;
        }
        this.data = data;
        if (!TextUtils.isEmpty(data.getBtnStatus())) {
            if ("open".equals(data.getBtnStatus())) {
                this.download.setText("启动");
                this.llNoMore.setVisibility(8);
            } else if (ScrollClickView.DIR_DOWN.equals(data.getBtnStatus())) {
                this.download.setText("立即下载");
                if (!this.isForceShow) {
                    this.llNoMore.setVisibility(0);
                    if (data.isSelectedNextTips() && data.isSelectedUserProtocol()) {
                        this.checkboxNoMore.setSelected(true);
                    } else {
                        this.checkboxNoMore.setSelected(false);
                    }
                    if (!this.hideNoMore) {
                        this.pref.noPromptDownload().g(Boolean.valueOf(this.checkboxNoMore.isSelected()));
                    }
                }
            }
        }
        this.title.setText(data.getTitle());
        this.subTitle.setText(data.getSubTitle());
        this.userProtocolTxt.setText(data.getUserProtocolTxt());
        this.checkboxAgreement.setSelected(data.isSelectedUserProtocol());
        initRecyclerview(data);
        this.llNoMore.setVisibility(this.hideNoMore ? 8 : 0);
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        if (downloadTaskG != null) {
            int status = downloadTaskG.getStatus();
            if (status == 5 || status == 42) {
                this.llAgreement.setVisibility(8);
                this.download.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.download.setText("启动");
                this.isGameInstalled = true;
                return;
            }
            this.llAgreement.setVisibility(0);
            TextView textView = this.download;
            int i10 = R.drawable.detail_simple_multi_bg;
            textView.setBackgroundResource(R.drawable.detail_simple_multi_bg);
            TextView textView2 = this.download;
            if (!this.checkboxAgreement.isSelected()) {
                i10 = R.drawable.shape_view_bg2;
            }
            textView2.setBackgroundResource(i10);
            this.download.setText("立即下载");
            this.isGameInstalled = false;
        }
    }
}
