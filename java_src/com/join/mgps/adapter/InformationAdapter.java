package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
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
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.InformationCommentBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f60712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<n> f60713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    l f60714e = null;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60716c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60717d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.b f60718e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f60719f;

        a(final int val$size, final InformationCommentBean val$forumCommentBean, final String val$cid, final n.b val$commentMessageReply, final int val$position) {
            this.f60715b = val$size;
            this.f60716c = val$forumCommentBean;
            this.f60717d = val$cid;
            this.f60718e = val$commentMessageReply;
            this.f60719f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f60715b) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f60716c);
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
                n nVarD = InformationAdapter.this.d(this.f60717d, informationCommentBean, this.f60718e.f60763c, i11 == 0);
                n.b bVar = (n.b) nVarD.a();
                bVar.f60765e = i11;
                bVar.f60766f = z10;
                bVar.f60764d = i11 == 0;
                InformationAdapter.this.k(nVarD, !z10);
                InformationAdapter.this.f60713d.add(this.f60719f + i11 + 1, nVarD);
                i11++;
                i10 = i12;
            }
            InformationAdapter.this.f60713d.remove(this.f60719f);
            InformationAdapter.this.notifyDataSetChanged();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60721b;

        b(final InformationCommentBean val$informationCommentBean) {
            this.f60721b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Message message = new Message();
            message.what = 2;
            message.obj = this.f60721b;
            InformationAdapter.this.f60712c.sendMessage(message);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60723b;

        c(final InformationCommentBean val$informationCommentBean) {
            this.f60723b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60723b.isHasPraised()) {
                com.join.mgps.Util.a3.b(InformationAdapter.this.f60711b).d("你已赞过");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(InformationAdapter.this.f60711b)) {
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(InformationAdapter.this.f60711b, R.anim.scale_reset));
            Message message = new Message();
            message.what = 1;
            message.obj = this.f60723b;
            InformationAdapter.this.f60712c.sendMessage(message);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f60725b;

        d(final p val$finalCommentViewHolder1) {
            this.f60725b = val$finalCommentViewHolder1;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f60725b.f60775f.getLayout();
            if (layout == null) {
                this.f60725b.f60779j.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f60725b.f60779j.setVisibility(0);
                } else {
                    this.f60725b.f60779j.setVisibility(8);
                }
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f60727b;

        e(final p val$finalCommentViewHolder1) {
            this.f60727b = val$finalCommentViewHolder1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60727b.f60779j.getText().toString().equals("查看全部")) {
                this.f60727b.f60775f.setMaxLines(Integer.MAX_VALUE);
                this.f60727b.f60779j.setText("收起");
            } else {
                this.f60727b.f60775f.setMaxLines(5);
                this.f60727b.f60779j.setText("查看全部");
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60729b;

        f(final InformationCommentBean val$informationCommentBean) {
            this.f60729b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f60729b.getUser_id())).start();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60731b;

        g(final InformationCommentBean val$commitDataBean) {
            this.f60731b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60731b.isHasPraised()) {
                com.join.mgps.Util.a3.b(InformationAdapter.this.f60711b).d("你已赞过");
                return;
            }
            if (AccountUtil_.getInstance_(InformationAdapter.this.f60711b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(InformationAdapter.this.f60711b);
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(InformationAdapter.this.f60711b, R.anim.scale_reset));
            l lVar = InformationAdapter.this.f60714e;
            if (lVar != null) {
                lVar.a(this.f60731b);
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f60733b;

        h(final InformationCommentBean.Sub val$sub) {
            this.f60733b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            l lVar = InformationAdapter.this.f60714e;
            if (lVar != null) {
                lVar.b(this.f60733b);
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60735b;

        i(final InformationCommentBean val$commitDataBean) {
            this.f60735b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            l lVar = InformationAdapter.this.f60714e;
            if (lVar != null) {
                lVar.c(this.f60735b);
            }
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60738c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60739d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.b f60740e;

        j(final int val$itemIndex, final int val$position, final String val$cid, final n.b val$commentMessageReply) {
            this.f60737b = val$itemIndex;
            this.f60738c = val$position;
            this.f60739d = val$cid;
            this.f60740e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60737b == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f60737b; i10 >= 0; i10--) {
                n nVar = (n) InformationAdapter.this.f60713d.get(this.f60738c - i10);
                n.b bVar = nVar.b() == ViewType.REPLY ? (n.b) nVar.a() : null;
                if (bVar != null && this.f60739d == bVar.f60761a) {
                    arrayList.addAll(bVar.f60762b.getSub());
                }
            }
            for (int i11 = 0; i11 <= this.f60737b; i11++) {
                InformationAdapter.this.f60713d.remove(this.f60738c - i11);
            }
            informationCommentBean.setSub(arrayList);
            InformationAdapter.this.f60713d.add(this.f60738c - this.f60737b, InformationAdapter.this.d(this.f60739d, informationCommentBean, this.f60740e.f60763c, true));
            InformationAdapter.this.notifyDataSetChanged();
        }
    }

    class k extends p {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private RelativeLayout f60742l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private SimpleDraweeView f60743m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ImageView f60744n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f60745o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private TextView f60746p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f60747q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private TextView f60748r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private VipView f60749s;

        k() {
            super();
        }
    }

    public interface l {
        void a(InformationCommentBean bean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean bean);
    }

    class m extends p {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public LinearLayout f60751l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f60752m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f60753n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public TextView f60754o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f60755p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public View f60756q;

        m() {
            super();
        }
    }

    public static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60759b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public InformationCommentBean f60760a;

            public a(InformationCommentBean data) {
                this.f60760a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60761a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public InformationCommentBean f60762b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60763c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60764d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60765e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f60766f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60767g;

            public b(String commentId, InformationCommentBean commentBean, int myAuth, boolean showDivider) {
                this.f60761a = commentId;
                this.f60762b = commentBean;
                this.f60763c = myAuth;
                this.f60764d = showDivider;
            }
        }

        public n() {
        }

        public Object a() {
            return this.f60759b;
        }

        public ViewType b() {
            return this.f60758a;
        }

        public void c(Object obj) {
            this.f60759b = obj;
        }

        public void d(ViewType viewType) {
            this.f60758a = viewType;
        }

        public n(ViewType viewType, Object obj) {
            this.f60758a = viewType;
            this.f60759b = obj;
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f60768a;

        o() {
        }
    }

    class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RelativeLayout f60770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDraweeView f60771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f60772c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f60773d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f60774e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f60775f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f60776g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f60777h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VipView f60778i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f60779j;

        p() {
        }
    }

    public InformationAdapter(Context context, Handler handler, List<n> viewBeanList) {
        this.f60711b = context;
        this.f60712c = handler;
        this.f60713d = viewBeanList;
    }

    private View g(int position, View convertView, ViewGroup viewGroup) {
        m mVar;
        try {
            if (convertView != null) {
                mVar = (m) convertView.getTag();
            } else {
                mVar = new m();
                convertView = LayoutInflater.from(this.f60711b).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                mVar.f60751l = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                mVar.f60752m = convertView.findViewById(R.id.comment_reply_divider);
                mVar.f60753n = (TextView) convertView.findViewById(R.id.comment_reply_content);
                mVar.f60754o = (TextView) convertView.findViewById(R.id.comment_reply_more);
                mVar.f60755p = convertView.findViewById(R.id.line);
                mVar.f60756q = convertView.findViewById(R.id.bottom);
                convertView.setTag(mVar);
            }
            n.b bVar = (n.b) getItem(position);
            if (bVar == null || bVar.f60762b == null) {
                return convertView;
            }
            if (bVar.f60764d) {
                mVar.f60752m.setVisibility(0);
            } else {
                mVar.f60752m.setVisibility(8);
            }
            if (bVar.f60767g) {
                mVar.f60755p.setVisibility(8);
                mVar.f60756q.setVisibility(8);
            } else {
                mVar.f60755p.setVisibility(0);
                mVar.f60756q.setVisibility(0);
            }
            List<InformationCommentBean.Sub> sub = bVar.f60762b.getSub();
            if (sub == null || sub.size() == 0) {
                mVar.f60751l.removeAllViews();
            } else {
                j(mVar.f60751l, bVar, true, position);
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void j(final View parent, final n.b commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f60761a;
        int i12 = commentMessageReply.f60765e;
        boolean z11 = commentMessageReply.f60766f;
        InformationCommentBean informationCommentBean = commentMessageReply.f60762b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60711b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view.setOnClickListener(new a(size, informationCommentBean, str, commentMessageReply, position));
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
                                n(view, sub2);
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
                    view.setOnClickListener(new j(i15, position, str, commentMessageReply));
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

    private void n(View view, final InformationCommentBean.Sub sub) {
        view.setOnClickListener(new h(sub));
    }

    private void o(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new g(commitDataBean));
    }

    private void p(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new i(commitDataBean));
    }

    n d(String pid, InformationCommentBean bean, int myAuth, boolean showDivider) {
        return new n(ViewType.REPLY, new n.b(pid, bean, myAuth, showDivider));
    }

    public View e(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        k kVar;
        if (view == null) {
            kVar = new k();
            viewInflate = LayoutInflater.from(this.f60711b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
            kVar.f60742l = (RelativeLayout) viewInflate.findViewById(R.id.main);
            kVar.f60743m = (SimpleDraweeView) viewInflate.findViewById(R.id.usericon);
            kVar.f60744n = (ImageView) viewInflate.findViewById(R.id.parise);
            kVar.f60745o = (TextView) viewInflate.findViewById(R.id.username);
            kVar.f60746p = (TextView) viewInflate.findViewById(R.id.time);
            kVar.f60747q = (TextView) viewInflate.findViewById(R.id.content);
            kVar.f60748r = (TextView) viewInflate.findViewById(R.id.pariseNumber);
            kVar.f60749s = (VipView) viewInflate.findViewById(R.id.levelTv);
            viewInflate.setTag(kVar);
        } else {
            viewInflate = view;
            kVar = (k) view.getTag();
        }
        n.a aVar = (n.a) getItem(position);
        if (aVar == null) {
            return null;
        }
        InformationCommentBean informationCommentBean = aVar.f60760a;
        kVar.f60746p.setText(com.join.android.app.common.utils.i.a(Long.parseLong(informationCommentBean.getTimes() + "000")));
        kVar.f60747q.setText(informationCommentBean.getContent());
        kVar.f60748r.setText(informationCommentBean.getPraise_count() + "");
        if (informationCommentBean.isHasPraised()) {
            kVar.f60744n.setImageResource(R.drawable.like);
        } else {
            kVar.f60744n.setImageResource(R.drawable.unlike);
        }
        if (com.join.mgps.Util.t2.i(informationCommentBean.getHead_portrait())) {
            UtilsMy.J3(this.f60711b, informationCommentBean.getHead_portrait(), kVar.f60743m);
        }
        kVar.f60745o.setText(Html.fromHtml(informationCommentBean.getUser_name()));
        kVar.f60749s.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
        o(kVar.f60744n, informationCommentBean);
        p(viewInflate, informationCommentBean);
        return viewInflate;
    }

    public List<n> f() {
        return this.f60713d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<n> list = this.f60713d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<n> list = this.f60713d;
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
        List<n> list = this.f60713d;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return h(position, view, viewGroup, 2);
        }
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return h(position, view, viewGroup, 1);
        }
        return itemViewType == ViewType.REPLY.ordinal() ? g(position, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0011  */
    public View h(final int i10, View view, ViewGroup viewGroup, int type) {
        o oVar;
        InformationCommentBean informationCommentBean = ((n.a) getItem(i10)).f60760a;
        p pVar = null;
        if (view == null) {
            if (type == 1) {
                o oVar2 = new o();
                View viewInflate = LayoutInflater.from(this.f60711b).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                oVar2.f60768a = (TextView) viewInflate.findViewById(R.id.title);
                viewInflate.setTag(oVar2);
                oVar = oVar2;
                view = viewInflate;
            } else if (type != 2) {
                oVar = null;
            } else {
                p pVar2 = new p();
                View viewInflate2 = LayoutInflater.from(this.f60711b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                pVar2.f60770a = (RelativeLayout) viewInflate2.findViewById(R.id.main);
                pVar2.f60771b = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                pVar2.f60772c = (ImageView) viewInflate2.findViewById(R.id.parise);
                pVar2.f60773d = (TextView) viewInflate2.findViewById(R.id.username);
                pVar2.f60774e = (TextView) viewInflate2.findViewById(R.id.time);
                pVar2.f60775f = (TextView) viewInflate2.findViewById(R.id.content);
                pVar2.f60776g = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                pVar2.f60777h = (TextView) viewInflate2.findViewById(R.id.levelTv);
                pVar2.f60778i = (VipView) viewInflate2.findViewById(R.id.levelVip);
                pVar2.f60779j = (TextView) viewInflate2.findViewById(R.id.more);
                viewInflate2.setTag(pVar2);
                pVar = pVar2;
                view = viewInflate2;
                oVar = null;
            }
        } else if (type == 1) {
            oVar = (o) view.getTag();
        } else if (type != 2) {
            oVar = null;
        } else {
            oVar = null;
            pVar = (p) view.getTag();
        }
        if (type != 1) {
            if (type == 2) {
                pVar.f60773d.setText(Html.fromHtml(informationCommentBean.getUser_name()));
                pVar.f60774e.setText(com.join.android.app.common.utils.i.b(Long.parseLong(informationCommentBean.getTimes() + "000")));
                pVar.f60775f.setText(informationCommentBean.getContent());
                pVar.f60776g.setText(informationCommentBean.getPraise_count() + "");
                if (informationCommentBean.isHasPraised()) {
                    pVar.f60772c.setImageResource(R.drawable.like);
                } else {
                    pVar.f60772c.setImageResource(R.drawable.unlike);
                }
                if (com.join.mgps.Util.t2.i(informationCommentBean.getHead_portrait())) {
                    UtilsMy.J3(this.f60711b, informationCommentBean.getHead_portrait(), pVar.f60771b);
                }
                try {
                    UtilsMy.Q3(this.f60711b, pVar.f60773d, informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                    pVar.f60778i.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                com.join.mgps.Util.w.h(informationCommentBean.getUser_level(), pVar.f60777h);
                pVar.f60777h.setText("LV." + informationCommentBean.getUser_level());
                pVar.f60770a.setOnClickListener(new b(informationCommentBean));
                pVar.f60772c.setOnClickListener(new c(informationCommentBean));
                pVar.f60775f.post(new d(pVar));
                pVar.f60779j.setOnClickListener(new e(pVar));
                pVar.f60771b.setOnClickListener(new f(informationCommentBean));
            }
        } else if (informationCommentBean.getIs_hot() == 1) {
            oVar.f60768a.setText("热门评论");
        } else {
            oVar.f60768a.setText("最新评论");
        }
        return view;
    }

    public l i() {
        return this.f60714e;
    }

    void k(n bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((n.b) bean.a()).f60767g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l(List<n> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60713d == null) {
            itemBeans = new ArrayList<>();
        }
        this.f60713d.clear();
        this.f60713d.addAll(itemBeans);
    }

    public void m(l mListenr) {
        this.f60714e = mListenr;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
