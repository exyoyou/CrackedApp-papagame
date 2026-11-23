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
import com.join.mgps.dto.InformationCommentBeanV2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameCommentAdapterV2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<l> f60577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    j f60578d;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60579b;

        a(final InformationCommentBeanV2 val$commitDataBean) {
            this.f60579b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f60579b.getUid())).start();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f60581b;

        b(final i val$finalCommentViewHolder1) {
            this.f60581b = val$finalCommentViewHolder1;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f60581b.f60607g.getLayout();
            if (layout == null) {
                this.f60581b.f60611k.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f60581b.f60611k.setVisibility(0);
                } else {
                    this.f60581b.f60611k.setVisibility(8);
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f60583b;

        c(final i val$finalCommentViewHolder) {
            this.f60583b = val$finalCommentViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60583b.f60611k.getText().toString().equals("查看全部")) {
                this.f60583b.f60607g.setMaxLines(Integer.MAX_VALUE);
                this.f60583b.f60611k.setText("收起");
            } else {
                this.f60583b.f60607g.setMaxLines(5);
                this.f60583b.f60611k.setText("查看全部");
            }
            this.f60583b.f60611k.postInvalidate();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60585b;

        d(final InformationCommentBeanV2 val$commitDataBean) {
            this.f60585b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60585b.getPraise().booleanValue()) {
                com.join.mgps.Util.a3.b(GameCommentAdapterV2.this.f60576b).d("你已赞过");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(GameCommentAdapterV2.this.f60576b)) {
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(GameCommentAdapterV2.this.f60576b, R.anim.scale_reset));
            j jVar = GameCommentAdapterV2.this.f60578d;
            if (jVar != null) {
                jVar.b(this.f60585b);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60587b;

        e(final InformationCommentBeanV2 val$sub) {
            this.f60587b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            j jVar = GameCommentAdapterV2.this.f60578d;
            if (jVar != null) {
                jVar.a(this.f60587b);
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60589b;

        f(final InformationCommentBeanV2 val$commitDataBean) {
            this.f60589b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            j jVar = GameCommentAdapterV2.this.f60578d;
            if (jVar != null) {
                jVar.c(this.f60589b);
            }
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60591b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60592c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60593d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ l.b f60594e;

        g(final int val$itemIndex, final int val$position, final String val$cid, final l.b val$commentMessageReply) {
            this.f60591b = val$itemIndex;
            this.f60592c = val$position;
            this.f60593d = val$cid;
            this.f60594e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60591b == 0) {
                return;
            }
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f60591b; i10 >= 0; i10--) {
                l lVar = (l) GameCommentAdapterV2.this.f60577c.get(this.f60592c - i10);
                l.b bVar = lVar.b() == ViewType.REPLY ? (l.b) lVar.a() : null;
                if (bVar != null && this.f60593d == bVar.f60624a) {
                    arrayList.addAll(bVar.f60625b.getReplyList());
                }
            }
            for (int i11 = 0; i11 <= this.f60591b; i11++) {
                GameCommentAdapterV2.this.f60577c.remove(this.f60592c - i11);
            }
            informationCommentBeanV2.setReplyList(arrayList);
            GameCommentAdapterV2.this.f60577c.add(this.f60592c - this.f60591b, GameCommentAdapterV2.this.c(this.f60593d, informationCommentBeanV2, this.f60594e.f60626c, true));
            GameCommentAdapterV2.this.notifyDataSetChanged();
            GameCommentAdapterV2.this.f60578d.d();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f60597c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60598d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ l.b f60599e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f60600f;

        h(final int val$size, final InformationCommentBeanV2 val$forumCommentBean, final String val$cid, final l.b val$commentMessageReply, final int val$position) {
            this.f60596b = val$size;
            this.f60597c = val$forumCommentBean;
            this.f60598d = val$cid;
            this.f60599e = val$commentMessageReply;
            this.f60600f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f60596b) {
                InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2(this.f60597c);
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
                l lVarC = GameCommentAdapterV2.this.c(this.f60598d, informationCommentBeanV2, this.f60599e.f60626c, i11 == 0);
                l.b bVar = (l.b) lVarC.a();
                bVar.f60628e = i11;
                bVar.f60629f = z10;
                bVar.f60627d = i11 == 0;
                GameCommentAdapterV2.this.i(lVarC, !z10);
                GameCommentAdapterV2.this.f60577c.add(this.f60600f + i11 + 1, lVarC);
                i11++;
                i10 = i12;
            }
            GameCommentAdapterV2.this.f60577c.remove(this.f60600f);
            GameCommentAdapterV2.this.notifyDataSetChanged();
            GameCommentAdapterV2.this.f60578d.d();
        }
    }

    class i extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RelativeLayout f60602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SimpleDraweeView f60603c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f60604d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f60605e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f60606f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f60607g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f60608h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f60609i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public View f60610j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60611k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public VipView f60612l;

        i() {
            super();
        }
    }

    public interface j {
        void a(InformationCommentBeanV2 sub);

        void b(InformationCommentBeanV2 bean);

        void c(InformationCommentBeanV2 bean);

        void d();
    }

    class k extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f60614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60615c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60616d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60617e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60618f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f60619g;

        k() {
            super();
        }
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60622b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public InformationCommentBeanV2 f60623a;

            public a(InformationCommentBeanV2 data) {
                this.f60623a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60624a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public InformationCommentBeanV2 f60625b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60626c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60627d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60628e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f60629f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60630g;

            public b(String commentId, InformationCommentBeanV2 commentBean, int myAuth, boolean showDivider) {
                this.f60624a = commentId;
                this.f60625b = commentBean;
                this.f60626c = myAuth;
                this.f60627d = showDivider;
            }
        }

        public l() {
        }

        public Object a() {
            return this.f60622b;
        }

        public ViewType b() {
            return this.f60621a;
        }

        public void c(Object obj) {
            this.f60622b = obj;
        }

        public void d(ViewType viewType) {
            this.f60621a = viewType;
        }

        public l(ViewType viewType, Object obj) {
            this.f60621a = viewType;
            this.f60622b = obj;
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f60631a;

        m() {
        }
    }

    class n {
        n() {
        }
    }

    public GameCommentAdapterV2(Context mContext, List<l> itemBeans, j mListenr) {
        this.f60576b = mContext;
        this.f60577c = itemBeans;
        this.f60578d = mListenr;
    }

    private View f(int position, View convertView, ViewGroup viewGroup) {
        k kVar;
        try {
            if (convertView != null) {
                kVar = (k) convertView.getTag();
            } else {
                kVar = new k();
                convertView = LayoutInflater.from(this.f60576b).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                kVar.f60614b = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                kVar.f60615c = convertView.findViewById(R.id.comment_reply_divider);
                kVar.f60616d = (TextView) convertView.findViewById(R.id.comment_reply_content);
                kVar.f60617e = (TextView) convertView.findViewById(R.id.comment_reply_more);
                kVar.f60618f = convertView.findViewById(R.id.line);
                kVar.f60619g = convertView.findViewById(R.id.bottom);
                convertView.setTag(kVar);
            }
            l.b bVar = (l.b) getItem(position);
            if (bVar == null || bVar.f60625b == null) {
                return convertView;
            }
            if (bVar.f60627d) {
                kVar.f60615c.setVisibility(0);
            } else {
                kVar.f60615c.setVisibility(8);
            }
            if (bVar.f60630g) {
                kVar.f60618f.setVisibility(8);
                kVar.f60619g.setVisibility(8);
            } else {
                kVar.f60618f.setVisibility(0);
                kVar.f60619g.setVisibility(0);
            }
            List<InformationCommentBeanV2> replyList = bVar.f60625b.getReplyList();
            if (replyList == null || replyList.size() == 0) {
                kVar.f60614b.removeAllViews();
            } else {
                h(kVar.f60614b, bVar, true, position);
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
        String str = commentMessageReply.f60624a;
        int i12 = commentMessageReply.f60628e;
        boolean z11 = commentMessageReply.f60629f;
        InformationCommentBeanV2 informationCommentBeanV2 = commentMessageReply.f60625b;
        List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = replyList.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60576b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view.setOnClickListener(new h(size, informationCommentBeanV2, str, commentMessageReply, position));
                    } else {
                        size = size;
                        if (i11 < size && (i11 < 3 || !hideMore)) {
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            InformationCommentBeanV2 informationCommentBeanV3 = replyList.get(i11);
                            String msg = informationCommentBeanV3.getMsg();
                            informationCommentBeanV3.getCommentId();
                            try {
                                textView.setText(Html.fromHtml(msg));
                                l(view, informationCommentBeanV3);
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

    private void l(View view, final InformationCommentBeanV2 sub) {
        view.setOnClickListener(new e(sub));
    }

    private void m(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new d(commitDataBean));
    }

    private void n(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new f(commitDataBean));
    }

    l c(String pid, InformationCommentBeanV2 bean, int myAuth, boolean showDivider) {
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
                View viewInflate = LayoutInflater.from(this.f60576b).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                mVar.f60631a = (TextView) viewInflate.findViewById(R.id.title);
                viewInflate.setTag(mVar);
                view2 = viewInflate;
                iVar = null;
            } else if (type != 2) {
                view2 = view;
                mVar = null;
                iVar = null;
            } else {
                i iVar2 = new i();
                View viewInflate2 = LayoutInflater.from(this.f60576b).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                iVar2.f60602b = (RelativeLayout) viewInflate2.findViewById(R.id.main);
                iVar2.f60603c = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                iVar2.f60604d = (ImageView) viewInflate2.findViewById(R.id.parise);
                iVar2.f60605e = (TextView) viewInflate2.findViewById(R.id.username);
                iVar2.f60606f = (TextView) viewInflate2.findViewById(R.id.time);
                iVar2.f60607g = (TextView) viewInflate2.findViewById(R.id.content);
                iVar2.f60608h = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                iVar2.f60609i = (TextView) viewInflate2.findViewById(R.id.levelTv);
                iVar2.f60612l = (VipView) viewInflate2.findViewById(R.id.levelVip);
                iVar2.f60610j = viewInflate2.findViewById(R.id.line);
                iVar2.f60611k = (TextView) viewInflate2.findViewById(R.id.more);
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
        if (type == 1) {
            InformationCommentBeanV2 informationCommentBeanV2 = aVar.f60623a;
            mVar.f60631a.setText("最新评论");
        } else if (type == 2) {
            if (aVar == null) {
                return null;
            }
            InformationCommentBeanV2 informationCommentBeanV3 = aVar.f60623a;
            if (informationCommentBeanV3.getReplyList() == null || informationCommentBeanV3.getReplyList().size() <= 0) {
                iVar.f60610j.setVisibility(0);
            } else {
                iVar.f60610j.setVisibility(8);
            }
            iVar.f60606f.setText(com.join.android.app.common.utils.i.a(Long.parseLong(informationCommentBeanV3.getCreateTime())));
            iVar.f60607g.setText(informationCommentBeanV3.getMsg());
            iVar.f60608h.setText(informationCommentBeanV3.getLike() + "");
            if (informationCommentBeanV3.getPraise().booleanValue()) {
                iVar.f60604d.setImageResource(R.drawable.like);
            } else {
                iVar.f60604d.setImageResource(R.drawable.unlike);
            }
            if (com.join.mgps.Util.t2.i(informationCommentBeanV3.getAvatar())) {
                UtilsMy.J3(this.f60576b, informationCommentBeanV3.getAvatar(), iVar.f60603c);
            }
            iVar.f60605e.setText(Html.fromHtml(informationCommentBeanV3.getNickname()));
            m(iVar.f60604d, informationCommentBeanV3);
            n(view2, informationCommentBeanV3);
            iVar.f60603c.setOnClickListener(new a(informationCommentBeanV3));
            iVar.f60607g.post(new b(iVar));
            iVar.f60611k.setOnClickListener(new c(iVar));
        }
        return view2;
    }

    public List<l> e() {
        return this.f60577c;
    }

    public j g() {
        return this.f60578d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<l> list = this.f60577c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<l> list = this.f60577c;
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
        List<l> list = this.f60577c;
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
            ((l.b) bean.a()).f60630g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j(List<l> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60577c == null) {
            itemBeans = new ArrayList<>();
        }
        this.f60577c.clear();
        this.f60577c.addAll(itemBeans);
    }

    public void k(j mListenr) {
        this.f60578d = mListenr;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public GameCommentAdapterV2(Context mContext) {
        this.f60578d = null;
        this.f60576b = mContext;
        this.f60577c = new ArrayList();
    }
}
