package com.join.mgps.adapter;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.ForumPostsCopyActivity_;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumPostsAdapter extends com.join.mgps.base.a<e0, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f59478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.danikula.videocache.i f59479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f59480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f59481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.android.app.component.video.c f59482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c0 f59483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    LinearLayout.LayoutParams f59484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f59485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f59486p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    LinearLayout.LayoutParams f59487q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Hashtable<String, d0> f59488r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    x f59489s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f59490t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    a0 f59491u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b0 f59492v;

    public enum ViewType {
        POST_HEADER,
        POST_HEADER1,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_RICH_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_GAME,
        POST_GAME_RES_LINK,
        POST_FOOTER,
        EMPLOYEE_TAGS,
        POST_FOOTER1,
        DIVIDER
    }

    class a implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f59493b;

        a(final SimpleDraweeView val$view) {
            this.f59493b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumPostsAdapter.this.P0(id2, this.f59493b, imageInfo);
                if (imageInfo != null) {
                    d0 d0Var = ForumPostsAdapter.this.new d0();
                    d0Var.f59524a = imageInfo.getWidth();
                    d0Var.f59525b = imageInfo.getHeight();
                    ForumPostsAdapter.this.H(id2, d0Var);
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
            this.f59493b.setMinimumHeight(ForumPostsAdapter.this.f59486p);
        }
    }

    public class a0 extends com.join.mgps.customview.h implements View.OnClickListener {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f59495p = 1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f59496q = 2;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f59497r = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f59498d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f59499e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f59500f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f59501g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f59502h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f59503i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f59504j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f59505k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        String f59506l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        String f59507m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f59508n;

        public a0(Context context) {
            super(context);
            c();
            k();
        }

        private void k() {
            View viewInflate = LayoutInflater.from(this.f66438b).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
            this.f59498d = viewInflate.findViewById(R.id.btn_forum_comment_delete);
            this.f59499e = viewInflate.findViewById(R.id.btn_forum_comment_copy);
            this.f59500f = viewInflate.findViewById(R.id.divider_forum_comment_1);
            this.f59501g = viewInflate.findViewById(R.id.btn_forum_comment);
            this.f59502h = viewInflate.findViewById(R.id.divider_2);
            this.f59503i = viewInflate.findViewById(R.id.btn_forum_report);
            this.f59498d.setOnClickListener(this);
            this.f59499e.setOnClickListener(this);
            this.f59501g.setOnClickListener(this);
            this.f59503i.setOnClickListener(this);
            setContentView(viewInflate);
            setWidth(-2);
            setHeight(-2);
        }

        public void A(int rid) {
            this.f59505k = rid;
        }

        void c() {
            setAnimationStyle(0);
            setFocusable(false);
        }

        public int d() {
            return this.f59504j;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            this.f59504j = 0;
            this.f59505k = 0;
            this.f59506l = "";
            this.f59507m = "";
        }

        public View e() {
            return this.f59499e;
        }

        public View f() {
            return this.f59498d;
        }

        public int g() {
            return this.f59508n;
        }

        public String h() {
            return this.f59507m;
        }

        public String i() {
            return this.f59506l;
        }

        public int j() {
            return this.f59505k;
        }

        void l() {
            if (ForumPostsAdapter.this.f59492v == null) {
                return;
            }
            int i10 = this.f59508n;
            if (i10 == 1) {
                ForumPostsAdapter.this.f59492v.i(this.f59504j, this.f59506l);
            } else if (i10 == 2) {
                ForumPostsAdapter.this.f59492v.k(this.f59504j, this.f59505k, this.f59506l);
            }
        }

        void m() {
            if (ForumPostsAdapter.this.f59492v == null) {
                return;
            }
            ClipboardManager clipboardManager = (ClipboardManager) this.f66438b.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            clipboardManager.setPrimaryClip(ClipData.newPlainText("wufan", this.f59507m));
            if (clipboardManager.getText().toString().equals(this.f59507m.toString())) {
                com.join.mgps.Util.a3.b(this.f66438b).d("已复制到剪贴板！");
            }
        }

        void n() {
            if (ForumPostsAdapter.this.f59492v == null) {
                return;
            }
            int i10 = this.f59508n;
            if (i10 == 1) {
                ForumPostsAdapter.this.f59492v.d(this.f59504j);
            } else if (i10 == 2) {
                ForumPostsAdapter.this.f59492v.h(this.f59505k);
            }
        }

        void o() {
            if (ForumPostsAdapter.this.f59492v == null) {
                return;
            }
            int i10 = this.f59508n;
            if (i10 == 1) {
                ForumPostsAdapter.this.f59492v.j(this.f59504j);
            } else if (i10 == 2) {
                ForumPostsAdapter.this.f59492v.f(this.f59505k);
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
            View view = this.f59498d;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.f59501g;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.f59503i;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }

        public void q(int cid) {
            this.f59504j = cid;
        }

        public void r(int visibility) {
            View view = this.f59501g;
            if (view != null) {
                view.setVisibility(visibility);
            }
        }

        public void s(View copy) {
            this.f59499e = copy;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View anchor) {
            showAsDropDown(anchor, 0, (anchor.getMeasuredHeight() * (-1)) - this.f66438b.getResources().getDimensionPixelSize(R.dimen.mg_forum_popupwindow_height));
            b();
        }

        public void t(int visibility) {
            View view = this.f59499e;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59499e.setVisibility(0);
            } else {
                this.f59499e.setVisibility(8);
            }
        }

        public void u(View delete) {
            this.f59498d = delete;
        }

        public void v(int visibility) {
            View view = this.f59498d;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59500f.setVisibility(0);
            } else {
                this.f59500f.setVisibility(8);
            }
        }

        public void w(int eventFlag) {
            this.f59508n = eventFlag;
        }

        public void x(String mssage) {
            this.f59507m = mssage;
        }

        public void y(String nickname) {
            this.f59506l = nickname;
        }

        void z(int visibility) {
            View view = this.f59503i;
            if (view != null) {
                view.setVisibility(visibility);
            }
            if (visibility == 0) {
                this.f59502h.setVisibility(0);
            } else {
                this.f59502h.setVisibility(8);
            }
        }
    }

    class b implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f59510b;

        b(final SimpleDraweeView val$view) {
            this.f59510b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumPostsAdapter.this.w0(id2, this.f59510b, imageInfo);
                if (imageInfo != null) {
                    d0 d0Var = ForumPostsAdapter.this.new d0();
                    d0Var.f59524a = imageInfo.getWidth();
                    d0Var.f59525b = imageInfo.getHeight();
                    ForumPostsAdapter.this.H(id2, d0Var);
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
            SimpleDraweeView simpleDraweeView = this.f59510b;
            simpleDraweeView.setLayoutParams(ForumPostsAdapter.this.e0(simpleDraweeView.getContext()));
        }
    }

    public interface b0 {
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

    class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f59512b;

        c(final View val$view) {
            this.f59512b = val$view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            com.join.mgps.Util.h1.e("mPopWindow.setTouchInterceptor", event.toString());
            ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
            if (!forumPostsAdapter.Z(forumPostsAdapter.f59489s, event) || ForumPostsAdapter.this.a0(this.f59512b, event)) {
                return false;
            }
            ForumPostsAdapter.this.f59490t = true;
            return false;
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59522b;

        d(final int val$fid) {
            this.f59522b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.b(this.f59522b);
            }
        }
    }

    public class d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f59524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59525b;

        public d0() {
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.n();
            }
        }
    }

    public static class e0 implements j6.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewType f59528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f59529c;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59530a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59531b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59532c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59533d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f59534e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public long f59535f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59536g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f59537h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59538i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59539j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59540k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public boolean f59541l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public boolean f59542m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public boolean f59543n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public int f59544o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public int f59545p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public boolean f59546q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public String f59547r;

            public a() {
            }

            public a(boolean showDivider, int uid, int commentId, String avatarSrc, String nickName, long timestamps, boolean isPostHost, int floor, boolean isModerator, boolean officialAccount, int solveFlag, boolean showAdoptBtn, boolean showReport, boolean showDelete, int vip_level, int svip_level, boolean moderator, String member_honor) {
                this.f59530a = showDivider;
                this.f59531b = uid;
                this.f59532c = commentId;
                this.f59533d = avatarSrc;
                this.f59534e = nickName;
                this.f59535f = timestamps;
                this.f59536g = isPostHost;
                this.f59537h = floor;
                this.f59538i = isModerator;
                this.f59539j = officialAccount;
                this.f59540k = solveFlag;
                this.f59541l = showAdoptBtn;
                this.f59542m = showReport;
                this.f59543n = showDelete;
                this.f59544o = vip_level;
                this.f59545p = svip_level;
                this.f59546q = moderator;
                this.f59547r = member_honor;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59548a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59549b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public List<String> f59550c;

            public b() {
            }

            public b(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f59548a = imgUrl;
                this.f59549b = imgIndex;
                this.f59550c = imgUrlLarge;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59551a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59552b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59553c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59554d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59555e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59556f;

            public c() {
            }

            public c(int commentId, String message, String nickname, int uid, boolean showReport, boolean showDelete) {
                this.f59551a = commentId;
                this.f59552b = message;
                this.f59553c = nickname;
                this.f59554d = uid;
                this.f59555e = showReport;
                this.f59556f = showDelete;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59557a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ForumBean.ForumCommentBean f59558b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59559c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f59560d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59561e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59562f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59563g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59564h;

            public d(int commentId, ForumBean.ForumCommentBean commentBean, int myAuth, boolean showDivider, boolean isMyPost) {
                this.f59557a = commentId;
                this.f59558b = commentBean;
                this.f59559c = myAuth;
                this.f59560d = showDivider;
                this.f59561e = isMyPost;
            }
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f59565a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f59566b;

            public e(int height, int color) {
                this.f59565a = height;
                this.f59566b = color;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<RecommendLabelTag> f59567a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59568b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59569c;

            public f(List<RecommendLabelTag> employ_tags, int fid, String fname) {
                this.f59567a = employ_tags;
                this.f59568b = fid;
                this.f59569c = fname;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59570a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59571b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59572c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59573d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59574e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59575f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59576g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59577h;

            public g() {
            }

            public g(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f59570a = postId;
                this.f59575f = fid;
                this.f59571b = fname;
                this.f59572c = viewTotal;
                this.f59573d = commentTotal;
                this.f59574e = praiseTotal;
                this.f59576g = isPraise;
                this.f59577h = isShowFooterDivider;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59578a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ForumBean.GameInfo f59579b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59580c;

            public h(String pid, ForumBean.GameInfo gameInfo, String resource_url) {
                this.f59578a = pid;
                this.f59579b = gameInfo;
                this.f59580c = resource_url;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59581a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59582b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59583c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59584d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f59585e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59586f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59587g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59588h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59589i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f59590j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59591k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59592l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public String f59593m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59594n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public boolean f59595o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public String f59596p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public String f59597q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public int f59598r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            public boolean f59599s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            public String f59600t;

            public i() {
            }

            public i(boolean removeDivider, int uid, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, boolean isModerator, boolean officialAccount, int solveFlag, int vip_level, int svip_level, String battleTitle, String battleColor, boolean moderator, String member_honor, String fname, int fid, boolean isAsk, String askMoney) {
                this.f59581a = removeDivider;
                this.f59582b = uid;
                this.f59583c = avatarSrc;
                this.f59584d = nickName;
                this.f59585e = timestamps;
                this.f59586f = isTop;
                this.f59587g = pid;
                this.f59588h = isModerator;
                this.f59589i = officialAccount;
                this.f59590j = solveFlag;
                this.f59591k = vip_level;
                this.f59592l = svip_level;
                this.f59593m = battleTitle;
                this.f59594n = battleColor;
                this.f59595o = moderator;
                this.f59596p = member_honor;
                this.f59597q = fname;
                this.f59598r = fid;
                this.f59599s = isAsk;
                this.f59600t = askMoney;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59601a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59602b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59603c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f59604d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59605e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59606f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59607g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59608h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f59609i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f59610j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59611k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59612l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public String f59613m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59614n;

            public j() {
            }

            public j(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, boolean isModerator, boolean officialAccount, int solveFlag, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f59601a = removeDivider;
                this.f59602b = avatarSrc;
                this.f59603c = nickName;
                this.f59604d = timestamps;
                this.f59605e = isTop;
                this.f59606f = pid;
                this.f59607g = isModerator;
                this.f59608h = officialAccount;
                this.f59609i = solveFlag;
                this.f59610j = vip_level;
                this.f59611k = svip_level;
                this.f59613m = battleTitle;
                this.f59614n = battleColor;
                this.f59612l = uid;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59615a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f59616b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            List<String> f59617c;

            public k() {
            }

            public k(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f59615a = imgUrl;
                this.f59616b = imgIndex;
                this.f59617c = imgUrlLarge;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<String> f59618a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            List<String> f59619b;

            public l() {
            }

            public l(List<String> imgUrlList, List<String> imgUrlLargeList) {
                this.f59618a = imgUrlList;
                this.f59619b = imgUrlLargeList;
            }
        }

        public static class m {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59620a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public SpannableStringBuilder f59621b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59622c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59623d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59624e;

            public m() {
            }

            public m(boolean startWithBest, SpannableStringBuilder message, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59620a = startWithBest;
                this.f59621b = message;
                this.f59622c = isAsk;
                this.f59623d = askMoney;
                this.f59624e = tagInfos;
            }

            public m(boolean startWithBest, SpannableStringBuilder message, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59620a = startWithBest;
                this.f59621b = message;
                this.f59624e = tagInfos;
            }
        }

        public static class n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59625a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Spanned f59626b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59627c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59628d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59629e;

            public n(boolean startWithBest, Spanned message, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59625a = startWithBest;
                this.f59626b = message;
                this.f59627c = isAsk;
                this.f59628d = askMoney;
                this.f59629e = tagInfos;
            }
        }

        public static class o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59630a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59631b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59632c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59633d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59634e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public List<RecommendLabelTag> f59635f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59636g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f59637h;

            public o() {
            }

            public o(boolean isBest, String subject, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tag_list, int fid, String fname) {
                this.f59630a = isBest;
                this.f59631b = subject;
                this.f59632c = isAsk;
                this.f59633d = askMoney;
                this.f59634e = tagInfos;
                this.f59635f = tag_list;
                this.f59636g = fid;
                this.f59637h = fname;
            }
        }

        public static class p {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59638a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59639b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59640c;

            public p(String imgUrl, String videoUrl, String actionBarTitle) {
                this.f59638a = imgUrl;
                this.f59639b = videoUrl;
                this.f59640c = actionBarTitle;
            }
        }

        public e0() {
        }

        public <T> T a() {
            return (T) this.f59529c;
        }

        public ViewType b() {
            return this.f59528b;
        }

        public void c(Object obj) {
            this.f59529c = obj;
        }

        public void d(ViewType viewType) {
            this.f59528b = viewType;
        }

        @Override // j6.b
        public int getItemType() {
            return this.f59528b.ordinal();
        }

        public e0(ViewType viewType, Object obj) {
            this.f59528b = viewType;
            this.f59529c = obj;
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e0.a f59641b;

        f(final e0.a val$item) {
            this.f59641b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            boolean zBooleanValue;
            View view;
            com.join.mgps.Util.h1.e("v.setOnClickListener");
            x xVar = ForumPostsAdapter.this.f59489s;
            if (xVar != null && (view = xVar.f59695g) != null && view != v10) {
                view.setTag(Boolean.FALSE);
            }
            if (v10.getTag() == null) {
                v10.setTag(Boolean.TRUE);
                zBooleanValue = false;
            } else {
                zBooleanValue = ((Boolean) v10.getTag()).booleanValue();
            }
            if (zBooleanValue && !ForumPostsAdapter.this.f59490t) {
                v10.setTag(Boolean.FALSE);
                return;
            }
            ForumPostsAdapter.this.T0(v10, this.f59641b);
            v10.setTag(Boolean.TRUE);
            ForumPostsAdapter.this.f59490t = false;
        }
    }

    class g implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e0.c f59643b;

        g(final e0.c val$item) {
            this.f59643b = val$item;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.p(v10, this.f59643b.f59551a);
            }
            ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
            e0.c cVar = this.f59643b;
            forumPostsAdapter.S0(v10, 1, cVar.f59556f, cVar.f59555e, cVar.f59551a, 0, cVar.f59553c, cVar.f59552b);
            return true;
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59646c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59647d;

        h(final int val$cid, final int val$rid, final String val$rNickname) {
            this.f59645b = val$cid;
            this.f59646c = val$rid;
            this.f59647d = val$rNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.k(this.f59645b, this.f59646c, this.f59647d);
            }
        }
    }

    class i implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f59650c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f59651d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f59652e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f59653f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f59654g;

        i(final int val$cid, final boolean val$showDelete, final boolean val$showReport, final int val$rid, final String val$nickname, final String val$msg) {
            this.f59649b = val$cid;
            this.f59650c = val$showDelete;
            this.f59651d = val$showReport;
            this.f59652e = val$rid;
            this.f59653f = val$nickname;
            this.f59654g = val$msg;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.g(v10, this.f59649b);
            }
            ForumPostsAdapter.this.S0(v10, 2, this.f59650c, this.f59651d, this.f59649b, this.f59652e, this.f59653f, this.f59654g);
            return true;
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59656b;

        j(final ForumBean.GameInfo val$gameInfo) {
            this.f59656b = val$gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.I0(v10.getContext(), this.f59656b);
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f59659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f59661e;

        k(final ForumBean.GameInfo val$gameInfo, final DownloadTask val$downloadTask, final String val$postId, final String val$gameId) {
            this.f59658b = val$gameInfo;
            this.f59659c = val$downloadTask;
            this.f59660d = val$postId;
            this.f59661e = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f59658b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f59658b.getGame_down_url_remote());
                UtilsMy.j3(this.f59659c, ForumPostsAdapter.this.f59481k);
                IntentUtil.getInstance().intentActivity(ForumPostsAdapter.this.f59481k, intentDateBean);
                return;
            }
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).s0(this.f59660d, this.f59661e, AccountUtil_.getInstance_(context).getUid());
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.e(this.f59661e);
            }
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59663b;

        l(final String val$gameId) {
            this.f59663b = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.e(this.f59663b);
            }
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59665b;

        m(final String val$position) {
            this.f59665b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f59665b);
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.c(i10);
            }
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59667b;

        n(final int val$fid) {
            this.f59667b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f59667b);
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59669b;

        o(final int val$gagUid) {
            this.f59669b = val$gagUid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59669b).start();
            String uid = AccountUtil_.getInstance_(view.getContext()).getUid();
            if (TextUtils.isEmpty(uid)) {
                return;
            }
            if (uid.equals(this.f59669b + "") || ForumPostsAdapter.this.f59492v == null) {
                return;
            }
            ForumPostsAdapter.this.f59492v.m(this.f59669b);
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f59672c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59673d;

        p(final String val$postId, final String val$gameId, final ForumBean.GameInfo val$gameInfo) {
            this.f59671b = val$postId;
            this.f59672c = val$gameId;
            this.f59673d = val$gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).t0(this.f59671b, this.f59672c, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.r0.J0(v10.getContext(), this.f59673d, 13203);
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e0.j f59675b;

        q(final e0.j val$item) {
            this.f59675b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59675b.f59612l).start();
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59677b;

        r(final int val$pid) {
            this.f59677b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumPostsAdapter.this.f59481k, R.anim.scale_reset));
            if (ForumPostsAdapter.this.f59492v != null) {
                ForumPostsAdapter.this.f59492v.a(this.f59677b);
            }
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59679b;

        s(final int val$positionx) {
            this.f59679b = val$positionx;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsAdapter.this.f59482l.z() != this.f59679b || ForumPostsAdapter.this.f59482l.C() == 5) {
                return;
            }
            ForumPostsAdapter.this.f59482l.s();
        }
    }

    class t implements View.OnClickListener {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.join.mgps.dialog.c0 f59682b;

            a(final com.join.mgps.dialog.c0 val$mCopyDialog) {
                this.f59682b = val$mCopyDialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ForumPostsCopyActivity_.intent(ForumPostsAdapter.this.f59481k).a(ForumPostsAdapter.this.f59480j).start();
                this.f59682b.dismiss();
            }
        }

        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(ForumPostsAdapter.this.f59480j)) {
                return;
            }
            com.join.mgps.dialog.c0 c0Var = new com.join.mgps.dialog.c0(ForumPostsAdapter.this.f59481k);
            c0Var.show();
            c0Var.a(new a(c0Var));
        }
    }

    class u implements View.OnClickListener {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.join.mgps.dialog.c0 f59685b;

            a(final com.join.mgps.dialog.c0 val$mCopyDialog) {
                this.f59685b = val$mCopyDialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ForumPostsCopyActivity_.intent(ForumPostsAdapter.this.f59481k).a(ForumPostsAdapter.this.f59480j).start();
                this.f59685b.dismiss();
            }
        }

        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(ForumPostsAdapter.this.f59480j)) {
                return;
            }
            com.join.mgps.dialog.c0 c0Var = new com.join.mgps.dialog.c0(ForumPostsAdapter.this.f59481k);
            c0Var.show();
            c0Var.a(new a(c0Var));
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e0.a f59687b;

        v(final e0.a val$item) {
            this.f59687b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59687b.f59531b).start();
        }
    }

    class w implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f59689b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59690c;

        w(final List val$raw_pic_list, final int val$imgIndex) {
            this.f59689b = val$raw_pic_list;
            this.f59690c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f59689b.size()];
            this.f59689b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f59690c, strArr);
        }
    }

    public class x extends com.join.mgps.customview.h implements View.OnClickListener {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f59692d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f59693e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f59694f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f59695g;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                x.this.f59692d = v10.getId();
                ForumPostsAdapter.this.f59489s.dismiss();
            }
        }

        public x(Context context) {
            super(context);
            View viewInflate = LayoutInflater.from(this.f66438b).inflate(R.layout.mg_forum_forum_post_a_comment_reply_popwindow, (ViewGroup) null);
            int dimension = (int) this.f66438b.getResources().getDimension(R.dimen.wdp346);
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
            return this.f59693e;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            View view = this.f59695g;
            if (view != null) {
                view.setClickable(true);
                this.f59695g.setFocusable(true);
            }
            switch (this.f59692d) {
                case R.id.delete /* 2131362947 */:
                    if (ForumPostsAdapter.this.f59492v != null) {
                        ForumPostsAdapter.this.f59492v.d(this.f59693e);
                    }
                    break;
                case R.id.reply /* 2131366766 */:
                    if (ForumPostsAdapter.this.f59492v != null) {
                        ForumPostsAdapter.this.f59492v.i(this.f59693e, this.f59694f);
                    }
                    break;
                case R.id.report /* 2131366770 */:
                    if (ForumPostsAdapter.this.f59492v != null) {
                        ForumPostsAdapter.this.f59492v.l();
                    }
                    break;
                case R.id.resolve /* 2131366780 */:
                    if (ForumPostsAdapter.this.f59492v != null) {
                        ForumPostsAdapter.this.f59492v.o(this.f59693e);
                    }
                    break;
            }
        }

        public String e() {
            return this.f59694f;
        }

        public void f(int cid) {
            this.f59693e = cid;
        }

        public void h(String cNickname) {
            this.f59694f = cNickname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View anchor, int xoff, int yoff) {
            this.f59695g = anchor;
            super.showAsDropDown(anchor, xoff, yoff);
            b();
            this.f59692d = 0;
        }
    }

    class y extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f59698b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f59699c;

        public y(Context context, String url) {
            this.f59698b = context;
            this.f59699c = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(this.f59698b, this.f59699c);
        }
    }

    class z implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f59701b;

        public z(Object business) {
            this.f59701b = business;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10;
            int pay_game_amount;
            int pay_game_amount2;
            Context context = view.getContext();
            DownloadTask downloadTask = (DownloadTask) this.f59701b;
            if (downloadTask != null) {
                downloadTask.getVer();
                downloadTask.getVer_name();
                downloadTask.getPackageName();
                downloadTask.getTipBeans();
                downloadTask.getSource_down_url();
                List<DownloadUrlBean> tp_down_url = downloadTask.getTp_down_url();
                int other_down_switch = downloadTask.getOther_down_switch();
                int cdn_down_switch = downloadTask.getCdn_down_switch();
                Object obj = this.f59701b;
                if (obj instanceof CollectionBeanSub) {
                    CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj;
                    downloadTask = collectionBeanSub.getDownloadTask();
                    collectionBeanSub.getVer();
                    if (collectionBeanSub.getPay_tag_info() != null) {
                        pay_game_amount2 = collectionBeanSub.getPay_tag_info().getPay_game_amount();
                        i10 = pay_game_amount2;
                    } else {
                        pay_game_amount2 = 0;
                        i10 = 0;
                    }
                    if (pay_game_amount2 > 0) {
                        t6.e0.o().p(collectionBeanSub.getCrc_sign_id());
                    }
                } else if (obj instanceof RecomDatabeanBusiness) {
                    AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                    if (game_info.getPay_tag_info() != null) {
                        pay_game_amount = game_info.getPay_tag_info().getPay_game_amount();
                        i10 = pay_game_amount;
                    } else {
                        pay_game_amount = 0;
                        i10 = 0;
                    }
                    if (pay_game_amount > 0) {
                        t6.e0.o().p(game_info.getCrc_sign_id());
                    }
                } else {
                    i10 = 0;
                }
                if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    intentDateBean.setLink_type_val(downloadTask.getUrl());
                    UtilsMy.j3(downloadTask, context);
                    IntentUtil.getInstance().intentActivity(context, intentDateBean);
                    return;
                }
                int status = downloadTask.getStatus();
                if (UtilsMy.y0(i10, downloadTask.getCrc_link_type_val()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.l(context, downloadTask);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.k4(context, downloadTask);
                                return;
                            }
                            if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (com.join.android.app.common.utils.m.j(context)) {
                                            UtilsMy.O4(context, downloadTask);
                                            return;
                                        } else {
                                            com.join.mgps.Util.a3.b(context).d("无网络连接");
                                            return;
                                        }
                                    }
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.m.j(context)) {
                                                    com.join.mgps.Util.a3.b(context).d("无网络连接");
                                                } else {
                                                    UtilsMy.X2(context, downloadTask);
                                                }
                                                break;
                                            case 11:
                                                UtilsMy.w4(downloadTask, context);
                                                break;
                                        }
                                        return;
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, context);
                        return;
                    }
                    com.php25.PDownload.d.i(downloadTask);
                    return;
                }
                if (UtilsMy.y0(i10, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.z4(context, downloadTask.getCrc_link_type_val());
                    return;
                }
                Object obj2 = this.f59701b;
                if (obj2 instanceof CollectionBeanSub) {
                    CollectionBeanSub collectionBeanSub2 = (CollectionBeanSub) obj2;
                    UtilsMy.z1(downloadTask, collectionBeanSub2);
                    if (UtilsMy.o1(context, downloadTask)) {
                        return;
                    }
                    if (collectionBeanSub2.getDown_status() == 5) {
                        UtilsMy.l1(context, downloadTask);
                        return;
                    } else {
                        UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                        return;
                    }
                }
                if (obj2 instanceof RecomDatabeanBusiness) {
                    AppBean game_info2 = ((RecomDatabeanBusiness) obj2).getSub().get(0).getGame_info();
                    UtilsMy.y1(downloadTask, game_info2);
                    if (UtilsMy.o1(context, downloadTask)) {
                        return;
                    }
                    if (game_info2.getDown_status() == 5) {
                        UtilsMy.l1(context, downloadTask);
                    } else {
                        UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                }
            }
        }
    }

    public ForumPostsAdapter(Context mContext, com.join.android.app.component.video.c helper) {
        super(new ArrayList());
        this.f59478h = getClass().getSimpleName();
        this.f59480j = "";
        this.f59485o = 0;
        this.f59486p = 0;
        this.f59490t = false;
        this.f59492v = null;
        this.f59481k = mContext;
        this.f59482l = helper;
        this.f59479i = j0(mContext);
        this.f59485o = i0(mContext);
        this.f59486p = h0(mContext);
        r(ViewType.POST_HEADER.ordinal(), R.layout.mg_forum_post_activity_item_post_header);
        r(ViewType.POST_HEADER1.ordinal(), R.layout.mg_forum_post_activity_item_post_header1);
        r(ViewType.POST_FOOTER.ordinal(), R.layout.mg_forum_post_activity_item_post_footer);
        r(ViewType.POST_FOOTER1.ordinal(), R.layout.mg_forum_post_activity_item_post_footer1);
        r(ViewType.POST_GAME_RES_LINK.ordinal(), R.layout.mg_forum_post_activity_item_post_game_res_link);
        r(ViewType.POST_GAME.ordinal(), R.layout.mg_forum_post_activity_item_post_game);
        r(ViewType.POST_IMAGE.ordinal(), R.layout.mg_forum_post_activity_item_post_image);
        r(ViewType.POST_VIDEO.ordinal(), R.layout.mg_forum_post_activity_item_post_videojc);
        r(ViewType.POST_IMAGE_THUMBNAIL.ordinal(), R.layout.mg_forum_post_activity_item_post_image_thumbnail);
        r(ViewType.POST_MESSAGE.ordinal(), R.layout.mg_forum_post_activity_item_post_message);
        r(ViewType.POST_RICH_MESSAGE.ordinal(), R.layout.mg_forum_post_activity_item_post_rich_message);
        r(ViewType.POST_SUBJECT.ordinal(), R.layout.mg_forum_post_activity_item_post_subject);
        r(ViewType.EMPLOYEE_TAGS.ordinal(), R.layout.mg_forum_post_activity_item_employee_tags);
        r(ViewType.DIVIDER.ordinal(), R.layout.mg_forum_post_activity_item_commnet_divider);
        l0();
    }

    private void I(com.join.mgps.base.b helper, e0 viewBean) {
        String string;
        try {
            e0.a aVar = (e0.a) viewBean.a();
            if (aVar == null) {
                return;
            }
            helper.setGone(R.id.divider, aVar.f59530a);
            try {
                ((VipView) helper.getView(R.id.vipFlag)).setVipData(aVar.f59544o, aVar.f59545p);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            helper.setGone(R.id.flagBestAnswer, aVar.f59540k == 1);
            helper.setText(R.id.comment_nickname, aVar.f59534e);
            helper.setText(R.id.comment_add_time, com.join.android.app.common.utils.i.a(aVar.f59535f * 1000));
            com.join.android.app.common.utils.l.y((SimpleDraweeView) helper.getView(R.id.comment_avatar_src), aVar.f59533d);
            helper.getView(R.id.comment_avatar_src).setOnClickListener(new v(aVar));
            helper.setGone(R.id.forum_post_host, aVar.f59536g);
            helper.setGone(R.id.isOfficial, aVar.f59539j);
            if (aVar.f59538i) {
                helper.setTextColor(R.id.comment_nickname, this.f59481k.getResources().getColor(R.color.app_blue_color));
                helper.setGone(R.id.forum_post_moderator, true);
            } else {
                UtilsMy.R3(this.f59481k, (TextView) helper.getView(R.id.comment_nickname), aVar.f59544o, aVar.f59545p, R.color.forum_nickname_color);
                helper.setGone(R.id.forum_post_moderator, false);
            }
            helper.setGone(R.id.moderator, aVar.f59546q);
            if (TextUtils.isEmpty(aVar.f59547r)) {
                helper.setGone(R.id.member_honor, false);
            } else {
                helper.setGone(R.id.member_honor, true);
                helper.setText(R.id.member_honor, aVar.f59547r);
            }
            int i10 = aVar.f59537h;
            if (i10 == 1) {
                string = this.f59481k.getResources().getString(R.string.comment_item_floor_1st);
            } else {
                string = i10 == 2 ? this.f59481k.getResources().getString(R.string.comment_item_floor_2nd) : this.f59481k.getResources().getString(R.string.comment_item_floor, Integer.valueOf(aVar.f59537h));
            }
            helper.setText(R.id.comment_floor, string);
            G0(helper.itemView);
            F0(helper.getView(R.id.comment_reply), aVar);
            com.join.mgps.Util.r0.S0(helper.getView(R.id.comment_avatar_src), helper.getView(R.id.comment_nickname), helper.getView(R.id.comment_add_time));
            com.join.mgps.Util.r0.U0(helper.getView(R.id.vipFlag));
            O0(helper.getView(R.id.comment_avatar_src), aVar.f59531b);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void J(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.b bVar = (e0.b) viewBean.a();
            if (bVar == null || helper.getView(R.id.comment_img) == null) {
                return;
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.comment_img);
            t0(this.f59481k, bVar.f59550c.get(bVar.f59549b));
            d0 d0VarG0 = g0(bVar.f59548a);
            if (d0VarG0 != null) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(d0VarG0.f59524a, d0VarG0.f59525b);
                int i10 = (int) (4 * this.f59481k.getResources().getDisplayMetrics().density);
                layoutParams.setMargins(0, i10, 0, i10);
                simpleDraweeView.setLayoutParams(layoutParams);
                com.join.android.app.common.utils.l.h(simpleDraweeView, bVar.f59548a);
            } else {
                o0(simpleDraweeView, bVar.f59548a);
            }
            com.join.mgps.Util.r0.C1(simpleDraweeView, bVar.f59549b, bVar.f59550c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void K(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.c cVar = (e0.c) viewBean.a();
            if (cVar == null) {
                return;
            }
            helper.setText(R.id.comment_message, cVar.f59552b);
            m0((TextView) helper.getView(R.id.comment_message));
            G0(helper.itemView);
            E0(helper.getView(R.id.comment_message), cVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void K0(View v10, final String gameId) {
        v10.setOnClickListener(new l(gameId));
    }

    private void L(com.join.mgps.base.b helper, e0 viewBean) {
        if (viewBean == null) {
            return;
        }
        try {
            e0.e eVar = (e0.e) viewBean.a();
            helper.setBackgroundColor(R.id.v_view, eVar.f59566b);
            helper.getView(R.id.v_view).setLayoutParams(new ViewGroup.LayoutParams(-1, eVar.f59565a));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void L0(View v10, final int fid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new n(fid));
    }

    private void M(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.f fVar = (e0.f) viewBean.a();
            if (fVar == null) {
                return;
            }
            if (this.f59483m == null) {
                this.f59483m = new c0(this.f59481k);
            }
            this.f59483m.d(fVar.f59568b);
            this.f59483m.e(fVar.f59569c);
            this.f59483m.c().clear();
            this.f59483m.c().addAll(fVar.f59567a);
            ((HListView) helper.getView(R.id.list)).setAdapter((ListAdapter) this.f59483m);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void M0(View v10, final ForumBean.GameInfo gameInfo) {
        v10.setOnClickListener(new j(gameInfo));
    }

    private void N(com.join.mgps.base.b helper, e0 viewBean) {
    }

    private void O(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.g gVar = (e0.g) viewBean.a();
            if (gVar == null) {
                return;
            }
            helper.setGone(R.id.post_footer_divider, gVar.f59577h);
            helper.setText(R.id.forum_name, gVar.f59571b);
            helper.setGone(R.id.forum_name, com.join.mgps.Util.t2.i(gVar.f59571b));
            com.join.mgps.Util.r0.D1((TextView) helper.getView(R.id.forum_post_view), gVar.f59572c + "", "0");
            com.join.mgps.Util.r0.D1((TextView) helper.getView(R.id.forum_post_commit), gVar.f59573d + "", "0");
            q0(helper.itemView, gVar.f59576g, gVar.f59574e);
            ((View) helper.getView(R.id.forum_post_praise).getParent()).setOnClickListener(new r(gVar.f59570a));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void O0(View v10, final int gagUid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new o(gagUid));
    }

    private void P(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            final e0.h hVar = (e0.h) viewBean.a();
            if (hVar == null) {
                return;
            }
            ForumBean.GameInfo gameInfo = hVar.f59579b;
            gameInfo.getGame_id();
            helper.setBackgroundRes(R.id.mgListviewItemInstall, R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f59481k.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) helper.getView(R.id.mgListviewItemInstall).getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            helper.getView(R.id.mgListviewItemInstall).setLayoutParams(layoutParams);
            helper.setText(R.id.mgListviewItemInstall, "打开");
            helper.setText(R.id.mgListviewItemAppname, gameInfo.getGame_name());
            com.join.android.app.common.utils.l.j((SimpleDraweeView) helper.getView(R.id.mgListviewItemIcon), gameInfo.getGame_ico_remote(), com.join.android.app.common.utils.l.B(this.f59481k));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f62154b.n0(hVar, view);
                }
            };
            helper.getView(R.id.mgListviewItemInstall).setOnClickListener(onClickListener);
            helper.getView(R.id.relateLayoutApp).setOnClickListener(onClickListener);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup.LayoutParams P0(String s10, final View view, com.facebook.imagepipeline.image.g imageInfo) {
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
        com.join.mgps.Util.h1.e(this.f59478h + "setPostImageParam-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f10 + " itemHeight=" + i10 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        view.setMinimumHeight(0);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    private void Q(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.h hVar = (e0.h) viewBean.a();
            if (hVar == null) {
                return;
            }
            ForumBean.GameInfo gameInfo = hVar.f59579b;
            String str = hVar.f59578a;
            String game_id = gameInfo.getGame_id();
            helper.setBackgroundRes(R.id.mgListviewItemInstall, R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f59481k.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) helper.getView(R.id.mgListviewItemInstall).getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            helper.getView(R.id.mgListviewItemInstall).setLayoutParams(layoutParams);
            helper.setText(R.id.mgListviewItemAppname, gameInfo.getGame_name());
            helper.setText(R.id.mgListviewItemDescribe, gameInfo.getGame_desc());
            String game_size = gameInfo.getGame_size();
            com.join.android.app.common.utils.l.j((SimpleDraweeView) helper.getView(R.id.mgListviewItemIcon), gameInfo.getGame_ico_remote(), com.join.android.app.common.utils.l.B(this.f59481k));
            List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
            U0(helper, 0);
            DownloadTask downloadTask = gameInfo.getDownloadTask();
            if (downloadTask != null) {
                C0(helper, downloadTask);
            } else {
                if (gameInfo.getPay_tag_info() == null || gameInfo.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(gameInfo.getGame_id())) {
                    A0(helper.getView(R.id.mgListviewItemInstall), gameInfo.getDown_status());
                } else {
                    B0((TextView) helper.getView(R.id.mgListviewItemInstall), gameInfo.getPay_tag_info().getPay_game_amount());
                }
                helper.getView(R.id.mgListviewItemInstall).setOnClickListener(new k(gameInfo, downloadTask, str, game_id));
            }
            if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
                helper.setGone(R.id.tipsLayout, false);
                helper.setBackgroundRes(R.id.mgListviewItemInstall, R.drawable.recom_blue_butn);
                helper.setText(R.id.mgListviewItemInstall, "开始");
                helper.setTextColor(R.id.mgListviewItemInstall, this.f59481k.getResources().getColor(R.color.app_blue_color));
            } else {
                helper.setGone(R.id.tipsLayout, true);
                com.join.mgps.Util.r0.c(game_tag_info, (LinearLayout) helper.getView(R.id.tipsLayout), this.f59481k);
                UtilsMy.K(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, (LinearLayout) helper.getView(R.id.tipsLayout), this.f59481k);
                UtilsMy.A3(gameInfo.getSp_tag_info(), helper.itemView, gameInfo.getDownloadTask());
            }
            helper.getView(R.id.relateLayoutApp).setOnClickListener(new p(str, game_id, gameInfo));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Q0(View v10, CharSequence text) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setText(text);
        } else if (v10 instanceof Button) {
            ((Button) v10).setText(text);
        }
    }

    private void R(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.i iVar = (e0.i) viewBean.a();
            if (iVar == null) {
                return;
            }
            if (iVar.f59590j != 1) {
                helper.setGone(R.id.flagBestAnswer, false);
            } else {
                helper.setGone(R.id.flagBestAnswer, true);
            }
            helper.setText(R.id.forum_post_add_time, "发布于 " + com.join.android.app.common.utils.i.a(iVar.f59585e * 1000));
            helper.setText(R.id.groupName, iVar.f59597q);
            L0(helper.getView(R.id.groupParent), iVar.f59598r);
            G0(helper.itemView);
            helper.setGone(R.id.forumExtFunc, false);
            J0(helper.getView(R.id.forumExtFunc), iVar.f59587g);
            com.join.mgps.Util.r0.S0(helper.getView(R.id.forum_post_add_time));
            if (!iVar.f59599s) {
                helper.setGone(R.id.topMoneyTx, false);
                return;
            }
            helper.setText(R.id.topMoneyTx, "赏" + iVar.f59600t + "铜板");
            ((TextView) helper.getView(R.id.topMoneyTx)).setGravity(17);
            helper.setGone(R.id.topMoneyTx, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void R0(View v10, int color) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setTextColor(color);
        } else if (v10 instanceof Button) {
            ((Button) v10).setTextColor(color);
        }
    }

    private void S(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.j jVar = (e0.j) viewBean.a();
            if (jVar == null) {
                return;
            }
            try {
                ((VipView) helper.getView(R.id.vipFlag)).setVipData(jVar.f59610j, jVar.f59611k);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (jVar.f59609i != 1) {
                helper.setGone(R.id.flagBestAnswer, false);
            } else {
                helper.setGone(R.id.flagBestAnswer, true);
            }
            helper.setGone(R.id.forumExtFunc, true);
            helper.setGone(R.id.forum_post_divider, !jVar.f59601a);
            helper.setGone(R.id.forum_post_host, true);
            helper.setText(R.id.forum_post_nickname, jVar.f59603c);
            helper.setText(R.id.forum_post_add_time, com.join.android.app.common.utils.i.a(jVar.f59604d * 1000));
            helper.setGone(R.id.forum_post_stickie, jVar.f59605e);
            helper.setGone(R.id.officialIcon, jVar.f59608h);
            if (jVar.f59607g) {
                helper.setTextColor(R.id.forum_post_nickname, this.f59481k.getResources().getColor(R.color.app_blue_color));
                helper.setGone(R.id.forum_post_moderator, true);
            } else {
                UtilsMy.R3(this.f59481k, (TextView) helper.getView(R.id.forum_post_nickname), jVar.f59610j, jVar.f59611k, R.color.forum_nickname_color);
                helper.setGone(R.id.forum_post_moderator, false);
            }
            com.join.android.app.common.utils.l.y((SimpleDraweeView) helper.getView(R.id.forum_post_avatar_src), jVar.f59602b);
            helper.getView(R.id.forum_post_avatar_src).setOnClickListener(new q(jVar));
            G0(helper.itemView);
            helper.setGone(R.id.forumExtFunc, false);
            J0(helper.getView(R.id.forumExtFunc), jVar.f59606f);
            com.join.mgps.Util.r0.S0(helper.getView(R.id.forum_post_avatar_src), helper.getView(R.id.forum_post_nickname), helper.getView(R.id.forum_post_add_time));
            com.join.mgps.Util.r0.U0(helper.getView(R.id.vipFlag));
            String str = jVar.f59613m;
            String str2 = jVar.f59614n;
            if (helper.getView(R.id.copperTitleTv) != null) {
                if (TextUtils.isEmpty(str)) {
                    helper.setGone(R.id.copperTitleTv, false);
                    return;
                }
                helper.setGone(R.id.copperTitleTv, true);
                helper.setText(R.id.copperTitleTv, str);
                Drawable drawable = this.f59481k.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                helper.getView(R.id.copperTitleTv).setBackgroundDrawable(drawable);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void T(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.l lVar = (e0.l) viewBean.a();
            if (lVar == null) {
                return;
            }
            u0((RelativeLayout) helper.getView(R.id.forum_post_media_container), lVar.f59618a, lVar.f59619b);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0(final View view, final e0.a item) {
        if (item == null) {
            return;
        }
        x xVar = this.f59489s;
        if (xVar != null && xVar.isShowing()) {
            this.f59489s.dismiss();
        }
        if (this.f59489s == null) {
            this.f59489s = new x(this.f59481k);
        }
        this.f59489s.f(item.f59532c);
        this.f59489s.h(item.f59534e);
        int dimension = (int) this.f59481k.getResources().getDimension(R.dimen.wdp378);
        int dimension2 = (int) this.f59481k.getResources().getDimension(R.dimen.wdp89);
        int dimension3 = (int) this.f59481k.getResources().getDimension(R.dimen.wdp72);
        if (item.f59541l) {
            this.f59489s.getContentView().findViewById(R.id.resolve).setVisibility(0);
            this.f59489s.getContentView().findViewById(R.id.v_resolve).setVisibility(0);
        } else {
            this.f59489s.getContentView().findViewById(R.id.resolve).setVisibility(8);
            this.f59489s.getContentView().findViewById(R.id.v_resolve).setVisibility(8);
            dimension -= dimension3;
        }
        if (item.f59542m) {
            this.f59489s.getContentView().findViewById(R.id.report).setVisibility(0);
            this.f59489s.getContentView().findViewById(R.id.v_report).setVisibility(0);
        } else {
            this.f59489s.getContentView().findViewById(R.id.report).setVisibility(8);
            this.f59489s.getContentView().findViewById(R.id.v_report).setVisibility(8);
            dimension -= dimension3;
        }
        if (item.f59543n) {
            this.f59489s.getContentView().findViewById(R.id.delete).setVisibility(0);
            this.f59489s.getContentView().findViewById(R.id.v_delete).setVisibility(0);
        } else {
            this.f59489s.getContentView().findViewById(R.id.delete).setVisibility(8);
            this.f59489s.getContentView().findViewById(R.id.v_delete).setVisibility(8);
            dimension -= dimension3;
        }
        this.f59489s.setWidth(dimension);
        int width = this.f59489s.getWidth();
        int height = this.f59489s.getHeight();
        int i10 = -width;
        if (height != 0) {
            dimension2 = height;
        }
        this.f59489s.showAsDropDown(view, i10, -((dimension2 / 2) + (view.getMeasuredHeight() / 2)));
        this.f59489s.setTouchInterceptor(new c(view));
    }

    private void U(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.k kVar = (e0.k) viewBean.a();
            if (kVar == null) {
                return;
            }
            s0(this.f59481k, kVar.f59617c.get(kVar.f59616b));
            d0 d0VarG0 = g0(kVar.f59615a);
            if (d0VarG0 != null) {
                helper.getView(R.id.img).setLayoutParams(new RelativeLayout.LayoutParams(d0VarG0.f59524a, d0VarG0.f59525b));
                com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.img), kVar.f59615a);
            } else {
                p0((SimpleDraweeView) helper.getView(R.id.img), kVar.f59615a);
            }
            com.join.mgps.Util.r0.C1((ImageView) helper.getView(R.id.img), kVar.f59616b, kVar.f59617c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void U0(com.join.mgps.base.b holder, int type) {
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

    private void V(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.m mVar = (e0.m) viewBean.a();
            if (mVar == null) {
                return;
            }
            TextView textView = (TextView) helper.getView(R.id.forum_post_message);
            ((TextView) helper.getView(R.id.forum_post_message)).setLetterSpacing(0.02f);
            m0(textView);
            textView.setTextColor(this.f59481k.getResources().getColor(R.color.forum_post_detail_item_message));
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setMaxLines(Integer.MAX_VALUE);
            textView.setOnClickListener(new t());
            z0(textView, mVar.f59621b, mVar.f59620a, mVar.f59622c, mVar.f59623d, mVar.f59624e);
            G0(helper.itemView);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void W(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.n nVar = (e0.n) viewBean.a();
            if (nVar == null) {
                return;
            }
            TextView textView = (TextView) helper.getView(R.id.forum_post_message);
            m0(textView);
            textView.setOnClickListener(new u());
            textView.setText(nVar.f59626b);
            G0(helper.itemView);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void X(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.o oVar = (e0.o) viewBean.a();
            if (oVar == null) {
                return;
            }
            TextView textView = (TextView) helper.getView(R.id.forum_post_subject);
            textView.setTextSize(0, this.f59481k.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_subject_size));
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            y0(textView, oVar.f59631b, oVar.f59630a, oVar.f59632c, oVar.f59633d, oVar.f59634e, oVar.f59635f, oVar.f59636g, oVar.f59637h);
            G0(helper.itemView);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Y(com.join.mgps.base.b helper, e0 viewBean) {
        try {
            e0.p pVar = (e0.p) viewBean.a();
            if (pVar == null) {
                return;
            }
            String strJ = pVar.f59639b;
            String str = pVar.f59638a;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.bannerView);
            int layoutPosition = helper.getLayoutPosition();
            if (simpleDraweeView != null) {
                simpleDraweeView.setTag(Integer.valueOf(layoutPosition));
                simpleDraweeView.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f59485o));
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.video_bg, str);
                simpleDraweeView.setOnClickListener(new s(layoutPosition));
            }
            FrameLayout frameLayout = (FrameLayout) helper.getView(R.id.videoContner);
            if (frameLayout != null) {
                frameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f59485o));
                com.danikula.videocache.i iVar = this.f59479i;
                if (iVar != null) {
                    strJ = iVar.j(strJ);
                }
                if (com.join.mgps.Util.t2.i(strJ)) {
                    this.f59482l.d(layoutPosition, new com.join.android.app.component.video.c.l(layoutPosition, strJ, str), new boolean[0]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Z(PopupWindow w10, MotionEvent ev) {
        View contentView;
        if (w10 == null || ev == null || (contentView = w10.getContentView()) == null) {
            return false;
        }
        return !a0(contentView, ev);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a0(View v10, MotionEvent ev) {
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
    public LinearLayout.LayoutParams e0(Context context) {
        if (context == null) {
            return null;
        }
        if (this.f59487q == null) {
            Resources resources = context.getResources();
            int i10 = resources.getDisplayMetrics().widthPixels;
            float f10 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i10 - resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding)) - (30 * f10));
            int i11 = (int) (4 * f10);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, (int) ((dimensionPixelSize * 1.0f) / 1.5f));
            layoutParams.setMargins(0, i11, 0, i11);
            this.f59487q = layoutParams;
        }
        return this.f59487q;
    }

    private int h0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59486p == 0) {
            Resources resources = context.getResources();
            this.f59486p = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.5f);
        }
        return this.f59486p;
    }

    private int i0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59485o == 0) {
            Resources resources = context.getResources();
            this.f59485o = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f59485o;
    }

    private void l0() {
        if (this.f59484n == null) {
            this.f59484n = k0();
        }
    }

    private void m0(TextView tv2) {
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
                    spannableStringBuilder.setSpan(new y(tv2.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            tv2.setText(spannableStringBuilder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(e0.h hVar, View view) {
        if (TextUtils.isEmpty(hVar.f59580c)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(hVar.f59580c);
        IntentUtil.getInstance().intentActivity(this.f59481k, intentDateBean);
    }

    private void q0(View parent, boolean like, int count) {
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

    private void t0(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            d0 d0Var = new d0();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (resources.getDisplayMetrics().density * 40.0f));
            d0Var.f59524a = dimensionPixelSize;
            d0Var.f59525b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            H(imgUrl, d0Var);
        }
    }

    private void u0(RelativeLayout container, final List<String> image_list, final List<String> raw_pic_list) {
        if (image_list == null || image_list.size() == 0) {
            container.setVisibility(8);
            return;
        }
        if (this.f59484n == null) {
            this.f59484n = k0();
        }
        TextView textView = (TextView) container.findViewById(R.id.images_count);
        if (image_list.size() > 3) {
            textView.setVisibility(0);
            textView.setText("共" + image_list.size() + "张");
        } else {
            textView.setVisibility(8);
        }
        int i10 = (int) (this.f59481k.getResources().getDisplayMetrics().density * 6.0f);
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) container.findViewById(iArr[i11]);
            LinearLayout.LayoutParams layoutParams = this.f59484n;
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
                simpleDraweeView.setOnClickListener(new w(raw_pic_list, i11));
            } else {
                simpleDraweeView.setVisibility(8);
            }
        }
    }

    private void y0(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, int fid, String fname) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.r0.h(tv2.getContext(), spannableStringBuilder, tagInfos);
        com.join.mgps.Util.r0.i(tv2.getContext(), spannableStringBuilder, tags, fid, fname);
        if (TextUtils.isEmpty(message)) {
            message = "";
        }
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder);
    }

    private void z0(TextView tv2, SpannableStringBuilder message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.r0.h(tv2.getContext(), spannableStringBuilder, tagInfos);
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder.toString().replace("<br/>", ""));
    }

    void A0(View view, int status) {
        view.setEnabled(true);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(-12802819);
            if (status == 3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            if (status != 2) {
                textView.setText(this.f59481k.getResources().getString(R.string.download_status_download));
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            textView.setText("即将开放");
            textView.setTextSize(2, 11.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (view instanceof Button) {
            Button button = (Button) view;
            button.setTextColor(-12802819);
            if (status == 3) {
                button.setText(button.getResources().getString(R.string.download_status_pre_download));
                button.setTextSize(2, 12.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            if (status != 2) {
                button.setText(this.f59481k.getResources().getString(R.string.download_status_download));
                button.setTextSize(2, 13.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            button.setText("即将开放");
            button.setTextSize(2, 11.0f);
            button.setTextColor(-7763575);
            button.setEnabled(false);
            button.setBackgroundResource(R.drawable.recom_grey_butn);
        }
    }

    void B0(TextView view, int payGameAmount) {
        view.setEnabled(true);
        view.setTextColor(-12802819);
        view.setText(view.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(payGameAmount)));
        view.setTextSize(2, 13.0f);
        view.setTextColor(-12802819);
        view.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:106:0x03af  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:83:0x025b  */
    /* JADX WARN: Code duplicated, block: B:84:0x025d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0260  */
    /* JADX WARN: Code duplicated, block: B:90:0x02a6 A[Catch: Exception -> 0x02fb, TryCatch #0 {Exception -> 0x02fb, blocks: (B:88:0x029e, B:90:0x02a6, B:92:0x02e9, B:91:0x02c8), top: B:109:0x029e }] */
    /* JADX WARN: Code duplicated, block: B:91:0x02c8 A[Catch: Exception -> 0x02fb, TryCatch #0 {Exception -> 0x02fb, blocks: (B:88:0x029e, B:90:0x02a6, B:92:0x02e9, B:91:0x02c8), top: B:109:0x029e }] */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x02a6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x02c8, please report this as an issue */
    void C0(com.join.mgps.base.b holder, Object businessBean) {
        int pay_game_amount;
        TextView textView = (Button) holder.getView(R.id.mgListviewItemInstall);
        if (textView == null || businessBean == null) {
            return;
        }
        Context context = textView.getContext();
        Resources resources = context.getResources();
        DownloadTask downloadTask = (DownloadTask) businessBean;
        int status = downloadTask.getStatus();
        String ver = downloadTask.getVer();
        String packageName = downloadTask.getPackageName();
        List<TipBean> tipBeans = downloadTask.getTipBeans();
        long size = downloadTask.getSize();
        if (businessBean instanceof CollectionBeanSub) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) businessBean;
            DownloadTask downloadTask2 = collectionBeanSub.getDownloadTask();
            String ver2 = collectionBeanSub.getVer();
            pay_game_amount = collectionBeanSub.getPay_tag_info() != null ? collectionBeanSub.getPay_tag_info().getPay_game_amount() : 0;
            if (pay_game_amount > 0 && t6.e0.o().p(collectionBeanSub.getCrc_sign_id())) {
                pay_game_amount = 0;
            }
            downloadTask = downloadTask2;
            ver = ver2;
        } else if (businessBean instanceof RecomDatabeanBusiness) {
            AppBean game_info = ((RecomDatabeanBusiness) businessBean).getSub().get(0).getGame_info();
            int pay_game_amount2 = game_info.getPay_tag_info() != null ? game_info.getPay_tag_info().getPay_game_amount() : 0;
            if (pay_game_amount2 <= 0 || !t6.e0.o().p(game_info.getCrc_sign_id())) {
                pay_game_amount = pay_game_amount2;
            } else {
                pay_game_amount = 0;
            }
        } else {
            pay_game_amount = 0;
        }
        if (downloadTask != null) {
            int status2 = downloadTask.getStatus();
            if (pay_game_amount > 0) {
                status2 = 43;
            }
            if (status2 == 0) {
                U0(holder, 0);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    B0(textView, pay_game_amount);
                } else {
                    A0(textView, status);
                }
            } else if (status2 == 27) {
                Q0(textView, "暂停中");
            } else if (status2 == 2) {
                UtilsMy.U4(downloadTask);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                Q0(textView, "暂停");
                R0(textView, resources.getColor(R.color.app_blue_color));
                U0(holder, 16);
                if (downloadTask.getSize() == 0) {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                } else {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                }
                ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                holder.setText(R.id.loding_info, downloadTask.getSpeed() + "/S");
            } else if (status2 == 3) {
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                Q0(textView, "继续");
                R0(textView, resources.getColor(R.color.app_blue_color));
                U0(holder, 16);
                try {
                    if (downloadTask.getSize() == 0) {
                        holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    } else {
                        holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    }
                    ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                holder.setText(R.id.loding_info, "暂停中");
            } else if (status2 == 5) {
                U0(holder, 0);
                textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                Q0(textView, context.getResources().getString(R.string.download_status_finished));
                R0(textView, resources.getColor(R.color.app_main_color));
            } else if (status2 == 6) {
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                Q0(textView, "继续");
                R0(textView, resources.getColor(R.color.app_blue_color));
                U0(holder, 16);
                if (downloadTask.getSize() == 0) {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                } else {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                }
                ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                holder.setText(R.id.loding_info, "暂停中");
            } else if (status2 == 7) {
                U0(holder, 0);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    B0(textView, pay_game_amount);
                } else {
                    A0(textView, status);
                }
            } else if (status2 == 42) {
                U0(holder, 0);
                textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                Q0(textView, context.getResources().getString(R.string.download_status_finished));
                R0(textView, resources.getColor(R.color.app_main_color));
            } else if (status2 != 43) {
                switch (status2) {
                    case 9:
                        U0(holder, 0);
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        Q0(textView, "更新");
                        R0(textView, resources.getColor(R.color.app_green_color));
                        break;
                    case 10:
                        U0(holder, 16);
                        textView.setBackgroundResource(R.drawable.recom_blue_butn);
                        Q0(textView, "等待");
                        R0(textView, resources.getColor(R.color.app_blue_color));
                        break;
                    case 11:
                        U0(holder, 0);
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        Q0(textView, "安装");
                        R0(textView, resources.getColor(R.color.app_green_color));
                        break;
                    case 12:
                        U0(holder, 17);
                        holder.setText(R.id.appSize, UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        holder.setText(R.id.loding_info, "解压中..");
                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                        textView.setBackgroundResource(R.drawable.extract);
                        Q0(textView, "解压中");
                        R0(textView, resources.getColor(R.color.app_grey_color));
                        break;
                    case 13:
                        U0(holder, 17);
                        holder.setText(R.id.appSize, UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        holder.setText(R.id.loding_info, "点击重新解压");
                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                        textView.setBackgroundResource(R.drawable.reextract);
                        Q0(textView, "解压");
                        R0(textView, resources.getColor(R.color.app_blue_color));
                        break;
                }
            } else {
                U0(holder, 0);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    B0(textView, pay_game_amount);
                }
            }
        } else if (UtilsMy.p0(tipBeans)) {
            if (pay_game_amount > 0 ? false : com.join.android.app.common.utils.g.t0(context).e(context, packageName)) {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, packageName);
                if (!com.join.mgps.Util.t2.i(ver) || aVarN.d() >= Integer.parseInt(ver)) {
                    textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    Q0(textView, context.getResources().getString(R.string.download_status_finished));
                    R0(textView, resources.getColor(R.color.app_main_color));
                } else {
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                    Q0(textView, "更新");
                    R0(textView, resources.getColor(R.color.app_green_color));
                }
            } else {
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    B0(textView, pay_game_amount);
                } else {
                    A0(textView, status);
                }
            }
        } else {
            textView.setBackgroundResource(R.drawable.recom_green_butn);
            if (pay_game_amount > 0) {
                B0(textView, pay_game_amount);
            } else {
                A0(textView, status);
            }
        }
        textView.setOnClickListener(new z(businessBean));
    }

    public void D0(b0 l10) {
        this.f59492v = l10;
    }

    public void E0(View v10, final e0.c item) {
        v10.setOnLongClickListener(new g(item));
    }

    public void F0(View v10, final e0.a item) {
        v10.setOnClickListener(new f(item));
    }

    public void G0(View v10) {
        v10.setOnClickListener(new e());
    }

    void H(String key, d0 value) {
        if (this.f59488r == null) {
            this.f59488r = new Hashtable<>();
        }
        this.f59488r.put(key, value);
    }

    public void H0(View v10, final boolean showDelete, final boolean showReport, final int cid, final int rid, final String nickname, final String msg) {
        v10.setOnLongClickListener(new i(cid, showDelete, showReport, rid, nickname, msg));
    }

    public void I0(View v10, final int cid, final int rid, final String rNickname) {
        com.join.mgps.Util.h1.e("setOnCommentReplyReply", "cid=" + cid + " rid=" + rid + " rNickname=" + rNickname);
        v10.setOnClickListener(new h(cid, rid, rNickname));
    }

    public void J0(View v10, final int fid) {
        v10.setOnClickListener(new d(fid));
    }

    public void N0(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new m(position));
    }

    void S0(View v10, int eventFlag, boolean showDelete, boolean showReport, int cid, int rid, String nickname, String mssage) {
        if (this.f59491u == null) {
            this.f59491u = new a0(this.f59481k);
        }
        this.f59491u.q(cid);
        this.f59491u.A(rid);
        this.f59491u.x(mssage);
        this.f59491u.w(eventFlag);
        this.f59491u.t(0);
        if (showDelete) {
            this.f59491u.v(0);
        } else {
            this.f59491u.v(8);
        }
        if (showReport) {
            this.f59491u.z(0);
        } else {
            this.f59491u.z(8);
        }
        if (com.join.mgps.Util.t2.h(nickname)) {
            nickname = "";
        }
        this.f59491u.y(nickname);
        this.f59491u.showAsDropDown(v10);
    }

    public void b0() {
        Hashtable<String, d0> hashtable = this.f59488r;
        if (hashtable != null) {
            hashtable.clear();
            System.gc();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, e0 item) {
        int itemType = item.getItemType();
        if (itemType == ViewType.POST_HEADER.ordinal()) {
            S(helper, item);
            return;
        }
        if (itemType == ViewType.POST_HEADER1.ordinal()) {
            R(helper, item);
            return;
        }
        if (itemType == ViewType.POST_FOOTER.ordinal()) {
            O(helper, item);
            return;
        }
        if (itemType == ViewType.POST_FOOTER1.ordinal()) {
            N(helper, item);
            return;
        }
        if (itemType == ViewType.POST_GAME_RES_LINK.ordinal()) {
            P(helper, item);
            return;
        }
        if (itemType == ViewType.POST_GAME.ordinal()) {
            Q(helper, item);
            return;
        }
        if (itemType == ViewType.POST_IMAGE.ordinal()) {
            U(helper, item);
            return;
        }
        if (itemType == ViewType.POST_VIDEO.ordinal()) {
            Y(helper, item);
            return;
        }
        if (itemType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            T(helper, item);
            return;
        }
        if (itemType == ViewType.POST_MESSAGE.ordinal()) {
            V(helper, item);
            return;
        }
        if (itemType == ViewType.POST_RICH_MESSAGE.ordinal()) {
            W(helper, item);
            return;
        }
        if (itemType == ViewType.POST_SUBJECT.ordinal()) {
            X(helper, item);
        } else if (itemType == ViewType.EMPLOYEE_TAGS.ordinal()) {
            M(helper, item);
        } else if (itemType == ViewType.DIVIDER.ordinal()) {
            L(helper, item);
        }
    }

    public String d0() {
        return this.f59480j;
    }

    BitmapFactory.Options f0(String path) {
        return null;
    }

    d0 g0(String key) {
        Hashtable<String, d0> hashtable = this.f59488r;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(key);
    }

    public com.danikula.videocache.i j0(Context context) {
        return MApplication.q(context);
    }

    LinearLayout.LayoutParams k0() {
        DisplayMetrics displayMetrics = this.f59481k.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f59481k.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    public void o0(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new b(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void p0(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new a(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void r0(DownloadTask downloadTask, int event) {
    }

    void s0(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            d0 d0Var = new d0();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
            d0Var.f59524a = dimensionPixelSize;
            d0Var.f59525b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            H(imgUrl, d0Var);
        }
    }

    public void v0(String allText) {
        this.f59480j = allText;
    }

    LinearLayout.LayoutParams w0(String s10, View view, com.facebook.imagepipeline.image.g imageInfo) {
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
        com.join.mgps.Util.h1.e(this.f59478h + "setCommentImageItemParams-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f11 + " itemHeight=" + i12 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, i12);
        layoutParams.setMargins(0, i11, 0, i11);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    void x0(e0 bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((e0.d) bean.a()).f59564h = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static class c0 extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f59514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<RecommendLabelTag> f59515c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f59516d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f59517e;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecommendLabelTag f59518b;

            a(final RecommendLabelTag val$tag) {
                this.f59518b = val$tag;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f59518b.getTag_id(), c0.this.f59516d, c0.this.f59517e);
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f59520a;

            b() {
            }
        }

        public c0(Context mContext, List<RecommendLabelTag> employ_tags) {
            this.f59514b = mContext;
            this.f59515c = employ_tags;
        }

        public List<RecommendLabelTag> c() {
            return this.f59515c;
        }

        public void d(int fid) {
            this.f59516d = fid;
        }

        public void e(String fname) {
            this.f59517e = fname;
        }

        public void f(List<RecommendLabelTag> tags) {
            this.f59515c = tags;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<RecommendLabelTag> list = this.f59515c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<RecommendLabelTag> list = this.f59515c;
            if (list == null || i10 >= list.size()) {
                return null;
            }
            return this.f59515c.get(i10);
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
                viewInflate = LayoutInflater.from(this.f59514b).inflate(R.layout.forum_group_tag_detail_item, (ViewGroup) null);
                bVar.f59520a = (TextView) viewInflate.findViewById(R.id.tagTv);
                viewInflate.setTag(bVar);
            } else {
                viewInflate = view;
                bVar = (b) view.getTag();
            }
            if (bVar.f59520a != null && (recommendLabelTag = (RecommendLabelTag) getItem(i10)) != null) {
                bVar.f59520a.setText("#" + recommendLabelTag.getTag_name());
                bVar.f59520a.setOnClickListener(new a(recommendLabelTag));
            }
            return viewInflate;
        }

        public c0(Context mContext) {
            this.f59514b = mContext;
            this.f59515c = new ArrayList();
        }
    }
}
