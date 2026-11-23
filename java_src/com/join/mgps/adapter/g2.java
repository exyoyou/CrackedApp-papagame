package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.SimpleWrapperRoom;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CountDownerTextView;
import com.join.mgps.customview.VipView;
import com.papa91.battle.protocol.Platform;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.RoomState;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g2 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<SimpleWrapperRoom> f62173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f62174f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f62175g = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    b f62176h = null;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f62177b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62178c;

        a(final RecyclerView.ViewHolder val$holder, final int val$position) {
            this.f62177b = val$holder;
            this.f62178c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            b bVar = g2.this.f62176h;
            if (bVar != null) {
                bVar.a(this.f62177b, this.f62178c);
            }
        }
    }

    public interface b {
        void a(RecyclerView.ViewHolder holder, int position);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f62180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f62181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f62182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f62183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f62185f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public SimpleDraweeView f62186g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f62187h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f62188i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VipView f62189j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ImageView f62190k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f62191l;
    }

    public g2(Context context, List<SimpleWrapperRoom> datas) {
        this.f62174f = context;
        this.f62173e = datas;
    }

    private void a(c posHolder) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) posHolder.f62181b.getLayoutParams();
        float dimensionPixelOffset = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp86);
        float f10 = this.f62175g;
        layoutParams.height = (int) (dimensionPixelOffset * f10);
        layoutParams.width = (int) (dimensionPixelOffset * f10);
        posHolder.f62181b.setLayoutParams(layoutParams);
        posHolder.f62184e.setTextSize(0, c(R.dimen.wdp20) * this.f62175g * 0.92f);
        float dimensionPixelOffset2 = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp20);
        VipView vipView = posHolder.f62189j;
        float f11 = this.f62175g;
        vipView.setSize((int) (dimensionPixelOffset2 * f11), (int) (dimensionPixelOffset2 * f11));
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) posHolder.f62190k.getLayoutParams();
        float dimensionPixelOffset3 = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp20);
        float f12 = this.f62175g;
        layoutParams2.height = (int) (dimensionPixelOffset3 * f12);
        layoutParams2.width = (int) (dimensionPixelOffset3 * f12);
        posHolder.f62190k.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) posHolder.f62182c.getLayoutParams();
        float dimensionPixelOffset4 = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp10);
        float f13 = this.f62175g;
        layoutParams3.bottomMargin = (int) (dimensionPixelOffset4 * f13 * 0.92f);
        layoutParams3.topMargin = (int) (dimensionPixelOffset4 * f13 * 0.92f);
        layoutParams3.leftMargin = (int) (dimensionPixelOffset4 * f13 * 0.92f);
        layoutParams3.rightMargin = (int) (dimensionPixelOffset4 * f13 * 0.92f);
        posHolder.f62182c.setLayoutParams(layoutParams3);
    }

    private void b(d holder) {
        holder.f62194f.setTextSize(0, c(R.dimen.wdp24) * this.f62175g * 0.92f);
        holder.f62199k.setTextSize(0, c(R.dimen.wdp20) * this.f62175g * 0.92f);
        holder.f62198j.setTextSize(0, c(R.dimen.wdp20) * this.f62175g * 0.92f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.f62204p.getLayoutParams();
        float dimensionPixelOffset = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp22);
        float f10 = this.f62175g;
        layoutParams.height = (int) (dimensionPixelOffset * f10);
        layoutParams.width = (int) (dimensionPixelOffset * f10);
        holder.f62204p.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) holder.f62205q.getLayoutParams();
        float dimensionPixelOffset2 = this.f62174f.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        float f11 = this.f62175g;
        layoutParams2.height = (int) (dimensionPixelOffset2 * f11);
        layoutParams2.width = (int) (dimensionPixelOffset2 * f11);
        holder.f62205q.setLayoutParams(layoutParams2);
    }

    private float c(int id2) {
        return this.f62174f.getResources().getDimensionPixelOffset(id2);
    }

    private void g(ImageView ivProficiencyLevel, View borderView, int leve) {
        borderView.setVisibility(0);
        switch (leve) {
            case 1:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                borderView.setBackgroundResource(R.drawable.bg_border_yellow);
                break;
            case 2:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                break;
            case 3:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                break;
            case 4:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                break;
            case 5:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                break;
            case 6:
                ivProficiencyLevel.setVisibility(0);
                ivProficiencyLevel.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                break;
            default:
                ivProficiencyLevel.setVisibility(8);
                borderView.setBackgroundResource(R.drawable.mg_proficiency_level_0_bg);
                break;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void i(d dVar, SimpleWrapperRoom simpleWrapperRoom) {
        SimpleRoom simpleRoom = simpleWrapperRoom.simpleRoom;
        j(dVar.f62194f, R.dimen.wdp47);
        b(dVar);
        if (simpleRoom.getElite()) {
            dVar.f62201m.setVisibility(0);
            dVar.f62197i.setVisibility(8);
            dVar.f62200l.setVisibility(8);
            dVar.f62201m.setText(this.f62174f.getString(R.string.room_list_item_copper, Integer.valueOf(simpleRoom.getChallengeCoins())));
        } else {
            dVar.f62201m.setVisibility(8);
            dVar.f62197i.setVisibility(8);
        }
        dVar.f62194f.setText(simpleRoom.getGameName());
        if (simpleRoom.getHasJoinPassword()) {
            dVar.f62195g.setVisibility(0);
        } else {
            dVar.f62195g.setVisibility(8);
        }
        if (simpleRoom.getVip()) {
            dVar.f62196h.setVisibility(8);
        } else {
            dVar.f62196h.setVisibility(8);
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < 4; i10++) {
            c cVar = dVar.f62206r[i10];
            a(cVar);
            cVar.f62189j.setVipData(0, 0);
            if (i10 < simpleRoom.getPlayerListCount()) {
                cVar.f62180a.setVisibility(0);
                RoomPosition playerList = simpleRoom.getPlayerList(i10);
                if (com.join.mgps.Util.t2.h(playerList.getNickname())) {
                    com.join.mgps.Util.g1.d("newarena account ", "uid =" + playerList.getUid());
                }
                cVar.f62184e.setText(playerList.getNickname());
                g(cVar.f62190k, cVar.f62191l, playerList.getProficiencyLevel());
                dVar.f62202n.setVisibility(8);
                if (simpleRoom.getPlayerListCount() <= 3 && simpleRoom.getPlayerListCount() == 2) {
                    dVar.f62202n.setVisibility(0);
                    dVar.f62202n.setBackgroundResource(R.drawable.newarena_wave_img);
                }
                if (playerList.getUid() != 0) {
                    cVar.f62186g.setVisibility(0);
                    cVar.f62187h.setVisibility(8);
                    com.join.android.app.common.utils.l.l(cVar.f62186g, playerList.getAvatar());
                    cVar.f62188i.setVisibility(0);
                    if (playerList.getPlatform() == Platform.PC) {
                        cVar.f62188i.setImageResource(R.drawable.icon_peripheral_pc);
                    } else if (playerList.getPlatform() == Platform.MOBILE) {
                        cVar.f62188i.setImageResource(R.drawable.icon_peripheral_phone);
                    } else {
                        cVar.f62188i.setVisibility(8);
                    }
                    cVar.f62188i.setVisibility(8);
                    boolean z11 = playerList.getUid() == simpleRoom.getLeaderId();
                    cVar.f62189j.setVipData(playerList.getVip() ? 1 : 0, 0);
                    if (z11) {
                        cVar.f62185f.setVisibility(0);
                        cVar.f62184e.setVisibility(0);
                        cVar.f62184e.setText(playerList.getNickname());
                        z10 = true;
                    } else {
                        cVar.f62185f.setVisibility(8);
                        cVar.f62184e.setVisibility(0);
                    }
                } else {
                    cVar.f62186g.setVisibility(8);
                    cVar.f62188i.setVisibility(8);
                    cVar.f62185f.setVisibility(8);
                    cVar.f62184e.setVisibility(0);
                    cVar.f62187h.setVisibility(0);
                    if (playerList.getClosed()) {
                        cVar.f62187h.setImageDrawable(this.f62174f.getResources().getDrawable(R.drawable.icon_seat_closed));
                    } else {
                        cVar.f62187h.setImageDrawable(this.f62174f.getResources().getDrawable(R.drawable.ic_seat_waiting));
                    }
                }
            } else if (i10 == 0) {
                cVar.f62186g.setVisibility(0);
                cVar.f62187h.setVisibility(8);
                com.join.android.app.common.utils.l.l(cVar.f62186g, simpleRoom.getAvatar());
                g(cVar.f62190k, cVar.f62191l, simpleRoom.getPlayerList(0).getProficiencyLevel());
                cVar.f62188i.setVisibility(8);
                cVar.f62189j.setVipData(simpleRoom.getPlayerList(0).getVip() ? 1 : 0, 0);
                cVar.f62185f.setVisibility(0);
                cVar.f62184e.setVisibility(0);
                if (!"".equals(simpleRoom.getBattleTitle()) && !"".equals(simpleRoom.getBattleTitle()) && !"".equals(simpleRoom.getBattleTitle()) && !"".equals(simpleRoom.getBattleTitle())) {
                    "".equals(simpleRoom.getBattleTitle());
                }
                if (com.join.mgps.Util.t2.h(simpleRoom.getNickname())) {
                    com.join.mgps.Util.g1.d("newarena account ", "uid=" + simpleRoom.getPlayerList(i10).getNickname() + "  " + simpleRoom.getNickname());
                }
                cVar.f62184e.setText(simpleRoom.getNickname());
            } else {
                cVar.f62180a.setVisibility(8);
            }
        }
        if (!z10) {
            for (int i11 = 0; i11 < 4 && i11 < simpleRoom.getPlayerListCount(); i11++) {
                c cVar2 = dVar.f62206r[i11];
                RoomPosition playerList2 = simpleRoom.getPlayerList(i11);
                if (playerList2.getUid() != 0) {
                    cVar2.f62189j.setVipData(playerList2.getVip() ? 1 : 0, 0);
                    cVar2.f62184e.setText(playerList2.getNickname());
                    cVar2.f62184e.setVisibility(0);
                    cVar2.f62185f.setVisibility(0);
                    break;
                }
            }
        }
        dVar.f62197i.setText(simpleRoom.getRoomId() + "");
        if (simpleRoom.getAllowSpectatorJoin()) {
            if (simpleRoom.getState() == RoomState.START) {
                dVar.f62198j.d(simpleWrapperRoom.initialStartTime, simpleRoom.getPlaySeconds(), "", "");
            } else {
                dVar.f62198j.e();
                dVar.f62198j.setText("准备中");
            }
        } else if (simpleRoom.getState() == RoomState.START) {
            dVar.f62198j.d(simpleWrapperRoom.initialStartTime, simpleRoom.getPlaySeconds(), "", "");
        } else {
            dVar.f62198j.e();
            dVar.f62198j.setText("准备中");
        }
        if (simpleRoom.getSpectatorNumber() <= 0) {
            dVar.f62199k.setText("0人 ");
            return;
        }
        dVar.f62199k.setText(simpleRoom.getSpectatorNumber() + "人  ");
    }

    private void j(View view, int id2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (int) (this.f62174f.getResources().getDimensionPixelOffset(id2) * this.f62175g * 0.92f);
        view.setLayoutParams(layoutParams);
    }

    public SimpleWrapperRoom d(int position) {
        if (position < 0 || position >= this.f62173e.size()) {
            return null;
        }
        return this.f62173e.get(position);
    }

    public b e() {
        return this.f62176h;
    }

    public void f(b l10) {
        this.f62176h = l10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SimpleWrapperRoom> list = this.f62173e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return super.getItemViewType(position);
    }

    public void h(float perSize) {
        if (perSize > 1.25d) {
            perSize *= 0.92f;
        }
        this.f62175g = perSize;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final RecyclerView.ViewHolder holder, final int position) {
        SimpleWrapperRoom simpleWrapperRoom = this.f62173e.get(position);
        if (holder instanceof d) {
            i((d) holder, simpleWrapperRoom);
        }
        holder.itemView.setOnClickListener(new a(holder, position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new d(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_room_list_1, (ViewGroup) null), viewType);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
        super.onViewAttachedToWindow(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
        super.onViewDetachedFromWindow(holder);
        if (holder instanceof d) {
            ((d) holder).f62198j.e();
        }
    }

    public static class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f62192d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f62193e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62194f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f62195g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f62196h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62197i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CountDownerTextView f62198j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62199k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62200l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f62201m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f62202n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public VipView f62203o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f62204p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public View f62205q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        c[] f62206r;

        public d(View itemView, int viewType) {
            super(itemView);
            this.f62193e = viewType;
            b(itemView);
        }

        void a(View view1, View p10, TextView nickname1, View divider1, int pos) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) p10.findViewById(R.id.avatar);
            ImageView imageView = (ImageView) p10.findViewById(R.id.tv_chenghao);
            ImageView imageView2 = (ImageView) p10.findViewById(R.id.iv_state);
            ImageView imageView3 = (ImageView) p10.findViewById(R.id.platformType);
            RelativeLayout relativeLayout = (RelativeLayout) view1.findViewById(R.id.pMain);
            VipView vipView = (VipView) view1.findViewById(R.id.vipView);
            ImageView imageView4 = (ImageView) view1.findViewById(R.id.ivProficiencyLevel);
            View viewFindViewById = view1.findViewById(R.id.borderView);
            c cVar = new c();
            cVar.f62180a = view1;
            cVar.f62182c = relativeLayout;
            cVar.f62181b = p10;
            cVar.f62186g = simpleDraweeView;
            cVar.f62185f = imageView;
            cVar.f62187h = imageView2;
            cVar.f62184e = nickname1;
            cVar.f62188i = imageView3;
            cVar.f62183d = divider1;
            cVar.f62189j = vipView;
            cVar.f62190k = imageView4;
            cVar.f62191l = viewFindViewById;
            this.f62206r[pos] = cVar;
        }

        void b(View convertView) {
            this.f62194f = (TextView) convertView.findViewById(R.id.tv_gameName);
            this.f62195g = (ImageView) convertView.findViewById(R.id.iv_lock);
            this.f62196h = (ImageView) convertView.findViewById(R.id.iv_vip);
            this.f62197i = (TextView) convertView.findViewById(R.id.tv_id);
            this.f62200l = (TextView) convertView.findViewById(R.id.tv_id_label);
            this.f62198j = (CountDownerTextView) convertView.findViewById(R.id.tv_game_state);
            this.f62199k = (TextView) convertView.findViewById(R.id.tv_view);
            this.f62201m = (TextView) convertView.findViewById(R.id.tvCopper);
            this.f62202n = convertView.findViewById(R.id.waveView);
            this.f62203o = (VipView) convertView.findViewById(R.id.vipView);
            TextView textView = (TextView) convertView.findViewById(R.id.nickNameP1);
            TextView textView2 = (TextView) convertView.findViewById(R.id.nickNameP2);
            TextView textView3 = (TextView) convertView.findViewById(R.id.nickNameP3);
            TextView textView4 = (TextView) convertView.findViewById(R.id.nickNameP4);
            View viewFindViewById = convertView.findViewById(R.id.llP1);
            View viewFindViewById2 = convertView.findViewById(R.id.llP2);
            View viewFindViewById3 = convertView.findViewById(R.id.llP3);
            View viewFindViewById4 = convertView.findViewById(R.id.llP4);
            View viewFindViewById5 = convertView.findViewById(R.id.f35477p1);
            View viewFindViewById6 = convertView.findViewById(R.id.f35478p2);
            View viewFindViewById7 = convertView.findViewById(R.id.f35479p3);
            View viewFindViewById8 = convertView.findViewById(R.id.f35480p4);
            this.f62204p = convertView.findViewById(R.id.tv2);
            this.f62205q = convertView.findViewById(R.id.tv3);
            this.f62206r = new c[4];
            a(viewFindViewById, viewFindViewById5, textView, new View(convertView.getContext()), 0);
            a(viewFindViewById2, viewFindViewById6, textView2, null, 1);
            a(viewFindViewById3, viewFindViewById7, textView3, null, 2);
            a(viewFindViewById4, viewFindViewById8, textView4, null, 3);
            convertView.setTag(this);
        }

        public d(View convertView) {
            super(convertView);
            b(convertView);
        }
    }
}
