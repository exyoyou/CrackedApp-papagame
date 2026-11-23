package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.SimulatorExitListBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.qq.e.ads.nativ.NativeExpressADView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class o7<T> extends com.join.mgps.base.a<SimulatorExitListBean<T>, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f62972k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f62973l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f62974m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f62975n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f62976o = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Context f62977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f62978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HashMap<Object, Integer> f62979j;

    public interface a {
        void like(int ruid);

        void onAddFriend(int ruid);
    }

    class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f62980d;

        public b(View itemView) {
            super(itemView);
            this.f62980d = (SimpleDraweeView) itemView.findViewById(R.id.img);
        }
    }

    public o7(Context context) {
        super(null);
        this.f62979j = new HashMap<>();
        this.f62977h = context;
        r(1, R.layout.simulator_exit_item);
        r(2, R.layout.simulator_exit_friend_item);
        r(3, R.layout.item_info_stream_ad_gdt);
        r(4, R.layout.item_info_stream_ad_tt);
        r(5, R.layout.simulator_exit_domain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(DomainInfoBean domainInfoBean, View view) {
        UtilsMy.D4(this.f62977h, domainInfoBean.getInfo(), "simulato_game_out");
        com.papa.sim.statistic.t.l(this.f62977h).R1(Event.pdSimulatorOutClick, new Ext().setGameId(domainInfoBean.getGameId()).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(FriendBackGameRspBean.FriendInfo friendInfo, View view) {
        a aVar = this.f62978i;
        if (aVar != null) {
            aVar.onAddFriend(friendInfo.getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(FriendBackGameRspBean.FriendInfo friendInfo, View view) {
        a aVar = this.f62978i;
        if (aVar != null) {
            aVar.like(friendInfo.getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H(GamedetialModleFourBean gamedetialModleFourBean, View view) {
        IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gamedetialModleFourBean.getCrc_sign_id(), gamedetialModleFourBean.getGame_info_tpl_type(), gamedetialModleFourBean.getSp_tpl_two_position(), 13101);
    }

    private void I(com.join.mgps.base.b bVar, SimulatorExitListBean<T> simulatorExitListBean) {
        final DomainInfoBean domainInfoBean = (DomainInfoBean) simulatorExitListBean.getData();
        if (domainInfoBean == null) {
            return;
        }
        com.join.android.app.common.utils.l.o((SimpleDraweeView) bVar.getView(R.id.img), domainInfoBean.getPic());
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.k7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62633b.E(domainInfoBean, view);
            }
        });
    }

    private void J(com.join.mgps.base.b bVar, SimulatorExitListBean<T> simulatorExitListBean) {
        final FriendBackGameRspBean.FriendInfo friendInfo = (FriendBackGameRspBean.FriendInfo) simulatorExitListBean.getData();
        if (bVar.getLayoutPosition() == 0) {
            bVar.setGone(R.id.ml, true);
            bVar.setGone(R.id.divider, false);
            bVar.setGone(R.id.mr, false);
        } else if (bVar.getLayoutPosition() == getItemCount() - 1) {
            bVar.setGone(R.id.ml, false);
            bVar.setGone(R.id.divider, true);
            bVar.setGone(R.id.mr, true);
        } else {
            bVar.setGone(R.id.ml, false);
            bVar.setGone(R.id.divider, true);
            bVar.setGone(R.id.mr, false);
        }
        P(bVar.getView(R.id.icLevel1Bg), (ImageView) bVar.getView(R.id.icLevel1), friendInfo.getLevel());
        com.join.android.app.common.utils.l.y((SimpleDraweeView) bVar.getView(R.id.avatar), friendInfo.getAvatar());
        bVar.setText(R.id.name, friendInfo.getNickName());
        bVar.setText(R.id.label, friendInfo.getLevelName());
        bVar.setGone(R.id.vip, friendInfo.isVip());
        if (friendInfo.getMemberTitle() != null) {
            try {
                if (TextUtils.isEmpty(friendInfo.getMemberTitle().getBattleColor())) {
                    bVar.setTextColor(R.id.label, Color.parseColor("#FFFFB543"));
                } else {
                    bVar.setTextColor(R.id.label, Color.parseColor(friendInfo.getMemberTitle().getBattleColor()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            bVar.setText(R.id.label, friendInfo.getMemberTitle().getBattleTitle());
        }
        TextView textView = (TextView) bVar.getView(R.id.btn);
        if (friendInfo.isAddFriendStatus() || friendInfo.isSendFriendRequestStatus()) {
            textView.setSelected(friendInfo.isSendFriendRequestStatus());
            if (friendInfo.isSendFriendRequestStatus()) {
                textView.setText("已发送");
                textView.setOnClickListener(null);
            } else {
                textView.setText("添加好友");
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.l7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62717b.F(friendInfo, view);
                    }
                });
            }
        } else {
            textView.setVisibility(4);
            textView.setOnClickListener(null);
        }
        ImageView imageView = (ImageView) bVar.getView(R.id.like);
        if (friendInfo.isLikeStatus()) {
            imageView.setBackgroundResource(R.drawable.like_eixt_gray);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f62778b.G(friendInfo, view);
                }
            });
        } else {
            imageView.setBackgroundResource(R.drawable.like_eixt_yellow);
            imageView.setOnClickListener(null);
        }
    }

    private void K(com.join.mgps.base.b bVar, SimulatorExitListBean<T> simulatorExitListBean) {
        try {
            NativeExpressADView nativeExpressADView = (NativeExpressADView) simulatorExitListBean.getData();
            ViewGroup viewGroup = (ViewGroup) bVar.getView(R.id.express_ad_container);
            this.f62979j.put(nativeExpressADView, Integer.valueOf(bVar.getLayoutPosition()));
            viewGroup.removeAllViews();
            if (nativeExpressADView.getParent() != null) {
                ((ViewGroup) nativeExpressADView.getParent()).removeView(nativeExpressADView);
            }
            viewGroup.addView(nativeExpressADView);
            viewGroup.setBackgroundResource(R.drawable.bg_ad_item);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void L(com.join.mgps.base.b bVar, SimulatorExitListBean<T> simulatorExitListBean) {
        final GamedetialModleFourBean gamedetialModleFourBean = (GamedetialModleFourBean) simulatorExitListBean.getData();
        int layoutPosition = bVar.getLayoutPosition();
        if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_gif()) && layoutPosition == 0) {
            com.join.android.app.common.utils.l.o((SimpleDraweeView) bVar.getView(R.id.img), gamedetialModleFourBean.getRecommend_game_big_gif());
        } else if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_pic()) && (layoutPosition == 0 || layoutPosition == 1 || layoutPosition == 2 || layoutPosition == 3)) {
            com.join.android.app.common.utils.l.e((SimpleDraweeView) bVar.getView(R.id.img), R.drawable.main_normal_icon, gamedetialModleFourBean.getRecommend_game_big_pic(), com.facebook.drawee.drawable.s.c.f27292i);
        } else if (gamedetialModleFourBean.getPic_info() != null && gamedetialModleFourBean.getPic_info().size() > 0 && gamedetialModleFourBean.getPic_info().get(0).getRemote() != null) {
            com.join.android.app.common.utils.l.e((SimpleDraweeView) bVar.getView(R.id.img), R.drawable.main_normal_icon, gamedetialModleFourBean.getPic_info().get(0).getRemote().getPath(), com.facebook.drawee.drawable.s.c.f27292i);
        }
        bVar.setText(R.id.name, gamedetialModleFourBean.getGame_name());
        bVar.setText(R.id.score, gamedetialModleFourBean.getScore());
        bVar.getView(R.id.rect).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.n7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                o7.H(gamedetialModleFourBean, view);
            }
        });
        LinearLayout linearLayout = (LinearLayout) bVar.getView(R.id.tagLayout);
        linearLayout.removeAllViews();
        if (gamedetialModleFourBean.getTag_info() != null) {
            for (int i10 = 0; i10 < gamedetialModleFourBean.getTag_info().size() && i10 <= 2; i10++) {
                linearLayout.addView(R(gamedetialModleFourBean.getTag_info().get(i10).getName()));
            }
        }
        if (layoutPosition == 0) {
            bVar.setGone(R.id.ml, true);
            bVar.setGone(R.id.divider, false);
            bVar.setGone(R.id.mr, false);
        } else if (layoutPosition == getItemCount() - 1) {
            bVar.setGone(R.id.ml, false);
            bVar.setGone(R.id.divider, true);
            bVar.setGone(R.id.mr, true);
        } else {
            bVar.setGone(R.id.ml, false);
            bVar.setGone(R.id.divider, true);
            bVar.setGone(R.id.mr, false);
        }
    }

    private void M(com.join.mgps.base.b bVar, SimulatorExitListBean<T> simulatorExitListBean) {
        ViewGroup viewGroup = (ViewGroup) bVar.getView(R.id.express_ad_container);
        try {
            View view = (View) simulatorExitListBean.getData();
            this.f62979j.put(view, Integer.valueOf(bVar.getLayoutPosition()));
            if (view != null) {
                viewGroup.removeAllViews();
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                viewGroup.addView(view);
                viewGroup.setBackgroundResource(R.drawable.bg_ad_item);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, SimulatorExitListBean<T> item) {
        int itemType = item.getItemType();
        if (itemType == 1) {
            L(helper, item);
            return;
        }
        if (itemType == 2) {
            J(helper, item);
            return;
        }
        if (itemType == 3) {
            K(helper, item);
        } else if (itemType == 4) {
            M(helper, item);
        } else {
            if (itemType != 5) {
                return;
            }
            I(helper, item);
        }
    }

    public a D() {
        return this.f62978i;
    }

    public void N(NativeExpressADView adView) {
        int iIntValue = this.f62979j.remove(adView).intValue();
        remove(iIntValue);
        notifyItemRemoved(iIntValue);
        if (adView != null) {
            adView.destroy();
        }
    }

    public void O(TTNativeExpressAd adView) {
        int iIntValue = this.f62979j.remove(adView.getExpressAdView()).intValue();
        remove(iIntValue);
        notifyItemRemoved(iIntValue);
        adView.destroy();
    }

    void P(View borderView, ImageView icLevel, int level) {
        if (level <= 0 || level >= 7) {
            icLevel.setVisibility(8);
            borderView.setVisibility(8);
        } else {
            icLevel.setVisibility(0);
            borderView.setVisibility(0);
        }
        switch (level) {
            case 1:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                borderView.setBackgroundResource(R.drawable.bg_border_yellow);
                break;
            case 2:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                break;
            case 3:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                break;
            case 4:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                break;
            case 5:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                break;
            case 6:
                icLevel.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                break;
            default:
                icLevel.setVisibility(8);
                borderView.setVisibility(8);
                break;
        }
    }

    public void Q(a l10) {
        this.f62978i = l10;
    }

    View R(String tag) {
        TextView textView = new TextView(this.f62977h);
        textView.setText(tag);
        textView.setSingleLine(true);
        textView.setTextColor(Color.parseColor("#FFA8A8A8"));
        textView.setTextSize(0, this.f62977h.getResources().getDimensionPixelSize(R.dimen.wdp20));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, this.f62977h.getResources().getDimensionPixelOffset(R.dimen.wdp10), 0);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    @Override // com.join.mgps.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        SimulatorExitListBean simulatorExitListBean = (SimulatorExitListBean) getItem(i10);
        return simulatorExitListBean != null ? simulatorExitListBean.getItemType() : super.getItemViewType(i10);
    }
}
