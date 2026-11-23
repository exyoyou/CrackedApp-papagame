package com.join.mgps.adapter;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Animatable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.TextViewWithHyperlink;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumCommentAdapter extends com.join.mgps.base.a<z, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f59258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.danikula.videocache.i f59259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f59260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    x f59261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    LinearLayout.LayoutParams f59262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f59263m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f59264n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    LinearLayout.LayoutParams f59265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Hashtable<String, y> f59266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    t f59267q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f59268r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    v f59269s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private w f59270t;

    public enum ViewType {
        COMMENT_HEADER,
        COMMENT_MESSAGE,
        COMMENT_IMAGE,
        COMMENT_MESSAGE_REPLY,
        EMPLOYEE_TAGS,
        DIVIDER
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.n();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z.a f59272b;

        b(final z.a val$item) {
            this.f59272b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            boolean zBooleanValue;
            View view;
            com.join.mgps.Util.h1.e("v.setOnClickListener");
            t tVar = ForumCommentAdapter.this.f59267q;
            if (tVar != null && (view = tVar.f59328g) != null && view != v10) {
                view.setTag(Boolean.FALSE);
            }
            if (v10.getTag() == null) {
                v10.setTag(Boolean.TRUE);
                zBooleanValue = false;
            } else {
                zBooleanValue = ((Boolean) v10.getTag()).booleanValue();
            }
            if (zBooleanValue && !ForumCommentAdapter.this.f59268r) {
                v10.setTag(Boolean.FALSE);
                return;
            }
            ForumCommentAdapter.this.A0(v10, this.f59272b);
            v10.setTag(Boolean.TRUE);
            ForumCommentAdapter.this.f59268r = false;
        }
    }

    class c implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z.c f59274b;

        c(final z.c val$item) {
            this.f59274b = val$item;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.p(v10, this.f59274b.f59383a);
            }
            ForumCommentAdapter forumCommentAdapter = ForumCommentAdapter.this;
            z.c cVar = this.f59274b;
            forumCommentAdapter.z0(v10, 1, cVar.f59388f, cVar.f59387e, cVar.f59383a, 0, cVar.f59385c, cVar.f59384b);
            return true;
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59277c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59278d;

        d(final int val$cid, final int val$rid, final String val$rNickname) {
            this.f59276b = val$cid;
            this.f59277c = val$rid;
            this.f59278d = val$rNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.k(this.f59276b, this.f59277c, this.f59278d);
            }
        }
    }

    class e implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59280b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f59281c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f59282d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f59283e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f59284f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f59285g;

        e(final int val$cid, final boolean val$showDelete, final boolean val$showReport, final int val$rid, final String val$nickname, final String val$msg) {
            this.f59280b = val$cid;
            this.f59281c = val$showDelete;
            this.f59282d = val$showReport;
            this.f59283e = val$rid;
            this.f59284f = val$nickname;
            this.f59285g = val$msg;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.g(v10, this.f59280b);
            }
            ForumCommentAdapter.this.z0(v10, 2, this.f59281c, this.f59282d, this.f59280b, this.f59283e, this.f59284f, this.f59285g);
            return true;
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59287b;

        f(final ForumBean.GameInfo val$gameInfo) {
            this.f59287b = val$gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.I0(v10.getContext(), this.f59287b);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59289b;

        g(final String val$gameId) {
            this.f59289b = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.e(this.f59289b);
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59291b;

        h(final String val$position) {
            this.f59291b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f59291b);
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.c(i10);
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59293b;

        i(final int val$fid) {
            this.f59293b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f59293b);
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59295b;

        j(final int val$gagUid) {
            this.f59295b = val$gagUid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59295b).start();
            String uid = AccountUtil_.getInstance_(view.getContext()).getUid();
            if (TextUtils.isEmpty(uid)) {
                return;
            }
            if (uid.equals(this.f59295b + "") || ForumCommentAdapter.this.f59270t == null) {
                return;
            }
            ForumCommentAdapter.this.f59270t.m(this.f59295b);
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z.a f59297b;

        k(final z.a val$item) {
            this.f59297b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59297b.f59363b).start();
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59300c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f59301d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ z.d f59302e;

        l(final int val$itemIndex, final int val$position, final int val$cid, final z.d val$commentMessageReply) {
            this.f59299b = val$itemIndex;
            this.f59300c = val$position;
            this.f59301d = val$cid;
            this.f59302e = val$commentMessageReply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f59299b == 0) {
                return;
            }
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f59299b; i10 >= 0; i10--) {
                z zVar = (z) ForumCommentAdapter.this.getItem(this.f59300c - i10);
                z.d dVar = zVar.b() == ViewType.COMMENT_MESSAGE_REPLY ? (z.d) zVar.a() : null;
                if (dVar != null && this.f59301d == dVar.f59389a) {
                    arrayList.addAll(dVar.f59390b.getReply_list());
                }
            }
            for (int i11 = 0; i11 <= this.f59299b; i11++) {
                ForumCommentAdapter.this.remove(this.f59300c - i11);
            }
            forumCommentBean.setReply_list(arrayList);
            ForumCommentAdapter forumCommentAdapter = ForumCommentAdapter.this;
            int i12 = this.f59301d;
            z.d dVar2 = this.f59302e;
            ForumCommentAdapter.this.addData(this.f59300c - this.f59299b, forumCommentAdapter.Q(i12, forumCommentBean, dVar2.f59391c, true, dVar2.f59393e));
            ForumCommentAdapter.this.notifyDataSetChanged();
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59304b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f59305c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f59306d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ z.d f59307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f59308f;

        m(final int val$size, final ForumBean.ForumCommentBean val$forumCommentBean, final int val$cid, final z.d val$commentMessageReply, final int val$position) {
            this.f59304b = val$size;
            this.f59305c = val$forumCommentBean;
            this.f59306d = val$cid;
            this.f59307e = val$commentMessageReply;
            this.f59308f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f59304b) {
                ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean(this.f59305c);
                List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < reply_list.size()) {
                    arrayList.addAll(reply_list.subList(i10, i12));
                } else {
                    arrayList.addAll(reply_list.subList(i10, reply_list.size()));
                    z10 = true;
                }
                forumCommentBean.setReply_list(arrayList);
                ForumCommentAdapter forumCommentAdapter = ForumCommentAdapter.this;
                int i13 = this.f59306d;
                z.d dVar = this.f59307e;
                z zVarQ = forumCommentAdapter.Q(i13, forumCommentBean, dVar.f59391c, i11 == 0, dVar.f59393e);
                z.d dVar2 = (z.d) zVarQ.a();
                dVar2.f59394f = i11;
                dVar2.f59395g = z10;
                dVar2.f59392d = i11 == 0;
                ForumCommentAdapter.this.i0(zVarQ, !z10);
                ForumCommentAdapter.this.addData(this.f59308f + i11 + 1, zVarQ);
                i11++;
                i10 = i12;
            }
            ForumCommentAdapter.this.remove(this.f59308f);
            ForumCommentAdapter.this.notifyDataSetChanged();
        }
    }

    class n implements TextViewWithHyperlink.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f59310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f59312c;

        n(final int val$cid, final int val$rid, final String val$rNickname) {
            this.f59310a = val$cid;
            this.f59311b = val$rid;
            this.f59312c = val$rNickname;
        }

        @Override // com.join.mgps.customview.TextViewWithHyperlink.a
        public void a() {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.k(this.f59310a, this.f59311b, this.f59312c);
            }
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f59314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59315c;

        o(final List val$raw_pic_list, final int val$imgIndex) {
            this.f59314b = val$raw_pic_list;
            this.f59315c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f59314b.size()];
            this.f59314b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f59315c, strArr);
        }
    }

    class p implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f59317b;

        p(final SimpleDraweeView val$view) {
            this.f59317b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumCommentAdapter.this.w0(id2, this.f59317b, imageInfo);
                if (imageInfo != null) {
                    y yVar = ForumCommentAdapter.this.new y();
                    yVar.f59357a = imageInfo.getWidth();
                    yVar.f59358b = imageInfo.getHeight();
                    ForumCommentAdapter.this.F(id2, yVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
            SimpleDraweeView simpleDraweeView = this.f59317b;
            simpleDraweeView.setMinimumHeight(ForumCommentAdapter.this.U(simpleDraweeView.getContext()));
        }
    }

    class q implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f59319b;

        q(final SimpleDraweeView val$view) {
            this.f59319b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumCommentAdapter.this.h0(id2, this.f59319b, imageInfo);
                if (imageInfo != null) {
                    y yVar = ForumCommentAdapter.this.new y();
                    yVar.f59357a = imageInfo.getWidth();
                    yVar.f59358b = imageInfo.getHeight();
                    ForumCommentAdapter.this.F(id2, yVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
            SimpleDraweeView simpleDraweeView = this.f59319b;
            simpleDraweeView.setLayoutParams(ForumCommentAdapter.this.R(simpleDraweeView.getContext()));
        }
    }

    class r implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f59321b;

        r(final View val$view) {
            this.f59321b = val$view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            com.join.mgps.Util.h1.e("mPopWindow.setTouchInterceptor", event.toString());
            ForumCommentAdapter forumCommentAdapter = ForumCommentAdapter.this;
            if (!forumCommentAdapter.M(forumCommentAdapter.f59267q, event) || ForumCommentAdapter.this.N(this.f59321b, event)) {
                return false;
            }
            ForumCommentAdapter.this.f59268r = true;
            return false;
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59323b;

        s(final int val$fid) {
            this.f59323b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumCommentAdapter.this.f59270t != null) {
                ForumCommentAdapter.this.f59270t.b(this.f59323b);
            }
        }
    }

    public class t extends com.join.mgps.customview.h implements View.OnClickListener {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f59325d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f59326e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f59327f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f59328g;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                t.this.f59325d = v10.getId();
                ForumCommentAdapter.this.f59267q.dismiss();
            }
        }

        public t(Context context) {
            super(context);
            View viewInflate = LayoutInflater.from(this.f66438b).inflate(R.layout.mg_forum_forum_post_a_comment_reply_popwindow, (ViewGroup) null);
            int dimension = (int) this.f66438b.getResources().getDimension(R.dimen.wdp378);
            int dimension2 = (int) this.f66438b.getResources().getDimension(R.dimen.wdp89);
            setContentView(viewInflate);
            setWidth(dimension);
            setHeight(dimension2);
            setAnimationStyle(R.style.animationCommentReplyPop);
            g(viewInflate);
            setFocusable(false);
        }

        private void g(View view) {
            View viewFindViewById = view.findViewById(R.id.resolve);
            View viewFindViewById2 = view.findViewById(R.id.report);
            View viewFindViewById3 = view.findViewById(R.id.reply);
            View viewFindViewById4 = view.findViewById(R.id.delete);
            a aVar = new a();
            viewFindViewById.setOnClickListener(aVar);
            viewFindViewById2.setOnClickListener(aVar);
            viewFindViewById3.setOnClickListener(aVar);
            viewFindViewById4.setOnClickListener(aVar);
        }

        public int d() {
            return this.f59326e;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            View view = this.f59328g;
            if (view != null) {
                view.setClickable(true);
                this.f59328g.setFocusable(true);
            }
            switch (this.f59325d) {
                case R.id.delete /* 2131362947 */:
                    if (ForumCommentAdapter.this.f59270t != null) {
                        ForumCommentAdapter.this.f59270t.d(this.f59326e);
                    }
                    break;
                case R.id.reply /* 2131366766 */:
                    if (ForumCommentAdapter.this.f59270t != null) {
                        ForumCommentAdapter.this.f59270t.i(this.f59326e, this.f59327f);
                    }
                    break;
                case R.id.report /* 2131366770 */:
                    if (ForumCommentAdapter.this.f59270t != null) {
                        ForumCommentAdapter.this.f59270t.l();
                    }
                    break;
                case R.id.resolve /* 2131366780 */:
                    if (ForumCommentAdapter.this.f59270t != null) {
                        ForumCommentAdapter.this.f59270t.o(this.f59326e);
                    }
                    break;
            }
        }

        public String e() {
            return this.f59327f;
        }

        public void f(int cid) {
            this.f59326e = cid;
        }

        public void h(String cNickname) {
            this.f59327f = cNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View anchor, int xoff, int yoff) {
            this.f59328g = anchor;
            super.showAsDropDown(anchor, xoff, yoff);
            b();
            this.f59325d = 0;
        }
    }

    class u extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f59331b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f59332c;

        public u(Context context, String url) {
            this.f59331b = context;
            this.f59332c = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(this.f59331b, this.f59332c);
        }
    }

    public class v extends com.join.mgps.customview.h implements View.OnClickListener {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f59334p = 1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f59335q = 2;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f59336r = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f59337d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f59338e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f59339f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f59340g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f59341h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f59342i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f59343j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f59344k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        String f59345l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        String f59346m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f59347n;

        public v(Context context) {
            super(context);
            c();
            k();
        }

        private void k() {
            View viewInflate = LayoutInflater.from(this.f66438b).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
            this.f59337d = viewInflate.findViewById(R.id.btn_forum_comment_delete);
            this.f59338e = viewInflate.findViewById(R.id.btn_forum_comment_copy);
            this.f59339f = viewInflate.findViewById(R.id.divider_forum_comment_1);
            this.f59340g = viewInflate.findViewById(R.id.btn_forum_comment);
            this.f59341h = viewInflate.findViewById(R.id.divider_2);
            this.f59342i = viewInflate.findViewById(R.id.btn_forum_report);
            this.f59337d.setOnClickListener(this);
            this.f59338e.setOnClickListener(this);
            this.f59340g.setOnClickListener(this);
            this.f59342i.setOnClickListener(this);
            setContentView(viewInflate);
            setWidth(-2);
            setHeight(-2);
        }

        public void A(int rid) {
            this.f59344k = rid;
        }

        void c() {
            setAnimationStyle(0);
            setFocusable(false);
        }

        public int d() {
            return this.f59343j;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            this.f59343j = 0;
            this.f59344k = 0;
            this.f59345l = "";
            this.f59346m = "";
        }

        public View e() {
            return this.f59338e;
        }

        public View f() {
            return this.f59337d;
        }

        public int g() {
            return this.f59347n;
        }

        public String h() {
            return this.f59346m;
        }

        public String i() {
            return this.f59345l;
        }

        public int j() {
            return this.f59344k;
        }

        void l() {
            if (ForumCommentAdapter.this.f59270t == null) {
                return;
            }
            int i10 = this.f59347n;
            if (i10 == 1) {
                ForumCommentAdapter.this.f59270t.i(this.f59343j, this.f59345l);
            } else if (i10 == 2) {
                ForumCommentAdapter.this.f59270t.k(this.f59343j, this.f59344k, this.f59345l);
            }
        }

        void m() {
            if (ForumCommentAdapter.this.f59270t == null) {
                return;
            }
            ClipboardManager clipboardManager = (ClipboardManager) this.f66438b.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            clipboardManager.setPrimaryClip(ClipData.newPlainText("wufan", this.f59346m));
            if (clipboardManager.getText().toString().equals(this.f59346m.toString())) {
                com.join.mgps.Util.a3.b(this.f66438b).d("已复制到剪贴板！");
            }
        }

        void n() {
            if (ForumCommentAdapter.this.f59270t == null) {
                return;
            }
            int i10 = this.f59347n;
            if (i10 == 1) {
                ForumCommentAdapter.this.f59270t.d(this.f59343j);
            } else if (i10 == 2) {
                ForumCommentAdapter.this.f59270t.h(this.f59344k);
            }
        }

        void o() {
            if (ForumCommentAdapter.this.f59270t == null) {
                return;
            }
            int i10 = this.f59347n;
            if (i10 == 1) {
                ForumCommentAdapter.this.f59270t.j(this.f59343j);
            } else if (i10 == 2) {
                ForumCommentAdapter.this.f59270t.f(this.f59344k);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            switch (v10.getId()) {
                case R.id.btn_forum_comment /* 2131362463 */:
                    l();
                    break;
                case R.id.btn_forum_comment_copy /* 2131362464 */:
                    m();
                    break;
                case R.id.btn_forum_comment_delete /* 2131362465 */:
                    n();
                    break;
                case R.id.btn_forum_report /* 2131362466 */:
                    o();
                    break;
            }
            dismiss();
        }

        public void p() {
            View view = this.f59337d;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.f59340g;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.f59342i;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }

        public void q(int cid) {
            this.f59343j = cid;
        }

        public void r(int visibility) {
            View view = this.f59340g;
            if (view != null) {
                view.setVisibility(visibility);
            }
        }

        public void s(View copy) {
            this.f59338e = copy;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View anchor) {
            showAsDropDown(anchor, 0, (anchor.getMeasuredHeight() * (-1)) - this.f66438b.getResources().getDimensionPixelSize(R.dimen.mg_forum_popupwindow_height));
            b();
        }

        public void t(int visibility) {
            View view = this.f59338e;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59338e.setVisibility(0);
            } else {
                this.f59338e.setVisibility(8);
            }
        }

        public void u(View delete) {
            this.f59337d = delete;
        }

        public void v(int visibility) {
            View view = this.f59337d;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59339f.setVisibility(0);
            } else {
                this.f59339f.setVisibility(8);
            }
        }

        public void w(int eventFlag) {
            this.f59347n = eventFlag;
        }

        public void x(String mssage) {
            this.f59346m = mssage;
        }

        public void y(String nickname) {
            this.f59345l = nickname;
        }

        void z(int visibility) {
            View view = this.f59342i;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59341h.setVisibility(0);
            } else {
                this.f59341h.setVisibility(8);
            }
        }
    }

    public interface w {
        void a(int pid);

        void b(int pid);

        void c(int position);

        void d(int cid);

        void e(String gameId);

        void f(int rid);

        void g(View v10, int rid);

        void h(int rid);

        void i(int cid, String cNickname);

        void j(int cid);

        void k(int cid, int rid, String rNickname);

        void l();

        void m(int gagUid);

        void n();

        void o(int cid);

        void p(View v10, int cid);
    }

    public class y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f59357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59358b;

        public y() {
        }
    }

    public static class z implements j6.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewType f59360b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f59361c;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59362a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59363b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59364c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59365d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f59366e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public long f59367f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59368g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f59369h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59370i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59371j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59372k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public boolean f59373l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public boolean f59374m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public boolean f59375n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public int f59376o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public int f59377p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public boolean f59378q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public String f59379r;

            public a() {
            }

            public a(boolean showDivider, int uid, int commentId, String avatarSrc, String nickName, long timestamps, boolean isPostHost, int floor, boolean isModerator, boolean officialAccount, int solveFlag, boolean showAdoptBtn, boolean showReport, boolean showDelete, int vip_level, int svip_level, boolean moderator, String member_honor) {
                this.f59362a = showDivider;
                this.f59363b = uid;
                this.f59364c = commentId;
                this.f59365d = avatarSrc;
                this.f59366e = nickName;
                this.f59367f = timestamps;
                this.f59368g = isPostHost;
                this.f59369h = floor;
                this.f59370i = isModerator;
                this.f59371j = officialAccount;
                this.f59372k = solveFlag;
                this.f59373l = showAdoptBtn;
                this.f59374m = showReport;
                this.f59375n = showDelete;
                this.f59376o = vip_level;
                this.f59377p = svip_level;
                this.f59378q = moderator;
                this.f59379r = member_honor;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59380a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59381b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public List<String> f59382c;

            public b() {
            }

            public b(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f59380a = imgUrl;
                this.f59381b = imgIndex;
                this.f59382c = imgUrlLarge;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59383a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59384b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59385c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59386d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59387e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59388f;

            public c() {
            }

            public c(int commentId, String message, String nickname, int uid, boolean showReport, boolean showDelete) {
                this.f59383a = commentId;
                this.f59384b = message;
                this.f59385c = nickname;
                this.f59386d = uid;
                this.f59387e = showReport;
                this.f59388f = showDelete;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59389a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ForumBean.ForumCommentBean f59390b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59391c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f59392d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59393e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59394f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59395g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59396h;

            public d(int commentId, ForumBean.ForumCommentBean commentBean, int myAuth, boolean showDivider, boolean isMyPost) {
                this.f59389a = commentId;
                this.f59390b = commentBean;
                this.f59391c = myAuth;
                this.f59392d = showDivider;
                this.f59393e = isMyPost;
            }
        }

        public static class e {
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f59397a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f59398b;

            public f(int height, int color) {
                this.f59397a = height;
                this.f59398b = color;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<RecommendLabelTag> f59399a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59400b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59401c;

            public g(List<RecommendLabelTag> employ_tags, int fid, String fname) {
                this.f59399a = employ_tags;
                this.f59400b = fid;
                this.f59401c = fname;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59402a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59403b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59404c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59405d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59406e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59407f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59408g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59409h;

            public h() {
            }

            public h(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f59402a = postId;
                this.f59407f = fid;
                this.f59403b = fname;
                this.f59404c = viewTotal;
                this.f59405d = commentTotal;
                this.f59406e = praiseTotal;
                this.f59408g = isPraise;
                this.f59409h = isShowFooterDivider;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59410a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ForumBean.GameInfo f59411b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59412c;

            public i(String pid, ForumBean.GameInfo gameInfo, String resource_url) {
                this.f59410a = pid;
                this.f59411b = gameInfo;
                this.f59412c = resource_url;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59413a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59414b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59415c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59416d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f59417e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59418f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59419g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59420h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59421i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f59422j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59423k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59424l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public String f59425m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59426n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public boolean f59427o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public String f59428p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public String f59429q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public int f59430r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            public boolean f59431s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            public String f59432t;

            public j() {
            }

            public j(boolean removeDivider, int uid, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, boolean isModerator, boolean officialAccount, int solveFlag, int vip_level, int svip_level, String battleTitle, String battleColor, boolean moderator, String member_honor, String fname, int fid, boolean isAsk, String askMoney) {
                this.f59413a = removeDivider;
                this.f59414b = uid;
                this.f59415c = avatarSrc;
                this.f59416d = nickName;
                this.f59417e = timestamps;
                this.f59418f = isTop;
                this.f59419g = pid;
                this.f59420h = isModerator;
                this.f59421i = officialAccount;
                this.f59422j = solveFlag;
                this.f59423k = vip_level;
                this.f59424l = svip_level;
                this.f59425m = battleTitle;
                this.f59426n = battleColor;
                this.f59427o = moderator;
                this.f59428p = member_honor;
                this.f59429q = fname;
                this.f59430r = fid;
                this.f59431s = isAsk;
                this.f59432t = askMoney;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59433a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59434b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59435c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f59436d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59437e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59438f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59439g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59440h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f59441i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f59442j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59443k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59444l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public String f59445m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59446n;

            public k() {
            }

            public k(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, boolean isModerator, boolean officialAccount, int solveFlag, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f59433a = removeDivider;
                this.f59434b = avatarSrc;
                this.f59435c = nickName;
                this.f59436d = timestamps;
                this.f59437e = isTop;
                this.f59438f = pid;
                this.f59439g = isModerator;
                this.f59440h = officialAccount;
                this.f59441i = solveFlag;
                this.f59442j = vip_level;
                this.f59443k = svip_level;
                this.f59445m = battleTitle;
                this.f59446n = battleColor;
                this.f59444l = uid;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59447a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f59448b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            List<String> f59449c;

            public l() {
            }

            public l(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f59447a = imgUrl;
                this.f59448b = imgIndex;
                this.f59449c = imgUrlLarge;
            }
        }

        public static class m {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<String> f59450a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            List<String> f59451b;

            public m() {
            }

            public m(List<String> imgUrlList, List<String> imgUrlLargeList) {
                this.f59450a = imgUrlList;
                this.f59451b = imgUrlLargeList;
            }
        }

        public static class n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59452a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public SpannableStringBuilder f59453b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59454c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59455d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59456e;

            public n() {
            }

            public n(boolean startWithBest, SpannableStringBuilder message, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59452a = startWithBest;
                this.f59453b = message;
                this.f59454c = isAsk;
                this.f59455d = askMoney;
                this.f59456e = tagInfos;
            }

            public n(boolean startWithBest, SpannableStringBuilder message, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59452a = startWithBest;
                this.f59453b = message;
                this.f59456e = tagInfos;
            }
        }

        public static class o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59457a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public SpannableStringBuilder f59458b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59459c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59460d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59461e;

            public o(boolean startWithBest, SpannableStringBuilder message, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59457a = startWithBest;
                this.f59458b = message;
                this.f59459c = isAsk;
                this.f59460d = askMoney;
                this.f59461e = tagInfos;
            }
        }

        public static class p {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59462a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Spanned f59463b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59464c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59465d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59466e;

            public p() {
            }

            public p(boolean startWithBest, Spanned message, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59462a = startWithBest;
                this.f59463b = message;
                this.f59464c = isAsk;
                this.f59465d = askMoney;
                this.f59466e = tagInfos;
            }

            public p(boolean startWithBest, Spanned message, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59462a = startWithBest;
                this.f59463b = message;
                this.f59466e = tagInfos;
            }
        }

        public static class q {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59467a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59468b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59469c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59470d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59471e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public List<RecommendLabelTag> f59472f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59473g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f59474h;

            public q() {
            }

            public q(boolean isBest, String subject, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tag_list, int fid, String fname) {
                this.f59467a = isBest;
                this.f59468b = subject;
                this.f59469c = isAsk;
                this.f59470d = askMoney;
                this.f59471e = tagInfos;
                this.f59472f = tag_list;
                this.f59473g = fid;
                this.f59474h = fname;
            }
        }

        public static class r {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59475a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59476b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59477c;

            public r(String imgUrl, String videoUrl, String actionBarTitle) {
                this.f59475a = imgUrl;
                this.f59476b = videoUrl;
                this.f59477c = actionBarTitle;
            }
        }

        public z() {
        }

        public <T> T a() {
            return (T) this.f59361c;
        }

        public ViewType b() {
            return this.f59360b;
        }

        public void c(Object obj) {
            this.f59361c = obj;
        }

        public void d(ViewType viewType) {
            this.f59360b = viewType;
        }

        @Override // j6.b
        public int getItemType() {
            return this.f59360b.ordinal();
        }

        public z(ViewType viewType, Object obj) {
            this.f59360b = viewType;
            this.f59361c = obj;
        }
    }

    public ForumCommentAdapter(Context mContext) {
        super(new ArrayList());
        this.f59258h = getClass().getSimpleName();
        this.f59263m = 0;
        this.f59264n = 0;
        this.f59268r = false;
        this.f59270t = null;
        this.f59260j = mContext;
        this.f59259i = W(mContext);
        r(ViewType.COMMENT_HEADER.ordinal(), R.layout.mg_forum_post_activity_item_comment_header);
        r(ViewType.COMMENT_MESSAGE.ordinal(), R.layout.mg_forum_post_activity_item_comment_message);
        r(ViewType.COMMENT_IMAGE.ordinal(), R.layout.mg_forum_post_activity_item_comment_image);
        r(ViewType.COMMENT_MESSAGE_REPLY.ordinal(), R.layout.mg_forum_post_activity_item_comment_message_reply);
        r(ViewType.EMPLOYEE_TAGS.ordinal(), R.layout.mg_forum_post_activity_item_employee_tags);
        r(ViewType.DIVIDER.ordinal(), R.layout.mg_forum_post_activity_item_commnet_divider);
        Y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(final View view, final z.a item) {
        if (item == null) {
            return;
        }
        t tVar = this.f59267q;
        if (tVar != null && tVar.isShowing()) {
            this.f59267q.dismiss();
        }
        if (this.f59267q == null) {
            this.f59267q = new t(this.f59260j);
        }
        this.f59267q.f(item.f59364c);
        this.f59267q.h(item.f59366e);
        int dimension = (int) this.f59260j.getResources().getDimension(R.dimen.wdp378);
        int dimension2 = (int) this.f59260j.getResources().getDimension(R.dimen.wdp89);
        int dimension3 = (int) this.f59260j.getResources().getDimension(R.dimen.wdp72);
        if (item.f59373l) {
            this.f59267q.getContentView().findViewById(R.id.resolve).setVisibility(0);
            this.f59267q.getContentView().findViewById(R.id.v_resolve).setVisibility(0);
        } else {
            this.f59267q.getContentView().findViewById(R.id.resolve).setVisibility(8);
            this.f59267q.getContentView().findViewById(R.id.v_resolve).setVisibility(8);
            dimension -= dimension3;
        }
        if (item.f59374m) {
            this.f59267q.getContentView().findViewById(R.id.report).setVisibility(0);
            this.f59267q.getContentView().findViewById(R.id.v_report).setVisibility(0);
        } else {
            this.f59267q.getContentView().findViewById(R.id.report).setVisibility(8);
            this.f59267q.getContentView().findViewById(R.id.v_report).setVisibility(8);
            dimension -= dimension3;
        }
        if (item.f59375n) {
            this.f59267q.getContentView().findViewById(R.id.delete).setVisibility(0);
            this.f59267q.getContentView().findViewById(R.id.v_delete).setVisibility(0);
        } else {
            this.f59267q.getContentView().findViewById(R.id.delete).setVisibility(8);
            this.f59267q.getContentView().findViewById(R.id.v_delete).setVisibility(8);
            dimension -= dimension3;
        }
        this.f59267q.setWidth(dimension);
        int width = this.f59267q.getWidth();
        int height = this.f59267q.getHeight();
        int i10 = -width;
        if (height != 0) {
            dimension2 = height;
        }
        this.f59267q.showAsDropDown(view, i10, -((dimension2 / 2) + (view.getMeasuredHeight() / 2)));
        this.f59267q.setTouchInterceptor(new r(view));
    }

    private void B0(com.join.mgps.base.b holder, int type) {
        if (type == 0) {
            holder.setGone(R.id.linearLayout2, false);
            holder.setGone(R.id.progressBar, false);
            holder.setGone(R.id.progressBarZip, false);
            holder.setGone(R.id.tipsLayout, true);
            holder.setGone(R.id.mgListviewItemDescribe, true);
            return;
        }
        holder.setGone(R.id.linearLayout2, true);
        if (type == 17) {
            holder.setGone(R.id.progressBar, false);
            holder.setGone(R.id.progressBarZip, true);
        } else {
            holder.setGone(R.id.progressBar, true);
            holder.setGone(R.id.progressBarZip, false);
        }
        holder.setGone(R.id.tipsLayout, false);
        holder.setGone(R.id.mgListviewItemDescribe, false);
    }

    private void G(com.join.mgps.base.b helper, z viewBean) {
        String string;
        try {
            z.a aVar = (z.a) viewBean.a();
            if (aVar == null) {
                return;
            }
            helper.setGone(R.id.divider, aVar.f59362a);
            try {
                ((VipView) helper.getView(R.id.vipFlag)).setVipData(aVar.f59376o, aVar.f59377p);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            helper.setGone(R.id.flagBestAnswer, aVar.f59372k == 1);
            helper.setText(R.id.comment_nickname, aVar.f59366e);
            helper.setText(R.id.comment_add_time, com.join.android.app.common.utils.i.a(aVar.f59367f * 1000));
            com.join.android.app.common.utils.l.y((SimpleDraweeView) helper.getView(R.id.comment_avatar_src), aVar.f59365d);
            helper.getView(R.id.comment_avatar_src).setOnClickListener(new k(aVar));
            helper.setGone(R.id.forum_post_host, aVar.f59368g);
            helper.setGone(R.id.isOfficial, aVar.f59371j);
            if (aVar.f59370i) {
                helper.setTextColor(R.id.comment_nickname, this.f59260j.getResources().getColor(R.color.app_blue_color));
                helper.setGone(R.id.forum_post_moderator, true);
            } else {
                UtilsMy.R3(this.f59260j, (TextView) helper.getView(R.id.comment_nickname), aVar.f59376o, aVar.f59377p, R.color.forum_nickname_color);
                helper.setGone(R.id.forum_post_moderator, false);
            }
            helper.setGone(R.id.moderator, aVar.f59378q);
            if (TextUtils.isEmpty(aVar.f59379r)) {
                helper.setGone(R.id.member_honor, false);
            } else {
                helper.setGone(R.id.member_honor, true);
                helper.setText(R.id.member_honor, aVar.f59379r);
            }
            int i10 = aVar.f59369h;
            if (i10 == 1) {
                string = this.f59260j.getResources().getString(R.string.comment_item_floor_1st);
            } else {
                string = i10 == 2 ? this.f59260j.getResources().getString(R.string.comment_item_floor_2nd) : this.f59260j.getResources().getString(R.string.comment_item_floor, Integer.valueOf(aVar.f59369h));
            }
            helper.setText(R.id.comment_floor, string);
            n0(helper.itemView);
            m0(helper.getView(R.id.comment_reply), aVar);
            com.join.mgps.Util.r0.S0(helper.getView(R.id.comment_avatar_src), helper.getView(R.id.comment_nickname), helper.getView(R.id.comment_add_time));
            com.join.mgps.Util.r0.U0(helper.getView(R.id.vipFlag));
            v0(helper.getView(R.id.comment_avatar_src), aVar.f59363b);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void H(com.join.mgps.base.b helper, z viewBean) {
        try {
            z.b bVar = (z.b) viewBean.a();
            if (bVar == null || helper.getView(R.id.comment_img) == null) {
                return;
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.comment_img);
            e0(this.f59260j, bVar.f59382c.get(bVar.f59381b));
            y yVarT = T(bVar.f59380a);
            if (yVarT != null) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(yVarT.f59357a, yVarT.f59358b);
                int i10 = (int) (4 * this.f59260j.getResources().getDisplayMetrics().density);
                layoutParams.setMargins(0, i10, 0, i10);
                simpleDraweeView.setLayoutParams(layoutParams);
                com.join.android.app.common.utils.l.h(simpleDraweeView, bVar.f59380a);
            } else {
                a0(simpleDraweeView, bVar.f59380a);
            }
            com.join.mgps.Util.r0.C1(simpleDraweeView, bVar.f59381b, bVar.f59382c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void I(com.join.mgps.base.b helper, z viewBean) {
        try {
            z.d dVar = (z.d) viewBean.a();
            if (dVar != null && dVar.f59390b != null) {
                helper.setGone(R.id.comment_reply_divider, dVar.f59392d);
                if (dVar.f59396h) {
                    helper.setGone(R.id.line, false);
                    helper.setGone(R.id.bottom, false);
                } else {
                    helper.setGone(R.id.line, true);
                    helper.setGone(R.id.bottom, true);
                }
                List<ForumBean.ForumCommentReplyBean> reply_list = dVar.f59390b.getReply_list();
                if (reply_list == null || reply_list.size() == 0) {
                    ((LinearLayout) helper.getView(R.id.comment_reply_container)).removeAllViews();
                } else {
                    f0(helper.getView(R.id.comment_reply_container), dVar, true, helper.getLayoutPosition());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void J(com.join.mgps.base.b helper, z viewBean) {
        try {
            z.c cVar = (z.c) viewBean.a();
            if (cVar == null) {
                return;
            }
            helper.setText(R.id.comment_message, cVar.f59384b);
            Z((TextView) helper.getView(R.id.comment_message));
            n0(helper.itemView);
            l0(helper.getView(R.id.comment_message), cVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void K(com.join.mgps.base.b helper, z viewBean) {
        if (viewBean == null) {
            return;
        }
        try {
            z.f fVar = (z.f) viewBean.a();
            helper.setBackgroundColor(R.id.v_view, fVar.f59398b);
            helper.getView(R.id.v_view).setLayoutParams(new ViewGroup.LayoutParams(-1, fVar.f59397a));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void L(com.join.mgps.base.b helper, z viewBean) {
        try {
            z.g gVar = (z.g) viewBean.a();
            if (gVar == null) {
                return;
            }
            if (this.f59261k == null) {
                this.f59261k = new x(this.f59260j);
            }
            this.f59261k.d(gVar.f59400b);
            this.f59261k.e(gVar.f59401c);
            this.f59261k.c().clear();
            this.f59261k.c().addAll(gVar.f59399a);
            ((HListView) helper.getView(R.id.list)).setAdapter((ListAdapter) this.f59261k);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean M(PopupWindow w10, MotionEvent ev) {
        View contentView;
        if (w10 == null || ev == null || (contentView = w10.getContentView()) == null) {
            return false;
        }
        return !N(contentView, ev);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N(View v10, MotionEvent ev) {
        if (v10 == null) {
            return false;
        }
        int[] iArr = new int[2];
        v10.getLocationOnScreen(iArr);
        int rawX = (int) ev.getRawX();
        int rawY = (int) ev.getRawY();
        int i10 = iArr[0];
        return i10 < rawX && iArr[1] < rawY && rawX < i10 + v10.getWidth() && rawY < iArr[1] + v10.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout.LayoutParams R(Context context) {
        if (context == null) {
            return null;
        }
        if (this.f59265o == null) {
            Resources resources = context.getResources();
            int i10 = resources.getDisplayMetrics().widthPixels;
            float f10 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i10 - resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding)) - (30 * f10));
            int i11 = (int) (4 * f10);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, (int) ((dimensionPixelSize * 1.0f) / 1.5f));
            layoutParams.setMargins(0, i11, 0, i11);
            this.f59265o = layoutParams;
        }
        return this.f59265o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int U(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59264n == 0) {
            Resources resources = context.getResources();
            this.f59264n = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.5f);
        }
        return this.f59264n;
    }

    private int V(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59263m == 0) {
            Resources resources = context.getResources();
            this.f59263m = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f59263m;
    }

    private void Y() {
        if (this.f59262l == null) {
            this.f59262l = X();
        }
    }

    private void Z(TextView tv2) {
        tv2.setMovementMethod(com.join.mgps.Util.d0.a());
        CharSequence text = tv2.getText();
        if (text instanceof Spannable) {
            int length = text.length();
            Spannable spannable = (Spannable) tv2.getText();
            URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, length, URLSpan.class);
            if (uRLSpanArr.length == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            for (URLSpan uRLSpan : uRLSpanArr) {
                String url = uRLSpan.getURL();
                if (url.indexOf("http://") == 0 || url.indexOf("https://") == 0) {
                    spannableStringBuilder.setSpan(new u(tv2.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            tv2.setText(spannableStringBuilder);
        }
    }

    private void c0(View parent, boolean like, int count) {
        TextView textView = (TextView) parent.findViewById(R.id.forum_post_praise);
        ImageView imageView = (ImageView) parent.findViewById(R.id.forum_post_praise_icon);
        if (like) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(count + "");
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(count + "");
    }

    private void e0(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            y yVar = new y();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (resources.getDisplayMetrics().density * 40.0f));
            yVar.f59357a = dimensionPixelSize;
            yVar.f59358b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            F(imgUrl, yVar);
        }
    }

    private void f0(final View parent, final z.d commentMessageReply, boolean hideMore, final int position) {
        int i10;
        boolean z10;
        View view;
        int i11;
        LinearLayout linearLayout;
        int i12 = commentMessageReply.f59389a;
        int i13 = commentMessageReply.f59394f;
        boolean z11 = commentMessageReply.f59395g;
        ForumBean.ForumCommentBean forumCommentBean = commentMessageReply.f59390b;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
        LinearLayout linearLayout2 = (LinearLayout) parent;
        linearLayout2.removeAllViews();
        int size = reply_list.size();
        int i14 = 0;
        int i15 = 0;
        while (i15 < size + 1) {
            if (i15 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f59260j).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextViewWithHyperlink textViewWithHyperlink = (TextViewWithHyperlink) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                if ((i15 != size || size <= 3) && !(i13 > 0 && z11 && i15 == size)) {
                    i10 = i13;
                    z10 = z11;
                    view = viewInflate;
                    i11 = i15;
                    if (i11 == 3 && hideMore && size > 3) {
                        textViewWithHyperlink.setVisibility(8);
                        textView.setVisibility(0);
                        textView.setText(textView.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view.setOnClickListener(new m(size, forumCommentBean, i12, commentMessageReply, position));
                        linearLayout = linearLayout2;
                    } else {
                        forumCommentBean = forumCommentBean;
                        LinearLayout linearLayout3 = linearLayout2;
                        if (i11 >= size || (i11 >= 3 && hideMore)) {
                            linearLayout = linearLayout3;
                        } else {
                            ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i11);
                            String nickname = forumCommentReplyBean.getNickname();
                            String rnickname = forumCommentReplyBean.getRnickname();
                            if (forumCommentReplyBean.getRrid() == 0) {
                                rnickname = "";
                            }
                            String message = forumCommentReplyBean.getMessage();
                            textViewWithHyperlink.setVisibility(0);
                            textView.setVisibility(8);
                            if (forumCommentReplyBean.isOfficialAccount()) {
                                nickname = nickname + "#*#";
                            }
                            if (com.join.mgps.Util.t2.i(rnickname) && forumCommentReplyBean.isrOfficialAccount()) {
                                rnickname = rnickname + "#*#";
                            }
                            com.join.mgps.Util.r0.u1(textViewWithHyperlink, nickname, rnickname, message);
                            BannerBean jump_info = forumCommentReplyBean.getJump_info();
                            int rid = forumCommentReplyBean.getRid();
                            int uid = forumCommentReplyBean.getUid();
                            String nickname2 = forumCommentReplyBean.getNickname();
                            if (jump_info != null) {
                                textViewWithHyperlink.a(this.f59260j, jump_info.getTitle(), jump_info.getIntentDataBean(), new n(i12, rid, nickname2));
                            }
                            p0(view, i12, rid, nickname2);
                            UserInfo accountData = AccountUtil_.getInstance_(this.f59260j).getAccountData();
                            int i16 = commentMessageReply.f59391c;
                            boolean z12 = commentMessageReply.f59393e;
                            boolean z13 = accountData != null && uid == accountData.getUid();
                            o0(view, i16 == 3 || i16 == 99 || z13 || z12, !z13, i12, rid, nickname2, forumCommentReplyBean.getMessage());
                            linearLayout = linearLayout3;
                        }
                    }
                    linearLayout.addView(view);
                    i15 = i11 + 1;
                    linearLayout2 = linearLayout;
                    size = size;
                    i13 = i10;
                    z11 = z10;
                    forumCommentBean = forumCommentBean;
                    i14 = 0;
                } else {
                    textViewWithHyperlink.setVisibility(8);
                    textView.setVisibility(i14);
                    textView.setText("收起");
                    int i17 = i13;
                    i10 = i13;
                    view = viewInflate;
                    z10 = z11;
                    i11 = i15;
                    view.setOnClickListener(new l(i17, position, i12, commentMessageReply));
                    linearLayout = linearLayout2;
                }
                linearLayout.addView(view);
                i15 = i11 + 1;
                linearLayout2 = linearLayout;
                size = size;
                i13 = i10;
                z11 = z10;
                forumCommentBean = forumCommentBean;
                i14 = 0;
            } else {
                i10 = i13;
                z10 = z11;
                forumCommentBean = forumCommentBean;
                linearLayout = linearLayout2;
                i11 = i15;
            }
            size = size;
            i15 = i11 + 1;
            linearLayout2 = linearLayout;
            size = size;
            i13 = i10;
            z11 = z10;
            forumCommentBean = forumCommentBean;
            i14 = 0;
        }
    }

    private void g0(RelativeLayout container, final List<String> image_list, final List<String> raw_pic_list) {
        if (image_list == null || image_list.size() == 0) {
            container.setVisibility(8);
            return;
        }
        if (this.f59262l == null) {
            this.f59262l = X();
        }
        TextView textView = (TextView) container.findViewById(R.id.images_count);
        if (image_list.size() > 3) {
            textView.setVisibility(0);
            textView.setText("共" + image_list.size() + "张");
        } else {
            textView.setVisibility(8);
        }
        int i10 = (int) (this.f59260j.getResources().getDisplayMetrics().density * 6.0f);
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) container.findViewById(iArr[i11]);
            LinearLayout.LayoutParams layoutParams = this.f59262l;
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (i11 < image_list.size()) {
                String str = image_list.get(i11);
                simpleDraweeView.setVisibility(0);
                if (i11 > 0) {
                    layoutParams2.setMargins(i10, 0, 0, 0);
                } else {
                    layoutParams2.setMargins(0, 0, 0, 0);
                }
                simpleDraweeView.setLayoutParams(layoutParams2);
                simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                com.join.android.app.common.utils.l.i(simpleDraweeView, str, com.facebook.drawee.drawable.s.c.f27292i);
                simpleDraweeView.setOnClickListener(new o(raw_pic_list, i11));
            } else {
                simpleDraweeView.setVisibility(8);
            }
        }
    }

    private void j0(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, int fid, String fname) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.r0.h(tv2.getContext(), spannableStringBuilder, tagInfos);
        com.join.mgps.Util.r0.i(tv2.getContext(), spannableStringBuilder, tags, fid, fname);
        if (TextUtils.isEmpty(message)) {
            message = "";
        }
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder);
    }

    private void r0(View v10, final String gameId) {
        v10.setOnClickListener(new g(gameId));
    }

    private void s0(View v10, final int fid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new i(fid));
    }

    private void t0(View v10, final ForumBean.GameInfo gameInfo) {
        v10.setOnClickListener(new f(gameInfo));
    }

    private void v0(View v10, final int gagUid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new j(gagUid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup.LayoutParams w0(String s10, final View view, com.facebook.imagepipeline.image.g imageInfo) {
        if (imageInfo == null) {
            return null;
        }
        int width = imageInfo.getWidth();
        int height = imageInfo.getHeight();
        Resources resources = view.getContext().getResources();
        int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        float f10 = (height * 1.0f) / width;
        int i10 = (int) (dimensionPixelSize * 1.0f * f10);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = i10;
        com.join.mgps.Util.h1.e(this.f59258h + "setPostImageParam-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f10 + " itemHeight=" + i10 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        view.setMinimumHeight(0);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    private void x0(View v10, CharSequence text) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setText(text);
        } else if (v10 instanceof Button) {
            ((Button) v10).setText(text);
        }
    }

    private void y0(View v10, int color) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setTextColor(color);
        } else if (v10 instanceof Button) {
            ((Button) v10).setTextColor(color);
        }
    }

    void F(String key, y value) {
        if (this.f59266p == null) {
            this.f59266p = new Hashtable<>();
        }
        this.f59266p.put(key, value);
    }

    public void O() {
        Hashtable<String, y> hashtable = this.f59266p;
        if (hashtable != null) {
            hashtable.clear();
            System.gc();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, z item) {
        int itemType = item.getItemType();
        if (itemType == ViewType.COMMENT_HEADER.ordinal()) {
            G(helper, item);
            return;
        }
        if (itemType == ViewType.COMMENT_MESSAGE.ordinal()) {
            J(helper, item);
            return;
        }
        if (itemType == ViewType.COMMENT_IMAGE.ordinal()) {
            H(helper, item);
            return;
        }
        if (itemType == ViewType.COMMENT_MESSAGE_REPLY.ordinal()) {
            I(helper, item);
        } else if (itemType == ViewType.EMPLOYEE_TAGS.ordinal()) {
            L(helper, item);
        } else if (itemType == ViewType.DIVIDER.ordinal()) {
            K(helper, item);
        }
    }

    z Q(int pid, ForumBean.ForumCommentBean bean, int myAuth, boolean showDivider, boolean isMyPost) {
        return new z(ViewType.COMMENT_MESSAGE_REPLY, new z.d(pid, bean, myAuth, showDivider, isMyPost));
    }

    BitmapFactory.Options S(String path) {
        return null;
    }

    y T(String key) {
        Hashtable<String, y> hashtable = this.f59266p;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(key);
    }

    public com.danikula.videocache.i W(Context context) {
        return MApplication.q(context);
    }

    LinearLayout.LayoutParams X() {
        DisplayMetrics displayMetrics = this.f59260j.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f59260j.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    public void a0(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new q(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b0(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new p(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void d0(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            y yVar = new y();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
            yVar.f59357a = dimensionPixelSize;
            yVar.f59358b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            F(imgUrl, yVar);
        }
    }

    LinearLayout.LayoutParams h0(String s10, View view, com.facebook.imagepipeline.image.g imageInfo) {
        if (imageInfo == null) {
            return null;
        }
        int width = imageInfo.getWidth();
        int height = imageInfo.getHeight();
        Context context = view.getContext();
        Resources resources = context.getResources();
        int i10 = resources.getDisplayMetrics().widthPixels;
        float f10 = context.getResources().getDisplayMetrics().density;
        int dimensionPixelSize = (int) ((i10 - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (40 * f10));
        int i11 = (int) (4 * f10);
        float f11 = (height * 1.0f) / width;
        int i12 = (int) (dimensionPixelSize * 1.0f * f11);
        com.join.mgps.Util.h1.e(this.f59258h + "setCommentImageItemParams-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f11 + " itemHeight=" + i12 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, i12);
        layoutParams.setMargins(0, i11, 0, i11);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    void i0(z bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((z.d) bean.a()).f59396h = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void k0(w l10) {
        this.f59270t = l10;
    }

    public void l0(View v10, final z.c item) {
        v10.setOnLongClickListener(new c(item));
    }

    public void m0(View v10, final z.a item) {
        v10.setOnClickListener(new b(item));
    }

    public void n0(View v10) {
        v10.setOnClickListener(new a());
    }

    public void o0(View v10, final boolean showDelete, final boolean showReport, final int cid, final int rid, final String nickname, final String msg) {
        v10.setOnLongClickListener(new e(cid, showDelete, showReport, rid, nickname, msg));
    }

    public void p0(View v10, final int cid, final int rid, final String rNickname) {
        com.join.mgps.Util.h1.e("setOnCommentReplyReply", "cid=" + cid + " rid=" + rid + " rNickname=" + rNickname);
        v10.setOnClickListener(new d(cid, rid, rNickname));
    }

    public void q0(View v10, final int fid) {
        v10.setOnClickListener(new s(fid));
    }

    public void u0(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new h(position));
    }

    void z0(View v10, int eventFlag, boolean showDelete, boolean showReport, int cid, int rid, String nickname, String mssage) {
        if (this.f59269s == null) {
            this.f59269s = new v(this.f59260j);
        }
        this.f59269s.q(cid);
        this.f59269s.A(rid);
        this.f59269s.x(mssage);
        this.f59269s.w(eventFlag);
        this.f59269s.t(0);
        if (showDelete) {
            this.f59269s.v(0);
        } else {
            this.f59269s.v(8);
        }
        if (showReport) {
            this.f59269s.z(0);
        } else {
            this.f59269s.z(8);
        }
        if (com.join.mgps.Util.t2.h(nickname)) {
            nickname = "";
        }
        this.f59269s.y(nickname);
        this.f59269s.showAsDropDown(v10);
    }

    public static class x extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f59349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<RecommendLabelTag> f59350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f59351d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f59352e;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecommendLabelTag f59353b;

            a(final RecommendLabelTag val$tag) {
                this.f59353b = val$tag;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f59353b.getTag_id(), x.this.f59351d, x.this.f59352e);
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f59355a;

            b() {
            }
        }

        public x(Context mContext, List<RecommendLabelTag> employ_tags) {
            this.f59349b = mContext;
            this.f59350c = employ_tags;
        }

        public List<RecommendLabelTag> c() {
            return this.f59350c;
        }

        public void d(int fid) {
            this.f59351d = fid;
        }

        public void e(String fname) {
            this.f59352e = fname;
        }

        public void f(List<RecommendLabelTag> tags) {
            this.f59350c = tags;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<RecommendLabelTag> list = this.f59350c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<RecommendLabelTag> list = this.f59350c;
            if (list == null || i10 >= list.size()) {
                return null;
            }
            return this.f59350c.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewInflate;
            b bVar;
            RecommendLabelTag recommendLabelTag;
            if (view == null) {
                bVar = new b();
                viewInflate = LayoutInflater.from(this.f59349b).inflate(R.layout.forum_group_tag_detail_item, (ViewGroup) null);
                bVar.f59355a = (TextView) viewInflate.findViewById(R.id.tagTv);
                viewInflate.setTag(bVar);
            } else {
                viewInflate = view;
                bVar = (b) view.getTag();
            }
            if (bVar.f59355a != null && (recommendLabelTag = (RecommendLabelTag) getItem(i10)) != null) {
                bVar.f59355a.setText("#" + recommendLabelTag.getTag_name());
                bVar.f59355a.setOnClickListener(new a(recommendLabelTag));
            }
            return viewInflate;
        }

        public x(Context mContext) {
            this.f59349b = mContext;
            this.f59350c = new ArrayList();
        }
    }
}
