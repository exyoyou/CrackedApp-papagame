package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import app.mgsim.arena.UserType;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.g1;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomPosition;

/* JADX INFO: loaded from: classes3.dex */
public class PlayerInfoContainerView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b[] f65452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Activity f65453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f65454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    UserType f65455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f65456f;

    public interface a {
        boolean a();

        void b(RoomPosition roomPosition, boolean close, int position);

        void c(RoomPosition roomPosition, int position);

        void d(int position);

        void e();
    }

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f65457a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f65458b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f65459c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SimpleDraweeView f65460d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f65461e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f65462f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f65463g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private LinearLayout f65464h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ImageView f65465i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private ImageView f65466j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f65467k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private ViewGroup f65468l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f65469m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f65470n = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RoomPosition f65471o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private View f65472p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private LinearLayout f65473q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private TextView f65474r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TextView f65475s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private ImageView f65476t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private View f65477u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private View f65478v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private VipView f65479w;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (b.this.f65471o != null) {
                    if (b.this.f65471o.getUid() != 0) {
                        PlayerInfoContainerView.this.f65456f.c(b.this.f65471o, b.this.f65469m);
                        return;
                    }
                    if (b.this.f65471o.getClosed()) {
                        PlayerInfoContainerView.this.f65456f.b(b.this.f65471o, false, b.this.f65469m);
                    } else if (PlayerInfoContainerView.this.f65456f.a()) {
                        PlayerInfoContainerView.this.f65456f.d(b.this.f65469m);
                    } else {
                        PlayerInfoContainerView.this.f65456f.b(b.this.f65471o, true, b.this.f65469m);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.customview.PlayerInfoContainerView$b$b, reason: collision with other inner class name */
        class ViewOnClickListenerC0709b implements View.OnClickListener {
            ViewOnClickListenerC0709b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                PlayerInfoContainerView.this.f65456f.e();
            }
        }

        public b(Context context, ViewGroup parent, int index) {
            this.f65457a = context;
            this.f65468l = parent;
            this.f65469m = index;
            c();
        }

        private void d() {
            if (PlayerInfoContainerView.this.f65453c == null) {
                return;
            }
            float fJ = (com.join.android.app.common.utils.q.n(this.f65457a).j(PlayerInfoContainerView.this.f65453c) * 9.0f) / 16.0f;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f65478v.getLayoutParams();
            layoutParams.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp180) * fJ);
            layoutParams.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp239) * fJ);
            this.f65478v.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f65472p.getLayoutParams();
            layoutParams2.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp100) * fJ);
            layoutParams2.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp100) * fJ);
            layoutParams2.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp28) * fJ);
            this.f65472p.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f65460d.getLayoutParams();
            layoutParams3.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp96) * fJ);
            layoutParams3.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp96) * fJ);
            layoutParams3.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * fJ);
            this.f65460d.setLayoutParams(layoutParams3);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f65476t.getLayoutParams();
            layoutParams4.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * fJ);
            layoutParams4.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * fJ);
            layoutParams4.bottomMargin = -((int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp15) * fJ));
            this.f65476t.setLayoutParams(layoutParams4);
            RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) this.f65462f.getLayoutParams();
            layoutParams5.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp14) * fJ);
            this.f65462f.setLayoutParams(layoutParams5);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.f65473q.getLayoutParams();
            layoutParams6.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp11) * fJ);
            this.f65473q.setLayoutParams(layoutParams6);
            this.f65479w.setSize((int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * fJ), (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * fJ));
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) this.f65459c.getLayoutParams();
            layoutParams7.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp37) * fJ);
            layoutParams7.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp37) * fJ);
            this.f65459c.setLayoutParams(layoutParams7);
            this.f65459c.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp22) * fJ);
            this.f65461e.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp24) * fJ);
            this.f65462f.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp24) * fJ);
            this.f65463g.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp18) * fJ);
        }

        private void e() {
            int i10 = PlayerInfoContainerView.this.f65454d;
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3 || i10 == 4) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f65478v.getLayoutParams();
                    int i11 = this.f65469m;
                    if (i11 == 1) {
                        layoutParams.leftMargin = 0;
                    } else if (i11 == 2) {
                        layoutParams.rightMargin = 0;
                    }
                    layoutParams.width = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp224);
                    this.f65478v.setLayoutParams(layoutParams);
                    return;
                }
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f65478v.getLayoutParams();
            int width = this.f65468l.getWidth();
            if (width > 0) {
                int dimensionPixelOffset = (((width / 2) - PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp228)) / 2) / 2;
                if (PlayerInfoContainerView.this.f65454d == 2) {
                    int i12 = this.f65469m;
                    if (i12 == 1) {
                        layoutParams2.leftMargin = dimensionPixelOffset;
                    } else if (i12 == 2) {
                        layoutParams2.rightMargin = dimensionPixelOffset;
                    }
                }
            }
            layoutParams2.width = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp228);
            this.f65478v.setLayoutParams(layoutParams2);
        }

        void c() {
            View viewInflate = LayoutInflater.from(this.f65457a).inflate(R.layout.item_game_room_player_info, (ViewGroup) null);
            this.f65458b = viewInflate;
            this.f65466j = (ImageView) viewInflate.findViewById(R.id.iv_haveReady);
            this.f65477u = this.f65458b.findViewById(R.id.mDefaultBg);
            this.f65472p = this.f65458b.findViewById(R.id.borderView);
            this.f65459c = (TextView) this.f65458b.findViewById(R.id.tv_p);
            this.f65460d = (SimpleDraweeView) this.f65458b.findViewById(R.id.iv_bg);
            this.f65461e = (TextView) this.f65458b.findViewById(R.id.tv_name);
            this.f65462f = (TextView) this.f65458b.findViewById(R.id.tv_nick_name);
            this.f65463g = (TextView) this.f65458b.findViewById(R.id.tv_delay_time);
            this.f65465i = (ImageView) this.f65458b.findViewById(R.id.iv_state);
            this.f65467k = (TextView) this.f65458b.findViewById(R.id.tv_state);
            this.f65473q = (LinearLayout) this.f65458b.findViewById(R.id.ll_out_device);
            this.f65474r = (TextView) this.f65458b.findViewById(R.id.iv_out_device);
            this.f65475s = (TextView) this.f65458b.findViewById(R.id.iv_pc_device);
            this.f65479w = (VipView) this.f65458b.findViewById(R.id.vipView);
            this.f65464h = (LinearLayout) this.f65458b.findViewById(R.id.ll_state);
            this.f65478v = this.f65458b.findViewById(R.id.rl_top);
            this.f65476t = (ImageView) this.f65458b.findViewById(R.id.ivProficiencyLevel);
            int i10 = this.f65469m;
            if (i10 == 1) {
                this.f65459c.setText("1P");
            } else if (i10 == 2) {
                this.f65459c.setText("2P");
            } else if (i10 == 3) {
                this.f65459c.setText("3P");
            } else if (i10 == 4) {
                this.f65459c.setText("4P");
            }
            this.f65458b.findViewById(R.id.rl_top).setOnClickListener(new a());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (this.f65469m > 1) {
                layoutParams.leftMargin = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            }
            this.f65468l.addView(this.f65458b, layoutParams);
        }

        public void f(RoomPosition position, boolean isLeader, boolean isCurrentUser) {
            e();
            this.f65471o = position;
            this.f65470n = isLeader;
            if (position.getUid() == 0) {
                this.f65466j.setVisibility(8);
                this.f65462f.setVisibility(4);
                this.f65473q.setVisibility(4);
                this.f65461e.setVisibility(8);
                this.f65465i.setVisibility(0);
                this.f65467k.setVisibility(0);
                this.f65464h.setVisibility(0);
                this.f65460d.setVisibility(8);
                if (position.getClosed()) {
                    this.f65465i.setImageDrawable(PlayerInfoContainerView.this.getContext().getResources().getDrawable(R.drawable.new_arena_locked));
                    this.f65467k.setVisibility(4);
                } else {
                    this.f65465i.setImageDrawable(PlayerInfoContainerView.this.getContext().getResources().getDrawable(R.drawable.new_arena_empty));
                    if (PlayerInfoContainerView.this.f65455e == UserType.OWNER) {
                        this.f65467k.setVisibility(0);
                    } else {
                        this.f65467k.setVisibility(8);
                    }
                }
                this.f65477u.setBackgroundResource(R.drawable.newarena_room_positionback);
                this.f65479w.setVipData(0, 0);
                this.f65460d.setVisibility(4);
                this.f65462f.setVisibility(4);
                this.f65473q.setVisibility(4);
                this.f65475s.setVisibility(4);
                this.f65476t.setVisibility(4);
                this.f65472p.setVisibility(4);
                this.f65467k.setOnClickListener(new ViewOnClickListenerC0709b());
                return;
            }
            this.f65460d.setVisibility(0);
            this.f65465i.setVisibility(8);
            this.f65462f.setVisibility(0);
            this.f65473q.setVisibility(0);
            this.f65461e.setVisibility(0);
            this.f65467k.setVisibility(8);
            if (position.getState() != RoomPosition.State.READY || isLeader) {
                this.f65466j.setVisibility(8);
            } else {
                this.f65466j.setVisibility(0);
            }
            g1.b("GameRoomActivity", "RoomPosition player Avatar:" + position.getAvatar());
            com.join.android.app.common.utils.l.l(this.f65460d, position.getAvatar());
            this.f65462f.setText(position.getNickname());
            this.f65463g.setText(position.getPingVal() + "ms");
            if (this.f65471o.getPeripheral()) {
                this.f65474r.setVisibility(0);
            } else {
                this.f65474r.setVisibility(8);
            }
            if (this.f65471o.getPlatform().getNumber() == 1) {
                this.f65475s.setVisibility(0);
            } else {
                this.f65475s.setVisibility(8);
            }
            if (this.f65471o.getVip()) {
                this.f65479w.setVipData(1, 0);
            } else {
                this.f65479w.setVipData(0, 0);
            }
            this.f65461e.setTextColor(Color.parseColor(this.f65471o.getBattleTitleColor()));
            this.f65461e.setText(this.f65471o.getBattleTitle());
            this.f65472p.setVisibility(0);
            switch (position.getProficiencyLevel()) {
                case 1:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                    this.f65472p.setBackgroundResource(R.drawable.bg_border_yellow);
                    break;
                case 2:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                    break;
                case 3:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                    break;
                case 4:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                    break;
                case 5:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                    break;
                case 6:
                    this.f65476t.setVisibility(0);
                    this.f65476t.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                    break;
                default:
                    this.f65476t.setVisibility(8);
                    this.f65472p.setBackgroundResource(R.drawable.mg_proficiency_level_0_bg);
                    break;
            }
            if (isLeader) {
                this.f65477u.setBackgroundResource(R.drawable.new_arena_isouner);
            } else if (isCurrentUser) {
                this.f65477u.setBackgroundResource(R.drawable.newarena_room_positionback_my);
            } else {
                this.f65477u.setBackgroundResource(R.drawable.newarena_room_positionback);
            }
        }
    }

    public PlayerInfoContainerView(Context context) {
        super(context);
        this.f65452b = new b[4];
        this.f65454d = 4;
        b(context);
    }

    private void b(Context context) {
        setOrientation(0);
        this.f65452b[0] = new b(context, this, 1);
        this.f65452b[1] = new b(context, this, 2);
        this.f65452b[2] = new b(context, this, 3);
        this.f65452b[3] = new b(context, this, 4);
    }

    public void c(GameRoom gameRoom, int currentUid, Activity activity) {
        this.f65453c = activity;
        this.f65454d = gameRoom.getSeatsNumber();
        this.f65455e = com.join.mgps.socket.fight.arena.c.f(gameRoom, AccountUtil_.getInstance_(activity));
        int leader = gameRoom.getLeader();
        int i10 = this.f65454d;
        if (i10 == 1) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(8);
            getChildAt(2).setVisibility(8);
            getChildAt(3).setVisibility(8);
            this.f65452b[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == currentUid);
            return;
        }
        if (i10 == 2) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(0);
            getChildAt(2).setVisibility(8);
            getChildAt(3).setVisibility(8);
            this.f65452b[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == currentUid);
            this.f65452b[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == currentUid);
            return;
        }
        if (i10 == 3) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(0);
            getChildAt(2).setVisibility(0);
            getChildAt(3).setVisibility(8);
            this.f65452b[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == currentUid);
            this.f65452b[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == currentUid);
            this.f65452b[2].f(gameRoom.getP3(), gameRoom.getP3().getUid() == leader, gameRoom.getP3().getUid() == currentUid);
            return;
        }
        if (i10 != 4) {
            return;
        }
        getChildAt(0).setVisibility(0);
        getChildAt(1).setVisibility(0);
        getChildAt(2).setVisibility(0);
        getChildAt(3).setVisibility(0);
        this.f65452b[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == currentUid);
        this.f65452b[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == currentUid);
        this.f65452b[2].f(gameRoom.getP3(), gameRoom.getP3().getUid() == leader, gameRoom.getP3().getUid() == currentUid);
        this.f65452b[3].f(gameRoom.getP4(), gameRoom.getP4().getUid() == leader, gameRoom.getP4().getUid() == currentUid);
    }

    public void setPlayerInfoCallback(a callback) {
        this.f65456f = callback;
    }

    public PlayerInfoContainerView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65452b = new b[4];
        this.f65454d = 4;
        b(context);
    }
}
