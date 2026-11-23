package com.join.mgps.adapter;

import android.content.Context;
import android.text.Layout;
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
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentBaseBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommentAllListAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f58487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<i> f58488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f58489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f58490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f58491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f58492g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    h f58493h;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58494b;

        a(final CommentBaseBean val$commitDataBean) {
            this.f58494b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f58494b.getUid())).start();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f58496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58497c;

        b(final g val$finalCommentViewHolder1, final CommentBaseBean val$commitDataBean) {
            this.f58496b = val$finalCommentViewHolder1;
            this.f58497c = val$commitDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f58496b.f58526l.getLayout();
            if (layout == null) {
                this.f58496b.f58527m.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (lineCount > 5) {
                    this.f58496b.f58527m.setVisibility(0);
                    return;
                }
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f58496b.f58527m.setVisibility(0);
                } else if (this.f58497c.isShowMore()) {
                    this.f58496b.f58527m.setVisibility(0);
                } else {
                    this.f58496b.f58527m.setVisibility(8);
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f58499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58500c;

        c(final g val$finalCommentViewHolder, final CommentBaseBean val$commitDataBean) {
            this.f58499b = val$finalCommentViewHolder;
            this.f58500c = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f58499b.f58527m.getText().toString().equals("查看全部")) {
                this.f58499b.f58526l.setMaxLines(Integer.MAX_VALUE);
                this.f58499b.f58527m.setText("收起");
                this.f58500c.setShowMore(true);
            } else {
                this.f58499b.f58526l.setMaxLines(5);
                this.f58499b.f58527m.setText("查看全部");
                this.f58500c.setShowMore(false);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58502b;

        d(final CommentBaseBean val$commitDataBean) {
            this.f58502b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            h hVar;
            CommentBaseBean commentBaseBean = this.f58502b;
            if (commentBaseBean == null || (hVar = CommentAllListAdapter.this.f58493h) == null) {
                return;
            }
            hVar.onRootView(commentBaseBean);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f58506d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f58507e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(e.this.f58507e.getText().toString()).longValue();
                e.this.f58507e.setText((jLongValue + 1) + "");
                e eVar = e.this;
                CommentAllListAdapter.this.c(eVar.f58505c);
                e eVar2 = e.this;
                h hVar = CommentAllListAdapter.this.f58493h;
                if (hVar != null) {
                    hVar.onPraise(eVar2.f58504b, eVar2.f58505c, 1);
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
            this.f58504b = val$commitDataBean;
            this.f58505c = val$position;
            this.f58506d = val$view;
            this.f58507e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f58487b) || (commentBaseBean = this.f58504b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                CommentAllListAdapter.this.p(this.f58505c);
                this.f58506d.setImageResource(R.drawable.up_ic);
                h hVar = CommentAllListAdapter.this.f58493h;
                if (hVar != null) {
                    hVar.onPraise(this.f58504b, this.f58505c, 2);
                    return;
                }
                return;
            }
            this.f58504b.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentAllListAdapter.this.f58487b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f58487b);
                return;
            }
            this.f58506d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommentAllListAdapter.this.f58487b, R.anim.scale_reset);
            this.f58506d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58511c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f58512d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f58513e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(f.this.f58513e.getText().toString()).longValue();
                f.this.f58513e.setText((jLongValue + 1) + "");
                f fVar = f.this;
                CommentAllListAdapter.this.b(fVar.f58511c);
                f fVar2 = f.this;
                h hVar = CommentAllListAdapter.this.f58493h;
                if (hVar != null) {
                    hVar.onUnPraise(fVar2.f58510b, fVar2.f58511c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        f(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f58510b = val$commitDataBean;
            this.f58511c = val$position;
            this.f58512d = val$view;
            this.f58513e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f58487b) || (commentBaseBean = this.f58510b) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                CommentAllListAdapter.this.o(this.f58511c);
                this.f58512d.setImageResource(R.drawable.down_ic);
                h hVar = CommentAllListAdapter.this.f58493h;
                if (hVar != null) {
                    hVar.onUnPraise(this.f58510b, this.f58511c, 2);
                    return;
                }
                return;
            }
            this.f58510b.setIs_despise(1);
            if (AccountUtil_.getInstance_(CommentAllListAdapter.this.f58487b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f58487b);
                return;
            }
            this.f58512d.setImageResource(R.drawable.downed_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommentAllListAdapter.this.f58487b, R.anim.scale_reset);
            this.f58512d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class g extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LinearLayout f58516b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SimpleDraweeView f58517c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f58518d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f58519e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ImageView f58520f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f58521g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private MStarBar f58522h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f58523i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f58524j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private ImageView f58525k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f58526l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private TextView f58527m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f58528n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f58529o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private ImageView f58530p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f58531q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImageView f58532r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TextView f58533s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private ImageView f58534t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private TextView f58535u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private VipView f58536v;

        g() {
            super();
        }
    }

    public interface h {
        void onPraise(CommentBaseBean bean, int position, int type);

        void onRootView(CommentBaseBean bean);

        void onUnPraise(CommentBaseBean bean, int position, int type);
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f58538a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f58539b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public CommentBaseBean f58540a;

            public a(CommentBaseBean data) {
                this.f58540a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f58541a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public CommentBaseBean f58542b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58543c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f58544d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58545e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f58546f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f58547g;

            public b(String commentId, CommentBaseBean commentBean, int myAuth, boolean showDivider) {
                this.f58541a = commentId;
                this.f58542b = commentBean;
                this.f58543c = myAuth;
                this.f58544d = showDivider;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f58539b;
        }

        public ViewType b() {
            return this.f58538a;
        }

        public void c(Object obj) {
            this.f58539b = obj;
        }

        public void d(ViewType viewType) {
            this.f58538a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f58538a = viewType;
            this.f58539b = obj;
        }
    }

    class j {
        j() {
        }
    }

    class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f58549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f58550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f58551c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f58552d;

        k() {
        }
    }

    public CommentAllListAdapter(Context mContext, int uid, List<i> itemBeans, String commentScoreSwitch, int sgcSwitch, h mListenr) {
        this.f58487b = mContext;
        this.f58489d = uid;
        this.f58490e = commentScoreSwitch;
        this.f58491f = sgcSwitch;
        this.f58488c = itemBeans;
        this.f58493h = mListenr;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0155  */
    private View e(int position, View view, ViewGroup viewGroup, int type) {
        g gVar;
        String str;
        i.a aVar = (i.a) getItem(position);
        k kVar = null;
        if (view == null) {
            if (type == 1) {
                k kVar2 = new k();
                View viewInflate = LayoutInflater.from(this.f58487b).inflate(R.layout.gamedetail_item_title, (ViewGroup) null);
                kVar2.f58549a = (TextView) viewInflate.findViewById(R.id.titleText);
                kVar2.f58551c = viewInflate.findViewById(R.id.layoutTop);
                viewInflate.setTag(kVar2);
                kVar = kVar2;
                view = viewInflate;
                gVar = null;
            } else if (type != 2) {
                gVar = null;
            } else {
                g gVar2 = new g();
                View viewInflate2 = LayoutInflater.from(this.f58487b).inflate(R.layout.comment_list_item_view, (ViewGroup) null);
                gVar2.f58516b = (LinearLayout) viewInflate2.findViewById(R.id.commentAllRootLl);
                gVar2.f58517c = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                gVar2.f58518d = (TextView) viewInflate2.findViewById(R.id.userName);
                gVar2.f58519e = (TextView) viewInflate2.findViewById(R.id.isMe);
                gVar2.f58536v = (VipView) viewInflate2.findViewById(R.id.levelTv);
                gVar2.f58520f = (ImageView) viewInflate2.findViewById(R.id.isAuth);
                gVar2.f58525k = (ImageView) viewInflate2.findViewById(R.id.isGood);
                gVar2.f58521g = (TextView) viewInflate2.findViewById(R.id.isConnoisseurs);
                gVar2.f58522h = (MStarBar) viewInflate2.findViewById(R.id.comment_head_mstarBar);
                gVar2.f58523i = (TextView) viewInflate2.findViewById(R.id.comment_head_num_tx);
                gVar2.f58524j = (TextView) viewInflate2.findViewById(R.id.time);
                gVar2.f58526l = (TextView) viewInflate2.findViewById(R.id.content);
                gVar2.f58527m = (TextView) viewInflate2.findViewById(R.id.more);
                gVar2.f58528n = viewInflate2.findViewById(R.id.line);
                gVar2.f58529o = (TextView) viewInflate2.findViewById(R.id.phoneModle);
                gVar2.f58530p = (ImageView) viewInflate2.findViewById(R.id.parise);
                gVar2.f58531q = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                gVar2.f58532r = (ImageView) viewInflate2.findViewById(R.id.down);
                gVar2.f58533s = (TextView) viewInflate2.findViewById(R.id.downNumber);
                gVar2.f58534t = (ImageView) viewInflate2.findViewById(R.id.message);
                gVar2.f58535u = (TextView) viewInflate2.findViewById(R.id.messageNumber);
                viewInflate2.setTag(gVar2);
                gVar = gVar2;
                view = viewInflate2;
            }
        } else if (type == 1) {
            gVar = null;
            kVar = (k) view.getTag();
        } else if (type != 2) {
            gVar = null;
        } else {
            gVar = (g) view.getTag();
        }
        if (aVar == null) {
            return view;
        }
        CommentBaseBean commentBaseBean = aVar.f58540a;
        if (type == 1) {
            if (commentBaseBean.getIs_hot() == 1) {
                kVar.f58549a.setText("热门点评");
            } else {
                kVar.f58549a.setText("最新点评");
            }
            kVar.f58551c.setVisibility(8);
        } else if (type == 2) {
            gVar.f58518d.setTextColor(-16777216);
            if (commentBaseBean.getVip_level() > 0) {
                gVar.f58518d.setTextColor(this.f58487b.getResources().getColor(R.color.vip_color));
            }
            if (commentBaseBean.getSvip_level() > 0) {
                gVar.f58518d.setTextColor(this.f58487b.getResources().getColor(R.color.vip_svip_color));
            }
            gVar.f58536v.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
            if (commentBaseBean.getUid().equals(String.valueOf(this.f58489d))) {
                gVar.f58519e.setVisibility(0);
                this.f58492g = position;
            } else {
                gVar.f58519e.setVisibility(8);
            }
            gVar.f58518d.setText(commentBaseBean.getUser_name());
            gVar.f58526l.setText(commentBaseBean.getContent());
            if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
                gVar.f58529o.setVisibility(4);
            } else {
                gVar.f58529o.setVisibility(0);
                gVar.f58529o.setText(commentBaseBean.getMobile_phone_model());
            }
            gVar.f58531q.setText(commentBaseBean.getPraise_count() + "");
            gVar.f58533s.setText(commentBaseBean.getDespise_count() + "");
            gVar.f58535u.setText(commentBaseBean.getReply_count() + "");
            gVar.f58524j.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
            if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || !((str = this.f58490e) == null || str.equals("1"))) {
                gVar.f58522h.setVisibility(8);
            } else {
                gVar.f58522h.setVisibility(0);
                gVar.f58522h.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
                gVar.f58522h.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
            }
            if (this.f58491f == 1 && commentBaseBean.getIs_old() == 0) {
                gVar.f58523i.setVisibility(0);
                gVar.f58523i.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
            } else {
                gVar.f58523i.setVisibility(8);
            }
            gVar.f58522h.setEnabled(false);
            if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
                gVar.f58525k.setVisibility(8);
            } else {
                gVar.f58525k.setVisibility(0);
            }
            if (commentBaseBean.getRank().equals("")) {
                gVar.f58520f.setVisibility(8);
            } else {
                gVar.f58520f.setVisibility(0);
            }
            gVar.f58521g.setText(commentBaseBean.getRank());
            if (commentBaseBean.getIs_praise() == 1) {
                gVar.f58530p.setImageResource(R.drawable.uped_ic);
            } else {
                gVar.f58530p.setImageResource(R.drawable.up_ic);
            }
            if (commentBaseBean.getIs_despise() == 1) {
                gVar.f58532r.setImageResource(R.drawable.downed_ic);
            } else {
                gVar.f58532r.setImageResource(R.drawable.down_ic);
            }
            UtilsMy.J3(this.f58487b, commentBaseBean.getHead_portrait(), gVar.f58517c);
            gVar.f58517c.setOnClickListener(new a(commentBaseBean));
            m(gVar.f58530p, gVar.f58531q, commentBaseBean, position);
            n(gVar.f58532r, gVar.f58533s, commentBaseBean, position);
            l(gVar.f58534t, commentBaseBean);
            l(gVar.f58516b, commentBaseBean);
            if (commentBaseBean.isShowMore()) {
                gVar.f58527m.setText("收起");
                gVar.f58526l.setMaxLines(Integer.MAX_VALUE);
            } else {
                gVar.f58527m.setText("查看全部");
                gVar.f58526l.setMaxLines(5);
            }
            gVar.f58526l.post(new b(gVar, commentBaseBean));
            gVar.f58527m.setOnClickListener(new c(gVar, commentBaseBean));
        }
        return view;
    }

    private void l(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new d(commitDataBean));
    }

    private void m(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        e eVar = new e(commitDataBean, position, view, tv2);
        view.setOnClickListener(eVar);
        tv2.setOnClickListener(eVar);
    }

    private void n(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        f fVar = new f(commitDataBean, position, view, tv2);
        view.setOnClickListener(fVar);
        tv2.setOnClickListener(fVar);
    }

    public void b(int position) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58540a.getDespise_count()).longValue();
        aVar.f58540a.setIs_despise(1);
        aVar.f58540a.setDespise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    public void c(int position) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58540a.getPraise_count();
        aVar.f58540a.setIs_praise(1);
        aVar.f58540a.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public void d(com.join.mgps.event.n event) {
        if (this.f58492g == -1) {
            return;
        }
        if (event.getType() == 1) {
            this.f58488c.remove(this.f58492g);
        } else {
            i.a aVar = (i.a) getItem(this.f58492g);
            aVar.f58540a.setContent(event.a());
            aVar.f58540a.setMobile_phone_model(event.b());
            aVar.f58540a.setStars_score(String.valueOf(event.c()));
        }
        notifyDataSetChanged();
    }

    public i.a f() {
        return (i.a) getItem(this.f58492g);
    }

    public int g() {
        if (this.f58492g == -1) {
            for (int i10 = 0; i10 < this.f58488c.size(); i10++) {
                if (this.f58488c.get(i10).b() == ViewType.COMMENT && ((i.a) this.f58488c.get(i10).a()).f58540a.getUid().equals(String.valueOf(this.f58489d))) {
                    this.f58492g = i10;
                    break;
                }
            }
        }
        return this.f58492g;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f58488c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<i> list = this.f58488c;
        if (list != null) {
            return list.get(position).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        List<i> list = this.f58488c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return e(position, view, viewGroup, 2);
        }
        return itemViewType == ViewType.TITLE.ordinal() ? e(position, view, viewGroup, 1) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public h h() {
        return this.f58493h;
    }

    public void i(int position, int state) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58540a.getDespise_count()).longValue();
        if (aVar.f58540a.getIs_despise() == 1) {
            aVar.f58540a.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                aVar.f58540a.setDespise_count("0");
            } else {
                aVar.f58540a.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            aVar.f58540a.setIs_despise(1);
            aVar.f58540a.setDespise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void j(int position, int state) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58540a.getPraise_count();
        if (aVar.f58540a.getIs_praise() == 1) {
            aVar.f58540a.setIs_praise(0);
            long j10 = praise_count - 1;
            if (j10 < 0) {
                aVar.f58540a.setPraise_count(0L);
            } else {
                aVar.f58540a.setPraise_count(j10);
            }
        } else if (state != 1) {
            aVar.f58540a.setIs_praise(1);
            aVar.f58540a.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    public void k(h mListenr) {
        this.f58493h = mListenr;
    }

    public void o(int position) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58540a.getDespise_count()).longValue();
        aVar.f58540a.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            aVar.f58540a.setDespise_count("0");
        } else {
            aVar.f58540a.setDespise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public void p(int position) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58540a.getPraise_count();
        aVar.f58540a.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            aVar.f58540a.setPraise_count(0L);
        } else {
            aVar.f58540a.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }
}
