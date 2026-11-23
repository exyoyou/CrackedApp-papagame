package com.join.mgps.customview.widget.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.RankingHomeActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.GameDetailRankingTag;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes3.dex */
public class GameInfoCardView extends LinearLayout implements com.join.mgps.customview.widget.detail.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SimpleDraweeView f67135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f67136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f67137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f67138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f67139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public MStarBar f67140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f67141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f67142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f67143j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f67144k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    RelativeLayout f67145l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    HtmlTextView f67146m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f67147n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.join.mgps.customview.widget.detail.a f67148o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameInfoCardView.this.f67148o != null) {
                GameInfoCardView.this.f67148o.E();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f67150b;

        b(final GamedetialModleFourBean val$modleFourBean) {
            this.f67150b = val$modleFourBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PaPaBannerListActivity_.intent(GameInfoCardView.this.getContext()).e(1).a(true).c(this.f67150b.getGame_company_id()).d(this.f67150b.getCompany_name()).start();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag.GameTagBean f67152b;

        c(final GameDetailRankingTag.GameTagBean val$finalShow_game) {
            this.f67152b = val$finalShow_game;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f67152b == null) {
                return;
            }
            RankingHomeActivity_.intent(GameInfoCardView.this.getContext()).c(1001).b(this.f67152b.getType()).a(this.f67152b.getId()).d(this.f67152b.getSub_title()).start();
        }
    }

    public GameInfoCardView(Context context) {
        super(context);
        c(context);
    }

    private void c(Context context) {
        View.inflate(context, R.layout.view_game_detail_game_info, this);
        this.f67135b = (SimpleDraweeView) findViewById(R.id.appIcon);
        this.f67136c = (TextView) findViewById(R.id.appName);
        this.f67137d = (TextView) findViewById(R.id.appCompany);
        this.f67138e = (TextView) findViewById(R.id.appSize);
        this.f67139f = (TextView) findViewById(R.id.appDownloadCount);
        this.f67140g = (MStarBar) findViewById(R.id.comment_head_mstarBar);
        this.f67141h = (LinearLayout) findViewById(R.id.companyLayout);
        this.f67142i = (LinearLayout) findViewById(R.id.scoreLayout);
        this.f67143j = (TextView) findViewById(R.id.comment_head_point_tx);
        this.f67144k = (TextView) findViewById(R.id.comment_head_num_tx);
        this.f67145l = (RelativeLayout) findViewById(R.id.rl_hot_rank);
        this.f67146m = (HtmlTextView) findViewById(R.id.tv_hot_title);
        this.f67147n = findViewById(R.id.ll_handle);
    }

    private void d(GamedetialModleFourBean modleFourBean) {
        try {
            GameScore game_score = modleFourBean.getGame_score();
            if (!"1".equals(modleFourBean.getComment_score_switch()) || game_score == null || !t2.i(game_score.getScore())) {
                this.f67142i.setVisibility(8);
                return;
            }
            if ("0.0".equals(game_score.getScore()) || "0".equals(game_score.getScore())) {
                this.f67144k.setText("暂未出分");
                this.f67143j.setText("0");
            } else {
                this.f67143j.setText(game_score.getScore());
            }
            this.f67140g.setIntegerMark(false);
            this.f67140g.setEnabled(false);
            this.f67140g.setStarMark(game_score.getTotal_stars());
            this.f67142i.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public void a(GamedetialModleFourBean modleFourBean) {
        l.h(this.f67135b, modleFourBean.getIco_remote());
        this.f67136c.setText(modleFourBean.getGame_name());
        this.f67137d.setText(modleFourBean.getCompany_name());
        if (modleFourBean.getBespeak_switch() == 1) {
            if (modleFourBean.getAppSize() == null || "0.00".equals(modleFourBean.getAppSize())) {
                this.f67138e.setVisibility(8);
            } else {
                this.f67138e.setText(modleFourBean.getAppSize() + "M");
                this.f67138e.setVisibility(0);
            }
            if (modleFourBean.getBespeak_count() == null) {
                this.f67139f.setText("已有0人预约");
            } else {
                this.f67139f.setText("已有" + modleFourBean.getBespeak_count() + "人预约");
            }
        } else {
            this.f67138e.setVisibility(0);
            this.f67139f.setText(t2.c(modleFourBean.getDown_count()));
            this.f67138e.setText(modleFourBean.getAppSize() + "M");
            try {
                if (modleFourBean.getDown_status() == 5 && modleFourBean.getSp_tag_info() != null && modleFourBean.getSp_tag_info().getDown_res() != null) {
                    this.f67139f.setText(modleFourBean.getSp_tag_info().getDown_res().getName());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (modleFourBean.getPlugin_num() != null) {
            if (modleFourBean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.f67138e.setVisibility(8);
                this.f67139f.setText(t2.c(modleFourBean.getDown_count()).replace("安装", getResources().getString(R.string.download_status_finished)));
            }
        }
        if (modleFourBean.getHandle_support() == 1) {
            this.f67147n.setVisibility(0);
        } else {
            this.f67147n.setVisibility(8);
        }
        if (w0.p(modleFourBean.getTagInfo())) {
            this.f67138e.setVisibility(8);
        }
        d(modleFourBean);
        this.f67142i.setOnClickListener(new a());
        this.f67141h.setVisibility(8);
        this.f67137d.setOnClickListener(new b(modleFourBean));
        if (modleFourBean.getGame_ranking_pos() == null) {
            this.f67145l.setVisibility(8);
            return;
        }
        GameDetailRankingTag.GameTagBean hot_game = modleFourBean.getGame_ranking_pos().getHot_game();
        GameDetailRankingTag.GameTagBean tag_game = modleFourBean.getGame_ranking_pos().getTag_game();
        GameDetailRankingTag.GameTagBean tag_game2 = modleFourBean.getGame_ranking_pos().getTag_game();
        if (hot_game == null) {
            hot_game = tag_game != null ? tag_game : tag_game2;
        }
        if (hot_game != null) {
            this.f67145l.setVisibility(0);
            this.f67146m.setHtml(hot_game.getTitle());
        } else {
            this.f67145l.setVisibility(8);
        }
        this.f67145l.setOnClickListener(new c(hot_game));
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public View getContentView() {
        return this;
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public void setGameInfoCallback(com.join.mgps.customview.widget.detail.a gameInfoCallback) {
        this.f67148o = gameInfoCallback;
    }

    public GameInfoCardView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        c(context);
    }

    public GameInfoCardView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        c(context);
    }
}
