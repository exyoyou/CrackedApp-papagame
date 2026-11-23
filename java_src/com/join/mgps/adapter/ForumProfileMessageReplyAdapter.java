package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.ForumBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileMessageReplyAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f60186c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    LinearLayout.LayoutParams f60188e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    n f60190g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Hashtable<String, p> f60191h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f60185b = "ForumProfileMessageReplyAdapter";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f60189f = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<u> f60187d = new ArrayList();

    public enum ViewType {
        PROFILE_HEADER,
        PROFILE_MESSAGE_ITEM,
        PROFILE_COMMENT_IMAGE,
        PROFILE_MESSAGE_REPLY_ITEM
    }

    class a implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60192b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60193c;

        a(final int val$cid, final int val$uid) {
            this.f60192b = val$cid;
            this.f60193c = val$uid;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f == null) {
                return false;
            }
            ForumProfileMessageReplyAdapter.this.f60189f.l(v10, this.f60192b, this.f60193c);
            return true;
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60195b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60196c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60197d;

        b(final int val$cid, final int val$rid, final String val$rNickname) {
            this.f60195b = val$cid;
            this.f60196c = val$rid;
            this.f60197d = val$rNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f != null) {
                ForumProfileMessageReplyAdapter.this.f60189f.c(this.f60195b, this.f60196c, this.f60197d);
            }
        }
    }

    class c implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60200c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f60201d;

        c(final int val$cid, final int val$rid, final int val$ruid) {
            this.f60199b = val$cid;
            this.f60200c = val$rid;
            this.f60201d = val$ruid;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f == null) {
                return true;
            }
            ForumProfileMessageReplyAdapter.this.f60189f.e(v10, this.f60199b, this.f60200c, this.f60201d);
            return true;
        }
    }

    class d implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f60204c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f60205d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f60206e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f60207f;

        d(final int val$cid, final boolean val$showDelete, final boolean val$showReport, final int val$rid, final String val$nickname) {
            this.f60203b = val$cid;
            this.f60204c = val$showDelete;
            this.f60205d = val$showReport;
            this.f60206e = val$rid;
            this.f60207f = val$nickname;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f != null) {
                ForumProfileMessageReplyAdapter.this.f60189f.g(v10, this.f60203b);
            }
            ForumProfileMessageReplyAdapter.this.D(v10, 2, this.f60204c, this.f60205d, this.f60203b, this.f60206e, this.f60207f);
            return true;
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ u.b f60209b;

        e(final u.b val$item) {
            this.f60209b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f60209b.f60282f).start();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60212c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f60213d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ u.d f60214e;

        f(final int val$itemIndex, final int val$position, final int val$cid, final u.d val$commentMessageReply) {
            this.f60211b = val$itemIndex;
            this.f60212c = val$position;
            this.f60213d = val$cid;
            this.f60214e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60211b == 0) {
                return;
            }
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f60211b; i10 >= 0; i10--) {
                u uVar = (u) ForumProfileMessageReplyAdapter.this.f60187d.get(this.f60212c - i10);
                u.d dVar = uVar.b() == ViewType.PROFILE_MESSAGE_REPLY_ITEM ? (u.d) uVar.a() : null;
                if (dVar != null && this.f60213d == dVar.f60288a) {
                    arrayList.addAll(dVar.f60289b.getReply_list());
                }
            }
            for (int i11 = 0; i11 <= this.f60211b; i11++) {
                ForumProfileMessageReplyAdapter.this.f60187d.remove(this.f60212c - i11);
            }
            forumCommentBean.setReply_list(arrayList);
            ForumProfileMessageReplyAdapter.this.f60187d.add(this.f60212c - this.f60211b, ForumProfileMessageReplyAdapter.this.g(this.f60213d, forumCommentBean, this.f60214e.f60290c, true));
            ForumProfileMessageReplyAdapter.this.notifyDataSetChanged();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60216b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f60217c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f60218d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ u.d f60219e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f60220f;

        g(final int val$size, final ForumBean.ForumCommentBean val$forumCommentBean, final int val$cid, final u.d val$commentMessageReply, final int val$position) {
            this.f60216b = val$size;
            this.f60217c = val$forumCommentBean;
            this.f60218d = val$cid;
            this.f60219e = val$commentMessageReply;
            this.f60220f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f60216b) {
                ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean(this.f60217c);
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
                u uVarG = ForumProfileMessageReplyAdapter.this.g(this.f60218d, forumCommentBean, this.f60219e.f60290c, i11 == 0);
                u.d dVar = (u.d) uVarG.a();
                dVar.f60292e = i11;
                dVar.f60293f = z10;
                dVar.f60294g = i11 == 0;
                ForumProfileMessageReplyAdapter.this.t(uVarG, !z10);
                ForumProfileMessageReplyAdapter.this.f60187d.add(this.f60220f + i11 + 1, uVarG);
                i11++;
                i10 = i12;
            }
            ForumProfileMessageReplyAdapter.this.f60187d.remove(this.f60220f);
            ForumProfileMessageReplyAdapter.this.notifyDataSetChanged();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f60222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ u.d f60223c;

        h(final View val$parent, final u.d val$commentMessageReply) {
            this.f60222b = val$parent;
            this.f60223c = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileMessageReplyAdapter.this.q(this.f60222b, this.f60223c, true);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f60225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ u.d f60226c;

        i(final View val$parent, final u.d val$commentMessageReply) {
            this.f60225b = val$parent;
            this.f60226c = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileMessageReplyAdapter.this.q(this.f60225b, this.f60226c, false);
        }
    }

    class j implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f60228b;

        j(final SimpleDraweeView val$view) {
            this.f60228b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumProfileMessageReplyAdapter.this.s(id2, this.f60228b, imageInfo);
                if (imageInfo != null) {
                    p pVar = ForumProfileMessageReplyAdapter.this.new p();
                    pVar.f60249a = imageInfo.getWidth();
                    pVar.f60250b = imageInfo.getHeight();
                    ForumProfileMessageReplyAdapter.this.e(id2, pVar);
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
            SimpleDraweeView simpleDraweeView = this.f60228b;
            simpleDraweeView.setLayoutParams(ForumProfileMessageReplyAdapter.this.h(simpleDraweeView.getContext()));
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60230b;

        k(final int val$fid) {
            this.f60230b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f != null) {
                ForumProfileMessageReplyAdapter.this.f60189f.b(this.f60230b);
            }
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f != null) {
                ForumProfileMessageReplyAdapter.this.f60189f.m();
            }
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60233b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f60234c;

        m(final int val$cid, final String val$cNickname) {
            this.f60233b = val$cid;
            this.f60234c = val$cNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageReplyAdapter.this.f60189f != null) {
                ForumProfileMessageReplyAdapter.this.f60189f.i(this.f60233b, this.f60234c);
            }
        }
    }

    public class n extends com.join.mgps.customview.h implements View.OnClickListener {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f60236n = 1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f60237o = 2;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f60238p = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f60239d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f60240e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f60241f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f60242g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f60243h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f60244i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f60245j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        String f60246k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f60247l;

        public n(Context context) {
            super(context);
            c();
            i();
        }

        private void i() {
            View viewInflate = LayoutInflater.from(this.f66438b).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
            this.f60239d = viewInflate.findViewById(R.id.btn_forum_comment_delete);
            this.f60240e = viewInflate.findViewById(R.id.divider_forum_comment_1);
            this.f60241f = viewInflate.findViewById(R.id.btn_forum_comment);
            this.f60242g = viewInflate.findViewById(R.id.divider_2);
            this.f60243h = viewInflate.findViewById(R.id.btn_forum_report);
            this.f60239d.setOnClickListener(this);
            this.f60241f.setOnClickListener(this);
            this.f60243h.setOnClickListener(this);
            setContentView(viewInflate);
            setWidth(-2);
            setHeight(-2);
        }

        void c() {
            setAnimationStyle(0);
            setFocusable(false);
        }

        public int d() {
            return this.f60244i;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            this.f60244i = 0;
            this.f60245j = 0;
            this.f60246k = "";
        }

        public View e() {
            return this.f60239d;
        }

        public int f() {
            return this.f60247l;
        }

        public String g() {
            return this.f60246k;
        }

        public int h() {
            return this.f60245j;
        }

        void j() {
            if (ForumProfileMessageReplyAdapter.this.f60189f == null) {
                return;
            }
            int i10 = this.f60247l;
            if (i10 == 1) {
                ForumProfileMessageReplyAdapter.this.f60189f.i(this.f60244i, this.f60246k);
            } else if (i10 == 2) {
                ForumProfileMessageReplyAdapter.this.f60189f.k(this.f60244i, this.f60245j, this.f60246k);
            }
        }

        void k() {
            if (ForumProfileMessageReplyAdapter.this.f60189f == null) {
                return;
            }
            int i10 = this.f60247l;
            if (i10 == 1) {
                ForumProfileMessageReplyAdapter.this.f60189f.d(this.f60244i);
            } else if (i10 == 2) {
                ForumProfileMessageReplyAdapter.this.f60189f.h(this.f60245j);
            }
        }

        void l() {
            if (ForumProfileMessageReplyAdapter.this.f60189f == null) {
                return;
            }
            int i10 = this.f60247l;
            if (i10 == 1) {
                ForumProfileMessageReplyAdapter.this.f60189f.j(this.f60244i);
            } else if (i10 == 2) {
                ForumProfileMessageReplyAdapter.this.f60189f.f(this.f60245j);
            }
        }

        public void m() {
            View view = this.f60239d;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.f60241f;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.f60243h;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }

        public void n(int cid) {
            this.f60244i = cid;
        }

        public void o(int visibility) {
            View view = this.f60241f;
            if (view != null) {
                view.setVisibility(visibility);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            switch (v10.getId()) {
                case R.id.btn_forum_comment /* 2131362463 */:
                    j();
                    break;
                case R.id.btn_forum_comment_delete /* 2131362465 */:
                    k();
                    break;
                case R.id.btn_forum_report /* 2131362466 */:
                    l();
                    break;
            }
            dismiss();
        }

        public void p(View delete) {
            this.f60239d = delete;
        }

        public void q(int visibility) {
            View view = this.f60239d;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f60240e.setVisibility(0);
            } else {
                this.f60240e.setVisibility(8);
            }
        }

        public void r(int eventFlag) {
            this.f60247l = eventFlag;
        }

        public void s(String nickname) {
            this.f60246k = nickname;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View anchor) {
            showAsDropDown(anchor, 0, (anchor.getMeasuredHeight() * (-1)) - this.f66438b.getResources().getDimensionPixelSize(R.dimen.mg_forum_popupwindow_height));
            b();
        }

        void t(int visibility) {
            View view = this.f60243h;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f60242g.setVisibility(0);
            } else {
                this.f60242g.setVisibility(8);
            }
        }

        public void u(int rid) {
            this.f60245j = rid;
        }
    }

    public interface o {
        void a(int pid);

        void b(int fid);

        void c(int cid, int rid, String rNickname);

        void d(int cid);

        void e(View v10, int cid, int rid, int ruid);

        void f(int rid);

        void g(View v10, int cid);

        void h(int rid);

        void i(int cid, String cNickname);

        void j(int cid);

        void k(int cid, int rid, String nickname);

        void l(View view, int cid, int uid);

        void m();
    }

    public class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f60249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60250b;

        public p() {
        }
    }

    class q extends v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60252b;

        q() {
            super();
        }
    }

    class r extends v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60255c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60256d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f60257e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public LinearLayout f60258f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f60259g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public VipView f60260h;

        r() {
            super();
        }
    }

    class s extends v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60263c;

        s() {
            super();
        }
    }

    class t extends v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f60265b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60266c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60267d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60268e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60269f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f60270g;

        t() {
            super();
        }
    }

    public static class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60273b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60274a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f60275b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            List<String> f60276c;

            public a() {
            }

            public a(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f60274a = imgUrl;
                this.f60275b = imgIndex;
                this.f60276c = imgUrlLarge;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60277a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60278b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60279c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f60280d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60281e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60282f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60283g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f60284h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f60285i;

            public b() {
            }

            public b(boolean removeDivider, String avatarSrc, String nickName, long timestamps, int pid, boolean isModerator, int vip_level, int svip_level, int uid) {
                this.f60277a = removeDivider;
                this.f60278b = avatarSrc;
                this.f60279c = nickName;
                this.f60280d = timestamps;
                this.f60281e = pid;
                this.f60282f = uid;
                this.f60283g = isModerator;
                this.f60284h = vip_level;
                this.f60285i = svip_level;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60286a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60287b;

            public c() {
            }

            public c(int pid, String message) {
                this.f60286a = pid;
                this.f60287b = message;
            }
        }

        public u() {
        }

        public Object a() {
            return this.f60273b;
        }

        public ViewType b() {
            return this.f60272a;
        }

        public void c(Object obj) {
            this.f60273b = obj;
        }

        public void d(ViewType viewType) {
            this.f60272a = viewType;
        }

        public u(ViewType viewType, Object obj) {
            this.f60272a = viewType;
            this.f60273b = obj;
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60288a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ForumBean.ForumCommentBean f60289b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60290c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60291d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60292e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f60293f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60294g;

            public d(int commentId, ForumBean.ForumCommentBean commentBean, int myAuth) {
                this.f60288a = commentId;
                this.f60289b = commentBean;
                this.f60290c = myAuth;
            }

            public d(int commentId, ForumBean.ForumCommentBean commentBean, int myAuth, boolean showDivider) {
                this.f60288a = commentId;
                this.f60289b = commentBean;
                this.f60290c = myAuth;
                this.f60294g = showDivider;
            }
        }
    }

    class v {
        v() {
        }
    }

    public ForumProfileMessageReplyAdapter(Context mContext) {
        this.f60186c = mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout.LayoutParams h(Context context) {
        if (context == null) {
            return null;
        }
        if (this.f60188e == null) {
            Resources resources = context.getResources();
            int i10 = resources.getDisplayMetrics().widthPixels;
            float f10 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i10 - resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding)) - (30 * f10));
            int i11 = (int) (4 * f10);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, (int) ((dimensionPixelSize * 1.0f) / 1.5f));
            layoutParams.setMargins(0, i11, 0, i11);
            this.f60188e = layoutParams;
        }
        return this.f60188e;
    }

    private View k(int position, View convertView, ViewGroup parent) {
        q qVar;
        SimpleDraweeView simpleDraweeView;
        if (convertView != null) {
            qVar = (q) convertView.getTag();
        } else {
            qVar = new q();
            convertView = LayoutInflater.from(this.f60186c).inflate(R.layout.mg_profile_comment_image, (ViewGroup) null);
            qVar.f60252b = (SimpleDraweeView) convertView.findViewById(R.id.comment_img);
            convertView.setTag(qVar);
        }
        try {
            u.a aVar = (u.a) getItem(position);
            if (aVar != null && (simpleDraweeView = qVar.f60252b) != null) {
                p(this.f60186c, aVar.f60276c.get(aVar.f60275b));
                p pVarJ = j(aVar.f60274a);
                if (pVarJ != null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(pVarJ.f60249a, pVarJ.f60250b);
                    int i10 = (int) (8 * this.f60186c.getResources().getDisplayMetrics().density);
                    layoutParams.setMargins(0, i10, 0, i10);
                    simpleDraweeView.setLayoutParams(layoutParams);
                    com.join.android.app.common.utils.l.h(simpleDraweeView, aVar.f60274a);
                } else {
                    o(simpleDraweeView, aVar.f60274a);
                }
                com.join.mgps.Util.r0.C1(simpleDraweeView, aVar.f60275b, aVar.f60276c);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View l(int position, View convertView, ViewGroup parent) {
        r rVar;
        if (convertView != null) {
            rVar = (r) convertView.getTag();
        } else {
            rVar = new r();
            convertView = LayoutInflater.from(this.f60186c).inflate(R.layout.mg_forum_profile_reply_header, (ViewGroup) null);
            rVar.f60257e = convertView.findViewById(R.id.forum_post_divider);
            rVar.f60254b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            rVar.f60255c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            rVar.f60256d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            rVar.f60258f = (LinearLayout) convertView.findViewById(R.id.forum_post_func_container);
            rVar.f60259g = (ImageView) convertView.findViewById(R.id.forum_post_reply);
            rVar.f60260h = (VipView) convertView.findViewById(R.id.vipFlag);
            convertView.setTag(rVar);
        }
        try {
            u.b bVar = (u.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            try {
                UtilsMy.R3(this.f60186c, rVar.f60255c, bVar.f60284h, bVar.f60285i, R.color.forum_nickname_color);
                rVar.f60260h.setVipData(bVar.f60284h, bVar.f60285i);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (bVar.f60277a) {
                rVar.f60257e.setVisibility(8);
            } else {
                rVar.f60257e.setVisibility(0);
            }
            rVar.f60255c.setText(bVar.f60279c);
            rVar.f60256d.setText(com.join.android.app.common.utils.i.a(bVar.f60280d * 1000));
            com.join.android.app.common.utils.l.y(rVar.f60254b, bVar.f60278b);
            rVar.f60254b.setOnClickListener(new e(bVar));
            com.join.mgps.Util.r0.S0(rVar.f60254b, rVar.f60255c, rVar.f60256d);
            com.join.mgps.Util.r0.U0(rVar.f60260h);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private View m(int position, View convertView, ViewGroup parent) {
        s sVar;
        if (convertView != null) {
            sVar = (s) convertView.getTag();
        } else {
            sVar = new s();
            convertView = LayoutInflater.from(this.f60186c).inflate(R.layout.mg_forum_profile_reply_message_item, (ViewGroup) null);
            sVar.f60262b = (TextView) convertView.findViewById(R.id.mg_forum_profile_message_tv);
            sVar.f60263c = convertView.findViewById(R.id.mg_forum_profile_message_divider);
            convertView.setTag(sVar);
        }
        try {
            u.c cVar = (u.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            sVar.f60263c.setVisibility(8);
            com.join.mgps.Util.r0.D1(sVar.f60262b, cVar.f60287b, "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View n(int position, View convertView, ViewGroup parent) {
        t tVar;
        try {
            if (convertView != null) {
                tVar = (t) convertView.getTag();
            } else {
                tVar = new t();
                convertView = LayoutInflater.from(this.f60186c).inflate(R.layout.mg_forum_profile_reply_message_reply_item, (ViewGroup) null);
                tVar.f60265b = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                tVar.f60266c = convertView.findViewById(R.id.comment_reply_divider);
                tVar.f60267d = (TextView) convertView.findViewById(R.id.comment_reply_content);
                tVar.f60268e = (TextView) convertView.findViewById(R.id.comment_reply_more);
                tVar.f60269f = convertView.findViewById(R.id.line);
                tVar.f60270g = convertView.findViewById(R.id.bottom);
                convertView.setTag(tVar);
            }
            u.d dVar = (u.d) getItem(position);
            if (dVar == null || dVar.f60289b == null) {
                return convertView;
            }
            if (dVar.f60294g) {
                tVar.f60266c.setVisibility(0);
            } else {
                tVar.f60266c.setVisibility(8);
            }
            if (dVar.f60291d) {
                tVar.f60269f.setVisibility(8);
                tVar.f60270g.setVisibility(8);
            } else {
                tVar.f60269f.setVisibility(0);
                tVar.f60270g.setVisibility(0);
            }
            List<ForumBean.ForumCommentReplyBean> reply_list = dVar.f60289b.getReply_list();
            if (reply_list == null || reply_list.size() == 0) {
                tVar.f60265b.removeAllViews();
            } else {
                r(tVar.f60265b, dVar, true, position);
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(final View parent, final u.d commentMessageReply, boolean hideMore) {
        int i10 = commentMessageReply.f60288a;
        List<ForumBean.ForumCommentReplyBean> reply_list = commentMessageReply.f60289b.getReply_list();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        for (int i11 = 0; i11 < reply_list.size() + 1; i11++) {
            if (i11 <= Integer.MAX_VALUE || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60186c).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                int size = reply_list.size();
                if (i11 == size && size > Integer.MAX_VALUE) {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    viewInflate.setOnClickListener(new h(parent, commentMessageReply));
                } else if (i11 == Integer.MAX_VALUE && hideMore && size > Integer.MAX_VALUE) {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - Integer.MAX_VALUE)));
                    viewInflate.setOnClickListener(new i(parent, commentMessageReply));
                } else if (i11 < reply_list.size() && (i11 < Integer.MAX_VALUE || !hideMore)) {
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i11);
                    String nickname = forumCommentReplyBean.getNickname();
                    String rnickname = forumCommentReplyBean.getRnickname();
                    if (forumCommentReplyBean.getRrid() == 0) {
                        rnickname = "";
                    }
                    String message = forumCommentReplyBean.getMessage();
                    textView.setVisibility(0);
                    textView2.setVisibility(8);
                    com.join.mgps.Util.r0.u1(textView, nickname, rnickname, message);
                    int rid = forumCommentReplyBean.getRid();
                    int uid = forumCommentReplyBean.getUid();
                    String nickname2 = forumCommentReplyBean.getNickname();
                    A(viewInflate, i10, rid, nickname2);
                    UserInfo accountData = AccountUtil_.getInstance_(this.f60186c).getAccountData();
                    int i12 = commentMessageReply.f60290c;
                    boolean z10 = accountData != null && uid == accountData.getUid();
                    z(viewInflate, i12 == 3 || i12 == 99 || z10, !z10, i10, rid, nickname2);
                }
                linearLayout.addView(viewInflate);
            }
        }
    }

    private void r(final View parent, final u.d commentMessageReply, boolean hideMore, final int position) {
        int i10;
        boolean z10;
        View view;
        int i11;
        ForumBean.ForumCommentBean forumCommentBean;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        int i12 = commentMessageReply.f60288a;
        int i13 = commentMessageReply.f60292e;
        boolean z11 = commentMessageReply.f60293f;
        ForumBean.ForumCommentBean forumCommentBean2 = commentMessageReply.f60289b;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean2.getReply_list();
        LinearLayout linearLayout3 = (LinearLayout) parent;
        linearLayout3.removeAllViews();
        int size = reply_list.size();
        int i14 = 0;
        int i15 = 0;
        while (i15 < size + 1) {
            if (i15 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60186c).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                if ((i15 != size || size <= 3) && !(i13 > 0 && z11 && i15 == size)) {
                    i10 = i13;
                    z10 = z11;
                    view = viewInflate;
                    i11 = i15;
                    if (i11 == 3 && hideMore && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        forumCommentBean = forumCommentBean2;
                        linearLayout = linearLayout3;
                        view.setOnClickListener(new g(size, forumCommentBean2, i12, commentMessageReply, position));
                    } else {
                        forumCommentBean = forumCommentBean2;
                        linearLayout = linearLayout3;
                        if (i11 >= size || (i11 >= 3 && hideMore)) {
                            linearLayout2 = linearLayout;
                        } else {
                            ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i11);
                            String nickname = forumCommentReplyBean.getNickname();
                            String rnickname = forumCommentReplyBean.getRnickname();
                            if (forumCommentReplyBean.getRrid() == 0) {
                                rnickname = "";
                            }
                            String message = forumCommentReplyBean.getMessage();
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            com.join.mgps.Util.r0.u1(textView, nickname, rnickname, message);
                            int rid = forumCommentReplyBean.getRid();
                            int uid = forumCommentReplyBean.getUid();
                            String nickname2 = forumCommentReplyBean.getNickname();
                            A(view, i12, rid, nickname2);
                            UserInfo accountData = AccountUtil_.getInstance_(this.f60186c).getAccountData();
                            int i16 = commentMessageReply.f60290c;
                            boolean z12 = accountData != null && uid == accountData.getUid();
                            z(view, i16 == 3 || i16 == 99 || z12, !z12, i12, rid, nickname2);
                        }
                    }
                    linearLayout2 = linearLayout;
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i14);
                    textView2.setText("收起");
                    int i17 = i13;
                    i10 = i13;
                    view = viewInflate;
                    z10 = z11;
                    i11 = i15;
                    view.setOnClickListener(new f(i17, position, i12, commentMessageReply));
                    forumCommentBean = forumCommentBean2;
                    linearLayout2 = linearLayout3;
                }
                linearLayout2.addView(view);
            } else {
                i10 = i13;
                z10 = z11;
                forumCommentBean = forumCommentBean2;
                linearLayout2 = linearLayout3;
                i11 = i15;
            }
            i15 = i11 + 1;
            linearLayout3 = linearLayout2;
            i13 = i10;
            z11 = z10;
            forumCommentBean2 = forumCommentBean;
            i14 = 0;
        }
    }

    public void A(View v10, final int cid, final int rid, final String rNickname) {
        com.join.mgps.Util.h1.e("setOnCommentReplyReply", "cid=" + cid + " rid=" + rid + " rNickname=" + rNickname);
        v10.setOnClickListener(new b(cid, rid, rNickname));
    }

    public void B(View v10, final int fid) {
        v10.setOnClickListener(new k(fid));
    }

    public void C(o mForumProfileMessageReplyListener) {
        this.f60189f = mForumProfileMessageReplyListener;
    }

    void D(View v10, int eventFlag, boolean showDelete, boolean showReport, int cid, int rid, String nickname) {
        if (this.f60190g == null) {
            this.f60190g = new n(this.f60186c);
        }
        this.f60190g.n(cid);
        this.f60190g.u(rid);
        this.f60190g.r(eventFlag);
        if (showDelete) {
            this.f60190g.q(0);
        } else {
            this.f60190g.q(8);
        }
        if (showReport) {
            this.f60190g.t(0);
        } else {
            this.f60190g.t(8);
        }
        if (com.join.mgps.Util.t2.h(nickname)) {
            nickname = "";
        }
        this.f60190g.s(nickname);
        this.f60190g.showAsDropDown(v10);
    }

    void e(String key, p value) {
        if (this.f60191h == null) {
            this.f60191h = new Hashtable<>();
        }
        this.f60191h.put(key, value);
    }

    public void f() {
        Hashtable<String, p> hashtable = this.f60191h;
        if (hashtable != null) {
            hashtable.clear();
            System.gc();
        }
    }

    u g(int pid, ForumBean.ForumCommentBean bean, int myAuth, boolean showDivider) {
        return new u(ViewType.PROFILE_MESSAGE_REPLY_ITEM, new u.d(pid, bean, myAuth, showDivider));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<u> list = this.f60187d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<u> list = this.f60187d;
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
        List<u> list = this.f60187d;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.PROFILE_HEADER.ordinal()) {
            return l(position, convertView, parent);
        }
        if (itemViewType == ViewType.PROFILE_MESSAGE_ITEM.ordinal()) {
            return m(position, convertView, parent);
        }
        if (itemViewType == ViewType.PROFILE_COMMENT_IMAGE.ordinal()) {
            return k(position, convertView, parent);
        }
        return itemViewType == ViewType.PROFILE_MESSAGE_REPLY_ITEM.ordinal() ? n(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public List<u> i() {
        return this.f60187d;
    }

    p j(String key) {
        Hashtable<String, p> hashtable = this.f60191h;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(key);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new j(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void p(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            p pVar = new p();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (resources.getDisplayMetrics().density * 58.0f));
            pVar.f60249a = dimensionPixelSize;
            pVar.f60250b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            e(imgUrl, pVar);
        }
    }

    LinearLayout.LayoutParams s(String s10, View view, com.facebook.imagepipeline.image.g imageInfo) {
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
        com.join.mgps.Util.h1.e(this.f60185b + "setCommentImageItemParams-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f11 + " itemHeight=" + i12 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, i12);
        layoutParams.setMargins(0, i11, 0, i11);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    void t(u bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((u.d) bean.a()).f60291d = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void u(List<u> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60187d == null) {
            this.f60187d = new ArrayList();
        }
        this.f60187d.clear();
        this.f60187d.addAll(itemBeans);
    }

    public void v(View v10, final int cid, final int uid) {
        v10.setOnLongClickListener(new a(cid, uid));
    }

    public void w(View v10, final int cid, final String cNickname) {
        v10.setOnClickListener(new m(cid, cNickname));
    }

    public void x(View v10) {
        v10.setOnClickListener(new l());
    }

    public void y(View v10, final int cid, final int rid, final int ruid) {
        com.join.mgps.Util.h1.e("setOnCommentReplyLongClick", "cid=" + cid + " rid=" + rid + " ruid=" + ruid);
        v10.setOnLongClickListener(new c(cid, rid, ruid));
    }

    public void z(View v10, final boolean showDelete, final boolean showReport, final int cid, final int rid, final String nickname) {
        v10.setOnLongClickListener(new d(cid, showDelete, showReport, rid, nickname));
    }
}
