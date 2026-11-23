package com.join.mgps.adapter;

import android.content.Context;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class CommentAllListFragmentAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f58554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<i> f58555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f58556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f58557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f58558i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    CommentBaseBean f58560k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f58562m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    h f58563n;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f58559j = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<Integer, Boolean> f58561l = new HashMap();

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY,
        HEAD
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58564b;

        a(final CommentBaseBean val$commitDataBean) {
            this.f58564b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f58564b.getUid())).start();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g f58567c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f58568d;

        b(final CommentBaseBean val$commitDataBean, final g val$finalCommentViewHolder1, final int val$position) {
            this.f58566b = val$commitDataBean;
            this.f58567c = val$finalCommentViewHolder1;
            this.f58568d = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f58566b.isShowMore()) {
                return;
            }
            Layout layout = this.f58567c.f58598n.getLayout();
            if (layout == null) {
                if (this.f58566b.getContent().length() <= 115) {
                    this.f58567c.f58599o.setVisibility(8);
                    return;
                } else {
                    this.f58566b.setShowMore(true);
                    this.f58567c.f58599o.setVisibility(0);
                    return;
                }
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f58566b.setShowMore(true);
                    this.f58567c.f58599o.setVisibility(0);
                } else if (!CommentAllListFragmentAdapter.this.f58561l.containsKey(Integer.valueOf(this.f58568d))) {
                    this.f58567c.f58599o.setVisibility(8);
                } else {
                    this.f58566b.setShowMore(true);
                    this.f58567c.f58599o.setVisibility(0);
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f58570b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58571c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58572d;

        c(final g val$finalCommentViewHolder, final int val$position, final CommentBaseBean val$commitDataBean) {
            this.f58570b = val$finalCommentViewHolder;
            this.f58571c = val$position;
            this.f58572d = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f58570b.f58599o.getText().toString().equals("查看全部")) {
                CommentAllListFragmentAdapter.this.f58561l.put(Integer.valueOf(this.f58571c), Boolean.TRUE);
                this.f58570b.f58598n.setMaxLines(Integer.MAX_VALUE);
                this.f58570b.f58599o.setText("收起");
            } else {
                CommentAllListFragmentAdapter.this.f58561l.put(Integer.valueOf(this.f58571c), Boolean.FALSE);
                this.f58570b.f58598n.setMaxLines(5);
                this.f58570b.f58599o.setText("查看全部");
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58574b;

        d(final CommentBaseBean val$commitDataBean) {
            this.f58574b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            h hVar;
            CommentBaseBean commentBaseBean = this.f58574b;
            if (commentBaseBean == null || (hVar = CommentAllListFragmentAdapter.this.f58563n) == null) {
                return;
            }
            hVar.onRootView(commentBaseBean);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58577c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f58578d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f58579e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(e.this.f58579e.getText().toString()).longValue();
                e.this.f58579e.setText((jLongValue + 1) + "");
                e eVar = e.this;
                CommentAllListFragmentAdapter.this.e(eVar.f58577c);
                e eVar2 = e.this;
                h hVar = CommentAllListFragmentAdapter.this.f58563n;
                if (hVar != null) {
                    hVar.onPraise(eVar2.f58576b, eVar2.f58577c, 1);
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
            this.f58576b = val$commitDataBean;
            this.f58577c = val$position;
            this.f58578d = val$view;
            this.f58579e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f58554e) || (commentBaseBean = this.f58576b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                CommentAllListFragmentAdapter.this.r(this.f58577c);
                this.f58578d.setImageResource(R.drawable.up_ic);
                h hVar = CommentAllListFragmentAdapter.this.f58563n;
                if (hVar != null) {
                    hVar.onPraise(this.f58576b, this.f58577c, 2);
                    return;
                }
                return;
            }
            this.f58576b.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentAllListFragmentAdapter.this.f58554e).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f58554e);
                return;
            }
            this.f58578d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommentAllListFragmentAdapter.this.f58554e, R.anim.scale_reset);
            this.f58578d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f58582b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58583c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f58584d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f58585e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(f.this.f58585e.getText().toString()).longValue();
                f.this.f58585e.setText((jLongValue + 1) + "");
                f fVar = f.this;
                CommentAllListFragmentAdapter.this.d(fVar.f58583c);
                f fVar2 = f.this;
                h hVar = CommentAllListFragmentAdapter.this.f58563n;
                if (hVar != null) {
                    hVar.onUnPraise(fVar2.f58582b, fVar2.f58583c, 1);
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
            this.f58582b = val$commitDataBean;
            this.f58583c = val$position;
            this.f58584d = val$view;
            this.f58585e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f58554e) || (commentBaseBean = this.f58582b) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                CommentAllListFragmentAdapter.this.q(this.f58583c);
                this.f58584d.setImageResource(R.drawable.down_ic);
                h hVar = CommentAllListFragmentAdapter.this.f58563n;
                if (hVar != null) {
                    hVar.onUnPraise(this.f58582b, this.f58583c, 2);
                    return;
                }
                return;
            }
            this.f58582b.setIs_despise(1);
            if (AccountUtil_.getInstance_(CommentAllListFragmentAdapter.this.f58554e).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f58554e);
                return;
            }
            this.f58584d.setImageResource(R.drawable.downed_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommentAllListFragmentAdapter.this.f58554e, R.anim.scale_reset);
            this.f58584d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f58588d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f58589e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f58590f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f58591g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ImageView f58592h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f58593i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private MStarBar f58594j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f58595k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f58596l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ImageView f58597m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f58598n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f58599o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f58600p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f58601q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImageView f58602r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TextView f58603s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private ImageView f58604t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private TextView f58605u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private ImageView f58606v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private TextView f58607w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private VipView f58608x;

        public g(View view) {
            super(view);
            this.f58588d = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f58589e = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f58590f = (TextView) view.findViewById(R.id.userName);
            this.f58591g = (TextView) view.findViewById(R.id.isMe);
            this.f58608x = (VipView) view.findViewById(R.id.levelTv);
            this.f58592h = (ImageView) view.findViewById(R.id.isAuth);
            this.f58597m = (ImageView) view.findViewById(R.id.isGood);
            this.f58593i = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f58594j = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f58595k = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f58596l = (TextView) view.findViewById(R.id.time);
            this.f58598n = (TextView) view.findViewById(R.id.content);
            this.f58599o = (TextView) view.findViewById(R.id.more);
            this.f58600p = view.findViewById(R.id.line);
            this.f58601q = (TextView) view.findViewById(R.id.phoneModle);
            this.f58602r = (ImageView) view.findViewById(R.id.parise);
            this.f58603s = (TextView) view.findViewById(R.id.pariseNumber);
            this.f58604t = (ImageView) view.findViewById(R.id.down);
            this.f58605u = (TextView) view.findViewById(R.id.downNumber);
            this.f58606v = (ImageView) view.findViewById(R.id.message);
            this.f58607w = (TextView) view.findViewById(R.id.messageNumber);
        }
    }

    public interface h {
        void onPraise(CommentBaseBean bean, int position, int type);

        void onRootView(CommentBaseBean bean);

        void onUnPraise(CommentBaseBean bean, int position, int type);

        void v();
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f58610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f58611b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public CommentBaseBean f58612a;

            public a(CommentBaseBean data) {
                this.f58612a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f58613a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public CommentBaseBean f58614b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58615c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f58616d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58617e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f58618f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f58619g;

            public b(String commentId, CommentBaseBean commentBean, int myAuth, boolean showDivider) {
                this.f58613a = commentId;
                this.f58614b = commentBean;
                this.f58615c = myAuth;
                this.f58616d = showDivider;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f58611b;
        }

        public ViewType b() {
            return this.f58610a;
        }

        public void c(Object obj) {
            this.f58611b = obj;
        }

        public void d(ViewType viewType) {
            this.f58610a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f58610a = viewType;
            this.f58611b = obj;
        }
    }

    class j {
        j() {
        }
    }

    class k extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f58621d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private LinearLayout f58622e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private LinearLayout f58623f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private MStarBar f58624g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f58625h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f58626i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f58627j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f58628k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private HistogramView f58629l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private HistogramView f58630m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private HistogramView f58631n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private HistogramView f58632o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private HistogramView f58633p;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CommentAllListFragmentAdapter f58635b;

            a(final CommentAllListFragmentAdapter val$this$0) {
                this.f58635b = val$this$0;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                CommentAllListFragmentAdapter.this.f58563n.v();
            }
        }

        public k(View headView) {
            super(headView);
            this.f58629l = (HistogramView) headView.findViewById(R.id.oneHv);
            this.f58630m = (HistogramView) headView.findViewById(R.id.twoHv);
            this.f58631n = (HistogramView) headView.findViewById(R.id.threeHv);
            this.f58632o = (HistogramView) headView.findViewById(R.id.fourHv);
            this.f58633p = (HistogramView) headView.findViewById(R.id.fiveHv);
            this.f58624g = (MStarBar) headView.findViewById(R.id.comment_head_mstarBar);
            this.f58627j = (TextView) headView.findViewById(R.id.comment_head_point_tx);
            this.f58626i = (TextView) headView.findViewById(R.id.comment_head_nopoint_tx);
            this.f58628k = (TextView) headView.findViewById(R.id.comment_head_num_tx);
            TextView textView = (TextView) headView.findViewById(R.id.editText5);
            this.f58625h = textView;
            textView.setText("写评论");
            this.f58621d = (LinearLayout) headView.findViewById(R.id.start_ll);
            this.f58622e = (LinearLayout) headView.findViewById(R.id.point_ll);
            headView.findViewById(R.id.goCommit).setOnClickListener(new a(CommentAllListFragmentAdapter.this));
            headView.findViewById(R.id.goCommit).setVisibility((CommentAllListFragmentAdapter.this.f58562m == 0 || APKUtils.f34739a.z(CommentAllListFragmentAdapter.this.f58562m)) ? 0 : 8);
            this.f58624g.setIntegerMark(false);
            this.f58624g.setEnabled(false);
        }
    }

    class l extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58637d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f58638e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58639f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58640g;

        public l(View view) {
            super(view);
            this.f58637d = (TextView) view.findViewById(R.id.titleText);
            this.f58639f = view.findViewById(R.id.layoutTop);
        }
    }

    public CommentAllListFragmentAdapter(Context mContext, int uid, List<i> itemBeans, String commentScoreSwitch, int sgcSwitch, int cpu_type, h mListenr) {
        this.f58554e = mContext;
        this.f58556g = uid;
        this.f58557h = commentScoreSwitch;
        this.f58558i = sgcSwitch;
        this.f58555f = itemBeans;
        this.f58563n = mListenr;
        this.f58562m = cpu_type;
    }

    private int f(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void n(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new d(commitDataBean));
    }

    private void o(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        e eVar = new e(commitDataBean, position, view, tv2);
        view.setOnClickListener(eVar);
        tv2.setOnClickListener(eVar);
    }

    private void p(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        f fVar = new f(commitDataBean, position, view, tv2);
        view.setOnClickListener(fVar);
        tv2.setOnClickListener(fVar);
    }

    public void d(int position) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58612a.getDespise_count()).longValue();
        aVar.f58612a.setIs_despise(1);
        aVar.f58612a.setDespise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    public void e(int position) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58612a.getPraise_count();
        aVar.f58612a.setIs_praise(1);
        aVar.f58612a.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public int g() {
        if (this.f58559j == -1) {
            for (int i10 = 0; i10 < this.f58555f.size(); i10++) {
                if (this.f58555f.get(i10).b() == ViewType.COMMENT && ((i.a) this.f58555f.get(i10).a()).f58612a.getUid().equals(String.valueOf(this.f58556g))) {
                    this.f58559j = i10;
                    break;
                }
            }
        }
        return this.f58559j;
    }

    public Object getItem(int position) {
        List<i> list = this.f58555f;
        if (list != null) {
            return list.get(position).a();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<i> list = this.f58555f;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<i> list = this.f58555f;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    public h h() {
        return this.f58563n;
    }

    public void i(int position, int state) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58612a.getDespise_count()).longValue();
        if (aVar.f58612a.getIs_despise() == 1) {
            aVar.f58612a.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                aVar.f58612a.setDespise_count("0");
            } else {
                aVar.f58612a.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            aVar.f58612a.setIs_despise(1);
            aVar.f58612a.setDespise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void j(int position, int state) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58612a.getPraise_count();
        if (aVar.f58612a.getIs_praise() == 1) {
            aVar.f58612a.setIs_praise(0);
            long j10 = praise_count - 1;
            if (j10 < 0) {
                aVar.f58612a.setPraise_count(0L);
            } else {
                aVar.f58612a.setPraise_count(j10);
            }
        } else if (state != 1) {
            aVar.f58612a.setIs_praise(1);
            aVar.f58612a.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void k(CommentAllListBean.ScoringDetailsBean scoringDetailsBean, k viewHolderHead) {
        try {
            HistogramView[] histogramViewArr = {viewHolderHead.f58629l, viewHolderHead.f58630m, viewHolderHead.f58631n, viewHolderHead.f58632o, viewHolderHead.f58633p};
            String[] strArr = {"#F47500", "#FFA423", "#FFB53D", "#FBCD36", "#E4DECA"};
            double d10 = 0.0d;
            viewHolderHead.f58627j.setText(new DecimalFormat("#.0").format(com.join.mgps.Util.t2.i(scoringDetailsBean.getTotal_score()) ? Double.valueOf(scoringDetailsBean.getTotal_score()).doubleValue() : 0.0d));
            viewHolderHead.f58624g.setStarMark(scoringDetailsBean.getTotal_stars());
            double[] dArr = {Double.valueOf(scoringDetailsBean.getStars_score5()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score4()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score3()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score2()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score1()).doubleValue()};
            double d11 = 0.0d;
            int i10 = 0;
            for (int i11 = 0; i11 < 5; i11++) {
                double d12 = dArr[i11];
                if (d12 > d11) {
                    i10 = i11;
                    d11 = d12;
                }
            }
            viewHolderHead.f58628k.setText(scoringDetailsBean.getP_count() + "人");
            if (scoringDetailsBean.getP_count() <= 0) {
                viewHolderHead.f58624g.setStarMark(0.0d);
                viewHolderHead.f58626i.setVisibility(0);
                viewHolderHead.f58627j.setVisibility(8);
                viewHolderHead.f58628k.setVisibility(8);
            } else {
                viewHolderHead.f58622e.setVisibility(0);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, f(this.f58554e, 10.0f));
            int i12 = 0;
            while (i12 < 5) {
                histogramViewArr[i12].setAnim(false);
                double d13 = dArr[i12];
                if (d13 == d10) {
                    histogramViewArr[i12].setProgress(d10);
                } else if (i12 == i10 || d11 == d13) {
                    histogramViewArr[i12].setProgress(1.0d);
                } else {
                    histogramViewArr[i12].setProgress(d13 / d11);
                }
                histogramViewArr[i12].setRateBackgroundColor(strArr[i12]);
                histogramViewArr[i12].setLayoutParams(layoutParams);
                histogramViewArr[i12].setOrientation(0);
                i12++;
                d10 = 0.0d;
            }
        } catch (Exception unused) {
        }
    }

    public void l(h mListenr) {
        this.f58563n = mListenr;
    }

    public void m(CommentBaseBean mySelf) {
        this.f58560k = mySelf;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        String str;
        int itemViewType = getItemViewType(position);
        if (itemViewType != ViewType.COMMENT.ordinal()) {
            if (itemViewType == ViewType.HEAD.ordinal()) {
                k((CommentAllListBean.ScoringDetailsBean) getItem(position), (k) holder);
                return;
            }
            if (itemViewType == ViewType.TITLE.ordinal()) {
                l lVar = (l) holder;
                if (((i.a) getItem(position)).f58612a.getIs_hot() == 1) {
                    lVar.f58637d.setText("热门点评");
                } else {
                    lVar.f58637d.setText("最新点评");
                }
                lVar.f58639f.setVisibility(8);
                return;
            }
            return;
        }
        CommentBaseBean commentBaseBean = ((i.a) getItem(position)).f58612a;
        g gVar = (g) holder;
        gVar.f58590f.setTextColor(-16777216);
        if (commentBaseBean.getVip_level() > 0) {
            gVar.f58590f.setTextColor(this.f58554e.getResources().getColor(R.color.vip_color));
        }
        if (commentBaseBean.getSvip_level() > 0) {
            gVar.f58590f.setTextColor(this.f58554e.getResources().getColor(R.color.vip_svip_color));
        }
        gVar.f58608x.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
        if (commentBaseBean.getUid().equals(String.valueOf(this.f58556g))) {
            gVar.f58591g.setVisibility(0);
            this.f58559j = position;
        } else {
            gVar.f58591g.setVisibility(8);
        }
        gVar.f58589e.setOnClickListener(new a(commentBaseBean));
        gVar.f58590f.setText(commentBaseBean.getUser_name());
        gVar.f58598n.setText(commentBaseBean.getContent());
        if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
            gVar.f58601q.setVisibility(4);
        } else {
            gVar.f58601q.setVisibility(0);
            gVar.f58601q.setText(commentBaseBean.getMobile_phone_model());
        }
        gVar.f58603s.setText(commentBaseBean.getPraise_count() + "");
        gVar.f58605u.setText(commentBaseBean.getDespise_count() + "");
        gVar.f58607w.setText(commentBaseBean.getReply_count() + "");
        gVar.f58596l.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
        if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || !((str = this.f58557h) == null || str.equals("1"))) {
            gVar.f58594j.setVisibility(8);
        } else {
            gVar.f58594j.setVisibility(0);
            gVar.f58594j.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
        }
        if (this.f58558i == 1 && commentBaseBean.getIs_old() == 0) {
            gVar.f58595k.setVisibility(0);
            gVar.f58595k.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
        } else {
            gVar.f58595k.setVisibility(8);
        }
        gVar.f58594j.setEnabled(false);
        if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
            gVar.f58597m.setVisibility(8);
        } else {
            gVar.f58597m.setVisibility(0);
        }
        if (commentBaseBean.getRank().equals("")) {
            gVar.f58592h.setVisibility(8);
        } else {
            gVar.f58592h.setVisibility(0);
        }
        gVar.f58593i.setText(commentBaseBean.getRank());
        if (commentBaseBean.getIs_praise() == 1) {
            gVar.f58602r.setImageResource(R.drawable.uped_ic);
        } else {
            gVar.f58602r.setImageResource(R.drawable.up_ic);
        }
        if (commentBaseBean.getIs_despise() == 1) {
            gVar.f58604t.setImageResource(R.drawable.downed_ic);
        } else {
            gVar.f58604t.setImageResource(R.drawable.down_ic);
        }
        UtilsMy.J3(this.f58554e, commentBaseBean.getHead_portrait(), gVar.f58589e);
        o(gVar.f58602r, gVar.f58603s, commentBaseBean, position);
        p(gVar.f58604t, gVar.f58605u, commentBaseBean, position);
        n(gVar.f58606v, commentBaseBean);
        n(gVar.f58588d, commentBaseBean);
        if (commentBaseBean.getContent().length() > 115) {
            commentBaseBean.setShowMore(true);
        }
        if (commentBaseBean.isShowMore()) {
            gVar.f58599o.setVisibility(0);
        }
        gVar.f58598n.post(new b(commentBaseBean, gVar, position));
        gVar.f58599o.setOnClickListener(new c(gVar, position, commentBaseBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType == ViewType.COMMENT.ordinal()) {
            return new g(LayoutInflater.from(this.f58554e).inflate(R.layout.comment_list_item_view, parent, false));
        }
        return viewType == ViewType.HEAD.ordinal() ? new k(LayoutInflater.from(this.f58554e).inflate(R.layout.comment_list_head_view, parent, false)) : new l(LayoutInflater.from(this.f58554e).inflate(R.layout.gamedetail_item_title, parent, false));
    }

    public void q(int position) {
        i.a aVar = (i.a) getItem(position);
        long jLongValue = Long.valueOf(aVar.f58612a.getDespise_count()).longValue();
        aVar.f58612a.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            aVar.f58612a.setDespise_count("0");
        } else {
            aVar.f58612a.setDespise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public void r(int position) {
        i.a aVar = (i.a) getItem(position);
        long praise_count = aVar.f58612a.getPraise_count();
        aVar.f58612a.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            aVar.f58612a.setPraise_count(0L);
        } else {
            aVar.f58612a.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }
}
