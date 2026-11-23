package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.InformationCommentBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameCommentAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<l> f60519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    j f60520d;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60521b;

        a(final InformationCommentBean val$commitDataBean) {
            this.f60521b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f60521b.getUser_id())).start();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f60523b;

        b(final i val$finalCommentViewHolder1) {
            this.f60523b = val$finalCommentViewHolder1;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f60523b.f60549g.getLayout();
            if (layout == null) {
                this.f60523b.f60553k.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f60523b.f60553k.setVisibility(0);
                } else {
                    this.f60523b.f60553k.setVisibility(8);
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f60525b;

        c(final i val$finalCommentViewHolder) {
            this.f60525b = val$finalCommentViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60525b.f60553k.getText().toString().equals("查看全部")) {
                this.f60525b.f60549g.setMaxLines(Integer.MAX_VALUE);
                this.f60525b.f60553k.setText("收起");
            } else {
                this.f60525b.f60549g.setMaxLines(5);
                this.f60525b.f60553k.setText("查看全部");
            }
            this.f60525b.f60553k.postInvalidate();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60527b;

        d(final InformationCommentBean val$commitDataBean) {
            this.f60527b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60527b.isHasPraised()) {
                com.join.mgps.Util.a3.b(GameCommentAdapter.this.f60518b).d("你已赞过");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(GameCommentAdapter.this.f60518b)) {
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(GameCommentAdapter.this.f60518b, R.anim.scale_reset));
            j jVar = GameCommentAdapter.this.f60520d;
            if (jVar != null) {
                jVar.a(this.f60527b);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f60529b;

        e(final InformationCommentBean.Sub val$sub) {
            this.f60529b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            j jVar = GameCommentAdapter.this.f60520d;
            if (jVar != null) {
                jVar.b(this.f60529b);
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60531b;

        f(final InformationCommentBean val$commitDataBean) {
            this.f60531b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            j jVar = GameCommentAdapter.this.f60520d;
            if (jVar != null) {
                jVar.c(this.f60531b);
            }
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ l.b f60536e;

        g(final int val$itemIndex, final int val$position, final String val$cid, final l.b val$commentMessageReply) {
            this.f60533b = val$itemIndex;
            this.f60534c = val$position;
            this.f60535d = val$cid;
            this.f60536e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60533b == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f60533b; i10 >= 0; i10--) {
                l lVar = (l) GameCommentAdapter.this.f60519c.get(this.f60534c - i10);
                l.b bVar = lVar.b() == ViewType.REPLY ? (l.b) lVar.a() : null;
                if (bVar != null && this.f60535d == bVar.f60566a) {
                    arrayList.addAll(bVar.f60567b.getSub());
                }
            }
            for (int i11 = 0; i11 <= this.f60533b; i11++) {
                GameCommentAdapter.this.f60519c.remove(this.f60534c - i11);
            }
            informationCommentBean.setSub(arrayList);
            GameCommentAdapter.this.f60519c.add(this.f60534c - this.f60533b, GameCommentAdapter.this.c(this.f60535d, informationCommentBean, this.f60536e.f60568c, true));
            GameCommentAdapter.this.notifyDataSetChanged();
            GameCommentAdapter.this.f60520d.d();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60539c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60540d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ l.b f60541e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f60542f;

        h(final int val$size, final InformationCommentBean val$forumCommentBean, final String val$cid, final l.b val$commentMessageReply, final int val$position) {
            this.f60538b = val$size;
            this.f60539c = val$forumCommentBean;
            this.f60540d = val$cid;
            this.f60541e = val$commentMessageReply;
            this.f60542f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f60538b) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f60539c);
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < sub.size()) {
                    arrayList.addAll(sub.subList(i10, i12));
                } else {
                    arrayList.addAll(sub.subList(i10, sub.size()));
                    z10 = true;
                }
                informationCommentBean.setSub(arrayList);
                l lVarC = GameCommentAdapter.this.c(this.f60540d, informationCommentBean, this.f60541e.f60568c, i11 == 0);
                l.b bVar = (l.b) lVarC.a();
                bVar.f60570e = i11;
                bVar.f60571f = z10;
                bVar.f60569d = i11 == 0;
                GameCommentAdapter.this.i(lVarC, !z10);
                GameCommentAdapter.this.f60519c.add(this.f60542f + i11 + 1, lVarC);
                i11++;
                i10 = i12;
            }
            GameCommentAdapter.this.f60519c.remove(this.f60542f);
            GameCommentAdapter.this.notifyDataSetChanged();
            GameCommentAdapter.this.f60520d.d();
        }
    }

    class i extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RelativeLayout f60544b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SimpleDraweeView f60545c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f60546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f60547e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f60548f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f60549g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f60550h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f60551i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public View f60552j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60553k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public VipView f60554l;

        i() {
            super();
        }
    }

    public interface j {
        void a(InformationCommentBean bean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean bean);

        void d();
    }

    class k extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f60556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60557c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60558d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60559e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60560f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f60561g;

        k() {
            super();
        }
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60564b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public InformationCommentBean f60565a;

            public a(InformationCommentBean data) {
                this.f60565a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60566a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public InformationCommentBean f60567b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60568c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60569d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60570e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f60571f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60572g;

            public b(String commentId, InformationCommentBean commentBean, int myAuth, boolean showDivider) {
                this.f60566a = commentId;
                this.f60567b = commentBean;
                this.f60568c = myAuth;
                this.f60569d = showDivider;
            }
        }

        public l() {
        }

        public Object a() {
            return this.f60564b;
        }

        public ViewType b() {
            return this.f60563a;
        }

        public void c(Object obj) {
            this.f60564b = obj;
        }

        public void d(ViewType viewType) {
            this.f60563a = viewType;
        }

        public l(ViewType viewType, Object obj) {
            this.f60563a = viewType;
            this.f60564b = obj;
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f60573a;

        m() {
        }
    }

    class n {
        n() {
        }
    }

    public GameCommentAdapter(Context mContext, List<l> itemBeans, j mListenr) {
        this.f60518b = mContext;
        this.f60519c = itemBeans;
        this.f60520d = mListenr;
    }

    private View f(int position, View convertView, ViewGroup viewGroup) {
        k kVar;
        try {
            if (convertView != null) {
                kVar = (k) convertView.getTag();
            } else {
                kVar = new k();
                convertView = LayoutInflater.from(this.f60518b).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                kVar.f60556b = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                kVar.f60557c = convertView.findViewById(R.id.comment_reply_divider);
                kVar.f60558d = (TextView) convertView.findViewById(R.id.comment_reply_content);
                kVar.f60559e = (TextView) convertView.findViewById(R.id.comment_reply_more);
                kVar.f60560f = convertView.findViewById(R.id.line);
                kVar.f60561g = convertView.findViewById(R.id.bottom);
                convertView.setTag(kVar);
            }
            l.b bVar = (l.b) getItem(position);
            if (bVar == null || bVar.f60567b == null) {
                return convertView;
            }
            if (bVar.f60569d) {
                kVar.f60557c.setVisibility(0);
            } else {
                kVar.f60557c.setVisibility(8);
            }
            if (bVar.f60572g) {
                kVar.f60560f.setVisibility(8);
                kVar.f60561g.setVisibility(8);
            } else {
                kVar.f60560f.setVisibility(0);
                kVar.f60561g.setVisibility(0);
            }
            List<InformationCommentBean.Sub> sub = bVar.f60567b.getSub();
            if (sub == null || sub.size() == 0) {
                kVar.f60556b.removeAllViews();
            } else {
                h(kVar.f60556b, bVar, true, position);
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void h(final View parent, final l.b commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f60566a;
        int i12 = commentMessageReply.f60570e;
        boolean z11 = commentMessageReply.f60571f;
        InformationCommentBean informationCommentBean = commentMessageReply.f60567b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60518b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                if ((i14 != size || size <= 3) && !(i12 > 0 && z11 && i14 == size)) {
                    view = viewInflate;
                    i10 = i12;
                    z10 = z11;
                    i11 = i14;
                    if (i11 == 3 && hideMore && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view.setOnClickListener(new h(size, informationCommentBean, str, commentMessageReply, position));
                    } else {
                        size = size;
                        if (i11 < size && (i11 < 3 || !hideMore)) {
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            InformationCommentBean.Sub sub2 = sub.get(i11);
                            String content = sub2.getContent();
                            sub2.getComment_id();
                            try {
                                textView.setText(Html.fromHtml(content));
                                l(view, sub2);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            linearLayout.addView(view);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i13);
                    textView2.setText("收起");
                    int i15 = i12;
                    view = viewInflate;
                    i10 = i12;
                    i11 = i14;
                    z10 = z11;
                    view.setOnClickListener(new g(i15, position, str, commentMessageReply));
                }
                linearLayout.addView(view);
            } else {
                i10 = i12;
                z10 = z11;
                i11 = i14;
                size = size;
            }
            i14 = i11 + 1;
            size = size;
            i12 = i10;
            z11 = z10;
            i13 = 0;
        }
    }

    private void l(View view, final InformationCommentBean.Sub sub) {
        view.setOnClickListener(new e(sub));
    }

    private void m(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new d(commitDataBean));
    }

    private void n(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new f(commitDataBean));
    }

    l c(String pid, InformationCommentBean bean, int myAuth, boolean showDivider) {
        return new l(ViewType.REPLY, new l.b(pid, bean, myAuth, showDivider));
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000f  */
    public View d(int position, View view, ViewGroup viewGroup, int type) {
        View view2;
        m mVar;
        i iVar;
        l.a aVar = (l.a) getItem(position);
        if (view == null) {
            if (type == 1) {
                mVar = new m();
                View viewInflate = LayoutInflater.from(this.f60518b).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                mVar.f60573a = (TextView) viewInflate.findViewById(R.id.title);
                viewInflate.setTag(mVar);
                view2 = viewInflate;
                iVar = null;
            } else if (type != 2) {
                view2 = view;
                mVar = null;
                iVar = null;
            } else {
                i iVar2 = new i();
                View viewInflate2 = LayoutInflater.from(this.f60518b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                iVar2.f60544b = (RelativeLayout) viewInflate2.findViewById(R.id.main);
                iVar2.f60545c = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                iVar2.f60546d = (ImageView) viewInflate2.findViewById(R.id.parise);
                iVar2.f60547e = (TextView) viewInflate2.findViewById(R.id.username);
                iVar2.f60548f = (TextView) viewInflate2.findViewById(R.id.time);
                iVar2.f60549g = (TextView) viewInflate2.findViewById(R.id.content);
                iVar2.f60550h = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                iVar2.f60551i = (TextView) viewInflate2.findViewById(R.id.levelTv);
                iVar2.f60554l = (VipView) viewInflate2.findViewById(R.id.levelVip);
                iVar2.f60552j = viewInflate2.findViewById(R.id.line);
                iVar2.f60553k = (TextView) viewInflate2.findViewById(R.id.more);
                viewInflate2.setTag(iVar2);
                view2 = viewInflate2;
                iVar = iVar2;
                mVar = null;
            }
        } else if (type == 1) {
            view2 = view;
            mVar = (m) view.getTag();
            iVar = null;
        } else if (type != 2) {
            view2 = view;
            mVar = null;
            iVar = null;
        } else {
            iVar = (i) view.getTag();
            view2 = view;
            mVar = null;
        }
        if (type != 1) {
            if (type == 2) {
                if (aVar == null) {
                    return null;
                }
                InformationCommentBean informationCommentBean = aVar.f60565a;
                if (informationCommentBean.getSub() == null || informationCommentBean.getSub().size() <= 0) {
                    iVar.f60552j.setVisibility(0);
                } else {
                    iVar.f60552j.setVisibility(8);
                }
                iVar.f60548f.setText(com.join.android.app.common.utils.i.a(Long.parseLong(informationCommentBean.getTimes() + "000")));
                iVar.f60549g.setText(informationCommentBean.getContent());
                iVar.f60550h.setText(informationCommentBean.getPraise_count() + "");
                if (informationCommentBean.isHasPraised()) {
                    iVar.f60546d.setImageResource(R.drawable.like);
                } else {
                    iVar.f60546d.setImageResource(R.drawable.unlike);
                }
                if (com.join.mgps.Util.t2.i(informationCommentBean.getHead_portrait())) {
                    UtilsMy.J3(this.f60518b, informationCommentBean.getHead_portrait(), iVar.f60545c);
                }
                com.join.mgps.Util.w.h(informationCommentBean.getUser_level(), iVar.f60551i);
                iVar.f60551i.setText("LV." + informationCommentBean.getUser_level());
                iVar.f60547e.setText(Html.fromHtml(informationCommentBean.getUser_name()));
                UtilsMy.Q3(iVar.f60547e.getContext(), iVar.f60547e, informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                iVar.f60554l.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                m(iVar.f60546d, informationCommentBean);
                n(view2, informationCommentBean);
                iVar.f60545c.setOnClickListener(new a(informationCommentBean));
                iVar.f60549g.post(new b(iVar));
                iVar.f60553k.setOnClickListener(new c(iVar));
            }
        } else if (aVar.f60565a.getIs_hot() == 1) {
            mVar.f60573a.setText("热门评论");
        } else {
            mVar.f60573a.setText("最新评论");
        }
        return view2;
    }

    public List<l> e() {
        return this.f60519c;
    }

    public j g() {
        return this.f60520d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<l> list = this.f60519c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<l> list = this.f60519c;
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
        List<l> list = this.f60519c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return d(position, view, viewGroup, 2);
        }
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return d(position, view, viewGroup, 1);
        }
        return itemViewType == ViewType.REPLY.ordinal() ? f(position, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void i(l bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((l.b) bean.a()).f60572g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j(List<l> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60519c == null) {
            itemBeans = new ArrayList<>();
        }
        this.f60519c.clear();
        this.f60519c.addAll(itemBeans);
    }

    public void k(j mListenr) {
        this.f60520d = mListenr;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public GameCommentAdapter(Context mContext) {
        this.f60520d = null;
        this.f60518b = mContext;
        this.f60519c = new ArrayList();
    }
}
