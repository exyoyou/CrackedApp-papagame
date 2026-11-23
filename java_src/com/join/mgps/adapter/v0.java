package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.location.LocationManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.FriendBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f63257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f63258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f63259g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<FriendBean> f63260h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<FriendBean> f63261i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<FriendBean> f63262j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f63263k;

    class a extends RecyclerView.ViewHolder {
        a(View itemView) {
            super(itemView);
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f63265d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f63266e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View f63267f;

        public b(View itemView) {
            super(itemView);
            this.f63265d = (ImageView) itemView.findViewById(R.id.icCollapse);
            this.f63266e = (TextView) itemView.findViewById(R.id.onlineNum);
            this.f63267f = itemView.findViewById(R.id.add);
        }
    }

    public class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f63269d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f63270e;

        public c(View itemView) {
            super(itemView);
            this.f63270e = itemView.findViewById(R.id.label);
            this.f63269d = itemView.findViewById(R.id.reqPermission);
        }
    }

    public class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f63272d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f63273e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f63274f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f63275g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f63276h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f63277i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f63278j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ImageView f63279k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ImageView f63280l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ImageView f63281m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f63282n;

        public d(View itemView) {
            super(itemView);
            this.f63272d = (SimpleDraweeView) itemView.findViewById(R.id.avatar);
            this.f63273e = (TextView) itemView.findViewById(R.id.name);
            this.f63275g = (TextView) itemView.findViewById(R.id.locTxt);
            this.f63276h = (TextView) itemView.findViewById(R.id.levelTxt);
            this.f63277i = (TextView) itemView.findViewById(R.id.button);
            this.f63278j = (ImageView) itemView.findViewById(R.id.icLoc);
            this.f63279k = (ImageView) itemView.findViewById(R.id.icLevel);
            this.f63280l = (ImageView) itemView.findViewById(R.id.icLevel1);
            this.f63281m = (ImageView) itemView.findViewById(R.id.icLevel1Bg);
            this.f63274f = (TextView) itemView.findViewById(R.id.recommend);
            this.f63282n = itemView.findViewById(R.id.offlineOver);
        }
    }

    public interface e {
        void onAddFriend();

        void onFriendClick(String ruid);

        void onInvite(FriendBean bean);

        void onJoin(FriendBean bean);
    }

    public v0(Context context) {
        this.f63257e = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(View view) {
        this.f63257e.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int B(FriendBean friendBean, FriendBean friendBean2) {
        if (friendBean == null || friendBean2 == null) {
            if (friendBean != friendBean2) {
                if (friendBean == null) {
                    return 1;
                }
                if (friendBean2 == null) {
                    return -1;
                }
            }
            return 0;
        }
        if (friendBean.getState() != friendBean2.getState()) {
            if (friendBean.getState() == 0) {
                return -1;
            }
            if (friendBean2.getState() == 0) {
                return 1;
            }
        }
        if (friendBean.isRecommend() != friendBean2.isRecommend()) {
            if (friendBean.isRecommend()) {
                return 1;
            }
            if (friendBean2.isRecommend()) {
                return -1;
            }
        }
        return 0;
    }

    private boolean l() {
        return ((LocationManager) this.f63257e.getSystemService("location")).isProviderEnabled(Constants.WS_MESSAGE_TYPE_GPS);
    }

    private int m(int position) {
        if (position == 0) {
            return position;
        }
        int i10 = position - 1;
        if (i10 < this.f63260h.size()) {
            return i10;
        }
        int size = i10 - this.f63260h.size();
        if (this.f63262j.size() <= 0 || size == 0) {
            return size;
        }
        int i11 = size - 1;
        return i11 < this.f63262j.size() ? i11 : i11 - this.f63262j.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(FriendBean friendBean, View view) {
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
            return;
        }
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onJoin(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(FriendBean friendBean, View view) {
        UserInfo accountData = AccountUtil_.getInstance_(view.getContext()).getAccountData();
        Ext ext = new Ext();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(friendBean.isRecommend() ? "1" : "0");
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.LobbyInvite, ext);
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
            return;
        }
        if (friendBean.isBanned()) {
            k("邀请失败：好友已被封禁！");
            return;
        }
        if (friendBean.getState() != 0) {
            com.join.mgps.Util.a3.b(view.getContext()).d("对方已离线，无法约战！");
            return;
        }
        if ((accountData != null ? AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() : 0L) < 10) {
            k("铜板数不足，对战至少需要10铜板");
            return;
        }
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onInvite(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(FriendBean friendBean, View view) {
        UserInfo accountData = AccountUtil_.getInstance_(view.getContext()).getAccountData();
        Ext ext = new Ext();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(friendBean.isRecommend() ? "1" : "0");
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.LobbyInvite, ext);
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
            return;
        }
        if (friendBean.isBanned()) {
            k("邀请失败：好友已被封禁！");
            return;
        }
        if ((accountData != null ? AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() : 0L) < 10) {
            k("铜板数不足，对战至少需要10铜板");
            return;
        }
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onInvite(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(FriendBean friendBean, View view) {
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onFriendClick(friendBean.getUid() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(FriendBean friendBean, View view) {
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onFriendClick(friendBean.getUid() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(FriendBean friendBean, View view) {
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onInvite(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        e eVar = this.f63263k;
        if (eVar != null) {
            eVar.onAddFriend();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(View view) {
        if (this.f63259g) {
            if (this.f63261i.size() != 0) {
                this.f63260h.addAll(this.f63261i);
                this.f63261i.clear();
                notifyItemRangeInserted(1, this.f63260h.size());
            }
        } else if (this.f63260h.size() != 0) {
            this.f63261i.addAll(this.f63260h);
            this.f63260h.clear();
            notifyItemRangeRemoved(1, this.f63261i.size());
        }
        this.f63259g = !this.f63259g;
        notifyItemChanged(0);
    }

    void C(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        try {
            if (viewHolder instanceof d) {
                d dVar = (d) viewHolder;
                final FriendBean friendBean = i10 < this.f63260h.size() ? this.f63260h.get(i10) : null;
                if (friendBean == null) {
                    return;
                }
                RoundingParams roundingParams = new RoundingParams();
                roundingParams.t(this.f63257e.getResources().getDimensionPixelOffset(R.dimen.wdp47));
                roundingParams.x(true);
                com.join.android.app.common.utils.l.w(((d) viewHolder).f63272d, R.drawable.main_normal_icon, friendBean.getAvatar(), roundingParams);
                dVar.f63273e.setText(friendBean.getNickName());
                dVar.f63279k.setVisibility(8);
                dVar.f63278j.setVisibility(8);
                dVar.f63276h.setVisibility(4);
                TextView textView = dVar.f63275g;
                TextView textView2 = dVar.f63277i;
                if (friendBean.getState() != 0) {
                    textView.setTextColor(Color.parseColor("#FF6E6E6E"));
                    textView.setText("离线");
                } else if (TextUtils.isEmpty(friendBean.getGameName())) {
                    textView.setTextColor(Color.parseColor("#FF16DB16"));
                    textView.setText("在线");
                } else {
                    textView.setText(friendBean.getGameName());
                    textView.setTextColor(Color.parseColor("#FFFFA841"));
                }
                if (!TextUtils.isEmpty(friendBean.getGameId()) && !"0".equals(friendBean.getGameId())) {
                    textView2.setVisibility(0);
                    if (friendBean.getRoomId() != 0) {
                        textView2.setText("加入");
                        if (friendBean.getState() == 0) {
                            textView.setTextColor(Color.parseColor("#FFFFA841"));
                        }
                        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.l0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f62649b.s(friendBean, view);
                            }
                        });
                    } else {
                        if (friendBean.getState() == 0) {
                            textView.setTextColor(Color.parseColor("#FF16DB16"));
                        }
                        textView2.setText("约战");
                        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f62739b.t(friendBean, view);
                            }
                        });
                    }
                } else if (friendBean.getState() == 0) {
                    textView2.setVisibility(0);
                    textView2.setText("约战");
                    textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.n0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f62798b.u(friendBean, view);
                        }
                    });
                }
                if (com.wufan.friend.chat.c.u().E(friendBean.getUid() + "")) {
                    textView2.setSelected(true);
                    textView2.setEnabled(false);
                } else {
                    textView2.setSelected(false);
                    textView2.setEnabled(true);
                }
                H(dVar.f63279k, dVar.f63276h, friendBean.getLevel());
                I(dVar.f63281m, dVar.f63280l, friendBean.getLevel());
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.o0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62845b.v(friendBean, view);
                    }
                };
                dVar.f63272d.setOnClickListener(onClickListener);
                dVar.f63273e.setOnClickListener(onClickListener);
                if (friendBean.isRecommend()) {
                    dVar.f63280l.setVisibility(0);
                    dVar.f63274f.setVisibility(0);
                    dVar.f63277i.setVisibility(0);
                    dVar.f63282n.setVisibility(8);
                    dVar.f63273e.setTextColor(Color.parseColor("#ffffff"));
                    return;
                }
                if (friendBean.getState() != 0) {
                    dVar.f63280l.setVisibility(4);
                    dVar.f63274f.setVisibility(8);
                    dVar.f63277i.setVisibility(4);
                    dVar.f63282n.setVisibility(0);
                    dVar.f63273e.setTextColor(Color.parseColor("#FFA0A0A0"));
                    return;
                }
                dVar.f63274f.setVisibility(8);
                if (TextUtils.isEmpty(friendBean.getGameId()) || "0".equals(friendBean.getGameId()) || friendBean.getRoomType() == 31 || friendBean.getRoomType() == 35) {
                    dVar.f63277i.setVisibility(0);
                } else if (friendBean.getRoomType() != 0) {
                    dVar.f63277i.setVisibility(4);
                }
                dVar.f63280l.setVisibility(0);
                dVar.f63282n.setVisibility(8);
                dVar.f63273e.setTextColor(Color.parseColor("#ffffff"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void D(boolean collapse) {
        this.f63259g = collapse;
    }

    public void E(int friendCount) {
        this.f63258f = friendCount;
    }

    public void F(List<FriendBean> friends) {
        this.f63260h = friends;
    }

    public void G(List<FriendBean> friendsRecomm) {
        this.f63262j = friendsRecomm;
    }

    void H(ImageView ic2, TextView levelTv, int level) {
        String str;
        if (level == 1) {
            ic2.setBackgroundResource(R.drawable.gameleve1);
            str = "见习";
        } else if (level == 2) {
            ic2.setBackgroundResource(R.drawable.gameleve3);
            str = "资深";
        } else if (level == 3) {
            ic2.setBackgroundResource(R.drawable.gameleve2);
            str = "精英";
        } else if (level == 4) {
            ic2.setBackgroundResource(R.drawable.gameleve4);
            str = "宗师";
        } else if (level != 5) {
            str = "";
        } else {
            ic2.setBackgroundResource(R.drawable.gameleve5);
            str = "传说";
        }
        if (levelTv != null) {
            levelTv.setText(str);
        }
    }

    void I(View borderView, ImageView icLevel, int level) {
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

    public void J(e listener) {
        this.f63263k = listener;
    }

    public void K() {
        List<FriendBean> list = this.f63260h;
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            Collections.sort(this.f63260h, new Comparator() { // from class: com.join.mgps.adapter.p0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return v0.B((FriendBean) obj, (FriendBean) obj2);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FriendBean> list = this.f63260h;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return 2;
    }

    void k(String msg) {
        com.join.mgps.Util.a3.b(this.f63257e).d(msg);
    }

    public int n() {
        return this.f63258f;
    }

    public List<FriendBean> o() {
        return this.f63260h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        int itemViewType = getItemViewType(i10);
        if (viewHolder instanceof d) {
            int iM = m(i10);
            if (itemViewType == 2) {
                C(viewHolder, i10);
                return;
            }
            if (itemViewType == 4) {
                final FriendBean friendBean = iM < this.f63262j.size() ? this.f63262j.get(iM) : null;
                if (friendBean == null) {
                    return;
                }
                d dVar = (d) viewHolder;
                com.join.android.app.common.utils.l.y(dVar.f63272d, friendBean.getAvatar());
                dVar.f63273e.setText(friendBean.getNickName());
                dVar.f63279k.setVisibility(8);
                dVar.f63276h.setVisibility(4);
                dVar.f63278j.setVisibility(8);
                dVar.f63275g.setVisibility(8);
                H(dVar.f63279k, dVar.f63276h, friendBean.getLevel());
                I(dVar.f63281m, dVar.f63280l, friendBean.getLevel());
                if (!TextUtils.isEmpty(friendBean.getGameName())) {
                    dVar.f63275g.setVisibility(0);
                    dVar.f63275g.setText(friendBean.getGameName());
                    dVar.f63275g.setTextColor(Color.parseColor("#FFFFA841"));
                }
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.q0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63010b.w(friendBean, view);
                    }
                };
                dVar.f63272d.setOnClickListener(onClickListener);
                dVar.f63273e.setOnClickListener(onClickListener);
                dVar.f63277i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63100b.x(friendBean, view);
                    }
                });
                return;
            }
            return;
        }
        if (!(viewHolder instanceof b)) {
            if (viewHolder instanceof c) {
                c cVar = (c) viewHolder;
                cVar.f63270e.setVisibility(8);
                cVar.f63269d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63213b.A(view);
                    }
                });
                return;
            }
            return;
        }
        int size = this.f63260h.size();
        if (this.f63259g) {
            size = this.f63261i.size();
        }
        b bVar = (b) viewHolder;
        bVar.f63266e.setText("在线(" + size + net.lingala.zip4j.util.e.F0 + this.f63258f + ")");
        bVar.f63267f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63128b.y(view);
            }
        });
        if (this.f63259g) {
            bVar.f63265d.setBackgroundResource(R.drawable.ic_add);
        } else {
            bVar.f63265d.setBackgroundResource(R.drawable.ic_minus);
        }
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.join.mgps.adapter.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63177b.z(view);
            }
        };
        bVar.f63265d.setOnClickListener(onClickListener2);
        bVar.f63266e.setOnClickListener(onClickListener2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        if (viewType == 1) {
            return new b(LayoutInflater.from(this.f63257e).inflate(R.layout.item_friend_item_header, viewGroup, false));
        }
        if (viewType == 2 || viewType == 4) {
            return new d(LayoutInflater.from(this.f63257e).inflate(R.layout.item_friend_item, viewGroup, false));
        }
        return viewType == 3 ? new c(LayoutInflater.from(this.f63257e).inflate(R.layout.item_friend_item_header_recommend, viewGroup, false)) : new a(new View(this.f63257e));
    }

    public List<FriendBean> p() {
        return this.f63262j;
    }

    public e q() {
        return this.f63263k;
    }

    public boolean r() {
        return this.f63259g;
    }
}
