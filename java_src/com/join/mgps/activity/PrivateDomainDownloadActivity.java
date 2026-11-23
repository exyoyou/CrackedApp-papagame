package com.join.mgps.activity;

import android.view.View;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.WxProgram;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.sigmob.sdk.base.mta.PointType;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_private_domain_download)
public class PrivateDomainDownloadActivity extends BaseDialogActivity implements View.OnClickListener {

    @Extra
    DomainInfoBean domainBean;
    private View iv_close;
    TextView name;
    PrefDef_ prefDef_;
    private SimpleDraweeView sdv_image;
    WxProgram wxProgram;

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.p2.v(this);
        this.prefDef_ = new PrefDef_(this);
        this.name = (TextView) findViewById(R.id.name);
        this.iv_close = findViewById(R.id.iv_close);
        this.sdv_image = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.iv_close.setOnClickListener(this);
        this.sdv_image.setOnClickListener(this);
        if (this.domainBean != null) {
            if (this.sdv_image == null) {
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) findViewById(R.id.sdv_image);
                this.sdv_image = simpleDraweeView;
                simpleDraweeView.setOnClickListener(this);
            }
            SimpleDraweeView simpleDraweeView2 = this.sdv_image;
            if (simpleDraweeView2 != null) {
                com.join.android.app.common.utils.l.h(simpleDraweeView2, this.domainBean.getPic());
            }
            com.papa.sim.statistic.t.l(this).R1(Event.pdGameDownload, new Ext().setGameId(this.domainBean.getGameId()).setTestAbNumber(this.domainBean.getAb_test_number()).setGameId(this.domainBean.getGameId()).setFrom(this.domainBean.getLocation() == 6 ? PointType.ANTI_SPAM : PointType.ANTI_SPAM_TOUCH));
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.sdv_image;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.iv_close) {
            finish();
            return;
        }
        if (id2 == R.id.sdv_image) {
            if (this.domainBean != null) {
                com.papa.sim.statistic.t.l(this).R1(Event.pdGameDownloadedClick, new Ext().setGameId(this.domainBean.getGameId()).setTestAbNumber(this.domainBean.getAb_test_number()).setIsJoin(this.domainBean.getIs_join()).setFrom(this.domainBean.getLocation() == 6 ? PointType.ANTI_SPAM : PointType.ANTI_SPAM_TOUCH));
                if (com.join.mgps.Util.t2.i(this.domainBean.getInfo())) {
                    try {
                        this.wxProgram = (WxProgram) JsonMapper.getInstance().fromJson(com.join.mgps.Util.a.b(this.domainBean.getInfo()), WxProgram.class);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            WxProgram wxProgram = this.wxProgram;
            if (wxProgram != null) {
                wxProgram.setSceneType("game_download");
                UtilsMy.C4(this, this.wxProgram);
            }
            finish();
        }
    }
}
