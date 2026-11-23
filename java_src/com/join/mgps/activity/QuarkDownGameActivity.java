package com.join.mgps.activity;

import android.view.View;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtInfoBean;
import com.join.mgps.dto.WebDiskInfo;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_quark_down_game)
public class QuarkDownGameActivity extends BaseDialogActivity implements View.OnClickListener {

    @ViewById(R.id.cl_content)
    View contentView;

    @Extra
    ExtInfoBean extInfo;

    @Extra
    String gameIconUrl;

    @Extra
    String gameId;

    @Extra
    String gameName;

    @Pref
    PrefDef_ prefDef;
    boolean quarkInstalled = false;

    @ViewById
    SimpleDraweeView sdv_game_icon;

    @ViewById
    TextView tv_desc;

    @ViewById
    TextView tv_download;

    @ViewById
    TextView tv_game_name;

    @ViewById
    TextView tv_game_price;

    @ViewById
    TextView tv_label;

    @ViewById
    TextView tv_not_ask;

    @ViewById
    View v_close1;

    @Extra
    WebDiskInfo web_disk_info;

    /* JADX WARN: Multi-variable type inference failed */
    private void downloadQuark() {
        DownloadTask downloadTaskG;
        boolean z10 = com.join.mgps.Util.d2.q() && com.join.mgps.va.overmind.i.q().S();
        if (z10) {
            downloadTaskG = q5.f.M().G(com.join.mgps.Util.d2.f49545c);
        } else {
            this.prefDef.isQuarkSilentDownload().g(Boolean.FALSE);
            downloadTaskG = q5.f.M().G(com.join.mgps.Util.d2.f49546d);
        }
        if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
            com.join.android.app.common.utils.g.t0(this).A(this, downloadTaskG.getGameZipPath());
        } else {
            ToastManager.show("夸克下载中...");
            ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("action", "downloadQuark")).extra("isOm", z10)).a();
        }
    }

    private void startDomain() {
        String strD = this.prefDef.privateDomainFeedbackInfo().d();
        if (!com.join.mgps.Util.t2.i(strD)) {
            startQuark();
            return;
        }
        DomainInfoBean domainInfoBean = (DomainInfoBean) JsonMapper.getInstance().fromJson(strD, DomainInfoBean.class);
        if (domainInfoBean != null) {
            com.papa.sim.statistic.t.l(this).R1(Event.pdPcGameDetailsClick, new Ext().setGameId(this.gameId).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
            UtilsMy.D4(this, domainInfoBean.getInfo(), "pc_game_details");
        }
    }

    private void startOrDownQuark() {
        this.prefDef.isQuarkSilentDownload().g(Boolean.FALSE);
        boolean zE = com.join.android.app.common.utils.g.t0(this).e(this, com.join.mgps.Util.d2.f49544b);
        this.quarkInstalled = zE;
        if (zE) {
            if (com.join.mgps.Util.d2.n()) {
                startDomain();
                return;
            } else {
                startQuark();
                return;
            }
        }
        if (!com.join.mgps.va.overmind.i.q().K(com.join.mgps.Util.d2.f49544b) || !com.join.mgps.Util.d2.q()) {
            downloadQuark();
        } else if (com.join.mgps.Util.d2.n()) {
            startDomain();
        } else {
            startQuark();
        }
    }

    private void startQuark() {
        com.join.mgps.Util.d2.u(this, Event.clickSpeedDownUpQk, this.web_disk_info.getGameId(), com.kuaishou.weapon.p0.t.f74899x);
        IntentUtil.getInstance().startQuarkBrowser(this, com.join.mgps.Util.d2.q(), this.web_disk_info.getWb_url(), this.gameName, this.gameIconUrl);
        com.papa.sim.statistic.t.l(this).R1(Event.clickPcDetailHomeBtn, new Ext().setFrom("2").setGameId(this.web_disk_info.getGameId()).setQkPosition(com.kuaishou.weapon.p0.t.f74899x));
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.p2.v(this);
        this.tv_download.setOnClickListener(this);
        this.tv_not_ask.setOnClickListener(this);
        ExtInfoBean extInfoBean = this.extInfo;
        if (extInfoBean != null) {
            this.tv_desc.setText(extInfoBean.getHelp_des());
            if (this.extInfo.getGame_cfg() != null) {
                this.tv_game_price.setText(this.extInfo.getGame_cfg().getGame_price());
                try {
                    this.tv_label.setText(UtilsMy.c((long) (Double.parseDouble(this.extInfo.getGame_cfg().getGame_size()) * 1024.0d * 1024.0d)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (com.join.mgps.Util.t2.i(this.extInfo.getHelp_url())) {
                this.tv_not_ask.setVisibility(0);
            } else {
                this.tv_not_ask.setVisibility(8);
            }
        }
        this.tv_game_name.setText(this.gameName);
        com.join.android.app.common.utils.l.h(this.sdv_game_icon, this.gameIconUrl);
        com.papa.sim.statistic.t.l(this).R1(Event.visitPCDbankPageExp, new Ext().setGameId(this.gameId));
        if (com.join.mgps.Util.d2.n()) {
            UtilsMy.Z1(this, 18, this.gameId);
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.contentView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.tv_download) {
            startOrDownQuark();
            finish();
        } else if (id2 == R.id.tv_not_ask) {
            ExtInfoBean extInfoBean = this.extInfo;
            if (extInfoBean != null && com.join.mgps.Util.t2.i(extInfoBean.getHelp_url())) {
                IntentUtil.getInstance().goShareWebActivity(this, this.extInfo.getHelp_url());
            }
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (com.join.android.app.common.utils.g.t0(this).e(this, com.join.mgps.Util.d2.f49544b)) {
            this.tv_download.setText("保存游戏");
        } else if (com.join.mgps.Util.d2.q() && com.join.mgps.va.overmind.i.q().S()) {
            this.tv_download.setText("保存游戏");
        } else {
            this.tv_download.setText("安装夸克·保存游戏");
        }
    }
}
