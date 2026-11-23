package com.join.mgps.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.RecommendAd;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class t2 extends com.join.mgps.base.a<CommonMultiItemBean, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f63180k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f63181l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f63182m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f63183n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f63184o = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f63185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f63186i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n3 f63187j;

    public t2(Context context) {
        super(null);
        this.f63185h = context;
        r(0, R.layout.layout_game_main_vip);
        r(1, R.layout.item_game_recommend_view1);
        r(2, R.layout.item_game_ad_type1);
        r(3, R.layout.item_game_recommend_domain);
        r(4, R.layout.item_game_recommend_view1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentDateBean intentDataBean = commonGameInfoBean.getIntentDataBean();
        ExtBean extBean = intentDataBean.getExtBean();
        if (extBean == null) {
            extBean = new ExtBean();
            intentDataBean.setExtBean(extBean);
        }
        extBean.setFrom("5");
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDataBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(DomainInfoBean domainInfoBean, View view) {
        UtilsMy.D4(this.f63185h, domainInfoBean.getInfo(), "simulato_game_start");
        com.papa.sim.statistic.t.l(this.f63185h).R1(Event.pdSimulatorStartClick, new Ext().setGameId(this.f63186i).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(View view) {
        EndGameActivity_.intent(this.f63185h).b(this.f63186i).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J(IntentDateBean intentDateBean, com.join.mgps.base.b bVar, View view) {
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
        Ext ext = new Ext();
        ext.setPosition("" + bVar.getLayoutPosition());
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.indexGame_ad, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(GameMainV4DataBean.MemberInfoBean memberInfoBean, View view) {
        D(memberInfoBean);
    }

    private void L(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
        if (commonGameInfoBean == null) {
            return;
        }
        if (!com.join.mgps.Util.t2.h(commonGameInfoBean.getCoverPicUrl())) {
            ((SimpleDraweeView) helper.getView(R.id.sdv_image)).setController(Fresco.newDraweeControllerBuilder().setUri(commonGameInfoBean.getCoverPicUrl()).F(true).c(((SimpleDraweeView) helper.getView(R.id.sdv_image)).getController()).build());
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t2.G(commonGameInfoBean, view);
            }
        });
    }

    private void M(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        final DomainInfoBean domainInfoBean = (DomainInfoBean) item.getData();
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.bg), domainInfoBean.getPic());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63130b.H(domainInfoBean, view);
            }
        });
    }

    private void N(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean = (GameMainV4DataBean.EndGameConfigBean) item.getData();
        if (endGameConfigBean == null) {
            return;
        }
        String endgame_pic = endGameConfigBean.getEndgame_pic();
        if (!com.join.mgps.Util.t2.h(endgame_pic)) {
            Uri uri = Uri.parse(endgame_pic);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.bg);
            String str = (String) simpleDraweeView.getTag();
            if (TextUtils.isEmpty(str) || !endgame_pic.equals(str)) {
                simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().b(uri).F(true).c(simpleDraweeView.getController()).build());
                simpleDraweeView.setTag(endgame_pic);
            }
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63029b.I(view);
            }
        });
    }

    private void O(final com.join.mgps.base.b helper, CommonMultiItemBean item) {
        RecommendAd recommendAd = (RecommendAd) item.getData();
        if (recommendAd == null) {
            return;
        }
        recommendAd.getCrc_link_type_val();
        String pic_remote = recommendAd.getPic_remote();
        if (!com.join.mgps.Util.t2.h(pic_remote)) {
            Uri uri = Uri.parse(pic_remote);
            String str = (String) helper.getView(R.id.bg).getTag();
            if (TextUtils.isEmpty(str) || !pic_remote.equals(str)) {
                ((SimpleDraweeView) helper.getView(R.id.bg)).setController(Fresco.newDraweeControllerBuilder().b(uri).F(true).c(((SimpleDraweeView) helper.getView(R.id.bg)).getController()).build());
                ((SimpleDraweeView) helper.getView(R.id.bg)).setTag(pic_remote);
            }
        }
        final IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(recommendAd.getLink_type());
        intentDateBean.setJump_type(recommendAd.getJump_type());
        intentDateBean.setLink_type_val(recommendAd.getLink_type_val());
        intentDateBean.setCrc_link_type_val(recommendAd.getCrc_link_type_val());
        intentDateBean.setTpl_type(recommendAd.getTpl_type() + "");
        intentDateBean.setExtBean(new ExtBean().set_from_type(13102));
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.o2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t2.J(intentDateBean, helper, view);
            }
        });
    }

    private void P(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        if (item.getExtData() instanceof GameMainV4DataBean.MemberInfoBean) {
            final GameMainV4DataBean.MemberInfoBean memberInfoBean = (GameMainV4DataBean.MemberInfoBean) item.getExtData();
            if (memberInfoBean != null) {
                if (!com.join.mgps.Util.t2.h(memberInfoBean.getPic_remote())) {
                    ((SimpleDraweeView) helper.getView(R.id.vipIcon)).setImageURI(memberInfoBean.getPic_remote());
                }
                helper.setText(R.id.vipTitle, memberInfoBean.getTitle());
            }
            helper.getView(R.id.buyVip).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63102b.K(memberInfoBean, view);
                }
            });
        }
        List<GameMainV4DataBean.MemberFunBean> list = (List) item.getData();
        if (this.f63187j == null) {
            this.f63187j = new n3(this.f63185h, this.f63186i);
        }
        ((GridView) helper.getView(R.id.vipFunc)).setAdapter((ListAdapter) this.f63187j);
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f63187j.d(list);
        this.f63187j.notifyDataSetChanged();
    }

    void D(GameMainV4DataBean.MemberInfoBean mMemberInfoBean) {
        String str;
        if (mMemberInfoBean != null) {
            try {
                if (Integer.parseInt(mMemberInfoBean.getLink_type()) == 4 && mMemberInfoBean.getLink_type_val() != null && mMemberInfoBean.getLink_type_val().startsWith("http")) {
                    String link_type_val = mMemberInfoBean.getLink_type_val();
                    if (link_type_val.contains("?")) {
                        str = link_type_val + "&game_id=" + this.f63186i;
                    } else {
                        str = link_type_val + "?game_id=" + this.f63186i;
                    }
                    mMemberInfoBean.setLink_type_val(str);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(Integer.valueOf(mMemberInfoBean.getLink_type()).intValue());
                intentDateBean.setJump_type(Integer.valueOf(mMemberInfoBean.getJump_type()).intValue());
                intentDateBean.setLink_type_val(mMemberInfoBean.getLink_type_val());
                IntentUtil.getInstance().intentActivity(this.f63185h, intentDateBean);
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, CommonMultiItemBean item) {
        int itemType = item.getItemType();
        if (itemType == 0) {
            P(helper, item);
            return;
        }
        if (itemType == 1) {
            O(helper, item);
            return;
        }
        if (itemType == 2) {
            L(helper, item);
        } else if (itemType == 3) {
            M(helper, item);
        } else {
            if (itemType != 4) {
                return;
            }
            N(helper, item);
        }
    }

    public String F() {
        return this.f63186i;
    }

    public void setGameId(String gameId) {
        this.f63186i = gameId;
    }
}
