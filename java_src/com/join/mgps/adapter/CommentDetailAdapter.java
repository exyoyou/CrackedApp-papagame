package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
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
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentDetailBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommentDetailAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f58642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<j> f58643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h f58644d;

    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f58645b;

        a(final CommentDetailBean.MainCommentBean val$commitDataBean) {
            this.f58645b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f58645b.getUid())).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f58647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58648c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f58649d;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(b.this.f58649d.getText().toString()).longValue();
                b.this.f58649d.setText((jLongValue + 1) + "");
                b bVar = b.this;
                CommentDetailAdapter.this.c(bVar.f58648c);
                b bVar2 = b.this;
                h hVar = CommentDetailAdapter.this.f58644d;
                if (hVar != null) {
                    hVar.onPraise(bVar2.f58647b, bVar2.f58648c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        b(final CommentDetailBean.MainCommentBean val$commitDataBean, final int val$position, final TextView val$tv) {
            this.f58647b = val$commitDataBean;
            this.f58648c = val$position;
            this.f58649d = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentDetailBean.MainCommentBean mainCommentBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailAdapter.this.f58642b) || (mainCommentBean = this.f58647b) == null) {
                return;
            }
            if (mainCommentBean.getIs_praise() == 1) {
                CommentDetailAdapter.this.q(this.f58648c);
                ((ImageView) v10).setImageResource(R.drawable.up_ic);
                h hVar = CommentDetailAdapter.this.f58644d;
                if (hVar != null) {
                    hVar.onPraise(this.f58647b, this.f58648c, 2);
                    return;
                }
                return;
            }
            this.f58647b.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentDetailAdapter.this.f58642b).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentDetailAdapter.this.f58642b);
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommentDetailAdapter.this.f58642b, R.anim.scale_reset);
            v10.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58652b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean.SubCommentBean f58653c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f58654d;

        c(final int val$position, final CommentDetailBean.MainCommentBean.SubCommentBean val$sub, final int val$pn) {
            this.f58652b = val$position;
            this.f58653c = val$sub;
            this.f58654d = val$pn;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String id2;
            int i10 = this.f58652b;
            while (true) {
                if (i10 < 0) {
                    id2 = "";
                    break;
                } else {
                    if (((j) CommentDetailAdapter.this.f58643c.get(i10)).b() == ViewType.COMMENT) {
                        id2 = ((j.a) ((j) CommentDetailAdapter.this.f58643c.get(i10)).a()).f58692a.getId();
                        break;
                    }
                    i10--;
                }
            }
            h hVar = CommentDetailAdapter.this.f58644d;
            if (hVar != null) {
                hVar.onReplyReply(this.f58653c, this.f58654d, id2);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f58656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58657c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CopyTextView f58658d;

        d(final CommentDetailBean.MainCommentBean val$commitDataBean, final int val$position, final CopyTextView val$message) {
            this.f58656b = val$commitDataBean;
            this.f58657c = val$position;
            this.f58658d = val$message;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            h hVar = CommentDetailAdapter.this.f58644d;
            if (hVar != null) {
                hVar.onReply(this.f58656b, this.f58657c);
            }
            this.f58658d.clearFocus();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58661c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f58662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ j.b f58663e;

        e(final int val$itemIndex, final int val$position, final String val$cid, final j.b val$commentMessageReply) {
            this.f58660b = val$itemIndex;
            this.f58661c = val$position;
            this.f58662d = val$cid;
            this.f58663e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f58660b == 0) {
                return;
            }
            CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f58660b; i10 >= 0; i10--) {
                j jVar = (j) CommentDetailAdapter.this.f58643c.get(this.f58661c - i10);
                j.b bVar = jVar.b() == ViewType.REPLY ? (j.b) jVar.a() : null;
                if (bVar != null && this.f58662d == bVar.f58693a) {
                    arrayList.addAll(bVar.f58694b.getSub_comment());
                }
            }
            for (int i11 = 0; i11 <= this.f58660b; i11++) {
                CommentDetailAdapter.this.f58643c.remove(this.f58661c - i11);
            }
            mainCommentBean.setSub_comment(arrayList);
            CommentDetailAdapter.this.f58643c.add(this.f58661c - this.f58660b, CommentDetailAdapter.this.d(this.f58662d, mainCommentBean, this.f58663e.f58695c, true));
            CommentDetailAdapter.this.notifyDataSetChanged();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f58666c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f58667d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ j.b f58668e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f58669f;

        f(final int val$size, final CommentDetailBean.MainCommentBean val$forumCommentBean, final String val$cid, final j.b val$commentMessageReply, final int val$position) {
            this.f58665b = val$size;
            this.f58666c = val$forumCommentBean;
            this.f58667d = val$cid;
            this.f58668e = val$commentMessageReply;
            this.f58669f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f58665b) {
                CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean(this.f58666c);
                List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean.getSub_comment();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < sub_comment.size()) {
                    arrayList.addAll(sub_comment.subList(i10, i12));
                } else {
                    arrayList.addAll(sub_comment.subList(i10, sub_comment.size()));
                    z10 = true;
                }
                mainCommentBean.setSub_comment(arrayList);
                j jVarD = CommentDetailAdapter.this.d(this.f58667d, mainCommentBean, this.f58668e.f58695c, i11 == 0);
                j.b bVar = (j.b) jVarD.a();
                bVar.f58697e = i11;
                bVar.f58698f = z10;
                bVar.f58696d = i11 == 0;
                CommentDetailAdapter.this.k(jVarD, !z10);
                CommentDetailAdapter.this.f58643c.add(this.f58669f + i11 + 1, jVarD);
                i11++;
                i10 = i12;
            }
            CommentDetailAdapter.this.f58643c.remove(this.f58669f);
            CommentDetailAdapter.this.notifyDataSetChanged();
        }
    }

    class g extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RelativeLayout f58671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SimpleDraweeView f58672c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private VipView f58673d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f58674e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f58675f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f58676g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CopyTextView f58677h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private CopyTextViewNew f58678i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f58679j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f58680k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f58681l;

        g() {
            super();
        }
    }

    public interface h {
        void onPraise(CommentDetailBean.MainCommentBean bean, int position, int type);

        void onReply(CommentDetailBean.MainCommentBean bean, int position);

        void onReplyReply(CommentDetailBean.MainCommentBean.SubCommentBean sub, int pn, String id2);
    }

    class i extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f58683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f58684c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58685d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58686e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58687f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58688g;

        i() {
            super();
        }
    }

    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f58690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f58691b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public CommentDetailBean.MainCommentBean f58692a;

            public a(CommentDetailBean.MainCommentBean data) {
                this.f58692a = data;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f58693a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public CommentDetailBean.MainCommentBean f58694b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58695c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f58696d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58697e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f58698f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f58699g;

            public b(String commentId, CommentDetailBean.MainCommentBean commentBean, int myAuth, boolean showDivider) {
                this.f58693a = commentId;
                this.f58694b = commentBean;
                this.f58695c = myAuth;
                this.f58696d = showDivider;
            }
        }

        public j() {
        }

        public Object a() {
            return this.f58691b;
        }

        public ViewType b() {
            return this.f58690a;
        }

        public void c(Object obj) {
            this.f58691b = obj;
        }

        public void d(ViewType viewType) {
            this.f58690a = viewType;
        }

        public j(ViewType viewType, Object obj) {
            this.f58690a = viewType;
            this.f58691b = obj;
        }
    }

    class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f58700a;

        k() {
        }
    }

    class l {
        l() {
        }
    }

    public CommentDetailAdapter(Context mContext, List<j> itemBeans, h mListenr) {
        this.f58642b = mContext;
        this.f58643c = itemBeans;
        this.f58644d = mListenr;
    }

    private View g(int position, View convertView, ViewGroup viewGroup) {
        i iVar;
        try {
            if (convertView != null) {
                iVar = (i) convertView.getTag();
            } else {
                iVar = new i();
                convertView = LayoutInflater.from(this.f58642b).inflate(R.layout.detail_comment_activity_item_comment_message_reply, (ViewGroup) null);
                iVar.f58683b = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                iVar.f58684c = convertView.findViewById(R.id.comment_reply_divider);
                iVar.f58685d = (TextView) convertView.findViewById(R.id.comment_reply_content);
                iVar.f58686e = (TextView) convertView.findViewById(R.id.comment_reply_more);
                iVar.f58687f = convertView.findViewById(R.id.line);
                iVar.f58688g = convertView.findViewById(R.id.bottom);
                convertView.setTag(iVar);
            }
            j.b bVar = (j.b) getItem(position);
            if (bVar == null || bVar.f58694b == null) {
                return convertView;
            }
            if (bVar.f58696d) {
                iVar.f58684c.setVisibility(0);
            } else {
                iVar.f58684c.setVisibility(8);
            }
            if (bVar.f58699g) {
                iVar.f58687f.setVisibility(8);
                iVar.f58688g.setVisibility(8);
            } else {
                iVar.f58687f.setVisibility(0);
                iVar.f58688g.setVisibility(0);
            }
            List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = bVar.f58694b.getSub_comment();
            if (sub_comment == null || sub_comment.size() == 0) {
                iVar.f58683b.removeAllViews();
            } else {
                i(iVar.f58683b, bVar, true, position);
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void i(final View parent, final j.b commentMessageReply, boolean hideMore, final int position) {
        LinearLayout linearLayout;
        int i10;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> list;
        int i11;
        boolean z10;
        View view;
        int i12;
        CommentDetailAdapter commentDetailAdapter;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> list2;
        CommentDetailAdapter commentDetailAdapter2 = this;
        String str = commentMessageReply.f58693a;
        int i13 = commentMessageReply.f58697e;
        boolean z11 = commentMessageReply.f58698f;
        CommentDetailBean.MainCommentBean mainCommentBean = commentMessageReply.f58694b;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean.getSub_comment();
        LinearLayout linearLayout2 = (LinearLayout) parent;
        linearLayout2.removeAllViews();
        int size = sub_comment.size();
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(commentDetailAdapter2.f58642b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                linearLayout = linearLayout2;
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                if ((i14 != size || size <= 3) && !(i13 > 0 && z11 && i14 == size)) {
                    i10 = i14;
                    list = sub_comment;
                    i11 = i13;
                    z10 = z11;
                    view = viewInflate;
                    i12 = size;
                    if (i10 == 3 && hideMore && i12 > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(i12 - 3)));
                        commentDetailAdapter = this;
                        view.setOnClickListener(commentDetailAdapter.new f(i12, mainCommentBean, str, commentMessageReply, position));
                    } else {
                        mainCommentBean = mainCommentBean;
                        if (i10 >= i12 || (i10 >= 3 && hideMore)) {
                            commentDetailAdapter = this;
                            list2 = list;
                            linearLayout = linearLayout;
                        } else {
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean = list.get(i10);
                            String content = subCommentBean.getContent();
                            try {
                                String str2 = subCommentBean.getUser_name() + " ";
                                String str3 = "";
                                if (content.contains(":")) {
                                    String[] strArrSplit = content.split(":");
                                    if (strArrSplit.length == 2) {
                                        try {
                                            if (strArrSplit[0].contains("@")) {
                                                String[] strArrSplit2 = strArrSplit[0].split("@");
                                                if (!strArrSplit2[1].equals("")) {
                                                    str3 = " " + strArrSplit2[1];
                                                }
                                            }
                                            com.join.mgps.Util.r0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), str3, subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), strArrSplit[1]);
                                        } catch (Exception e10) {
                                            e = e10;
                                            commentDetailAdapter = this;
                                            list2 = list;
                                            e.printStackTrace();
                                            linearLayout.addView(view);
                                            linearLayout2 = linearLayout;
                                            commentDetailAdapter2 = commentDetailAdapter;
                                            sub_comment = list2;
                                            size = i12;
                                            z11 = z10;
                                            i13 = i11;
                                            mainCommentBean = mainCommentBean;
                                            i14 = i10 + 1;
                                        }
                                    } else {
                                        com.join.mgps.Util.r0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), "", subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), content);
                                    }
                                } else {
                                    com.join.mgps.Util.r0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), "", subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), content);
                                }
                                commentDetailAdapter = this;
                                list2 = list;
                                try {
                                    commentDetailAdapter.n(view, subCommentBean, mainCommentBean.getPn(), position);
                                } catch (Exception e11) {
                                    e = e11;
                                    e.printStackTrace();
                                }
                            } catch (Exception e12) {
                                e = e12;
                            }
                            linearLayout.addView(view);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    i10 = i14;
                    commentDetailAdapter = this;
                    z10 = z11;
                    int i15 = i13;
                    i12 = size;
                    i11 = i13;
                    view = viewInflate;
                    list = sub_comment;
                    view.setOnClickListener(commentDetailAdapter.new e(i15, position, str, commentMessageReply));
                }
                list2 = list;
                linearLayout.addView(view);
            } else {
                i10 = i14;
                linearLayout = linearLayout2;
                mainCommentBean = mainCommentBean;
                commentDetailAdapter = commentDetailAdapter2;
                i11 = i13;
                z10 = z11;
                i12 = size;
                list2 = sub_comment;
            }
            linearLayout2 = linearLayout;
            commentDetailAdapter2 = commentDetailAdapter;
            sub_comment = list2;
            size = i12;
            z11 = z10;
            i13 = i11;
            mainCommentBean = mainCommentBean;
            i14 = i10 + 1;
        }
    }

    private void n(View view, final CommentDetailBean.MainCommentBean.SubCommentBean sub, final int pn, final int position) {
        view.setOnClickListener(new c(position, sub, pn));
    }

    private void o(View view, final TextView tv2, final CommentDetailBean.MainCommentBean commitDataBean, final int position) {
        view.setOnClickListener(new b(commitDataBean, position, tv2));
    }

    private void p(View view, final CommentDetailBean.MainCommentBean commitDataBean, final int position, final CopyTextView message) {
        view.setOnClickListener(new d(commitDataBean, position, message));
    }

    public void c(int position) {
        j.a aVar = (j.a) getItem(position);
        if (aVar == null) {
            return;
        }
        long jLongValue = Long.valueOf(aVar.f58692a.getPraise_count()).longValue();
        aVar.f58692a.setIs_praise(1);
        aVar.f58692a.setPraise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    j d(String pid, CommentDetailBean.MainCommentBean bean, int myAuth, boolean showDivider) {
        return new j(ViewType.REPLY, new j.b(pid, bean, myAuth, showDivider));
    }

    public View e(int position, View view, ViewGroup viewGroup, int type) {
        j.a aVar = (j.a) getItem(position);
        g gVar = null;
        if (view == null) {
            if (type == 1) {
                k kVar = new k();
                View viewInflate = LayoutInflater.from(this.f58642b).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                kVar.f58700a = (TextView) viewInflate.findViewById(R.id.title);
                viewInflate.setTag(kVar);
                view = viewInflate;
            } else if (type == 2) {
                g gVar2 = new g();
                View viewInflate2 = LayoutInflater.from(this.f58642b).inflate(R.layout.detail_commit_item_layout, (ViewGroup) null);
                gVar2.f58671b = (RelativeLayout) viewInflate2.findViewById(R.id.main);
                gVar2.f58672c = (SimpleDraweeView) viewInflate2.findViewById(R.id.usericon);
                gVar2.f58673d = (VipView) viewInflate2.findViewById(R.id.levelTv);
                gVar2.f58674e = (ImageView) viewInflate2.findViewById(R.id.parise);
                gVar2.f58675f = (TextView) viewInflate2.findViewById(R.id.username);
                gVar2.f58676g = (TextView) viewInflate2.findViewById(R.id.time);
                gVar2.f58677h = (CopyTextView) viewInflate2.findViewById(R.id.content);
                gVar2.f58678i = (CopyTextViewNew) viewInflate2.findViewById(R.id.contentWeb);
                gVar2.f58680k = (TextView) viewInflate2.findViewById(R.id.pariseNumber);
                gVar2.f58679j = (TextView) viewInflate2.findViewById(R.id.isConnoisseurs);
                gVar2.f58681l = viewInflate2.findViewById(R.id.line0);
                viewInflate2.setTag(gVar2);
                gVar = gVar2;
                view = viewInflate2;
            }
        } else if (type == 1) {
        } else if (type == 2) {
            gVar = (g) view.getTag();
        }
        if (aVar == null) {
            return view;
        }
        CommentDetailBean.MainCommentBean mainCommentBean = aVar.f58692a;
        if (type == 2) {
            gVar.f58676g.setText(com.join.android.app.common.utils.i.a(Long.parseLong(mainCommentBean.getAdd_times() + "000")));
            gVar.f58675f.setTextColor(-16777216);
            if (mainCommentBean.getVip_level() > 0) {
                gVar.f58675f.setTextColor(this.f58642b.getResources().getColor(R.color.vip_color));
            }
            if (mainCommentBean.getSvip_level() > 0) {
                gVar.f58675f.setTextColor(this.f58642b.getResources().getColor(R.color.vip_svip_color));
            }
            gVar.f58673d.setVipData(mainCommentBean.getVip_level(), mainCommentBean.getSvip_level());
            String content = mainCommentBean.getContent();
            if (content.contains(":") && !content.endsWith(":")) {
                content = content.split(":")[1];
            }
            gVar.f58678i.setText(content);
            gVar.f58680k.setText(mainCommentBean.getPraise_count() + "");
            if (mainCommentBean.getIs_praise() == 1) {
                gVar.f58674e.setImageResource(R.drawable.like);
            } else {
                gVar.f58674e.setImageResource(R.drawable.unlike);
            }
            UtilsMy.J3(this.f58642b, mainCommentBean.getHead_portrait(), gVar.f58672c);
            gVar.f58672c.setOnClickListener(new a(mainCommentBean));
            gVar.f58675f.setText(Html.fromHtml(mainCommentBean.getUser_name()));
            if (mainCommentBean.getRank().equals("")) {
                gVar.f58679j.setVisibility(8);
            } else {
                gVar.f58679j.setVisibility(0);
                gVar.f58679j.setText(mainCommentBean.getRank());
            }
            if (position == 0) {
                gVar.f58681l.setVisibility(8);
            } else {
                gVar.f58681l.setVisibility(0);
            }
            o(gVar.f58674e, gVar.f58680k, mainCommentBean, position);
            p(view, mainCommentBean, position, gVar.f58677h);
            p(gVar.f58678i, mainCommentBean, position, gVar.f58677h);
        }
        return view;
    }

    public List<j> f() {
        return this.f58643c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<j> list = this.f58643c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<j> list = this.f58643c;
        if (list == null || position >= list.size()) {
            return null;
        }
        return this.f58643c.get(position).a();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        List<j> list = this.f58643c;
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
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return e(position, view, viewGroup, 1);
        }
        return itemViewType == InformationAdapter.ViewType.REPLY.ordinal() ? g(position, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public h h() {
        return this.f58644d;
    }

    public void j(int position) {
        j.a aVar = (j.a) getItem(position);
        if (aVar == null) {
            return;
        }
        long jLongValue = Long.valueOf(aVar.f58692a.getPraise_count()).longValue();
        if (aVar.f58692a.getIs_praise() == 1) {
            aVar.f58692a.setIs_praise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                aVar.f58692a.setPraise_count("0");
            } else {
                aVar.f58692a.setPraise_count(j10 + "");
            }
        } else {
            aVar.f58692a.setIs_praise(1);
            aVar.f58692a.setPraise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    void k(j bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((j.b) bean.a()).f58699g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l(List<j> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f58643c == null) {
            itemBeans = new ArrayList<>();
        }
        this.f58643c.clear();
        this.f58643c.addAll(itemBeans);
    }

    public void m(h mListenr) {
        this.f58644d = mListenr;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void q(int position) {
        j.a aVar = (j.a) getItem(position);
        if (aVar == null) {
            return;
        }
        long jLongValue = Long.valueOf(aVar.f58692a.getPraise_count()).longValue();
        aVar.f58692a.setIs_praise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            aVar.f58692a.setPraise_count("0");
        } else {
            aVar.f58692a.setPraise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public CommentDetailAdapter(Context mContext) {
        this.f58644d = null;
        this.f58642b = mContext;
        this.f58643c = new ArrayList();
    }
}
