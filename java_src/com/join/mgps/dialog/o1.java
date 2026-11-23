package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.WxProgram;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;

/* JADX INFO: loaded from: classes3.dex */
public class o1 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    DownloadTask f67712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f67713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f67715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f67716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    PrefDef_ f67719i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SimpleDraweeView f67720j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f67721k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f67722l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WxProgram f67723m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private DomainInfoBean f67724n;

    public o1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(String gameId, DomainInfoBean bean) {
        show();
        this.f67714d = gameId;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        this.f67712b = downloadTaskG;
        this.f67718h.setText(downloadTaskG.getShowName());
        this.f67724n = bean;
        DownloadTask downloadTask = this.f67712b;
        if (downloadTask != null) {
            this.f67713c = downloadTask.getRef_crc_sign_id();
            this.f67718h.setText(this.f67712b.getShowName());
            SimpleDraweeView simpleDraweeView = this.f67720j;
            if (simpleDraweeView != null) {
                com.join.android.app.common.utils.l.h(simpleDraweeView, this.f67712b.getPortraitURL());
            }
        }
        if (bean != null && com.join.mgps.Util.t2.i(bean.getInfo())) {
            try {
                WxProgram wxProgram = (WxProgram) JsonMapper.getInstance().fromJson(com.join.mgps.Util.a.b(bean.getInfo()), WxProgram.class);
                this.f67723m = wxProgram;
                if (wxProgram != null) {
                    TextView textView = this.f67721k;
                    if (textView != null) {
                        textView.setText(wxProgram.getGuide_text());
                    }
                    if (this.f67717g == null) {
                        this.f67717g = (TextView) findViewById(R.id.tv_customer);
                    }
                    this.f67717g.setText(this.f67723m.getButton_text());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            com.papa.sim.statistic.t.l(getContext()).R1(Event.pdGameStart, new Ext().setGameId(gameId).setIsJoin(bean.getIs_join()).setTestAbNumber(bean.getAb_test_number()));
        }
        com.papa.sim.statistic.t.l(getContext()).R1(Event.showmodRunNormal, new Ext().setGameId(gameId).setFrom(APKUtils.P(this.f67712b) ? "1" : "0"));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.cl_customer) {
            WxProgram wxProgram = this.f67723m;
            if (wxProgram != null) {
                wxProgram.setSceneType("game_start");
                UtilsMy.C4(getContext(), this.f67723m);
            }
            if (this.f67724n != null) {
                com.papa.sim.statistic.t.l(getContext()).R1(Event.pdGameStartClick, new Ext().setGameId(this.f67714d).setIsJoin(this.f67724n.getIs_join()).setTestAbNumber(this.f67724n.getAb_test_number()));
            }
            this.f67719i.lastLaunchModGameId().g("");
            dismiss();
            return;
        }
        if (id2 != R.id.tv_not_ask) {
            if (id2 == R.id.iv_close) {
                this.f67719i.lastLaunchModGameId().g("");
                super.dismiss();
                return;
            }
            return;
        }
        DownloadTask downloadTask = this.f67712b;
        if (downloadTask != null) {
            downloadTask.setGame_run_state(4);
            q5.f.M().m(this.f67712b);
        }
        this.f67719i.lastLaunchModGameId().g("");
        super.dismiss();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_questionnaire);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67718h = (TextView) findViewById(R.id.name);
        this.f67715e = findViewById(R.id.iv_close);
        this.f67717g = (TextView) findViewById(R.id.tv_customer);
        this.f67716f = findViewById(R.id.cl_customer);
        this.f67720j = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.f67721k = (TextView) findViewById(R.id.tv_desc);
        this.f67722l = (TextView) findViewById(R.id.tv_not_ask);
        this.f67715e.setOnClickListener(this);
        this.f67716f.setOnClickListener(this);
        this.f67722l.setOnClickListener(this);
        this.f67719i = new PrefDef_(getContext());
    }
}
