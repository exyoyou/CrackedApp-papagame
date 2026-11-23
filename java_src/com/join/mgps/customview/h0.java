package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import app.mgsim.arena.AreaInfo;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.n3;
import com.join.mgps.dto.GameConfig;
import com.papa91.battle.protocol.BattleArea;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class h0 extends PopupWindow implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f66442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f66444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f66445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f66446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ImageView f66447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ImageView f66448i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ImageView f66449j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    View f66450k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    View f66451l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    View f66452m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    TextView f66453n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    View f66454o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ListView f66455p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    e f66456q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    f f66457r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Handler f66458s = new a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Context f66459t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f66460u;

    class a extends Handler {
        a() {
        }

        void a() {
            removeMessages(3);
            removeMessages(4);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(h0.this.f66459t, R.anim.scale_in);
            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(h0.this.f66459t, R.anim.scale_out);
            int i10 = msg.what;
            if (i10 == 0) {
                a();
                h0.this.f66452m.startAnimation(animationLoadAnimation2);
                sendEmptyMessageDelayed(4, 200L);
                return;
            }
            if (i10 == 1) {
                a();
                h0.this.f66451l.startAnimation(animationLoadAnimation2);
                sendEmptyMessageDelayed(3, 200L);
            } else if (i10 == 3) {
                h0.this.f66451l.setVisibility(8);
                h0.this.f66452m.setVisibility(0);
                h0.this.f66452m.startAnimation(animationLoadAnimation);
            } else {
                if (i10 != 4) {
                    return;
                }
                h0.this.f66452m.setVisibility(8);
                h0.this.f66451l.setVisibility(0);
                h0.this.f66451l.startAnimation(animationLoadAnimation);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            h0.this.dismiss();
        }
    }

    class c implements android.widget.AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f66463b;

        c(final e val$callback) {
            this.f66463b = val$callback;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id2) {
            f fVar = h0.this.f66457r;
            if (fVar == null) {
                return;
            }
            GameConfig gameConfig = fVar.a().size() > position ? h0.this.f66457r.a().get(position) : null;
            e eVar = this.f66463b;
            if (eVar != null) {
                eVar.b(gameConfig);
            }
            h0.this.dismiss();
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            h0.this.dismiss();
            return true;
        }
    }

    public interface e {
        void a(BattleArea battleArea);

        void b(GameConfig gameConfig);
    }

    public class f extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<GameConfig> f66466b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SimpleDraweeView f66468a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f66469b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public TextView f66470c;

            a() {
            }
        }

        public f() {
        }

        public List<GameConfig> a() {
            if (this.f66466b == null) {
                this.f66466b = new ArrayList();
            }
            return this.f66466b;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public GameConfig getItem(int position) {
            List<GameConfig> list = this.f66466b;
            if (list == null) {
                return null;
            }
            return list.get(position);
        }

        public void c(List<GameConfig> gameConfigs) {
            if (this.f66466b == null) {
                this.f66466b = new ArrayList();
            }
            this.f66466b.clear();
            this.f66466b.addAll(gameConfigs);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<GameConfig> list = this.f66466b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView != null) {
                aVar = (a) convertView.getTag();
            } else {
                convertView = LayoutInflater.from(h0.this.f66459t).inflate(R.layout.arena_game_list_item, (ViewGroup) null);
                aVar = new a();
                aVar.f66468a = (SimpleDraweeView) convertView.findViewById(R.id.icon);
                aVar.f66469b = (TextView) convertView.findViewById(R.id.room_count);
                aVar.f66470c = (TextView) convertView.findViewById(R.id.title);
                convertView.setTag(aVar);
            }
            GameConfig item = getItem(position);
            com.join.android.app.common.utils.l.h(aVar.f66468a, item.getGame_ico());
            aVar.f66470c.setText(item.getGame_name());
            int room_count = item.getRoom_count();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            SpannableString spannableString = new SpannableString(room_count + "");
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 0, spannableString.length(), 17);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) "房");
            aVar.f66469b.setText(spannableStringBuilder);
            return convertView;
        }
    }

    public h0(Context context, final e callback) {
        this.f66459t = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.pop_battle_area, (ViewGroup) null);
        this.f66441b = viewInflate.findViewById(R.id.view_bj);
        this.f66442c = viewInflate.findViewById(R.id.view_sh);
        this.f66443d = viewInflate.findViewById(R.id.view_gz);
        this.f66444e = (TextView) viewInflate.findViewById(R.id.tv_bj);
        this.f66445f = (TextView) viewInflate.findViewById(R.id.tv_sh);
        this.f66446g = (TextView) viewInflate.findViewById(R.id.tv_gz);
        this.f66449j = (ImageView) viewInflate.findViewById(R.id.iv_gz_battle_area_rec);
        this.f66448i = (ImageView) viewInflate.findViewById(R.id.iv_sh_battle_area_rec);
        this.f66447h = (ImageView) viewInflate.findViewById(R.id.iv_bj_battle_area_rec);
        this.f66450k = n3.b(viewInflate, R.id.rl_sel);
        this.f66451l = n3.b(viewInflate, R.id.rl_areas);
        this.f66452m = n3.b(viewInflate, R.id.rl_games);
        this.f66453n = (TextView) n3.b(viewInflate, R.id.area_title);
        this.f66454o = n3.b(viewInflate, R.id.iv_arrow);
        this.f66455p = (ListView) n3.b(viewInflate, R.id.listview);
        this.f66450k.setOnClickListener(this);
        this.f66456q = callback;
        n3.b(viewInflate, R.id.rl_bj).setOnClickListener(this);
        n3.b(viewInflate, R.id.rl_sh).setOnClickListener(this);
        n3.b(viewInflate, R.id.rl_gz).setOnClickListener(this);
        viewInflate.findViewById(R.id.emptyView).setOnClickListener(new b());
        setContentView(viewInflate);
        setWidth(context.getResources().getDisplayMetrics().widthPixels);
        setHeight(-2);
        update();
        e();
        f fVar = new f();
        this.f66457r = fVar;
        this.f66455p.setAdapter((ListAdapter) fVar);
        this.f66455p.setOnItemClickListener(new c(callback));
    }

    private void d(View view, boolean isHighPing, View recView, boolean isCurrentArea) {
        view.setBackgroundResource(isHighPing ? R.drawable.bg_circle_eb3a25 : R.drawable.bg_circle_30d92d);
        recView.setVisibility(isCurrentArea ? 0 : 8);
    }

    private void e() {
        setBackgroundDrawable(new BitmapDrawable());
        setTouchable(true);
        setOutsideTouchable(true);
        setFocusable(true);
        setTouchInterceptor(new d());
    }

    public void a(BattleArea mBattleArea, boolean isAll) {
        if (isAll) {
            this.f66450k.setVisibility(8);
        } else {
            this.f66450k.setVisibility(0);
        }
        this.f66453n.setText(com.join.mgps.socket.fight.arena.c.d(mBattleArea));
    }

    public void b(final ConcurrentHashMap<Integer, AreaInfo> areas, AreaInfo currentArea) {
        Enumeration<AreaInfo> enumerationElements = areas.elements();
        while (enumerationElements.hasMoreElements()) {
            AreaInfo areaInfoNextElement = enumerationElements.nextElement();
            if (areaInfoNextElement.getArea() == 1) {
                this.f66444e.setText("在线：" + areaInfoNextElement.getOnLinePeopleCounts() + "人");
                d(this.f66441b, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f66447h, areaInfoNextElement.getArea() == currentArea.getArea());
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f66453n.setText("北京区");
                }
            } else if (areaInfoNextElement.getArea() == 2) {
                this.f66445f.setText("在线：" + areaInfoNextElement.getOnLinePeopleCounts() + "人");
                d(this.f66442c, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f66448i, areaInfoNextElement.getArea() == currentArea.getArea());
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f66453n.setText("上海区");
                }
            } else if (areaInfoNextElement.getArea() == 3) {
                this.f66446g.setText("在线：" + areaInfoNextElement.getOnLinePeopleCounts() + "人");
                d(this.f66443d, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f66449j, areaInfoNextElement.getArea() == currentArea.getArea());
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f66453n.setText("广东区");
                }
            }
        }
    }

    public void c(List<GameConfig> gameConfigs) {
        if (this.f66457r == null) {
            f fVar = new f();
            this.f66457r = fVar;
            this.f66455p.setAdapter((ListAdapter) fVar);
        }
        this.f66457r.c(gameConfigs);
        this.f66457r.notifyDataSetChanged();
    }

    void f() {
        this.f66454o.setSelected(true);
        this.f66458s.sendEmptyMessage(0);
    }

    void g() {
        this.f66454o.setSelected(false);
        this.f66458s.sendEmptyMessage(1);
    }

    void h() {
        if (this.f66454o.isSelected()) {
            g();
        } else {
            f();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.rl_sel) {
            h();
            return;
        }
        if (id2 == R.id.rl_bj) {
            this.f66456q.a(BattleArea.BJ);
            dismiss();
        } else if (id2 == R.id.rl_sh) {
            this.f66456q.a(BattleArea.SH);
            dismiss();
        } else if (id2 == R.id.rl_gz) {
            this.f66456q.a(BattleArea.GZ);
            dismiss();
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        this.f66460u = anchor;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f66460u.getGlobalVisibleRect(rect);
                setHeight(this.f66460u.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        super.showAsDropDown(anchor);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View parent, int gravity, int x10, int y10) {
        this.f66460u = parent;
        super.showAtLocation(parent, gravity, x10, y10);
    }
}
