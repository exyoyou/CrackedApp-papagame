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
import com.join.mgps.dto.InformationCommentBeanV2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationAdapterV2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f60782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<n> f60783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    l f60784e = null;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60787d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.b f60788e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f60789f;

        a(final int val$size, final InformationCommentBeanV2 val$forumCommentBean, final String val$cid, final n.b val$commentMessageReply, final int val$position) {
            this.f60785b = val$size;
            this.f60786c = val$forumCommentBean;
            this.f60787d = val$cid;
            this.f60788e = val$commentMessageReply;
            this.f60789f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f60785b) {
                InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2(this.f60786c);
                List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < replyList.size()) {
                    arrayList.addAll(replyList.subList(i10, i12));
                } else {
                    arrayList.addAll(replyList.subList(i10, replyList.size()));
                    z10 = true;
                }
                informationCommentBeanV2.setReplyList(arrayList);
                n nVarD = InformationAdapterV2.this.d(this.f60787d, informationCommentBeanV2, this.f60788e.f60833c, i11 == 0);
                n.b bVar = (n.b) nVarD.a();
                bVar.f60835e = i11;
                bVar.f60836f = z10;
                bVar.f60834d = i11 == 0;
                InformationAdapterV2.this.k(nVarD, !z10);
                InformationAdapterV2.this.f60783d.add(this.f60789f + i11 + 1, nVarD);
                i11++;
                i10 = i12;
            }
            InformationAdapterV2.this.f60783d.remove(this.f60789f);
            InformationAdapterV2.this.notifyDataSetChanged();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60791b;

        b(final InformationCommentBeanV2 val$informationCommentBean) {
            this.f60791b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Message message = new Message();
            message.what = 2;
            message.obj = this.f60791b;
            InformationAdapterV2.this.f60782c.sendMessage(message);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60793b;

        c(final InformationCommentBeanV2 val$informationCommentBean) {
            this.f60793b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60793b.getPraise().booleanValue()) {
                com.join.mgps.Util.a3.b(InformationAdapterV2.this.f60781b).d("你已赞过");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(InformationAdapterV2.this.f60781b)) {
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(InformationAdapterV2.this.f60781b, R.anim.scale_reset));
            Message message = new Message();
            message.what = 1;
            message.obj = this.f60793b;
            InformationAdapterV2.this.f60782c.sendMessage(message);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f60795b;

        d(final p val$finalCommentViewHolder1) {
            this.f60795b = val$finalCommentViewHolder1;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f60795b.f60845f.getLayout();
            if (layout == null) {
                this.f60795b.f60849j.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f60795b.f60849j.setVisibility(0);
                } else {
                    this.f60795b.f60849j.setVisibility(8);
                }
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f60797b;

        e(final p val$finalCommentViewHolder1) {
            this.f60797b = val$finalCommentViewHolder1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60797b.f60849j.getText().toString().equals("查看全部")) {
                this.f60797b.f60845f.setMaxLines(Integer.MAX_VALUE);
                this.f60797b.f60849j.setText("收起");
            } else {
                this.f60797b.f60845f.setMaxLines(5);
                this.f60797b.f60849j.setText("查看全部");
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60799b;

        f(final InformationCommentBeanV2 val$informationCommentBean) {
            this.f60799b = val$informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f60799b.getUid())).start();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60801b;

        g(final InformationCommentBeanV2 val$commitDataBean) {
            this.f60801b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60801b.getPraise().booleanValue()) {
                com.join.mgps.Util.a3.b(InformationAdapterV2.this.f60781b).d("你已赞过");
                return;
            }
            if (AccountUtil_.getInstance_(InformationAdapterV2.this.f60781b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(InformationAdapterV2.this.f60781b);
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(InformationAdapterV2.this.f60781b, R.anim.scale_reset));
            l lVar = InformationAdapterV2.this.f60784e;
            if (lVar != null) {
                lVar.b(this.f60801b);
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60803b;

        h(final InformationCommentBeanV2 val$sub) {
            this.f60803b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            l lVar = InformationAdapterV2.this.f60784e;
            if (lVar != null) {
                lVar.a(this.f60803b);
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60805b;

        i(final InformationCommentBeanV2 val$commitDataBean) {
            this.f60805b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            l lVar = InformationAdapterV2.this.f60784e;
            if (lVar != null) {
                lVar.c(this.f60805b);
            }
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60808c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60809d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.b f60810e;

        j(final int val$itemIndex, final int val$position, final String val$cid, final n.b val$commentMessageReply) {
            this.f60807b = val$itemIndex;
            this.f60808c = val$position;
            this.f60809d = val$cid;
            this.f60810e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60807b == 0) {
                return;
            }
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f60807b; i10 >= 0; i10--) {
                n nVar = (n) InformationAdapterV2.this.f60783d.get(this.f60808c - i10);
                n.b bVar = nVar.b() == ViewType.REPLY ? (n.b) nVar.a() : null;
                if (bVar != null && this.f60809d == bVar.f60831a) {
                    arrayList.addAll(bVar.f60832b.getReplyList());
                }
            }
            for (int i11 = 0; i11 <= this.f60807b; i11++) {
                InformationAdapterV2.this.f60783d.remove(this.f60808c - i11);
            }
            informationCommentBeanV2.setReplyList(arrayList);
            InformationAdapterV2.this.f60783d.add(this.f60808c - this.f60807b, InformationAdapterV2.this.d(this.f60809d, informationCommentBeanV2, this.f60810e.f60833c, true));
            InformationAdapterV2.this.notifyDataSetChanged();
        }
    }

    class k extends p {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private RelativeLayout f60812l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private SimpleDraweeView f60813m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ImageView f60814n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f60815o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private TextView f60816p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f60817q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private TextView f60818r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private VipView f60819s;

        k() {
            super();
        }
    }

    public interface l {
        void a(InformationCommentBeanV2 sub);

        void b(InformationCommentBeanV2 bean);

        void c(InformationCommentBeanV2 bean);
    }

    class m extends p {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public LinearLayout f60821l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f60822m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f60823n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public TextView f60824o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f60825p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public View f60826q;

        m() {
            super();
        }
    }

    public static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60829b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public InformationCommentBeanV2 f60830a;

            public a(InformationCommentBeanV2 data) {
                this.f60830a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60831a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public InformationCommentBeanV2 f60832b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60833c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60834d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60835e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f60836f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60837g;

            public b(String commentId, InformationCommentBeanV2 commentBean, int myAuth, boolean showDivider) {
                this.f60831a = commentId;
                this.f60832b = commentBean;
                this.f60833c = myAuth;
                this.f60834d = showDivider;
            }
        }

        public n() {
        }

        public Object a() {
            return this.f60829b;
        }

        public ViewType b() {
            return this.f60828a;
        }

        public void c(Object obj) {
            this.f60829b = obj;
        }

        public void d(ViewType viewType) {
            this.f60828a = viewType;
        }

        public n(ViewType viewType, Object obj) {
            this.f60828a = viewType;
            this.f60829b = obj;
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f60838a;

        o() {
        }
    }

    class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RelativeLayout f60840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDraweeView f60841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f60842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f60843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f60844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f60845f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f60846g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f60847h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VipView f60848i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f60849j;

        p() {
        }
    }

    public InformationAdapterV2(Context context, Handler handler, List<n> viewBeanList) {
        this.f60781b = context;
        this.f60782c = handler;
        this.f60783d = viewBeanList;
    }

    private View g(int position, View convertView, ViewGroup viewGroup) {
        m mVar;
        try {
            if (convertView != null) {
                mVar = (m) convertView.getTag();
            } else {
                mVar = new m();
                convertView = LayoutInflater.from(this.f60781b).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                mVar.f60821l = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                mVar.f60822m = convertView.findViewById(R.id.comment_reply_divider);
                mVar.f60823n = (TextView) convertView.findViewById(R.id.comment_reply_content);
                mVar.f60824o = (TextView) convertView.findViewById(R.id.comment_reply_more);
                mVar.f60825p = convertView.findViewById(R.id.line);
                mVar.f60826q = convertView.findViewById(R.id.bottom);
                convertView.setTag(mVar);
            }
            n.b bVar = (n.b) getItem(position);
            if (bVar == null || bVar.f60832b == null) {
                return convertView;
            }
            if (bVar.f60834d) {
                mVar.f60822m.setVisibility(0);
            } else {
                mVar.f60822m.setVisibility(8);
            }
            if (bVar.f60837g) {
                mVar.f60825p.setVisibility(8);
                mVar.f60826q.setVisibility(8);
            } else {
                mVar.f60825p.setVisibility(0);
                mVar.f60826q.setVisibility(0);
            }
            List<InformationCommentBeanV2> replyList = bVar.f60832b.getReplyList();
            if (replyList == null || replyList.size() == 0) {
                mVar.f60821l.removeAllViews();
            } else {
                j(mVar.f60821l, bVar, true, position);
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
        String str = commentMessageReply.f60831a;
        int i12 = commentMessageReply.f60835e;
        boolean z11 = commentMessageReply.f60836f;
        InformationCommentBeanV2 informationCommentBeanV2 = commentMessageReply.f60832b;
        List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = replyList.size();
        int i13 = 0;
        while (i13 < size + 1) {
            if (i13 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60781b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tvReplyName);
                if ((i13 != size || size <= 3) && !(i12 > 0 && z11 && i13 == size)) {
                    view = viewInflate;
                    i10 = i12;
                    z10 = z11;
                    i11 = i13;
                    if (i11 == 3 && hideMore && size > 3) {
                        textView.setVisibility(8);
                        textView3.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view.setOnClickListener(new a(size, informationCommentBeanV2, str, commentMessageReply, position));
                    } else {
                        size = size;
                        if (i11 < size && (i11 < 3 || !hideMore)) {
                            textView.setVisibility(0);
                            textView3.setVisibility(0);
                            textView2.setVisibility(8);
                            InformationCommentBeanV2 informationCommentBeanV3 = replyList.get(i11);
                            String msg = informationCommentBeanV3.getMsg();
                            informationCommentBeanV3.getCommentId();
                            try {
                                textView.setText(Html.fromHtml(msg));
                                textView3.setText(informationCommentBeanV3.getNickname() + ":");
                                n(view, informationCommentBeanV3);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            linearLayout.addView(view);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView3.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    int i14 = i12;
                    view = viewInflate;
                    i10 = i12;
                    i11 = i13;
                    z10 = z11;
                    view.setOnClickListener(new j(i14, position, str, commentMessageReply));
                }
                linearLayout.addView(view);
            } else {
                i10 = i12;
                z10 = z11;
                i11 = i13;
                size = size;
            }
            i13 = i11 + 1;
            size = size;
            i12 = i10;
            z11 = z10;
        }
    }

    private void n(View view, final InformationCommentBeanV2 sub) {
        view.setOnClickListener(new h(sub));
    }

    private void o(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new g(commitDataBean));
    }

    private void p(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new i(commitDataBean));
    }

    n d(String pid, InformationCommentBeanV2 bean, int myAuth, boolean showDivider) {
        return new n(ViewType.REPLY, new n.b(pid, bean, myAuth, showDivider));
    }

    public View e(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        k kVar;
        if (view == null) {
            kVar = new k();
            viewInflate = LayoutInflater.from(this.f60781b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
            kVar.f60812l = (RelativeLayout) viewInflate.findViewById(R.id.main);
            kVar.f60813m = (SimpleDraweeView) viewInflate.findViewById(R.id.usericon);
            kVar.f60814n = (ImageView) viewInflate.findViewById(R.id.parise);
            kVar.f60815o = (TextView) viewInflate.findViewById(R.id.username);
            kVar.f60816p = (TextView) viewInflate.findViewById(R.id.time);
            kVar.f60817q = (TextView) viewInflate.findViewById(R.id.content);
            kVar.f60818r = (TextView) viewInflate.findViewById(R.id.pariseNumber);
            kVar.f60819s = (VipView) viewInflate.findViewById(R.id.levelTv);
            viewInflate.setTag(kVar);
        } else {
            viewInflate = view;
            kVar = (k) view.getTag();
        }
        n.a aVar = (n.a) getItem(position);
        if (aVar == null) {
            return null;
        }
        InformationCommentBeanV2 informationCommentBeanV2 = aVar.f60830a;
        kVar.f60816p.setText(com.join.android.app.common.utils.i.a(Long.parseLong(informationCommentBeanV2.getCreateTime())));
        kVar.f60817q.setText(informationCommentBeanV2.getMsg());
        kVar.f60818r.setText(informationCommentBeanV2.getLike() + "");
        if (informationCommentBeanV2.getPraise().booleanValue()) {
            kVar.f60814n.setImageResource(R.drawable.like);
        } else {
            kVar.f60814n.setImageResource(R.drawable.unlike);
        }
        if (com.join.mgps.Util.t2.i(informationCommentBeanV2.getAvatar())) {
            UtilsMy.J3(this.f60781b, informationCommentBeanV2.getAvatar(), kVar.f60813m);
        }
        kVar.f60815o.setText(Html.fromHtml(informationCommentBeanV2.getNickname()));
        o(kVar.f60814n, informationCommentBeanV2);
        p(viewInflate, informationCommentBeanV2);
        return viewInflate;
    }

    public List<n> f() {
        return this.f60783d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<n> list = this.f60783d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<n> list = this.f60783d;
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
        List<n> list = this.f60783d;
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
        p pVar;
        InformationCommentBeanV2 informationCommentBeanV2 = ((n.a) getItem(i10)).f60830a;
        o oVar = null;
        if (view == null) {
            if (type == 1) {
                o oVar2 = new o();
                View viewInflate = LayoutInflater.from(this.f60781b).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                oVar2.f60838a = (TextView) viewInflate.findViewById(R.id.title);
                viewInflate.setTag(oVar2);
                oVar = oVar2;
                view = viewInflate;
                pVar = null;
            } else if (type != 2) {
                pVar = null;
            } else {
                p pVar2 = new p();
                View viewInflate2 = LayoutInflater.from(this.f60781b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                pVar2.f60840a = (RelativeLayout) viewInflate2.findViewById(R.id.main);
                pVar2.f60841b = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                pVar2.f60842c = (ImageView) viewInflate2.findViewById(R.id.parise);
                pVar2.f60843d = (TextView) viewInflate2.findViewById(R.id.username);
                pVar2.f60844e = (TextView) viewInflate2.findViewById(R.id.time);
                pVar2.f60845f = (TextView) viewInflate2.findViewById(R.id.content);
                pVar2.f60846g = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                pVar2.f60847h = (TextView) viewInflate2.findViewById(R.id.levelTv);
                pVar2.f60848i = (VipView) viewInflate2.findViewById(R.id.levelVip);
                pVar2.f60849j = (TextView) viewInflate2.findViewById(R.id.more);
                viewInflate2.setTag(pVar2);
                pVar = pVar2;
                view = viewInflate2;
            }
        } else if (type == 1) {
            pVar = null;
            oVar = (o) view.getTag();
        } else if (type != 2) {
            pVar = null;
        } else {
            pVar = (p) view.getTag();
        }
        if (type == 1) {
            oVar.f60838a.setText("最新评论");
        } else if (type == 2) {
            pVar.f60843d.setText(Html.fromHtml(informationCommentBeanV2.getNickname()));
            pVar.f60844e.setText(com.join.android.app.common.utils.i.b(Long.parseLong(informationCommentBeanV2.getCreateTime())));
            pVar.f60845f.setText(informationCommentBeanV2.getMsg());
            pVar.f60846g.setText(informationCommentBeanV2.getLike() + "");
            if (informationCommentBeanV2.getPraise().booleanValue()) {
                pVar.f60842c.setImageResource(R.drawable.like);
            } else {
                pVar.f60842c.setImageResource(R.drawable.unlike);
            }
            if (com.join.mgps.Util.t2.i(informationCommentBeanV2.getAvatar())) {
                UtilsMy.J3(this.f60781b, informationCommentBeanV2.getAvatar(), pVar.f60841b);
            }
            pVar.f60840a.setOnClickListener(new b(informationCommentBeanV2));
            pVar.f60842c.setOnClickListener(new c(informationCommentBeanV2));
            pVar.f60845f.post(new d(pVar));
            pVar.f60849j.setOnClickListener(new e(pVar));
            pVar.f60841b.setOnClickListener(new f(informationCommentBeanV2));
        }
        return view;
    }

    public l i() {
        return this.f60784e;
    }

    void k(n bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((n.b) bean.a()).f60837g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l(List<n> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60783d == null) {
            itemBeans = new ArrayList<>();
        }
        this.f60783d.clear();
        this.f60783d.addAll(itemBeans);
    }

    public void m(l mListenr) {
        this.f60784e = mListenr;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
