package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileFavoritesAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f59861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.danikula.videocache.i f59862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f59863d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.android.app.component.video.c f59865f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    LinearLayout.LayoutParams f59867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    LinearLayout.LayoutParams f59868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    LinearLayout.LayoutParams f59869j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f59866g = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private u f59870k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<CollectionBeanSub> f59871l = new ArrayList(0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f59872m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f59873n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f59874o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f59875p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f59876q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f59877r = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<k0> f59864e = new ArrayList();

    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP,
        FAVORITE_ITEM_HEADER,
        GAME_ITEM,
        P_SUBJECT,
        P_MESSAGE,
        P_IMGS,
        P_VIDEO,
        P_FOOTER,
        POST_GAME
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59878b;

        a(final int val$pid) {
            this.f59878b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.d(this.f59878b);
            }
        }
    }

    class a0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FrameLayout f59880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f59881c;

        a0() {
            super();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59883b;

        b(final int val$fid) {
            this.f59883b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.f(this.f59883b);
            }
        }
    }

    class b0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59886c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59887d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59888e;

        b0() {
            super();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59890b;

        c(final int val$fid) {
            this.f59890b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.b(this.f59890b);
            }
        }
    }

    class c0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59893c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Button f59894d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59895e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f59896f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f59897g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f59898h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f59899i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f59900j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f59901k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f59902l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f59903m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f59904n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public View f59905o;

        c0() {
            super();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59907b;

        d(final int val$pid) {
            this.f59907b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                Context context = v10.getContext();
                if (com.join.mgps.Util.r0.Y0(context)) {
                    ForumProfileFavoritesAdapter.this.f59870k.a(this.f59907b);
                } else {
                    com.join.mgps.Util.a3.b(context).d("用户未登录，请登录");
                    com.join.mgps.Util.r0.L0(context);
                }
            }
        }
    }

    class d0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59909b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59910c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59911d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59912e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f59913f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f59914g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f59915h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public RelativeLayout f59916i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VipView f59917j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f59918k;

        d0() {
            super();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59920b;

        e(final String val$position) {
            this.f59920b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f59920b);
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.c(i10);
            }
        }
    }

    class e0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RelativeLayout f59923c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f59924d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f59925e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f59926f;

        e0() {
            super();
        }
    }

    class f implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59928b;

        f(final int val$pid) {
            this.f59928b = val$pid;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            TextView textView = (TextView) v10;
            Spannable spannableNewSpannable = Spannable.Factory.getInstance().newSpannable(textView.getText());
            int action = event.getAction();
            boolean z10 = false;
            if (action == 1 || action == 0) {
                int x10 = (int) event.getX();
                int y10 = (int) event.getY();
                int totalPaddingLeft = x10 - textView.getTotalPaddingLeft();
                int totalPaddingTop = y10 - textView.getTotalPaddingTop();
                int scrollX = totalPaddingLeft + textView.getScrollX();
                int scrollY = totalPaddingTop + textView.getScrollY();
                Layout layout = textView.getLayout();
                int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannableNewSpannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                if (clickableSpanArr.length != 0) {
                    if (action == 1) {
                        clickableSpanArr[0].onClick(textView);
                    }
                    z10 = true;
                }
            }
            if (action == 1 && !z10 && ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.d(this.f59928b);
            }
            return z10;
        }
    }

    class f0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f59930b;

        f0() {
            super();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59932b;

        g(final int val$pid) {
            this.f59932b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.d(this.f59932b);
            }
        }
    }

    class g0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f59934b;

        g0() {
            super();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ x f59936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59937c;

        h(final x val$holder, final int val$pid) {
            this.f59936b = val$holder;
            this.f59937c = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f59936b.f60106i.startAnimation(AnimationUtils.loadAnimation(ForumProfileFavoritesAdapter.this.f59863d, R.anim.scale_reset));
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.a(this.f59937c);
            }
        }
    }

    class h0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f59939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59940c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f59941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f59942e;

        h0() {
            super();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f59945c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59946d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f59947e;

        i(final ForumBean.GameInfo val$gameInfo, final DownloadTask val$downloadTask, final String val$postId, final String val$gameId) {
            this.f59944b = val$gameInfo;
            this.f59945c = val$downloadTask;
            this.f59946d = val$postId;
            this.f59947e = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f59944b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f59944b.getGame_down_url_remote());
                UtilsMy.j3(this.f59945c, ForumProfileFavoritesAdapter.this.f59863d);
                IntentUtil.getInstance().intentActivity(ForumProfileFavoritesAdapter.this.f59863d, intentDateBean);
                return;
            }
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).s0(this.f59946d, this.f59947e, AccountUtil_.getInstance_(context).getUid());
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.e(this.f59947e);
            }
        }
    }

    class i0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f59949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59950c;

        i0() {
            super();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f59953c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f59954d;

        j(final String val$postId, final String val$gameId, final ForumBean.GameInfo val$gameInfo) {
            this.f59952b = val$postId;
            this.f59953c = val$gameId;
            this.f59954d = val$gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).t0(this.f59952b, this.f59953c, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.r0.I0(v10.getContext(), this.f59954d);
        }
    }

    class j0 extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public FrameLayout f59957c;

        j0() {
            super();
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ k0.c f59959b;

        k(final k0.c val$item) {
            this.f59959b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59959b.f59974h).start();
        }
    }

    public static class k0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f59961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f59962b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59963a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59964b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59965c;

            public a() {
            }

            public a(boolean removeDivider, int type, String timestamp) {
                this.f59963a = removeDivider;
                this.f59964b = type;
                this.f59965c = timestamp;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ForumData.ForumUserFavoritesData f59966a;

            public b() {
            }

            public ForumData.ForumUserFavoritesData a() {
                return this.f59966a;
            }

            public void b(ForumData.ForumUserFavoritesData data) {
                this.f59966a = data;
            }

            public b(ForumData.ForumUserFavoritesData data) {
                this.f59966a = data;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59967a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59968b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59969c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59970d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59971e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59972f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59973g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f59974h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f59975i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59976j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public String f59977k;

            public c() {
            }

            public c(int type, String avatar, String groupName, String hostName, int likeCount, int commentCount, int pid, int view, boolean isPraise, int uid) {
                this.f59967a = type;
                this.f59977k = avatar;
                this.f59969c = groupName;
                this.f59970d = hostName;
                this.f59971e = likeCount;
                this.f59972f = commentCount;
                this.f59973g = pid;
                this.f59974h = uid;
                this.f59975i = view;
                this.f59976j = isPraise;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f59978a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f59979b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59980c;

            public d(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f59978a = resBeans;
                this.f59979b = imgUrlLargeList;
                this.f59980c = pid;
            }
        }

        public static class e implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59981a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59982b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59983c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59984d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59985e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59986f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public String f59987g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59988h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59989i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public SpannableStringBuilder f59990j;

            public e() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f59990j;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f59984d + "";
            }

            public e(boolean showDivider, boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, boolean showTagInMessage, SpannableStringBuilder ssb) {
                this.f59981a = showDivider;
                this.f59982b = startWithBest;
                this.f59983c = message;
                this.f59984d = pid;
                this.f59985e = fid;
                this.f59986f = isAsk;
                this.f59987g = askMoney;
                this.f59988h = tagInfos;
                this.f59989i = showTagInMessage;
                this.f59990j = ssb;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59991a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59992b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59993c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59994d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59995e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59996f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public String f59997g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59998h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public List<RecommendLabelTag> f59999i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public String f60000j;

            public f() {
            }

            public f(boolean showDivider, boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, String fname) {
                this.f59991a = showDivider;
                this.f59992b = isBest;
                this.f59993c = subject;
                this.f59994d = pid;
                this.f59995e = fid;
                this.f59996f = isAsk;
                this.f59997g = askMoney;
                this.f59998h = tagInfos;
                this.f59999i = tags;
                this.f60000j = fname;
            }

            public f(boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags) {
                this.f59992b = isBest;
                this.f59993c = subject;
                this.f59994d = pid;
                this.f59995e = fid;
                this.f59996f = isAsk;
                this.f59997g = askMoney;
                this.f59998h = tagInfos;
                this.f59999i = tags;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60001a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60002b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60003c;

            public g(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f60001a = thumnailUrl;
                this.f60002b = videoSrc;
                this.f60003c = actionBarTitle;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60004a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60005b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60006c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60007d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60008e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60009f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60010g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f60011h;

            public h() {
            }

            public h(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f60004a = postId;
                this.f60009f = fid;
                this.f60005b = fname;
                this.f60006c = viewTotal;
                this.f60007d = commentTotal;
                this.f60008e = praiseTotal;
                this.f60010g = isPraise;
                this.f60011h = isShowFooterDivider;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60015a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60016b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60017c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f60018d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60019e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60020f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f60021g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f60022h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f60023i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f60024j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f60025k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f60026l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private String f60027m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private String f60028n;

            public j() {
            }

            public j(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int fid, boolean showDelete, boolean isModerator, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f60015a = removeDivider;
                this.f60016b = avatarSrc;
                this.f60017c = nickName;
                this.f60018d = timestamps;
                this.f60019e = isTop;
                this.f60020f = pid;
                this.f60021g = fid;
                this.f60022h = uid;
                this.f60023i = showDelete;
                this.f60024j = isModerator;
                this.f60025k = vip_level;
                this.f60026l = svip_level;
                this.f60027m = battleTitle;
                this.f60028n = battleColor;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f60029a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f60030b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60031c;

            public k(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f60029a = resBeans;
                this.f60030b = imgUrlLargeList;
                this.f60031c = pid;
            }
        }

        public static class l implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60032a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60033b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60034c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60035d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60036e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60037f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f60038g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public SpannableStringBuilder f60039h;

            public l() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f60039h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f60034c + "";
            }

            public l(boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoeny, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, SpannableStringBuilder ssb) {
                this.f60032a = startWithBest;
                this.f60033b = message;
                this.f60034c = pid;
                this.f60035d = fid;
                this.f60036e = isAsk;
                this.f60037f = askMoeny;
                this.f60038g = tagInfos;
                this.f60039h = ssb;
            }
        }

        public static class m {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60040a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60041b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60042c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60043d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60044e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60045f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f60046g;

            public m() {
            }

            public m(boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoeny, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f60040a = isBest;
                this.f60041b = subject;
                this.f60042c = pid;
                this.f60043d = fid;
                this.f60044e = isAsk;
                this.f60045f = askMoeny;
                this.f60046g = tagInfos;
            }
        }

        public static class n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60047a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60048b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f60049c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60050d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60051e;

            public n() {
            }

            public n(int pid, String subject, boolean isBest, boolean isAttachPic, boolean isAttachVideo) {
                this.f60047a = pid;
                this.f60048b = subject;
                this.f60049c = isBest;
                this.f60050d = isAttachPic;
                this.f60051e = isAttachVideo;
            }
        }

        public static class o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60052a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60053b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60054c;

            public o(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f60052a = thumnailUrl;
                this.f60053b = videoSrc;
                this.f60054c = actionBarTitle;
            }
        }

        public k0() {
        }

        public Object a() {
            return this.f59962b;
        }

        public ViewType b() {
            return this.f59961a;
        }

        public void c(Object obj) {
            this.f59962b = obj;
        }

        public void d(ViewType viewType) {
            this.f59961a = viewType;
        }

        public k0(ViewType viewType, Object obj) {
            this.f59961a = viewType;
            this.f59962b = obj;
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60012a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60013b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ForumBean.GameInfo f60014c;

            public i(boolean showDivider, String pid, ForumBean.GameInfo gameInfo) {
                this.f60012a = showDivider;
                this.f60013b = pid;
                this.f60014c = gameInfo;
            }

            public i(String pid, ForumBean.GameInfo gameInfo) {
                this.f60013b = pid;
                this.f60014c = gameInfo;
            }
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ k0.j f60055b;

        l(final k0.j val$item) {
            this.f60055b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f60055b.f60022h).start();
        }
    }

    class l0 {
        l0() {
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60058b;

        m(final int val$pid) {
            this.f60058b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileFavoritesAdapter.this.f59870k != null) {
                ForumProfileFavoritesAdapter.this.f59870k.a(this.f60058b);
            }
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60060b;

        n(final int val$pid) {
            this.f60060b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f60060b);
            com.join.mgps.Util.r0.v0(v10.getContext(), forumPostsBean);
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60063c;

        o(final List val$rawPicList, final int val$imgIndex) {
            this.f60062b = val$rawPicList;
            this.f60063c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f60062b.size()];
            this.f60062b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f60063c, strArr);
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60066c;

        p(final List val$rawPicList, final int val$imgIndex) {
            this.f60065b = val$rawPicList;
            this.f60066c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f60065b.size()];
            this.f60065b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f60066c, strArr);
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60068b;

        q(final String val$href) {
            this.f60068b = val$href;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.Q0(v10.getContext(), this.f60068b);
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CollectionBeanSub f60070b;

        public r(CollectionBeanSub collectionBeanSub) {
            this.f60070b = collectionBeanSub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            DownloadTask downloadTask = this.f60070b.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.p0(this.f60070b.getTag_info())) {
                    if (this.f60070b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(context).e(context, this.f60070b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f60070b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(context);
                            APKUtils.a0(context, this.f60070b.getMod_info(), this.f60070b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(context).e(context, this.f60070b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, this.f60070b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f60070b.getVer()) || aVarN.d() >= Integer.parseInt(this.f60070b.getVer())) {
                            com.join.android.app.common.utils.g.t0(context);
                            APKUtils.f0(context, this.f60070b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(context, this.f60070b);
                return;
            }
            if (this.f60070b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f60070b.getDown_url_remote());
                UtilsMy.j3(downloadTask, context);
                IntentUtil.getInstance().intentActivity(context, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            CollectionBeanSub collectionBeanSub = this.f60070b;
            if (collectionBeanSub != null && UtilsMy.x0(collectionBeanSub.getPay_tag_info(), this.f60070b.getCrc_sign_id()) > 0) {
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
            CollectionBeanSub collectionBeanSub2 = this.f60070b;
            if (collectionBeanSub2 != null) {
                if (UtilsMy.z0(collectionBeanSub2.getPay_tag_info(), this.f60070b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(context, this.f60070b.getCrc_sign_id());
                    return;
                }
                UtilsMy.z1(downloadTask, this.f60070b);
                if (UtilsMy.o1(context, downloadTask)) {
                    return;
                }
                if (this.f60070b.getDown_status() == 5) {
                    UtilsMy.l1(context, downloadTask);
                } else {
                    UtilsMy.U0(context, downloadTask, this.f60070b.getTp_down_url(), this.f60070b.getOther_down_switch(), this.f60070b.getCdn_down_switch());
                }
            }
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f60072b;

        public s(Object business) {
            this.f60072b = business;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10;
            int pay_game_amount;
            int pay_game_amount2;
            Context context = view.getContext();
            DownloadTask downloadTask = (DownloadTask) this.f60072b;
            if (downloadTask != null) {
                downloadTask.getVer();
                downloadTask.getVer_name();
                downloadTask.getPackageName();
                downloadTask.getTipBeans();
                downloadTask.getSource_down_url();
                List<DownloadUrlBean> tp_down_url = downloadTask.getTp_down_url();
                int other_down_switch = downloadTask.getOther_down_switch();
                int cdn_down_switch = downloadTask.getCdn_down_switch();
                Object obj = this.f60072b;
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
                Object obj2 = this.f60072b;
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

    class t extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f60074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60075c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60076d;

        t() {
            super();
        }
    }

    public interface u {
        void a(int pid);

        void b(int fid);

        void c(int position);

        void d(int fid);

        void e(String gameId);

        void f(int fid);
    }

    class v extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60078b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60079c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Button f60080d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f60081e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f60082f;

        v() {
            super();
        }
    }

    public class w extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60084b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f60085c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60086d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public RelativeLayout f60087e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f60088f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f60089g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f60090h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public LinearLayout f60091i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f60092j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60093k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f60094l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ProgressBar f60095m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f60096n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public View f60097o;

        public w() {
            super();
        }
    }

    class x extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60100c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60101d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60102e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60103f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f60104g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f60105h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f60106i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public SimpleDraweeView f60107j;

        x() {
            super();
        }
    }

    class y extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f60109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60110c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f60111d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f60112e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f60113f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f60114g;

        y() {
            super();
        }
    }

    class z extends l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f60116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60117c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f60118d;

        z() {
            super();
        }
    }

    public ForumProfileFavoritesAdapter(Context mContext, com.join.android.app.component.video.c helper) {
        this.f59863d = mContext;
        this.f59865f = helper;
        this.f59861b = new com.join.android.app.component.optimizetext.b(mContext);
        this.f59862c = y(mContext);
        d();
        A();
    }

    private void A() {
        if (this.f59867h == null) {
            this.f59867h = z();
        }
    }

    private void B(TextView textView, final int pid) {
        textView.setOnTouchListener(new f(pid));
    }

    private void C(final x holder, boolean like, int count, final int pid) {
        TextView textView = holder.f60101d;
        ImageView imageView = holder.f60106i;
        if (like) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(count + "");
            textView.setTextColor(Color.parseColor("#d92a0c"));
        } else {
            imageView.setImageResource(R.drawable.unlike);
            textView.setText(count + "");
            textView.setTextColor(Color.parseColor("#a9a9a9"));
        }
        ((View) holder.f60101d.getParent()).setOnClickListener(new h(holder, pid));
    }

    private void E(e0 holder, k0.k item) {
        if (item == null || item.f60029a.size() == 0) {
            holder.f59923c.setVisibility(8);
            return;
        }
        if (this.f59867h == null) {
            this.f59867h = z();
        }
        List<String> list = item.f60030b;
        TextView textView = holder.f59922b;
        if (list == null || list.size() <= 3) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText("共" + list.size() + "张");
        }
        SimpleDraweeView[] simpleDraweeViewArr = {holder.f59924d, holder.f59925e, holder.f59926f};
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
            if (i11 >= item.f60029a.size()) {
                simpleDraweeView.setVisibility(8);
            } else {
                ForumBean.ForumPostsBean.ResBean resBean = item.f60029a.get(i11);
                if (resBean.getType().equals("pic")) {
                    O(simpleDraweeView, i11, resBean.getThumb(), i11 - i10, list);
                } else if (resBean.getType().equals("video")) {
                    i10++;
                    Z(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                }
            }
        }
    }

    private void F(View parent, boolean like, int count) {
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

    private void G(View parent, ForumBean.ForumPostsBean bean) {
        boolean zIs_praise = bean.is_praise();
        int praise = bean.getPraise();
        bean.setPraise(zIs_praise ? praise - 1 : praise + 1);
        bean.setIs_praise(!zIs_praise);
        F(parent, bean.is_praise(), bean.getPraise());
    }

    private void H(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        I(tv2, message, best, ask, moneyForAnswer, tagInfos, null, 0, "");
    }

    private void I(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, int fid, String fname) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.r0.h(tv2.getContext(), spannableStringBuilder, tagInfos);
        com.join.mgps.Util.r0.g(tv2, spannableStringBuilder, best, ask, moneyForAnswer);
        com.join.mgps.Util.r0.i(tv2.getContext(), spannableStringBuilder, tags, fid, fname);
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder);
    }

    private void W(ImageView view, String imgUrl) {
        if (com.join.mgps.Util.t2.h(imgUrl)) {
            view.setVisibility(8);
            return;
        }
        view.setVisibility(0);
        Context context = view.getContext();
        int i10 = context.getResources().getDisplayMetrics().widthPixels - (((int) (context.getResources().getDisplayMetrics().scaledDensity * 6.0f)) * 2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = (int) ((i10 * 1.0f) / 1.8f);
        view.setLayoutParams(layoutParams);
    }

    private void X(View v10, CharSequence text) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setText(text);
        } else if (v10 instanceof Button) {
            ((Button) v10).setText(text);
        }
    }

    private void Y(View v10, int color) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setTextColor(color);
        } else if (v10 instanceof Button) {
            ((Button) v10).setTextColor(color);
        }
    }

    private void b0(c0 holder, int type) {
        if (type == 0) {
            holder.f59897g.setVisibility(8);
            holder.f59901k.setVisibility(8);
            holder.f59902l.setVisibility(8);
            holder.f59898h.setVisibility(0);
            holder.f59896f.setVisibility(0);
            return;
        }
        holder.f59897g.setVisibility(0);
        if (type == 17) {
            holder.f59901k.setVisibility(8);
            holder.f59902l.setVisibility(0);
        } else {
            holder.f59902l.setVisibility(8);
            holder.f59901k.setVisibility(0);
        }
        holder.f59898h.setVisibility(8);
        holder.f59896f.setVisibility(8);
    }

    private View f(int position, View convertView, ViewGroup parent) {
        t tVar;
        if (convertView != null) {
            tVar = (t) convertView.getTag();
        } else {
            tVar = new t();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_profile_favorites_header, (ViewGroup) null);
            tVar.f60074b = convertView.findViewById(R.id.forum_post_divider);
            tVar.f60075c = (TextView) convertView.findViewById(R.id.typeTv);
            tVar.f60076d = (TextView) convertView.findViewById(R.id.timestampTv);
            convertView.setTag(tVar);
        }
        try {
            k0.a aVar = (k0.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            if (aVar.f59963a) {
                tVar.f60074b.setVisibility(8);
            } else {
                tVar.f60074b.setVisibility(0);
            }
            int i10 = aVar.f59964b;
            if (i10 == 1) {
                tVar.f60075c.setText("游戏");
            } else if (i10 == 2) {
                tVar.f60075c.setText("帖子");
            } else {
                tVar.f60075c.setText("收藏");
            }
            if (TextUtils.isEmpty(aVar.f59965c)) {
                aVar.f59965c = "";
            }
            tVar.f60076d.setText(aVar.f59965c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View k(int position, View convertView, ViewGroup parent) {
        x xVar;
        if (convertView != null) {
            xVar = (x) convertView.getTag();
        } else {
            xVar = new x();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_f_item_post_footer, (ViewGroup) null);
            xVar.f60107j = (SimpleDraweeView) convertView.findViewById(R.id.avatar);
            xVar.f60104g = convertView.findViewById(R.id.indicator);
            xVar.f60099b = (TextView) convertView.findViewById(R.id.groupName);
            xVar.f60100c = (TextView) convertView.findViewById(R.id.hostName);
            xVar.f60101d = (TextView) convertView.findViewById(R.id.likeCount);
            xVar.f60102e = (TextView) convertView.findViewById(R.id.commentCount);
            xVar.f60105h = (TextView) convertView.findViewById(R.id.forum_post_view);
            xVar.f60103f = convertView.findViewById(R.id.divider);
            xVar.f60106i = (ImageView) convertView.findViewById(R.id.forum_post_praise_icon);
            convertView.setTag(xVar);
        }
        try {
            k0.c cVar = (k0.c) getItem(position);
            if (cVar != null && xVar != null) {
                if (cVar.f59968b) {
                    xVar.f60103f.setVisibility(0);
                } else {
                    xVar.f60103f.setVisibility(8);
                }
                if (cVar.f59967a == 0) {
                    if (xVar.f60104g.getVisibility() != 0) {
                        xVar.f60104g.setVisibility(0);
                    }
                } else if (xVar.f60104g.getVisibility() != 8) {
                    xVar.f60104g.setVisibility(8);
                }
                xVar.f60099b.setText(cVar.f59969c);
                xVar.f60100c.setText(cVar.f59970d);
                xVar.f60101d.setText(com.join.mgps.Util.r0.R(cVar.f59971e) + "");
                xVar.f60102e.setText(com.join.mgps.Util.r0.R(cVar.f59972f) + "");
                xVar.f60105h.setText(com.join.mgps.Util.r0.R(cVar.f59975i) + "");
                com.join.android.app.common.utils.l.y(xVar.f60107j, cVar.f59977k);
                xVar.f60107j.setOnClickListener(new k(cVar));
                R(convertView, cVar.f59973g);
                C(xVar, cVar.f59976j, cVar.f59971e, cVar.f59973g);
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View l(int position, View convertView, ViewGroup parent) {
        y yVar;
        View view;
        if (convertView != null) {
            yVar = (y) convertView.getTag();
            view = convertView;
        } else {
            yVar = new y();
            View viewInflate = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_f_item_post_imgs, (ViewGroup) null);
            yVar.f60109b = viewInflate.findViewById(R.id.spaceT);
            yVar.f60110c = viewInflate.findViewById(R.id.imgsMain);
            yVar.f60111d = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_1);
            yVar.f60112e = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_2);
            yVar.f60113f = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_3);
            yVar.f60114g = (TextView) viewInflate.findViewById(R.id.images_count);
            viewInflate.setTag(yVar);
            view = viewInflate;
        }
        try {
            k0.d dVar = (k0.d) getItem(position);
            if (dVar == null) {
                return view;
            }
            List<ForumBean.ForumPostsBean.ResBean> list = dVar.f59978a;
            if (list != null && list.size() != 0) {
                view.setVisibility(0);
                List<String> list2 = dVar.f59979b;
                TextView textView = yVar.f60114g;
                int size = list2 != null ? list2.size() : 0;
                if (size > 3) {
                    textView.setVisibility(0);
                    textView.setText("共" + list2.size() + "张");
                } else {
                    textView.setVisibility(8);
                }
                if (this.f59867h == null) {
                    this.f59867h = z();
                }
                int i10 = 1;
                SimpleDraweeView[] simpleDraweeViewArr = {yVar.f60111d, yVar.f60112e, yVar.f60113f};
                int i11 = 0;
                int i12 = 0;
                while (i11 < 3) {
                    SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
                    if (i11 >= dVar.f59978a.size()) {
                        simpleDraweeView.setVisibility(8);
                    } else {
                        simpleDraweeView.setVisibility(0);
                        ForumBean.ForumPostsBean.ResBean resBean = dVar.f59978a.get(i11);
                        if (resBean.getType().equals("pic")) {
                            String thumb = resBean.getThumb();
                            Integer[] numArrI0 = com.join.mgps.Util.r0.i0(thumb);
                            if (i11 != 0 || size != i10 || numArrI0 == null || numArrI0[0].intValue() == 0 || numArrI0[i10].intValue() == 0) {
                                O(simpleDraweeView, i11, thumb, i11 - i12, list2);
                            } else {
                                N(simpleDraweeView, i11, thumb, i11 - i12, list2);
                            }
                        } else if (resBean.getType().equals("video")) {
                            i12++;
                            Z(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                        }
                    }
                    i11++;
                    i10 = 1;
                }
                R(view, dVar.f59980c);
                return view;
            }
            view.setVisibility(8);
            return view;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View m(int position, View convertView, ViewGroup parent) {
        z zVar;
        if (convertView != null) {
            zVar = (z) convertView.getTag();
        } else {
            zVar = new z();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_f_item_post_message, (ViewGroup) null);
            zVar.f60116b = (StaticLayoutView) convertView.findViewById(R.id.msg);
            zVar.f60117c = convertView.findViewById(R.id.divider);
            zVar.f60118d = convertView.findViewById(R.id.spaceT);
            convertView.setTag(zVar);
        }
        try {
            k0.e eVar = (k0.e) getItem(position);
            if (eVar == null) {
                return convertView;
            }
            if (this.f59861b.d(eVar.f59984d + "") == null) {
                this.f59861b.e(eVar);
            }
            zVar.f60116b.setLayout(this.f59861b.d(eVar.f59984d + ""));
            com.join.mgps.Util.r0.X0(zVar.f60116b);
            if (eVar.f59981a) {
                zVar.f60117c.setVisibility(0);
                zVar.f60118d.setVisibility(0);
            } else {
                zVar.f60117c.setVisibility(8);
                zVar.f60118d.setVisibility(8);
            }
            R(convertView, eVar.f59984d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View n(final int position, View convertView, ViewGroup parent) {
        a0 a0Var;
        if (convertView != null) {
            a0Var = (a0) convertView.getTag();
        } else {
            a0Var = new a0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_f_item_post_video, (ViewGroup) null);
            a0Var.f59880b = (FrameLayout) convertView.findViewById(R.id.videoContner);
            a0Var.f59881c = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(a0Var);
        }
        try {
            k0.g gVar = (k0.g) getItem(position);
            if (gVar == null) {
                return convertView;
            }
            String str = gVar.f60002b;
            String str2 = gVar.f60001a;
            if (a0Var.f59880b != null) {
                a0Var.f59880b.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f59877r));
                com.join.android.app.common.utils.l.d(a0Var.f59881c, R.drawable.video_bg, str2);
                a0Var.f59881c.setTag(Integer.valueOf(position));
                if (com.join.mgps.Util.t2.i(str)) {
                    this.f59865f.d(position, new com.join.android.app.component.video.c.l(position, str, str2), new boolean[0]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View o(int position, View convertView, ViewGroup parent) {
        b0 b0Var;
        if (convertView != null) {
            b0Var = (b0) convertView.getTag();
        } else {
            b0Var = new b0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            b0Var.f59885b = (TextView) convertView.findViewById(R.id.forum_name);
            b0Var.f59886c = (TextView) convertView.findViewById(R.id.forum_post_view);
            b0Var.f59887d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            b0Var.f59888e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            convertView.setTag(b0Var);
        }
        try {
            k0.h hVar = (k0.h) getItem(position);
            if (hVar == null) {
                return convertView;
            }
            if (hVar.f60011h) {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(0);
            } else {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(8);
            }
            b0Var.f59885b.setText(hVar.f60005b);
            if (com.join.mgps.Util.t2.h(hVar.f60005b)) {
                ((ViewGroup) b0Var.f59885b.getParent()).setVisibility(8);
            } else {
                ((ViewGroup) b0Var.f59885b.getParent()).setVisibility(0);
            }
            com.join.mgps.Util.r0.D1(b0Var.f59886c, hVar.f60006c + "", "0");
            com.join.mgps.Util.r0.D1(b0Var.f59887d, hVar.f60007d + "", "0");
            F(convertView, hVar.f60010g, hVar.f60008e);
            int i10 = hVar.f60004a;
            ((View) b0Var.f59888e.getParent()).setOnClickListener(new m(i10));
            T(convertView, i10);
            F((View) b0Var.f59888e.getParent(), hVar.f60010g, hVar.f60008e);
            V((View) b0Var.f59888e.getParent(), i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View p(int position, View convertView, ViewGroup parent) {
        c0 c0Var;
        View view;
        if (convertView != null) {
            c0Var = (c0) convertView.getTag();
            view = convertView;
        } else {
            c0Var = new c0();
            View viewInflate = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_post_activity_item_post_game, (ViewGroup) null);
            c0Var.f59892b = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            c0Var.f59893c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            c0Var.f59894d = (Button) viewInflate.findViewById(R.id.mgListviewItemInstall);
            c0Var.f59895e = (TextView) viewInflate.findViewById(R.id.mgListviewItemSize);
            c0Var.f59896f = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
            c0Var.f59897g = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
            c0Var.f59898h = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            c0Var.f59899i = (TextView) viewInflate.findViewById(R.id.appSize);
            c0Var.f59900j = (TextView) viewInflate.findViewById(R.id.loding_info);
            c0Var.f59901k = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            c0Var.f59902l = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            c0Var.f59903m = viewInflate.findViewById(R.id.line);
            c0Var.f59904n = viewInflate.findViewById(R.id.relateLayoutApp);
            c0Var.f59905o = viewInflate.findViewById(R.id.divider);
            viewInflate.setTag(c0Var);
            view = viewInflate;
        }
        try {
            k0.i iVar = (k0.i) getItem(position);
            if (iVar == null) {
                return view;
            }
            ForumBean.GameInfo gameInfo = iVar.f60014c;
            String str = iVar.f60013b;
            String game_id = gameInfo.getGame_id();
            if (iVar.f60012a) {
                if (c0Var.f59905o.getVisibility() != 0) {
                    c0Var.f59905o.setVisibility(0);
                }
            } else if (c0Var.f59905o.getVisibility() != 8) {
                c0Var.f59905o.setVisibility(8);
            }
            c0Var.f59894d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f59863d.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) c0Var.f59894d.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            c0Var.f59894d.setLayoutParams(layoutParams);
            c0Var.f59893c.setText(gameInfo.getGame_name());
            c0Var.f59896f.setText(gameInfo.getGame_desc());
            String game_size = gameInfo.getGame_size();
            com.join.android.app.common.utils.l.j(c0Var.f59892b, gameInfo.getGame_ico_remote(), com.join.android.app.common.utils.l.B(this.f59863d));
            List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
            b0(c0Var, 0);
            DownloadTask downloadTask = gameInfo.getDownloadTask();
            if (downloadTask != null) {
                L(c0Var, downloadTask);
            } else {
                if (gameInfo.getPay_tag_info() == null || gameInfo.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(gameInfo.getGame_id())) {
                    J(c0Var.f59894d, gameInfo.getDown_status());
                } else {
                    K(c0Var.f59894d, gameInfo.getPay_tag_info().getPay_game_amount());
                }
                c0Var.f59894d.setOnClickListener(new i(gameInfo, downloadTask, str, game_id));
            }
            if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
                c0Var.f59898h.setVisibility(8);
                c0Var.f59894d.setBackgroundResource(R.drawable.recom_blue_butn);
                c0Var.f59894d.setText("开始");
                c0Var.f59894d.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
            } else {
                c0Var.f59898h.setVisibility(0);
                com.join.mgps.Util.r0.c(game_tag_info, c0Var.f59898h, this.f59863d);
                UtilsMy.K(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, c0Var.f59898h, this.f59863d);
                UtilsMy.A3(gameInfo.getSp_tag_info(), view, downloadTask);
            }
            c0Var.f59904n.setOnClickListener(new j(str, game_id, gameInfo));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return view;
    }

    private View q(int position, View convertView, ViewGroup parent) {
        d0 d0Var;
        if (convertView != null) {
            d0Var = (d0) convertView.getTag();
        } else {
            d0Var = new d0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            d0Var.f59913f = convertView.findViewById(R.id.forum_post_divider);
            d0Var.f59909b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            d0Var.f59910c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            d0Var.f59911d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            d0Var.f59912e = (TextView) convertView.findViewById(R.id.forum_post_stickie);
            d0Var.f59916i = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            d0Var.f59915h = (ImageView) convertView.findViewById(R.id.forum_post_moderator);
            d0Var.f59917j = (VipView) convertView.findViewById(R.id.vipFlag);
            d0Var.f59918k = (TextView) convertView.findViewById(R.id.copperTitleTv);
            convertView.setTag(d0Var);
        }
        try {
            k0.j jVar = (k0.j) getItem(position);
            if (jVar == null) {
                return convertView;
            }
            UtilsMy.R3(this.f59863d, d0Var.f59910c, jVar.f60025k, jVar.f60026l, R.color.forum_nickname_color);
            d0Var.f59917j.setVipData(jVar.f60025k, jVar.f60026l);
            d0Var.f59916i.setVisibility(0);
            jVar.f60015a = true;
            d0Var.f59913f.setVisibility(8);
            d0Var.f59910c.setText(jVar.f60017c);
            d0Var.f59911d.setText(com.join.android.app.common.utils.i.a(jVar.f60018d * 1000));
            if (jVar.f60019e) {
                d0Var.f59912e.setVisibility(0);
            } else {
                d0Var.f59912e.setVisibility(8);
            }
            if (jVar.f60024j) {
                d0Var.f59915h.setVisibility(0);
            } else {
                d0Var.f59915h.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(d0Var.f59909b, jVar.f60016b);
            d0Var.f59909b.setOnClickListener(new l(jVar));
            int i10 = jVar.f60020f;
            T(convertView, i10);
            a0(d0Var.f59916i, i10);
            com.join.mgps.Util.r0.S0(d0Var.f59909b, d0Var.f59910c, d0Var.f59911d);
            com.join.mgps.Util.r0.U0(d0Var.f59917j);
            String str = jVar.f60027m;
            String str2 = jVar.f60028n;
            if (d0Var.f59918k != null) {
                if (TextUtils.isEmpty(str)) {
                    d0Var.f59918k.setVisibility(8);
                } else {
                    d0Var.f59918k.setVisibility(0);
                    d0Var.f59918k.setText(str);
                    Drawable drawable = this.f59863d.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    d0Var.f59918k.setBackgroundDrawable(drawable);
                }
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View r(int position, View convertView, ViewGroup parent) {
        e0 e0Var;
        if (convertView != null) {
            e0Var = (e0) convertView.getTag();
        } else {
            e0Var = new e0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            e0Var.f59923c = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            e0Var.f59922b = (TextView) convertView.findViewById(R.id.images_count);
            e0Var.f59924d = (SimpleDraweeView) convertView.findViewById(R.id.img_m_1);
            e0Var.f59925e = (SimpleDraweeView) convertView.findViewById(R.id.img_m_2);
            e0Var.f59926f = (SimpleDraweeView) convertView.findViewById(R.id.img_m_3);
            convertView.setTag(e0Var);
        }
        try {
            k0.k kVar = (k0.k) getItem(position);
            if (kVar == null) {
                return convertView;
            }
            E(e0Var, kVar);
            T(convertView, kVar.f60031c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View s(int position, View convertView, ViewGroup parent) {
        g0 g0Var;
        if (convertView != null) {
            g0Var = (g0) convertView.getTag();
        } else {
            g0Var = new g0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            g0Var.f59934b = (StaticLayoutView) convertView.findViewById(R.id.forum_post_message);
            convertView.setTag(g0Var);
        }
        try {
            k0.l lVar = (k0.l) getItem(position);
            if (lVar == null) {
                return convertView;
            }
            if (this.f59861b.d(lVar.f60034c + "") == null) {
                this.f59861b.e(lVar);
            }
            g0Var.f59934b.setLayout(this.f59861b.d(lVar.f60034c + ""));
            com.join.mgps.Util.r0.X0(g0Var.f59934b);
            T(convertView, lVar.f60034c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View t(int position, View convertView, ViewGroup parent) {
        h0 h0Var;
        if (convertView != null) {
            h0Var = (h0) convertView.getTag();
        } else {
            h0Var = new h0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_f_item_post_subject, (ViewGroup) null);
            h0Var.f59939b = (Button) convertView.findViewById(R.id.best);
            h0Var.f59940c = (TextView) convertView.findViewById(R.id.subject);
            h0Var.f59942e = convertView.findViewById(R.id.subjectMain);
            h0Var.f59941d = convertView.findViewById(R.id.forum_post_divider);
            convertView.setTag(h0Var);
        }
        try {
            k0.f fVar = (k0.f) getItem(position);
            if (fVar == null) {
                return convertView;
            }
            if (fVar.f59991a) {
                h0Var.f59941d.setVisibility(0);
            } else {
                h0Var.f59941d.setVisibility(8);
            }
            h0Var.f59940c.setMovementMethod(LinkMovementMethod.getInstance());
            I(h0Var.f59940c, fVar.f59993c, fVar.f59992b, fVar.f59996f, fVar.f59997g, fVar.f59998h, fVar.f59999i, fVar.f59995e, fVar.f60000j);
            int i10 = fVar.f59994d;
            B(h0Var.f59940c, i10);
            R(convertView, i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View u(int position, View convertView, ViewGroup parent) {
        i0 i0Var;
        if (convertView != null) {
            i0Var = (i0) convertView.getTag();
        } else {
            i0Var = new i0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            i0Var.f59949b = (Button) convertView.findViewById(R.id.forum_post_best);
            i0Var.f59950c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            convertView.setTag(i0Var);
        }
        try {
            k0.m mVar = (k0.m) getItem(position);
            if (mVar == null) {
                return convertView;
            }
            H(i0Var.f59950c, mVar.f60041b, mVar.f60040a, mVar.f60044e, mVar.f60045f, mVar.f60046g);
            T(convertView, mVar.f60042c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View v(int position, View convertView, ViewGroup parent) {
        v vVar;
        try {
            if (convertView != null) {
                vVar = (v) convertView.getTag();
            } else {
                vVar = new v();
                convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                vVar.f60078b = (TextView) convertView.findViewById(R.id.forum_post_subject);
                vVar.f60079c = (TextView) convertView.findViewById(R.id.forum_post_stickie);
                vVar.f60080d = (Button) convertView.findViewById(R.id.forum_post_best);
                vVar.f60081e = (ImageView) convertView.findViewById(R.id.forum_post_pic);
                vVar.f60082f = (ImageView) convertView.findViewById(R.id.forum_post_video);
                convertView.setTag(vVar);
            }
            k0.n nVar = (k0.n) getItem(position);
            if (nVar == null) {
                return convertView;
            }
            if (com.join.mgps.Util.t2.h(nVar.f60048b)) {
                vVar.f60078b.setVisibility(8);
            } else {
                vVar.f60078b.setVisibility(0);
                vVar.f60078b.setText(nVar.f60048b);
            }
            if (nVar.f60049c) {
                vVar.f60080d.setVisibility(0);
            } else {
                vVar.f60080d.setVisibility(8);
            }
            if (nVar.f60050d) {
                vVar.f60081e.setVisibility(0);
            } else {
                vVar.f60081e.setVisibility(8);
            }
            if (nVar.f60051e) {
                vVar.f60082f.setVisibility(0);
            } else {
                vVar.f60082f.setVisibility(8);
            }
            convertView.setOnClickListener(new n(nVar.f60047a));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private int w(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59866g == 0) {
            Resources resources = context.getResources();
            this.f59866g = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f59866g;
    }

    private View x(int position, View convertView, ViewGroup parent) {
        j0 j0Var;
        if (convertView != null) {
            j0Var = (j0) convertView.getTag();
        } else {
            j0Var = new j0();
            convertView = LayoutInflater.from(this.f59863d).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            j0Var.f59957c = (FrameLayout) convertView.findViewById(R.id.videoContner);
            j0Var.f59956b = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(j0Var);
        }
        try {
            k0.o oVar = (k0.o) getItem(position);
            if (oVar == null) {
                return convertView;
            }
            w(this.f59863d);
            String str = oVar.f60053b;
            String str2 = oVar.f60052a;
            SimpleDraweeView simpleDraweeView = j0Var.f59956b;
            if (simpleDraweeView != null) {
                com.join.android.app.common.utils.l.h(simpleDraweeView, str2);
            }
            if (j0Var.f59957c != null) {
                j0Var.f59956b.setTag(Integer.valueOf(position));
                if (com.join.mgps.Util.t2.i(str)) {
                    this.f59865f.d(position, new com.join.android.app.component.video.c.l(position, str, str2), new boolean[0]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    public void D(DownloadTask downloadTask, int event) {
    }

    void J(View view, int status) {
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
                textView.setText(this.f59863d.getResources().getString(R.string.download_status_download));
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
                button.setText(this.f59863d.getResources().getString(R.string.download_status_download));
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

    void K(TextView view, int payGameAmount) {
        view.setEnabled(true);
        view.setTextColor(-12802819);
        view.setText(view.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(payGameAmount)));
        view.setTextSize(2, 13.0f);
        view.setTextColor(-12802819);
        view.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0395  */
    /* JADX WARN: Code duplicated, block: B:106:0x039b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0099  */
    /* JADX WARN: Code duplicated, block: B:83:0x024d  */
    /* JADX WARN: Code duplicated, block: B:84:0x024f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0252  */
    /* JADX WARN: Code duplicated, block: B:90:0x0298 A[Catch: Exception -> 0x02ea, TryCatch #0 {Exception -> 0x02ea, blocks: (B:88:0x0290, B:90:0x0298, B:92:0x02df, B:91:0x02bc), top: B:109:0x0290 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x02bc A[Catch: Exception -> 0x02ea, TryCatch #0 {Exception -> 0x02ea, blocks: (B:88:0x0290, B:90:0x0298, B:92:0x02df, B:91:0x02bc), top: B:109:0x0290 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x0298, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x02bc, please report this as an issue */
    void L(c0 holder, Object businessBean) {
        int pay_game_amount;
        Button button = holder.f59894d;
        if (button == null || businessBean == null) {
            return;
        }
        Context context = button.getContext();
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
                b0(holder, 0);
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    K(holder.f59894d, pay_game_amount);
                } else {
                    J(button, status);
                }
            } else if (status2 == 27) {
                X(button, "暂停中");
            } else if (status2 == 2) {
                UtilsMy.U4(downloadTask);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                X(button, "暂停");
                Y(button, resources.getColor(R.color.app_blue_color));
                b0(holder, 16);
                if (downloadTask.getSize() == 0) {
                    holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                } else {
                    holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                }
                holder.f59901k.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                holder.f59900j.setText(speed + "/S");
            } else if (status2 == 3) {
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                X(button, "继续");
                Y(button, resources.getColor(R.color.app_blue_color));
                b0(holder, 16);
                try {
                    if (downloadTask.getSize() == 0) {
                        holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    } else {
                        holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    }
                    holder.f59901k.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                holder.f59900j.setText("暂停中");
            } else if (status2 == 5) {
                b0(holder, 0);
                button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                X(button, context.getResources().getString(R.string.download_status_finished));
                Y(button, resources.getColor(R.color.app_main_color));
            } else if (status2 == 6) {
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                X(button, "继续");
                Y(button, resources.getColor(R.color.app_blue_color));
                b0(holder, 16);
                if (downloadTask.getSize() == 0) {
                    holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                } else {
                    holder.f59899i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                }
                holder.f59901k.setProgress((int) downloadTask.getProgress());
                holder.f59900j.setText("暂停中");
            } else if (status2 == 7) {
                b0(holder, 0);
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    K(holder.f59894d, pay_game_amount);
                } else {
                    J(button, status);
                }
            } else if (status2 == 42) {
                b0(holder, 0);
                button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                X(button, context.getResources().getString(R.string.download_status_finished));
                Y(button, resources.getColor(R.color.app_main_color));
            } else if (status2 != 43) {
                switch (status2) {
                    case 9:
                        b0(holder, 0);
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        X(button, "更新");
                        Y(button, resources.getColor(R.color.app_green_color));
                        break;
                    case 10:
                        b0(holder, 16);
                        button.setBackgroundResource(R.drawable.recom_blue_butn);
                        X(button, "等待");
                        Y(button, resources.getColor(R.color.app_blue_color));
                        break;
                    case 11:
                        b0(holder, 0);
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        X(button, "安装");
                        Y(button, resources.getColor(R.color.app_green_color));
                        break;
                    case 12:
                        b0(holder, 17);
                        holder.f59899i.setText(UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        holder.f59900j.setText("解压中..");
                        holder.f59902l.setProgress((int) downloadTask.getProgress());
                        button.setBackgroundResource(R.drawable.extract);
                        X(button, "解压中");
                        Y(button, resources.getColor(R.color.app_grey_color));
                        break;
                    case 13:
                        b0(holder, 17);
                        holder.f59899i.setText(UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        holder.f59900j.setText("点击重新解压");
                        holder.f59902l.setProgress((int) downloadTask.getProgress());
                        button.setBackgroundResource(R.drawable.reextract);
                        X(button, "解压");
                        Y(button, resources.getColor(R.color.app_blue_color));
                        break;
                }
            } else {
                b0(holder, 0);
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    K(holder.f59894d, pay_game_amount);
                }
            }
        } else if (UtilsMy.p0(tipBeans)) {
            if (pay_game_amount > 0 ? false : com.join.android.app.common.utils.g.t0(context).e(context, packageName)) {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, packageName);
                if (!com.join.mgps.Util.t2.i(ver) || aVarN.d() >= Integer.parseInt(ver)) {
                    button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    X(button, context.getResources().getString(R.string.download_status_finished));
                    Y(button, resources.getColor(R.color.app_main_color));
                } else {
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    X(button, "更新");
                    Y(button, resources.getColor(R.color.app_green_color));
                }
            } else {
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    K(holder.f59894d, pay_game_amount);
                } else {
                    J(button, status);
                }
            }
        } else {
            button.setBackgroundResource(R.drawable.recom_green_butn);
            if (pay_game_amount > 0) {
                K(holder.f59894d, pay_game_amount);
            } else {
                J(button, status);
            }
        }
        button.setOnClickListener(new s(businessBean));
    }

    public void M(u l10) {
        this.f59870k = l10;
    }

    void N(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        LinearLayout.LayoutParams layoutParams;
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(url);
        if (numArrI0 == null || numArrI0[0].intValue() == 0 || numArrI0[1].intValue() == 0) {
            int i10 = this.f59872m;
            layoutParams = new LinearLayout.LayoutParams(i10, i10);
        } else {
            layoutParams = (((float) numArrI0[0].intValue()) * 1.0f) / ((float) numArrI0[1].intValue()) > 1.0f ? new LinearLayout.LayoutParams(this.f59873n, this.f59874o) : new LinearLayout.LayoutParams(this.f59875p, this.f59876q);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new o(rawPicList, imgIndex));
    }

    void O(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        if (this.f59867h == null) {
            this.f59867h = z();
        }
        int i10 = (int) (this.f59863d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f59867h;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (showIndex > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams2);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new p(rawPicList, imgIndex));
    }

    public void P(List<k0> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f59864e == null) {
            this.f59864e = new ArrayList();
        }
        this.f59864e.clear();
        this.f59864e.addAll(itemBeans);
    }

    public void Q(com.join.android.app.component.optimizetext.b layoutManager) {
        this.f59861b = layoutManager;
    }

    public void R(View v10, final int pid) {
        v10.setOnClickListener(new g(pid));
    }

    public void S(View v10, final int fid) {
        v10.setOnClickListener(new b(fid));
    }

    public void T(View v10, final int pid) {
        v10.setOnClickListener(new a(pid));
    }

    public void U(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new e(position));
    }

    public void V(View v10, final int pid) {
        v10.setOnClickListener(new d(pid));
    }

    void Z(SimpleDraweeView img, int showIndex, String url, final String href) {
        if (this.f59867h == null) {
            this.f59867h = z();
        }
        int i10 = (int) (this.f59863d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f59867h;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (showIndex > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams2);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new q(href));
    }

    public void a0(View v10, final int fid) {
        v10.setOnClickListener(new c(fid));
    }

    public void c(k0 items) {
        if (items == null) {
            return;
        }
        if (this.f59864e == null) {
            this.f59864e = new ArrayList();
        }
        this.f59864e.add(items);
    }

    void c0(w holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f60090h.setVisibility(8);
            holder.f60094l.setVisibility(8);
            holder.f60095m.setVisibility(8);
            holder.f60091i.setVisibility(0);
            holder.f60089g.setVisibility(0);
            return;
        }
        holder.f60090h.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f60094l.setVisibility(8);
            holder.f60095m.setVisibility(0);
        } else {
            holder.f60095m.setVisibility(8);
            holder.f60094l.setVisibility(0);
        }
        holder.f60091i.setVisibility(8);
        holder.f60089g.setVisibility(8);
    }

    public void d() {
        DisplayMetrics displayMetrics = this.f59863d.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        float dimensionPixelSize = displayMetrics.widthPixels - (this.f59863d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2);
        int i12 = ((int) (dimensionPixelSize - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (i12 <= i10) {
            i10 = i12 > i11 ? i11 : i12;
        }
        this.f59872m = i10;
        this.f59877r = (int) ((dimensionPixelSize * 1.0f) / 1.8f);
        int i13 = (int) (0.615f * dimensionPixelSize);
        this.f59873n = i13;
        this.f59874o = (int) ((i13 * 1.0f) / 1.85f);
        int i14 = (int) (dimensionPixelSize * 0.54f);
        this.f59875p = i14;
        this.f59876q = (int) ((i14 * 1.0f) / 0.85f);
    }

    LinearLayout.LayoutParams e(int measuredWidth) {
        if (this.f59869j == null) {
            float f10 = this.f59863d.getResources().getDisplayMetrics().scaledDensity;
            int i10 = (int) (225.0f * f10);
            int i11 = (int) (150.0f * f10);
            int i12 = (int) (f10 * 4.0f);
            if (measuredWidth <= i10) {
                i10 = measuredWidth > 0 ? measuredWidth : 0;
            }
            int i13 = (int) (i10 / 1.5f);
            if (measuredWidth <= 0) {
                i10 = -1;
            } else {
                i11 = i13;
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, i11);
            layoutParams.setMargins(0, i12, 0, i12);
            this.f59869j = layoutParams;
        }
        return this.f59869j;
    }

    LinearLayout.LayoutParams g(View view) {
        if (this.f59868i == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f59868i = layoutParams;
        }
        return this.f59868i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<k0> list = this.f59864e;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<k0> list = this.f59864e;
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
        List<k0> list = this.f59864e;
        if (list == null || position >= list.size()) {
            return -1;
        }
        return this.f59864e.get(position).b().ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return q(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return o(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return r(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return x(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return s(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return u(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_TOP.ordinal()) {
            return v(position, convertView, parent);
        }
        if (itemViewType == ViewType.FAVORITE_ITEM_HEADER.ordinal()) {
            return f(position, convertView, parent);
        }
        if (itemViewType == ViewType.GAME_ITEM.ordinal()) {
            return h(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_FOOTER.ordinal()) {
            return k(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_IMGS.ordinal()) {
            return l(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_VIDEO.ordinal()) {
            return n(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_MESSAGE.ordinal()) {
            return m(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_SUBJECT.ordinal()) {
            return t(position, convertView, parent);
        }
        return itemViewType == ViewType.POST_GAME.ordinal() ? p(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x041e  */
    /* JADX WARN: Code duplicated, block: B:69:0x0451  */
    /* JADX WARN: Code duplicated, block: B:72:0x0479 A[Catch: Exception -> 0x04cb, TryCatch #1 {Exception -> 0x04cb, blocks: (B:70:0x0471, B:72:0x0479, B:74:0x04c0, B:73:0x049d), top: B:90:0x0471 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x049d A[Catch: Exception -> 0x04cb, TryCatch #1 {Exception -> 0x04cb, blocks: (B:70:0x0471, B:72:0x0479, B:74:0x04c0, B:73:0x049d), top: B:90:0x0471 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0573  */
    /* JADX WARN: Instruction removed from duplicated block: B:72:0x0479, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x049d, please report this as an issue */
    public View h(final int position, View convertView, ViewGroup viewGroup) {
        w wVar;
        View view;
        if (convertView == null) {
            View viewInflate = LayoutInflater.from(this.f59863d).inflate(R.layout.app_listview_item, (ViewGroup) null);
            w wVar2 = new w();
            wVar2.f60084b = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            wVar2.f60085c = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
            wVar2.f60086d = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            wVar2.f60087e = (RelativeLayout) viewInflate.findViewById(R.id.rLayoutRight);
            wVar2.f60088f = (TextView) viewInflate.findViewById(R.id.mgListviewItemInstall);
            wVar2.f60089g = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
            wVar2.f60090h = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
            wVar2.f60091i = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            wVar2.f60092j = (TextView) viewInflate.findViewById(R.id.appSize);
            wVar2.f60093k = (TextView) viewInflate.findViewById(R.id.loding_info);
            wVar2.f60094l = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            wVar2.f60095m = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            wVar2.f60096n = viewInflate.findViewById(R.id.line);
            wVar2.f60097o = viewInflate.findViewById(R.id.relateLayoutApp);
            viewInflate.setTag(wVar2);
            wVar = wVar2;
            view = viewInflate;
        } else {
            wVar = (w) convertView.getTag();
            view = convertView;
        }
        wVar.f60096n.setVisibility(0);
        k0.b bVar = (k0.b) getItem(position);
        if (bVar == null) {
            return view;
        }
        CollectionBeanSub game = bVar.f59966a.getGame();
        game.setDownloadTask(bVar.f59966a.getDownloadTask());
        wVar.f60097o.setBackgroundResource(R.drawable.white_bg);
        DownloadTask downloadTask = game.getDownloadTask();
        if (game.getGift_package_switch() == 1) {
            wVar.f60085c.setVisibility(0);
        } else {
            wVar.f60085c.setVisibility(8);
        }
        wVar.f60086d.setText(game.getGame_name());
        wVar.f60089g.setText(game.getInfo());
        long j10 = (long) (Double.parseDouble(game.getSize()) * 1024.0d * 1024.0d);
        String ico_remote = game.getIco_remote();
        if (TextUtils.isEmpty(ico_remote)) {
            ico_remote = "";
        }
        com.join.android.app.common.utils.l.h(wVar.f60084b, ico_remote.trim());
        game.getTag_info();
        UtilsMy.K(game.getScore(), game.getDown_count(), game.getSize(), game.getSp_tag_info(), game.getTag_info(), wVar.f60091i, this.f59863d);
        UtilsMy.A3(game.getSp_tag_info(), view, downloadTask);
        if (game.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
            wVar.f60088f.setText("开始");
            wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
            wVar.f60091i.setVisibility(8);
            wVar.f60085c.setVisibility(8);
        } else if (downloadTask == null) {
            c0(wVar, Boolean.TRUE, Boolean.FALSE);
            if (!UtilsMy.p0(game.getTag_info())) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id());
                UtilsMy.p3(wVar.f60088f, wVar.f60087e, game);
            } else if (UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.g.t0(this.f59863d).e(this.f59863d, game.getPackage_name()) : false) {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f59863d).n(this.f59863d, game.getPackage_name());
                if (!com.join.mgps.Util.t2.i(game.getVer()) || aVarN.d() >= Integer.parseInt(game.getVer())) {
                    wVar.f60088f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    wVar.f60088f.setText(this.f59863d.getResources().getString(R.string.download_status_finished));
                    wVar.f60088f.setTextColor(-688602);
                } else {
                    wVar.f60088f.setBackgroundResource(R.drawable.recom_green_butn);
                    wVar.f60088f.setText("更新");
                    wVar.f60088f.setTextColor(-9263087);
                }
            } else {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id());
                UtilsMy.p3(wVar.f60088f, wVar.f60087e, game);
            }
        } else {
            com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id());
                UtilsMy.p3(wVar.f60088f, wVar.f60087e, game);
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                c0(wVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 27) {
                wVar.f60088f.setText("暂停中");
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                wVar.f60088f.setText("暂停");
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                Boolean bool = Boolean.FALSE;
                c0(wVar, bool, bool);
                if (downloadTask.getSize() == 0) {
                    wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                wVar.f60094l.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                wVar.f60093k.setText(speed + "/S");
            } else if (status == 3) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                wVar.f60088f.setText("继续");
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                Boolean bool2 = Boolean.FALSE;
                c0(wVar, bool2, bool2);
                try {
                    if (downloadTask.getSize() == 0) {
                        wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    wVar.f60094l.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                wVar.f60093k.setText("暂停中");
            } else if (status == 5) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                wVar.f60088f.setText(this.f59863d.getResources().getString(R.string.download_status_finished));
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_main_color));
                Boolean bool3 = Boolean.TRUE;
                c0(wVar, bool3, bool3);
            } else if (status == 6) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                wVar.f60088f.setText("继续");
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                Boolean bool4 = Boolean.FALSE;
                c0(wVar, bool4, bool4);
                if (downloadTask.getSize() == 0) {
                    wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                wVar.f60094l.setProgress((int) downloadTask.getProgress());
                wVar.f60093k.setText("暂停中");
            } else if (status == 7) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id());
                UtilsMy.p3(wVar.f60088f, wVar.f60087e, game);
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                c0(wVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 42) {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                wVar.f60088f.setText(this.f59863d.getResources().getString(R.string.download_status_finished));
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_main_color));
                Boolean bool5 = Boolean.TRUE;
                c0(wVar, bool5, bool5);
            } else if (status != 43) {
                switch (status) {
                    case 9:
                        wVar.f60088f.setBackgroundResource(R.drawable.recom_green_butn);
                        wVar.f60088f.setText("更新");
                        wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_green_color));
                        c0(wVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                        wVar.f60088f.setText("等待");
                        wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                        Boolean bool6 = Boolean.FALSE;
                        c0(wVar, bool6, bool6);
                        wVar.f60092j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        try {
                            wVar.f60094l.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        wVar.f60093k.setText("等待中");
                        break;
                    case 11:
                        wVar.f60088f.setBackgroundResource(R.drawable.recom_green_butn);
                        wVar.f60088f.setText("安装");
                        wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_green_color));
                        c0(wVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 12:
                        c0(wVar, Boolean.FALSE, Boolean.TRUE);
                        wVar.f60092j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        wVar.f60093k.setText("解压中..");
                        wVar.f60095m.setProgress((int) downloadTask.getProgress());
                        wVar.f60088f.setBackgroundResource(R.drawable.extract);
                        wVar.f60088f.setText("解压中");
                        wVar.f60088f.setTextColor(-4868683);
                        break;
                    case 13:
                        c0(wVar, Boolean.FALSE, Boolean.TRUE);
                        wVar.f60092j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        wVar.f60093k.setText("点击重新解压");
                        wVar.f60095m.setProgress((int) downloadTask.getProgress());
                        wVar.f60088f.setBackgroundResource(R.drawable.reextract);
                        wVar.f60088f.setText("解压");
                        wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_grey_color));
                        break;
                }
            } else {
                wVar.f60088f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.x0(game.getPay_tag_info(), game.getCrc_sign_id());
                UtilsMy.p3(wVar.f60088f, wVar.f60087e, game);
                wVar.f60088f.setTextColor(this.f59863d.getResources().getColor(R.color.app_blue_color));
                c0(wVar, Boolean.TRUE, Boolean.FALSE);
            }
        }
        wVar.f60087e.setClickable(true);
        wVar.f60087e.setOnClickListener(new r(game));
        return view;
    }

    public List<k0> i() {
        return this.f59864e;
    }

    public com.join.android.app.component.optimizetext.b j() {
        return this.f59861b;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public com.danikula.videocache.i y(Context context) {
        return MApplication.q(context);
    }

    LinearLayout.LayoutParams z() {
        DisplayMetrics displayMetrics = this.f59863d.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f59863d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }
}
