package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentBaseBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CommentBaseBean> f62528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f62529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    x1.p1 f62530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f62531g;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f62532b;

        a(final CommentBaseBean val$commitDataBean) {
            this.f62532b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f62532b.getUid())).start();
        }
    }

    class b implements ExpandLayout.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f62534a;

        b(final CommentBaseBean val$commitDataBean) {
            this.f62534a = val$commitDataBean;
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void a() {
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void b() {
            x1.p1 p1Var;
            CommentBaseBean commentBaseBean = this.f62534a;
            if (commentBaseBean == null || (p1Var = k1.this.f62530f) == null) {
                return;
            }
            p1Var.onRootView(commentBaseBean);
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void c() {
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f62536b;

        c(final CommentBaseBean val$commitDataBean) {
            this.f62536b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            x1.p1 p1Var;
            CommentBaseBean commentBaseBean = this.f62536b;
            if (commentBaseBean == null || (p1Var = k1.this.f62530f) == null) {
                return;
            }
            p1Var.onRootView(commentBaseBean);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f62538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62539c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f62540d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f62541e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(d.this.f62541e.getText().toString()).longValue();
                d.this.f62541e.setText((jLongValue + 1) + "");
                d dVar = d.this;
                k1.this.c(dVar.f62539c);
                d dVar2 = d.this;
                x1.p1 p1Var = k1.this.f62530f;
                if (p1Var != null) {
                    p1Var.onPraise(dVar2.f62538b, dVar2.f62539c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        d(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f62538b = val$commitDataBean;
            this.f62539c = val$position;
            this.f62540d = val$view;
            this.f62541e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            long jCurrentTimeMillis = System.currentTimeMillis();
            k1 k1Var = k1.this;
            if (jCurrentTimeMillis - k1Var.f62531g < 500) {
                return;
            }
            k1Var.f62531g = jCurrentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(k1.this.f62526b) || (commentBaseBean = this.f62538b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                k1.this.i(this.f62539c);
                this.f62540d.setImageResource(R.drawable.up_ic);
                x1.p1 p1Var = k1.this.f62530f;
                if (p1Var != null) {
                    p1Var.onPraise(this.f62538b, this.f62539c, 2);
                    return;
                }
                return;
            }
            this.f62538b.setIs_praise(1);
            if (AccountUtil_.getInstance_(k1.this.f62526b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(k1.this.f62526b);
                return;
            }
            this.f62540d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(k1.this.f62526b, R.anim.scale_reset);
            this.f62540d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f62544b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62545c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f62546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f62547e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(e.this.f62547e.getText().toString()).longValue();
                e.this.f62547e.setText((jLongValue + 1) + "");
                e eVar = e.this;
                k1.this.b(eVar.f62545c);
                e eVar2 = e.this;
                x1.p1 p1Var = k1.this.f62530f;
                if (p1Var != null) {
                    p1Var.onUnPraise(eVar2.f62544b, eVar2.f62545c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        e(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f62544b = val$commitDataBean;
            this.f62545c = val$position;
            this.f62546d = val$view;
            this.f62547e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(k1.this.f62526b) || (commentBaseBean = this.f62544b) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                k1.this.h(this.f62545c);
                this.f62546d.setImageResource(R.drawable.down_ic);
                x1.p1 p1Var = k1.this.f62530f;
                if (p1Var != null) {
                    p1Var.onUnPraise(this.f62544b, this.f62545c, 2);
                    return;
                }
                return;
            }
            this.f62544b.setIs_despise(1);
            if (AccountUtil_.getInstance_(k1.this.f62526b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(k1.this.f62526b);
                return;
            }
            this.f62546d.setImageResource(R.drawable.downed_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(k1.this.f62526b, R.anim.scale_reset);
            this.f62546d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    private class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LinearLayout f62550a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDraweeView f62551b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62552c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62553d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f62554e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62555f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private MStarBar f62556g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f62557h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f62558i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private ImageView f62559j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private ExpandLayout f62560k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f62561l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f62562m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f62563n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private ImageView f62564o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private TextView f62565p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private ImageView f62566q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private TextView f62567r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private ImageView f62568s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private TextView f62569t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private VipView f62570u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private View f62571v;

        public f(View view) {
            this.f62550a = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f62551b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f62552c = (TextView) view.findViewById(R.id.userName);
            this.f62553d = (TextView) view.findViewById(R.id.isMe);
            this.f62554e = (ImageView) view.findViewById(R.id.isAuth);
            this.f62559j = (ImageView) view.findViewById(R.id.isGood);
            this.f62555f = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f62556g = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f62557h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f62558i = (TextView) view.findViewById(R.id.time);
            this.f62560k = (ExpandLayout) view.findViewById(R.id.content);
            this.f62561l = (TextView) view.findViewById(R.id.more);
            this.f62562m = view.findViewById(R.id.line);
            this.f62563n = (TextView) view.findViewById(R.id.phoneModle);
            this.f62564o = (ImageView) view.findViewById(R.id.parise);
            this.f62565p = (TextView) view.findViewById(R.id.pariseNumber);
            this.f62566q = (ImageView) view.findViewById(R.id.down);
            this.f62567r = (TextView) view.findViewById(R.id.downNumber);
            this.f62568s = (ImageView) view.findViewById(R.id.message);
            this.f62569t = (TextView) view.findViewById(R.id.messageNumber);
            this.f62570u = (VipView) view.findViewById(R.id.levelTv);
            this.f62571v = view.findViewById(R.id.layoutTop);
        }
    }

    public k1(Context context, boolean scoreSwitch, x1.p1 listener) {
        this.f62528d = new ArrayList();
        this.f62529e = true;
        this.f62531g = System.currentTimeMillis();
        this.f62526b = context;
        this.f62529e = scoreSwitch;
        this.f62530f = listener;
        this.f62527c = LayoutInflater.from(context);
    }

    private void e(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new c(commitDataBean));
    }

    private void f(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        d dVar = new d(commitDataBean, position, view, tv2);
        view.setOnClickListener(dVar);
        tv2.setOnClickListener(dVar);
    }

    private void g(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        e eVar = new e(commitDataBean, position, view, tv2);
        view.setOnClickListener(eVar);
        tv2.setOnClickListener(eVar);
    }

    public void b(int position) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(position);
        long jLongValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        commentBaseBean.setIs_despise(1);
        commentBaseBean.setDespise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    public void c(int position) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(position);
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(1);
        commentBaseBean.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public List<CommentBaseBean> d() {
        return this.f62528d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62528d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this.f62528d.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        f fVar;
        if (convertView == null) {
            convertView = this.f62527c.inflate(R.layout.item_game_detail_comment_list_item_view, (ViewGroup) null);
            fVar = new f(convertView);
            convertView.setTag(fVar);
        } else {
            fVar = (f) convertView.getTag();
        }
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i10);
        fVar.f62571v.setVisibility(8);
        fVar.f62552c.setTextColor(-16777216);
        if (commentBaseBean.getVip_level() > 0) {
            fVar.f62552c.setTextColor(this.f62526b.getResources().getColor(R.color.vip_color));
        }
        if (commentBaseBean.getSvip_level() > 0) {
            fVar.f62552c.setTextColor(this.f62526b.getResources().getColor(R.color.vip_svip_color));
        }
        fVar.f62570u.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
        if (commentBaseBean.getUid().equals(String.valueOf(AccountUtil_.getInstance_(this.f62526b).getAccountData().getUid()))) {
            fVar.f62553d.setVisibility(0);
        } else {
            fVar.f62553d.setVisibility(8);
        }
        fVar.f62551b.setOnClickListener(new a(commentBaseBean));
        fVar.f62560k.setExpandable(false);
        fVar.f62560k.setContent(commentBaseBean.getContent(), new b(commentBaseBean));
        fVar.f62552c.setText(commentBaseBean.getUser_name());
        if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
            fVar.f62563n.setVisibility(4);
        } else {
            fVar.f62563n.setVisibility(0);
            fVar.f62563n.setText(commentBaseBean.getMobile_phone_model());
        }
        fVar.f62565p.setText(commentBaseBean.getPraise_count() + "");
        fVar.f62567r.setText(commentBaseBean.getDespise_count() + "");
        fVar.f62569t.setText(commentBaseBean.getReply_count() + "");
        fVar.f62558i.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
        if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || this.f62529e) {
            fVar.f62556g.setVisibility(8);
        } else {
            fVar.f62556g.setVisibility(0);
            fVar.f62556g.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
            fVar.f62556g.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
        }
        fVar.f62556g.setEnabled(false);
        if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
            fVar.f62559j.setVisibility(8);
        } else {
            fVar.f62559j.setVisibility(0);
        }
        if (commentBaseBean.getRank().equals("")) {
            fVar.f62554e.setVisibility(8);
        } else {
            fVar.f62554e.setVisibility(0);
        }
        fVar.f62555f.setText(commentBaseBean.getRank());
        if (commentBaseBean.getIs_praise() == 1) {
            fVar.f62564o.setImageResource(R.drawable.uped_ic);
        } else {
            fVar.f62564o.setImageResource(R.drawable.up_ic);
        }
        if (commentBaseBean.getIs_despise() == 1) {
            fVar.f62566q.setImageResource(R.drawable.downed_ic);
        } else {
            fVar.f62566q.setImageResource(R.drawable.down_ic);
        }
        UtilsMy.J3(this.f62526b, commentBaseBean.getHead_portrait(), fVar.f62551b);
        f(fVar.f62564o, fVar.f62565p, commentBaseBean, i10);
        g(fVar.f62566q, fVar.f62567r, commentBaseBean, i10);
        e(fVar.f62568s, commentBaseBean);
        return convertView;
    }

    public void h(int position) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(position);
        long jLongValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        commentBaseBean.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            commentBaseBean.setDespise_count("0");
        } else {
            commentBaseBean.setDespise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public void i(int position) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(position);
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            commentBaseBean.setPraise_count(0L);
        } else {
            commentBaseBean.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }

    public k1(Context context, boolean scoreSwitch, List<CommentBaseBean> strings, x1.p1 listener) {
        this.f62528d = new ArrayList();
        this.f62529e = true;
        this.f62531g = System.currentTimeMillis();
        this.f62526b = context;
        this.f62529e = scoreSwitch;
        this.f62530f = listener;
        this.f62527c = LayoutInflater.from(context);
        this.f62528d = strings;
    }
}
