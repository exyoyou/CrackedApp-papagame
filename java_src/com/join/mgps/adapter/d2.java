package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.CouponListActivity;
import com.join.kotlin.ui.notice.NoticeListActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UploadActivity_;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.GameDetailCloudArchive;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import com.join.mgps.dto.GameDetialAuxiliaryBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialAuxiliaryToolBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class d2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f61512w = "GameDetialModleThreeAda";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GamedetialModleFourBean f61513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f61514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BaseGameDetailFragment f61515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f61516h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.danikula.videocache.i f61520l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f61522n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f61523o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f61525q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f61528t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f61517i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    c1 f61518j = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f61524p = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f61527s = System.currentTimeMillis();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List<View> f61529u = new ArrayList();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    z0 f61530v = new z0();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<b1> f61526r = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<RecommendGameBean> f61519k = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Map<Integer, Boolean> f61521m = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d2.this.R();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumFid(d2.this.f61516h, (int) d2.this.f61513e.getForum_id());
        }
    }

    class a1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f61533d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f61534e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f61535f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f61536g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ImageView f61537h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f61538i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private MStarBar f61539j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f61540k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f61541l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ImageView f61542m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f61543n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f61544o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f61545p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f61546q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImageView f61547r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TextView f61548s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private ImageView f61549t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private TextView f61550u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private ImageView f61551v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private TextView f61552w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private VipView f61553x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private View f61554y;

        public a1(View view) {
            super(view);
            this.f61533d = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f61534e = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f61535f = (TextView) view.findViewById(R.id.userName);
            this.f61536g = (TextView) view.findViewById(R.id.isMe);
            this.f61537h = (ImageView) view.findViewById(R.id.isAuth);
            this.f61542m = (ImageView) view.findViewById(R.id.isGood);
            this.f61538i = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f61539j = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f61540k = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f61541l = (TextView) view.findViewById(R.id.time);
            this.f61543n = (TextView) view.findViewById(R.id.content);
            this.f61544o = (TextView) view.findViewById(R.id.more);
            this.f61545p = view.findViewById(R.id.line);
            this.f61546q = (TextView) view.findViewById(R.id.phoneModle);
            this.f61547r = (ImageView) view.findViewById(R.id.parise);
            this.f61548s = (TextView) view.findViewById(R.id.pariseNumber);
            this.f61549t = (ImageView) view.findViewById(R.id.down);
            this.f61550u = (TextView) view.findViewById(R.id.downNumber);
            this.f61551v = (ImageView) view.findViewById(R.id.message);
            this.f61552w = (TextView) view.findViewById(R.id.messageNumber);
            this.f61553x = (VipView) view.findViewById(R.id.levelTv);
            this.f61554y = view.findViewById(R.id.layoutTop);
        }
    }

    class a2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61556d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f61557e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f61558f;

        public a2(View itemView) {
            super(itemView);
            this.f61557e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f61556d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
            this.f61558f = itemView.findViewById(R.id.line_h);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(d2.this.f61513e.getGame_company_id()) || "0".equals(d2.this.f61513e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(d2.this.f61516h).e(1).a(true).c(d2.this.f61513e.getGame_company_id()).d(d2.this.f61513e.getCompany_name()).start();
        }
    }

    class b0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AppBeanMain f61561b;

        b0(final AppBeanMain val$appBeanMain) {
            this.f61561b = val$appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(d2.this.f61516h, this.f61561b.getIntentDataBean());
        }
    }

    public class b1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f61563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f61565c;

        public b1(Object object, int itemType) {
            this.f61563a = object;
            this.f61564b = itemType;
        }
    }

    class b2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f61567d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Button f61568e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public HorizontalScrollView f61569f;

        public b2(View itemView) {
            super(itemView);
            this.f61567d = (LinearLayout) itemView.findViewById(R.id.titleMoreTip);
            this.f61568e = (Button) itemView.findViewById(R.id.titleMoreBookButn);
            this.f61569f = (HorizontalScrollView) itemView.findViewById(R.id.scrollView);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d2.this.f61518j.h();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.t2.i(d2.y(d2.this.f61516h))) {
                IntentUtil.getInstance().goQQGroup(d2.this.f61516h, d2.this.f61513e.getGame_detailed().getTpl_two_qq_key());
            } else {
                com.join.mgps.Util.a3.b(d2.this.f61516h).d("已复制QQ号，请安装QQ后粘贴搜索");
                com.join.mgps.Util.r0.M(d2.this.f61516h, d2.this.f61513e.getGame_detailed().getTpl_two_qq());
            }
        }
    }

    public interface c1 {
        void a(InformationCommentBean bean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean bean);

        void d();

        void e();

        void f();

        void g();

        void h();

        void i(boolean isGetGift, GiftPackageDataInfoBean gift);

        void onPraise(CommentBaseBean bean, int position, int type);

        void onRootView(CommentBaseBean bean);

        void onUnPraise(CommentBaseBean bean, int position, int type);
    }

    class c2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61573d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f61574e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61575f;

        public c2(View itemView) {
            super(itemView);
            this.f61573d = (LinearLayout) itemView.findViewById(R.id.linearLayout);
            this.f61574e = (LinearLayout) itemView.findViewById(R.id.linearLayout_top);
            this.f61575f = (LinearLayout) itemView.findViewById(R.id.linearLayout_bottom);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TipBean f61577b;

        d(final TipBean val$tipBean) {
            this.f61577b = val$tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.intent(d2.this.f61516h).b(0).d(this.f61577b.getName()).e(Integer.parseInt(this.f61577b.getId())).start();
        }
    }

    class d0 implements View.OnScrollChangeListener {
        d0() {
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
            d2.this.f61522n = scrollX;
        }
    }

    public static class d1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f61580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public InformationCommentBean f61581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f61582c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f61583d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f61584e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f61585f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f61586g;

        public d1(String commentId, InformationCommentBean commentBean, int myAuth, boolean showDivider) {
            this.f61580a = commentId;
            this.f61581b = commentBean;
            this.f61582c = myAuth;
            this.f61583d = showDivider;
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.adapter.d2$d2, reason: collision with other inner class name */
    class C0692d2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f61587d;

        public C0692d2(View itemView) {
            super(itemView);
            this.f61587d = (LinearLayout) itemView.findViewById(R.id.tipslayout);
        }
    }

    class e implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f61589a;

        e(final List val$strings) {
            this.f61589a = val$strings;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(d2.this.f61516h, (Class<?>) ImagePagerActivity.class);
                String[] strArr = new String[this.f61589a.size()];
                for (int i10 = 0; i10 < this.f61589a.size(); i10++) {
                    strArr[i10] = (String) this.f61589a.get(i10);
                }
                if (com.join.mgps.Util.t2.i(d2.this.f61513e.getVedio_url()) && position == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(d2.this.f61513e.getVedio_url());
                    videoInfo.C(strArr[0]);
                    FullScreenActivity_.intent(d2.this.f61516h).a(videoInfo).start();
                } else {
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", position);
                    d2.this.f61516h.startActivity(intent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class e0 implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l2 f61591b;

        e0(final l2 val$myHolder) {
            this.f61591b = val$myHolder;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            d2.this.f61523o = this.f61591b.f61695e.getCurrentItem();
        }
    }

    class e1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f61593d;

        public e1(View itemView) {
            super(itemView);
            this.f61593d = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    class e2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61595d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61596e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public LinearLayout f61597f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f61598g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f61599h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f61600i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f61601j;

        public e2(View itemView) {
            super(itemView);
            this.f61595d = (TextView) itemView.findViewById(R.id.titleText);
            this.f61596e = (TextView) itemView.findViewById(R.id.moreText);
            this.f61599h = itemView.findViewById(R.id.line_h);
            this.f61597f = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f61598g = itemView.findViewById(R.id.layoutTop);
            this.f61600i = (ImageView) itemView.findViewById(R.id.imageView5);
            this.f61601j = (ImageView) itemView.findViewById(R.id.icon);
        }
    }

    class f implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f61603a;

        f(final List val$listItemBeans) {
            this.f61603a = val$listItemBeans;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            ScreenshotTrueListAcvity_.intent(d2.this.f61516h).fromData((ScreenshotGamedetialBean) this.f61603a.get(position)).gameId(d2.this.f61513e.getGame_id()).start();
        }
    }

    class f0 implements AdapterView.d {
        f0() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            com.papa.sim.statistic.t.l(view.getContext()).F("xuanguan", AccountUtil_.getInstance_(view.getContext()).getUid());
            d2.this.r(view.getContext(), "选关");
        }
    }

    private class f1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f61606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f61607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61608f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61609g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f61610h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        SimpleDraweeView f61611i;

        public f1(View view) {
            super(view);
            this.f61606d = view.findViewById(R.id.line_h);
            this.f61608f = (TextView) view.findViewById(R.id.count);
            this.f61609g = (TextView) view.findViewById(R.id.auth);
            this.f61610h = (TextView) view.findViewById(R.id.title);
            this.f61611i = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f61607e = view.findViewById(R.id.top);
        }
    }

    class f2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f61613d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        StandardVideoView f61614e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61615f;

        public f2(View itemView) {
            super(itemView);
            this.f61613d = (SimpleDraweeView) itemView.findViewById(R.id.iv_book_bg);
            this.f61614e = (StandardVideoView) itemView.findViewById(R.id.videoPlayer);
            this.f61615f = (LinearLayout) itemView.findViewById(R.id.rl_top);
        }
    }

    class g implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f61617b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ r1 f61618c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ r1 f61619d;

        g(final r1 val$finalCommentViewHolderx, final r1 val$holderGDescribe) {
            this.f61618c = val$finalCommentViewHolderx;
            this.f61619d = val$holderGDescribe;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f61617b) {
                Layout layout = this.f61618c.f61781d.getLayout();
                if (layout == null) {
                    this.f61619d.f61782e.setVisibility(8);
                    return;
                }
                int lineCount = layout.getLineCount();
                if (lineCount > 4) {
                    this.f61619d.f61782e.setVisibility(0);
                } else if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        this.f61619d.f61782e.setVisibility(0);
                    } else {
                        this.f61619d.f61782e.setVisibility(8);
                    }
                }
                this.f61617b = false;
            }
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strEncode;
            try {
                strEncode = URLEncoder.encode(d2.this.f61513e.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
                strEncode = "";
            }
            IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, com.join.mgps.rpc.h.f72349j + "/static/vip2020/v2/index.html#/gameGift?game_id=" + d2.this.f61513e.getCrc_sign_id() + "&name=" + strEncode);
        }
    }

    class g1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61622d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f61623e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61624f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f61625g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f61626h;

        public g1(View itemView) {
            super(itemView);
            this.f61622d = (LinearLayout) itemView.findViewById(R.id.goCommit);
            this.f61623e = (LinearLayout) itemView.findViewById(R.id.starlayout);
            this.f61624f = (TextView) itemView.findViewById(R.id.textMessage);
            this.f61625g = itemView.findViewById(R.id.layoutTop);
            this.f61626h = itemView.findViewById(R.id.layoutTop2);
        }
    }

    class g2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f61628d;

        public g2(View itemView) {
            super(itemView);
            this.f61628d = (HListView) itemView.findViewById(R.id.screenListView);
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r1 f61630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b1 f61631c;

        h(final r1 val$holderGDescribe, final b1 val$describ) {
            this.f61630b = val$holderGDescribe;
            this.f61631c = val$describ;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61630b.f61782e.getText().toString().equals("展开")) {
                this.f61630b.f61781d.setMaxLines(Integer.MAX_VALUE);
                this.f61630b.f61782e.setText("收起");
                this.f61631c.f61565c = 1;
            } else {
                this.f61630b.f61781d.setMaxLines(4);
                this.f61630b.f61782e.setText("展开");
                this.f61631c.f61565c = 0;
            }
        }
    }

    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            d2.this.r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
        }
    }

    class h1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61634d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61635e;

        public h1(View itemView) {
            super(itemView);
            this.f61634d = (TextView) itemView.findViewById(R.id.info);
            this.f61635e = (TextView) itemView.findViewById(R.id.more);
        }
    }

    private class h2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61637d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61638e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61639f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61640g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView[] f61641h;

        public h2(View view) {
            super(view);
            this.f61641h = null;
            this.f61637d = (TextView) view.findViewById(R.id.f35465k1);
            this.f61638e = (TextView) view.findViewById(R.id.f35466k2);
            this.f61639f = (TextView) view.findViewById(R.id.f35467k3);
            TextView textView = (TextView) view.findViewById(R.id.f35468k4);
            this.f61640g = textView;
            this.f61641h = new TextView[]{this.f61637d, this.f61638e, this.f61639f, textView};
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61643b;

        i(final GiftPackageDataInfoBean val$gift) {
            this.f61643b = val$gift;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61643b.getGift_package_status() == 0) {
                d2.this.f61518j.i(true, this.f61643b);
            } else {
                d2.this.f61518j.i(false, this.f61643b);
            }
        }
    }

    class i0 implements View.OnClickListener {
        i0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            d2.this.r(view.getContext(), "云存档");
        }
    }

    class i1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f61646d;

        public i1(View itemView) {
            super(itemView);
            this.f61646d = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    private class i2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61648d;

        public i2(View view) {
            super(view);
            this.f61648d = (TextView) view.findViewById(R.id.text);
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61650b;

        j(final GiftPackageDataInfoBean val$gift) {
            this.f61650b = val$gift;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String strEncode;
            try {
                strEncode = URLEncoder.encode(d2.this.f61513e.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
                strEncode = "";
            }
            IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, com.join.mgps.rpc.h.f72349j + "/static/vip2020/v2/index.html#/giftDetail?gift_package_id=" + this.f61650b.getGift_package_id() + "&name=" + strEncode);
        }
    }

    class j0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61652b;

        j0(final CommentBaseBean val$commitDataBean) {
            this.f61652b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f61652b.getUid())).start();
        }
    }

    class j1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f61654d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f61655e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SimpleDraweeView f61656f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f61657g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f61658h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        LinearLayout f61659i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f61660j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f61661k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f61662l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f61663m;

        public j1(View itemView) {
            super(itemView);
            this.f61654d = (SimpleDraweeView) itemView.findViewById(R.id.vpnImage);
            this.f61655e = (SimpleDraweeView) itemView.findViewById(R.id.googleImage);
            this.f61656f = (SimpleDraweeView) itemView.findViewById(R.id.rootImage);
            this.f61657g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f61658h = (LinearLayout) itemView.findViewById(R.id.vpnLayout);
            this.f61659i = (LinearLayout) itemView.findViewById(R.id.googleLayout);
            this.f61660j = (LinearLayout) itemView.findViewById(R.id.rootLayout);
            this.f61661k = (TextView) itemView.findViewById(R.id.vpnText);
            this.f61662l = (TextView) itemView.findViewById(R.id.googleText);
            this.f61663m = (TextView) itemView.findViewById(R.id.rootText);
        }
    }

    class j2 extends f7.a {
        public j2(View itemView) {
            super(itemView);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            d2.this.r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
        }
    }

    class k0 implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a1 f61667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61668c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Layout layout = k0.this.f61667b.f61543n.getLayout();
                if (layout == null) {
                    k0.this.f61667b.f61544o.setVisibility(8);
                    return;
                }
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        k0.this.f61667b.f61544o.setVisibility(0);
                    } else if (d2.this.f61521m.containsKey(Integer.valueOf(k0.this.f61668c))) {
                        k0.this.f61667b.f61544o.setVisibility(0);
                    } else {
                        k0.this.f61667b.f61544o.setVisibility(8);
                    }
                }
            }
        }

        k0(final a1 val$finalCommentViewHolder1, final int val$position) {
            this.f61667b = val$finalCommentViewHolder1;
            this.f61668c = val$position;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v10) {
            this.f61667b.f61543n.post(new a());
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v10) {
        }
    }

    class k1 extends f7.a {
        public k1(View itemView) {
            super(itemView);
        }
    }

    class k2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61672d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61673e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61674f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f61675g;

        public k2(View itemView) {
            super(itemView);
            this.f61672d = (TextView) itemView.findViewById(R.id.tag);
            this.f61673e = (TextView) itemView.findViewById(R.id.title);
            this.f61675g = itemView.findViewById(R.id.main);
            this.f61674f = (TextView) itemView.findViewById(R.id.message);
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDetialAuxiliaryBean f61678c;

        l(final List val$auxiliaryTool, final GameDetialAuxiliaryBean val$auxiliaryBean) {
            this.f61677b = val$auxiliaryTool;
            this.f61678c = val$auxiliaryBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61677b.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, this.f61678c.getMore_url());
            }
        }
    }

    class l0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a1 f61680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61682d;

        l0(final a1 val$finalCommentViewHolder, final int val$position, final CommentBaseBean val$commitDataBean) {
            this.f61680b = val$finalCommentViewHolder;
            this.f61681c = val$position;
            this.f61682d = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61680b.f61544o.getText().toString().equals("查看全部")) {
                d2.this.f61521m.put(Integer.valueOf(this.f61681c), Boolean.TRUE);
                this.f61680b.f61543n.setMaxLines(Integer.MAX_VALUE);
                this.f61680b.f61544o.setText("收起");
            } else {
                d2.this.f61521m.put(Integer.valueOf(this.f61681c), Boolean.FALSE);
                this.f61680b.f61543n.setMaxLines(5);
                this.f61680b.f61544o.setText("查看全部");
            }
        }
    }

    class l1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f61684d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f61685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView f61686f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61687g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f61688h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f61689i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f61690j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        VipView f61691k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f61692l;

        public l1(View itemView) {
            super(itemView);
            this.f61684d = (RelativeLayout) itemView.findViewById(R.id.main);
            this.f61685e = (SimpleDraweeView) itemView.findViewById(R.id.usericon);
            this.f61686f = (ImageView) itemView.findViewById(R.id.parise);
            this.f61687g = (TextView) itemView.findViewById(R.id.username);
            this.f61688h = (TextView) itemView.findViewById(R.id.time);
            this.f61689i = (TextView) itemView.findViewById(R.id.content);
            this.f61690j = (TextView) itemView.findViewById(R.id.pariseNumber);
            this.f61691k = (VipView) itemView.findViewById(R.id.levelTv);
            this.f61692l = itemView.findViewById(R.id.line);
        }
    }

    class l2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SlidingTabLayoutGameDetail f61694d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewPager f61695e;

        public l2(View itemView) {
            super(itemView);
            this.f61694d = (SlidingTabLayoutGameDetail) itemView.findViewById(R.id.tabLayout);
            this.f61695e = (ViewPager) itemView.findViewById(R.id.viewPager);
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61697b;

        m(final List val$auxiliaryTool) {
            this.f61697b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61697b.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, ((GamedetialAuxiliaryToolBean) this.f61697b.get(0)).getUrl());
            }
        }
    }

    class m0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f61699b;

        m0(final InformationCommentBean val$commitDataBean) {
            this.f61699b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            c1 c1Var = d2.this.f61518j;
            if (c1Var != null) {
                c1Var.c(this.f61699b);
            }
        }
    }

    class m1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f61701d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61702e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61703f;

        public m1(View itemView) {
            super(itemView);
            this.f61701d = (RelativeLayout) itemView.findViewById(R.id.commentFooterLayout);
            this.f61702e = (TextView) itemView.findViewById(R.id.showAllCommit);
            this.f61703f = (TextView) itemView.findViewById(R.id.goforum);
        }
    }

    class m2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61705d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61706e;

        public m2(View itemView) {
            super(itemView);
            this.f61705d = (LinearLayout) itemView.findViewById(R.id.handSharkLayout);
            this.f61706e = (TextView) itemView.findViewById(R.id.suntitle);
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61708b;

        n(final List val$auxiliaryTool) {
            this.f61708b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61708b.size() > 1) {
                IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, ((GamedetialAuxiliaryToolBean) this.f61708b.get(1)).getUrl());
            }
        }
    }

    class n0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61711c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61712d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ d1 f61713e;

        n0(final int val$itemIndex, final int val$position, final String val$cid, final d1 val$commentMessageReply) {
            this.f61710b = val$itemIndex;
            this.f61711c = val$position;
            this.f61712d = val$cid;
            this.f61713e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61710b == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f61710b; i10 >= 0; i10--) {
                b1 b1Var = (b1) d2.this.f61526r.get(this.f61711c - i10);
                d1 d1Var = b1Var.f61564b == 15 ? (d1) b1Var.f61563a : null;
                if (d1Var != null && this.f61712d == d1Var.f61580a) {
                    arrayList.addAll(d1Var.f61581b.getSub());
                }
            }
            for (int i11 = 0; i11 <= this.f61710b; i11++) {
                d2.this.f61526r.remove(this.f61711c - i11);
            }
            informationCommentBean.setSub(arrayList);
            d2.this.f61526r.add(this.f61711c - this.f61710b, d2.this.p(this.f61712d, informationCommentBean, this.f61713e.f61582c, true));
            d2.this.notifyDataSetChanged();
        }
    }

    class n1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61715d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ImageView f61716e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f61717f;

        public n1(View itemView) {
            super(itemView);
            this.f61716e = (ImageView) itemView.findViewById(R.id.commitImage);
            this.f61717f = itemView.findViewById(R.id.layoutBottom);
            this.f61715d = (TextView) itemView.findViewById(R.id.commitCount);
        }
    }

    class n2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61719d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61720e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61721f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61722g;

        public n2(View itemView) {
            super(itemView);
            this.f61719d = (TextView) itemView.findViewById(R.id.tag);
            this.f61720e = (TextView) itemView.findViewById(R.id.day);
            this.f61721f = (TextView) itemView.findViewById(R.id.time);
            this.f61722g = (TextView) itemView.findViewById(R.id.serverName);
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61724b;

        o(final List val$auxiliaryTool) {
            this.f61724b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61724b.size() > 2) {
                IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, ((GamedetialAuxiliaryToolBean) this.f61724b.get(2)).getUrl());
            }
        }
    }

    class o0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61726b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f61727c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61728d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f61729e;

        o0(final int val$size, final InformationCommentBean val$forumCommentBean, final String val$cid, final int val$position) {
            this.f61726b = val$size;
            this.f61727c = val$forumCommentBean;
            this.f61728d = val$cid;
            this.f61729e = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f61726b) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f61727c);
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
                b1 b1VarP = d2.this.p(this.f61728d, informationCommentBean, 0, i11 == 0);
                d1 d1Var = (d1) b1VarP.f61563a;
                d1Var.f61584e = i11;
                d1Var.f61585f = z10;
                d1Var.f61583d = i11 == 0;
                d2.this.H(b1VarP, !z10);
                d2.this.f61526r.add(this.f61729e + i11 + 1, b1VarP);
                i11++;
                i10 = i12;
            }
            d2.this.f61526r.remove(this.f61729e);
            d2.this.notifyDataSetChanged();
        }
    }

    class o1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61731d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f61732e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61733f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61734g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f61735h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f61736i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f61737j;

        public o1(View itemView) {
            super(itemView);
            this.f61737j = (LinearLayout) itemView.findViewById(R.id.parentLayout);
            this.f61731d = (LinearLayout) itemView.findViewById(R.id.comment_reply_container);
            this.f61732e = itemView.findViewById(R.id.comment_reply_divider);
            this.f61733f = (TextView) itemView.findViewById(R.id.comment_reply_content);
            this.f61734g = (TextView) itemView.findViewById(R.id.comment_reply_more);
            this.f61735h = itemView.findViewById(R.id.line);
            this.f61736i = itemView.findViewById(R.id.bottom);
        }
    }

    public class o2 {
        public static final int A = 26;
        public static final int B = 27;
        public static final int C = 28;
        public static final int D = 29;
        public static final int E = 30;
        public static final int F = 31;
        public static final int G = 32;
        public static final int H = 33;
        public static final int I = 34;
        public static final int J = 35;
        public static final int K = 36;
        public static final int L = 37;
        public static final int M = 38;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f61739b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f61740c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f61741d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f61742e = 4;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f61743f = 5;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f61744g = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f61745h = 7;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f61746i = 8;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f61747j = 9;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f61748k = 10;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f61749l = 11;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f61750m = 12;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f61751n = 13;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f61752o = 14;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f61753p = 15;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f61754q = 16;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f61755r = 17;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final int f61756s = 18;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final int f61757t = 19;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final int f61758u = 20;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final int f61759v = 21;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f61760w = 22;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f61761x = 23;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final int f61762y = 24;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final int f61763z = 25;

        public o2() {
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ y1 f61765b;

        p(final y1 val$holderGUpdateinfo) {
            this.f61765b = val$holderGUpdateinfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f61765b.f61872e.getText().toString())) {
                this.f61765b.f61872e.setText("展开");
                this.f61765b.f61871d.setVisibility(8);
            } else {
                this.f61765b.f61872e.setText("收起");
                this.f61765b.f61871d.setVisibility(0);
            }
        }
    }

    class p0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f61767b;

        p0(final InformationCommentBean.Sub val$sub) {
            this.f61767b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            c1 c1Var = d2.this.f61518j;
            if (c1Var != null) {
                c1Var.b(this.f61767b);
            }
        }
    }

    class p1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61769d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f61770e;

        public p1(View itemView) {
            super(itemView);
            this.f61770e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f61769d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ x1 f61772b;

        q(final x1 val$holderGUpdateinfo1) {
            this.f61772b = val$holderGUpdateinfo1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f61772b.f61851f.getText().toString())) {
                this.f61772b.f61851f.setText("展开");
                if (d2.this.f61513e.getGame_upgrade_info_switch() == 1) {
                    this.f61772b.f61849d.setVisibility(8);
                }
                if (d2.this.f61513e.getGame_detailed() != null) {
                    this.f61772b.f61850e.setVisibility(8);
                    return;
                }
                return;
            }
            this.f61772b.f61851f.setText("收起");
            if (d2.this.f61513e.getGame_upgrade_info_switch() == 1) {
                this.f61772b.f61849d.setVisibility(0);
            }
            if (d2.this.f61513e.getGame_detailed() != null) {
                this.f61772b.f61850e.setVisibility(0);
            }
        }
    }

    class q0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61774b;

        q0(final CommentBaseBean val$commitDataBean) {
            this.f61774b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            c1 c1Var;
            CommentBaseBean commentBaseBean = this.f61774b;
            if (commentBaseBean == null || (c1Var = d2.this.f61518j) == null) {
                return;
            }
            c1Var.onRootView(commentBaseBean);
        }
    }

    class q1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61776d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f61777e;

        public q1(View itemView) {
            super(itemView);
            this.f61777e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f61776d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(d2.this.f61513e.getGame_company_id()) || "0".equals(d2.this.f61513e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(d2.this.f61516h).e(1).a(true).c(d2.this.f61513e.getGame_company_id()).d(d2.this.f61513e.getCompany_name()).start();
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(d2.this.f61513e.getGame_company_id()) || "0".equals(d2.this.f61513e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(d2.this.f61516h).e(1).a(true).c(d2.this.f61513e.getGame_company_id()).d(d2.this.f61513e.getCompany_name()).start();
        }
    }

    class r1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61781d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61782e;

        public r1(View itemView) {
            super(itemView);
            this.f61781d = (TextView) itemView.findViewById(R.id.htmlGameDescribe);
            this.f61782e = (TextView) itemView.findViewById(R.id.textMore);
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            UserInfo accountData = AccountUtil_.getInstance_(d2.this.f61516h).getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                com.join.mgps.Util.a3.b(d2.this.f61516h).d("让大伙知道分享者的大名");
                IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h);
            } else {
                if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                    IntentUtil.getInstance().goChangeNickname(d2.this.f61516h);
                    return;
                }
                PrefDef_ prefDef_ = new PrefDef_(d2.this.f61516h);
                if (com.join.mgps.Util.t2.i(prefDef_.uploadType2().d())) {
                    IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, prefDef_.uploadType2().d());
                } else {
                    UploadActivity_.intent(d2.this.f61516h).start();
                }
            }
        }
    }

    class s0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f61787d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f61788e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(s0.this.f61788e.getText().toString()).longValue();
                s0.this.f61788e.setText((jLongValue + 1) + "");
                s0 s0Var = s0.this;
                d2.this.o(s0Var.f61786c);
                s0 s0Var2 = s0.this;
                c1 c1Var = d2.this.f61518j;
                if (c1Var != null) {
                    c1Var.onPraise(s0Var2.f61785b, s0Var2.f61786c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        s0(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f61785b = val$commitDataBean;
            this.f61786c = val$position;
            this.f61787d = val$view;
            this.f61788e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            long jCurrentTimeMillis = System.currentTimeMillis();
            d2 d2Var = d2.this;
            if (jCurrentTimeMillis - d2Var.f61527s < 500) {
                return;
            }
            d2Var.f61527s = jCurrentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h) || (commentBaseBean = this.f61785b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                d2.this.U(this.f61786c);
                this.f61787d.setImageResource(R.drawable.up_ic);
                c1 c1Var = d2.this.f61518j;
                if (c1Var != null) {
                    c1Var.onPraise(this.f61785b, this.f61786c, 2);
                    return;
                }
                return;
            }
            this.f61785b.setIs_praise(1);
            if (AccountUtil_.getInstance_(d2.this.f61516h).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h);
                return;
            }
            this.f61787d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(d2.this.f61516h, R.anim.scale_reset);
            this.f61787d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class s1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f61791d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61792e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61793f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f61794g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f61795h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f61796i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f61797j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f61798k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f61799l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f61800m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        TextView f61801n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        TextView f61802o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        TextView f61803p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        LinearLayout f61804q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        LinearLayout f61805r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        LinearLayout f61806s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        LinearLayout f61807t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        LinearLayout f61808u;

        public s1(View itemView) {
            super(itemView);
            this.f61791d = (RelativeLayout) itemView.findViewById(R.id.message);
            this.f61792e = (TextView) itemView.findViewById(R.id.moreText);
            this.f61793f = (TextView) itemView.findViewById(R.id.downNumberTitle);
            this.f61794g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f61795h = (TextView) itemView.findViewById(R.id.downNumber);
            this.f61796i = (TextView) itemView.findViewById(R.id.nowVersion);
            this.f61797j = (TextView) itemView.findViewById(R.id.appSize);
            this.f61798k = (TextView) itemView.findViewById(R.id.updateDate);
            this.f61799l = (TextView) itemView.findViewById(R.id.androdVersion);
            this.f61800m = (TextView) itemView.findViewById(R.id.commpany);
            this.f61801n = (TextView) itemView.findViewById(R.id.resousFrom);
            this.f61802o = (TextView) itemView.findViewById(R.id.upGame);
            this.f61804q = (LinearLayout) itemView.findViewById(R.id.resousFromLayout);
            this.f61805r = (LinearLayout) itemView.findViewById(R.id.commpanyLayout);
            this.f61807t = (LinearLayout) itemView.findViewById(R.id.androdVersionLayout);
            this.f61806s = (LinearLayout) itemView.findViewById(R.id.nowVersionLayout);
            this.f61808u = (LinearLayout) itemView.findViewById(R.id.sizelayout);
            this.f61803p = (TextView) itemView.findViewById(R.id.titleText);
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s1 f61810b;

        t(final s1 val$holderGGamdetialSimple) {
            this.f61810b = val$holderGGamdetialSimple;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (" ".equals(this.f61810b.f61792e.getText().toString())) {
                this.f61810b.f61792e.setText("");
                this.f61810b.f61792e.setBackgroundResource(R.drawable.arena_down_arrow);
                this.f61810b.f61791d.setVisibility(8);
            } else {
                this.f61810b.f61792e.setText(" ");
                this.f61810b.f61792e.setBackgroundResource(R.drawable.arena_up_arrow);
                this.f61810b.f61791d.setVisibility(0);
            }
        }
    }

    class t0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61813c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f61814d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f61815e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(t0.this.f61815e.getText().toString()).longValue();
                t0.this.f61815e.setText((jLongValue + 1) + "");
                t0 t0Var = t0.this;
                d2.this.n(t0Var.f61813c);
                t0 t0Var2 = t0.this;
                c1 c1Var = d2.this.f61518j;
                if (c1Var != null) {
                    c1Var.onUnPraise(t0Var2.f61812b, t0Var2.f61813c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        t0(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f61812b = val$commitDataBean;
            this.f61813c = val$position;
            this.f61814d = val$view;
            this.f61815e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h) || (commentBaseBean = this.f61812b) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                d2.this.T(this.f61813c);
                this.f61814d.setImageResource(R.drawable.down_ic);
                c1 c1Var = d2.this.f61518j;
                if (c1Var != null) {
                    c1Var.onUnPraise(this.f61812b, this.f61813c, 2);
                    return;
                }
                return;
            }
            this.f61812b.setIs_despise(1);
            if (AccountUtil_.getInstance_(d2.this.f61516h).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h);
                return;
            }
            this.f61814d.setImageResource(R.drawable.downed_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(d2.this.f61516h, R.anim.scale_reset);
            this.f61814d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class t1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f61818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61820f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61821g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f61822h;

        public t1(View itemView) {
            super(itemView);
            this.f61818d = (SimpleDraweeView) itemView.findViewById(R.id.giftIcon);
            this.f61819e = (TextView) itemView.findViewById(R.id.giftName);
            this.f61820f = (TextView) itemView.findViewById(R.id.giftContent);
            this.f61821g = (TextView) itemView.findViewById(R.id.getGiftTextView);
            this.f61822h = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(d2.this.f61513e.getGame_company_id()) || "0".equals(d2.this.f61513e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(d2.this.f61516h).e(1).a(true).c(d2.this.f61513e.getGame_company_id()).d(d2.this.f61513e.getCompany_name()).start();
        }
    }

    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d2.this.f61515g.getViewPager() != null) {
                d2.this.f61515g.getViewPager().setCurrentItem(2);
            }
        }
    }

    class u1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f61826d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61827e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f61828f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61829g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f61830h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MStarBar f61831i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LinearLayout f61832j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public LinearLayout f61833k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ImageView f61834l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private LinearLayout f61835m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f61836n;

        public u1(View itemView) {
            super(itemView);
            this.f61827e = (TextView) itemView.findViewById(R.id.appName);
            this.f61828f = (TextView) itemView.findViewById(R.id.appCompany);
            this.f61829g = (TextView) itemView.findViewById(R.id.appSize);
            this.f61830h = (TextView) itemView.findViewById(R.id.appDownloadCount);
            this.f61831i = (MStarBar) itemView.findViewById(R.id.comment_head_mstarBar);
            this.f61826d = (SimpleDraweeView) itemView.findViewById(R.id.appIcon);
            this.f61832j = (LinearLayout) itemView.findViewById(R.id.companyLayout);
            this.f61833k = (LinearLayout) itemView.findViewById(R.id.layoutGift);
            this.f61834l = (ImageView) itemView.findViewById(R.id.giftImage);
            this.f61835m = (LinearLayout) itemView.findViewById(R.id.scoreLayout);
            this.f61836n = (TextView) itemView.findViewById(R.id.comment_head_point_tx);
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            d2.this.r(view.getContext(), "云存档");
        }
    }

    class v0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AppBeanMain f61839b;

        v0(final AppBeanMain val$appBeanMain) {
            this.f61839b = val$appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(d2.this.f61516h, this.f61839b.getIntentDataBean());
        }
    }

    class v1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61841d;

        public v1(View itemView) {
            super(itemView);
            this.f61841d = (LinearLayout) itemView.findViewById(R.id.itemLayout);
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            UserInfo accountData = AccountUtil_.getInstance_(d2.this.f61516h).getAccountData();
            if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(d2.this.f61516h);
                return;
            }
            PrefDef_ prefDef_ = new PrefDef_(d2.this.f61516h);
            if (com.join.mgps.Util.t2.i(prefDef_.uploadType2().d())) {
                IntentUtil.getInstance().goShareWebActivity(d2.this.f61516h, prefDef_.uploadType2().d());
            } else {
                UploadActivity_.intent(d2.this.f61516h).start();
            }
        }
    }

    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goMainLabelActivity(d2.this.f61516h, 0, d2.this.f61513e.getCommunity_entrance_tag(), 1);
        }
    }

    class w1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61845d;

        public w1(View itemView) {
            super(itemView);
            this.f61845d = (TextView) itemView.findViewById(R.id.htmlEditRecommend);
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.intent(d2.this.f61516h).f(d2.this.f61513e.getGame_id()).i(d2.this.f61513e.getPackageName()).h(d2.this.f61513e.getPlugin_num()).g(d2.this.f61513e.getIs_started()).j(d2.this.f61513e.getGame_score() != null ? d2.this.f61513e.getGame_score().getSgc_switch() : 0).a(d2.this.f61513e.getBespeak_switch()).d(d2.this.f61513e.getComment_score_switch()).start();
        }
    }

    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                d2.this.f61516h.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + d2.this.f61513e.getGame_exclusive_benefits_qq() + "&version=1")));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class x1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61849d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f61850e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61851f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f61852g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f61853h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f61854i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f61855j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f61856k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f61857l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f61858m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        TextView f61859n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        TextView f61860o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        TextView f61861p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        TextView f61862q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        LinearLayout f61863r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        LinearLayout f61864s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        LinearLayout f61865t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        LinearLayout f61866u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        LinearLayout f61867v;

        public x1(View itemView) {
            super(itemView);
            this.f61849d = (TextView) itemView.findViewById(R.id.message);
            this.f61850e = itemView.findViewById(R.id.message1);
            this.f61851f = (TextView) itemView.findViewById(R.id.moreText);
            this.f61852g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f61851f = (TextView) itemView.findViewById(R.id.moreText);
            this.f61853h = (TextView) itemView.findViewById(R.id.downNumberTitle);
            this.f61852g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f61854i = (TextView) itemView.findViewById(R.id.downNumber);
            this.f61855j = (TextView) itemView.findViewById(R.id.nowVersion);
            this.f61856k = (TextView) itemView.findViewById(R.id.appSize);
            this.f61857l = (TextView) itemView.findViewById(R.id.updateDate);
            this.f61858m = (TextView) itemView.findViewById(R.id.androdVersion);
            this.f61859n = (TextView) itemView.findViewById(R.id.commpany);
            this.f61860o = (TextView) itemView.findViewById(R.id.resousFrom);
            this.f61861p = (TextView) itemView.findViewById(R.id.upGame);
            this.f61863r = (LinearLayout) itemView.findViewById(R.id.resousFromLayout);
            this.f61864s = (LinearLayout) itemView.findViewById(R.id.commpanyLayout);
            this.f61866u = (LinearLayout) itemView.findViewById(R.id.androdVersionLayout);
            this.f61865t = (LinearLayout) itemView.findViewById(R.id.nowVersionLayout);
            this.f61867v = (LinearLayout) itemView.findViewById(R.id.sizelayout);
            this.f61862q = (TextView) itemView.findViewById(R.id.titleText);
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(d2.this.f61516h).getAccountData();
            if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(d2.this.f61516h);
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(d2.this.f61516h)) {
                return;
            }
            if (d2.this.f61513e.getSelf_comment() == null) {
                CommentCreatActivity_.intent(d2.this.f61516h).f(d2.this.f61513e.getGame_id()).j(d2.this.f61513e.getPackageName()).h(d2.this.f61513e.getPlugin_num()).g(d2.this.f61513e.getIs_started()).a(d2.this.f61513e.getBespeak_switch()).d(d2.this.f61513e.getComment_score_switch()).start();
            } else {
                CommentAllListBean.SelfCommentBean self_comment = d2.this.f61513e.getSelf_comment();
                CommentCreatActivity_.intent(d2.this.f61516h).f(d2.this.f61513e.getGame_id()).j(d2.this.f61513e.getPackageName()).d(d2.this.f61513e.getComment_score_switch()).c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(d2.this.f61513e.getBespeak_switch()).h(d2.this.f61513e.getPlugin_num()).g(d2.this.f61513e.getIs_started()).b(self_comment.getContent()).start();
            }
        }
    }

    class y0 implements View.OnClickListener {
        y0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.intent(d2.this.f61516h).f(d2.this.f61513e.getGame_id()).i(d2.this.f61513e.getPackageName()).h(d2.this.f61513e.getPlugin_num()).a(d2.this.f61513e.getBespeak_switch()).g(d2.this.f61513e.getIs_started()).j(d2.this.f61513e.getGame_score().getSgc_switch()).d(d2.this.f61513e.getComment_score_switch()).start();
        }
    }

    class y1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61871d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61872e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61873f;

        public y1(View itemView) {
            super(itemView);
            this.f61871d = (TextView) itemView.findViewById(R.id.message);
            this.f61872e = (TextView) itemView.findViewById(R.id.moreText);
            this.f61873f = (LinearLayout) itemView.findViewById(R.id.look_other);
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d2.this.f61515g == null || d2.this.f61515g.getViewPager() == null) {
                return;
            }
            d2.this.f61515g.getViewPager().setCurrentItem(1);
        }
    }

    class z0 extends PagerAdapter {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.papa.sim.statistic.t.l(view.getContext()).F("yijianjineng", AccountUtil_.getInstance_(view.getContext()).getUid());
                d2.this.r(view.getContext(), "一键技能");
            }
        }

        z0() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return d2.this.f61529u.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, final int position) {
            container.addView((View) d2.this.f61529u.get(position));
            View view = (View) d2.this.f61529u.get(position);
            view.getLayoutParams().height = -2;
            view.getLayoutParams().width = -1;
            view.setOnClickListener(new a());
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    class z1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f61878d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61879e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61880f;

        public z1(View itemView) {
            super(itemView);
            this.f61878d = (LinearLayout) itemView.findViewById(R.id.handSharkLayout);
            this.f61879e = (TextView) itemView.findViewById(R.id.title);
            this.f61880f = (TextView) itemView.findViewById(R.id.suntitle);
        }
    }

    public d2(Context context, BaseGameDetailFragment ac2, GamedetialModleFourBean modleFourBean) {
        this.f61513e = modleFourBean;
        this.f61516h = context;
        this.f61520l = v(context);
        this.f61515g = ac2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(View view) {
        DetialMoreServiceListActivity_.intent(this.f61516h).a(this.f61513e.getCrc_sign_id()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        Intent intent = new Intent(this.f61516h, (Class<?>) NoticeListActivity.class);
        intent.putExtra("gameId", this.f61513e.getCrc_sign_id());
        this.f61516h.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
        r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
    }

    private void E(final View parent, final d1 commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f61580a;
        int i12 = commentMessageReply.f61584e;
        boolean z11 = commentMessageReply.f61585f;
        InformationCommentBean informationCommentBean = commentMessageReply.f61581b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f61516h).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view.setOnClickListener(new o0(size, informationCommentBean, str, position));
                    } else if (i11 < size && (i11 < 3 || !hideMore)) {
                        textView.setVisibility(0);
                        textView2.setVisibility(8);
                        InformationCommentBean.Sub sub2 = sub.get(i11);
                        String content = sub2.getContent();
                        sub2.getComment_id();
                        try {
                            textView.setText(Html.fromHtml(content));
                            K(view, sub2);
                        } catch (Exception e10) {
                            e10.printStackTrace();
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
                    view.setOnClickListener(new n0(i15, position, str, commentMessageReply));
                }
                linearLayout.addView(view);
            } else {
                i10 = i12;
                z10 = z11;
                i11 = i14;
            }
            i14 = i11 + 1;
            i12 = i10;
            z11 = z10;
            i13 = 0;
        }
    }

    private void K(View view, final InformationCommentBean.Sub sub) {
        view.setOnClickListener(new p0(sub));
    }

    private void L(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new q0(commitDataBean));
    }

    private void M(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        s0 s0Var = new s0(commitDataBean, position, view, tv2);
        view.setOnClickListener(s0Var);
        tv2.setOnClickListener(s0Var);
    }

    private void N(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new m0(commitDataBean));
    }

    private void O(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        t0 t0Var = new t0(commitDataBean, position, view, tv2);
        view.setOnClickListener(t0Var);
        tv2.setOnClickListener(t0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
        Intent intent = new Intent(this.f61516h, (Class<?>) CouponListActivity.class);
        intent.putExtra("gameId", this.f61513e.getCrc_sign_id());
        this.f61516h.startActivity(intent);
    }

    private CommentBaseBean t(int position) {
        return (CommentBaseBean) this.f61526r.get(position).f61563a;
    }

    public static String y(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages == null) {
            return null;
        }
        for (int i10 = 0; i10 < installedPackages.size(); i10++) {
            String str = installedPackages.get(i10).packageName;
            if (str.equalsIgnoreCase("com.tencent.qqlite")) {
                return "com.tencent.qqlite";
            }
            if (str.equalsIgnoreCase("com.tencent.mobileqq")) {
                return "com.tencent.mobileqq";
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(BTActivityBean bTActivityBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f61516h, bTActivityBean.getJump_url());
    }

    public void D(List<GameDetailOneTouchSkill> viewDatas) {
        this.f61529u.clear();
        this.f61523o = 0;
        this.f61522n = 0;
        if (viewDatas == null) {
            this.f61530v.notifyDataSetChanged();
            return;
        }
        for (int i10 = 0; i10 < viewDatas.size(); i10++) {
            View viewInflate = LayoutInflater.from(this.f61516h).inflate(R.layout.gamedetail_item_one_touch_skill_item, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.name);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.list);
            GameDetailOneTouchSkill gameDetailOneTouchSkill = viewDatas.get(i10);
            textView.setText(gameDetailOneTouchSkill.getName());
            if (gameDetailOneTouchSkill.getSkill() != null) {
                for (int i11 = 0; i11 < gameDetailOneTouchSkill.getSkill().size() && i11 != 5; i11++) {
                    View viewInflate2 = LayoutInflater.from(this.f61516h).inflate(R.layout.gamedetail_item_one_touch_skill_list_item, (ViewGroup) linearLayout, false);
                    linearLayout.addView(viewInflate2);
                    ((TextView) viewInflate2.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getSkill().get(i11));
                }
            }
            this.f61529u.add(viewInflate);
        }
        this.f61530v.notifyDataSetChanged();
    }

    public void F(int position, int state) {
        CommentBaseBean commentBaseBeanT = t(position);
        long jLongValue = Long.valueOf(commentBaseBeanT.getDespise_count()).longValue();
        if (commentBaseBeanT.getIs_despise() == 1) {
            commentBaseBeanT.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                commentBaseBeanT.setDespise_count("0");
            } else {
                commentBaseBeanT.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            commentBaseBeanT.setIs_despise(1);
            commentBaseBeanT.setDespise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void G(int position, int state) {
        CommentBaseBean commentBaseBeanT = t(position);
        long praise_count = commentBaseBeanT.getPraise_count();
        if (commentBaseBeanT.getIs_praise() == 1) {
            commentBaseBeanT.setIs_praise(0);
            long j10 = praise_count - 1;
            if (j10 < 0) {
                commentBaseBeanT.setPraise_count(0L);
            } else {
                commentBaseBeanT.setPraise_count(j10);
            }
        } else if (state != 1) {
            commentBaseBeanT.setIs_praise(1);
            commentBaseBeanT.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void H(b1 bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((d1) bean.f61563a).f61586g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void I(GamedetialModleFourBean modleFourBean) {
        this.f61513e = modleFourBean;
    }

    public void J(c1 mListenr) {
        this.f61518j = mListenr;
    }

    public void P(List<View> oneTouchSkillView) {
        this.f61529u = oneTouchSkillView;
    }

    public void Q(int _from_type) {
        this.f61525q = _from_type;
    }

    void R() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f61513e.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f61513e.getGame_name());
        shareBean.setText(this.f61513e.getInfo());
        shareBean.setImageUrl(this.f61513e.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f61513e.getGame_id());
        if (this.f61513e.getShare_config() != null && this.f61513e.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f61513e.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f61516h, shareBean);
    }

    void S(Context context, String msg) {
        try {
            Toast toastMakeText = Toast.makeText(context, "", 0);
            toastMakeText.setText(msg);
            toastMakeText.setDuration(0);
            toastMakeText.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void T(int position) {
        CommentBaseBean commentBaseBeanT = t(position);
        long jLongValue = Long.valueOf(commentBaseBeanT.getDespise_count()).longValue();
        commentBaseBeanT.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            commentBaseBeanT.setDespise_count("0");
        } else {
            commentBaseBeanT.setDespise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public void U(int position) {
        CommentBaseBean commentBaseBeanT = t(position);
        long praise_count = commentBaseBeanT.getPraise_count();
        commentBaseBeanT.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            commentBaseBeanT.setPraise_count(0L);
        } else {
            commentBaseBeanT.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f61526r.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.f61526r.get(position).f61564b;
    }

    public void n(int position) {
        CommentBaseBean commentBaseBeanT = t(position);
        long jLongValue = Long.valueOf(commentBaseBeanT.getDespise_count()).longValue();
        commentBaseBeanT.setIs_despise(1);
        commentBaseBeanT.setDespise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    public void o(int position) {
        CommentBaseBean commentBaseBeanT = t(position);
        long praise_count = commentBaseBeanT.getPraise_count();
        commentBaseBeanT.setIs_praise(1);
        commentBaseBeanT.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        switch (getItemViewType(position)) {
            case 1:
                e2 e2Var = (e2) holder;
                b1 b1Var = this.f61526r.get(position);
                e2Var.f61600i.setVisibility(8);
                e2Var.f61596e.setText("更多");
                e2Var.f61596e.setTextColor(-16777216);
                e2Var.f61596e.setTextSize(0, this.f61516h.getResources().getDimensionPixelSize(R.dimen.wdp28));
                ((LinearLayout.LayoutParams) e2Var.f61600i.getLayoutParams()).leftMargin = 0;
                e2Var.f61601j.setVisibility(8);
                Object obj = b1Var.f61563a;
                if (obj instanceof String) {
                    e2Var.f61595d.setText((String) obj);
                    e2Var.f61597f.setVisibility(8);
                    if ("简介".equals(b1Var.f61563a)) {
                        e2Var.f61599h.setVisibility(8);
                    }
                    if ("编辑推荐".equals(b1Var.f61563a)) {
                        e2Var.f61599h.setVisibility(8);
                    }
                    if ("出招表".equals(b1Var.f61563a) || "选关".equals(b1Var.f61563a)) {
                        ((LinearLayout.LayoutParams) e2Var.f61595d.getLayoutParams()).topMargin = e2Var.f61595d.getContext().getResources().getDimensionPixelOffset(R.dimen.wdp10);
                    }
                    if (GameMainActivity4.TITLE_GOLDFINGER.equals(b1Var.f61563a)) {
                        e2Var.f61600i.setVisibility(8);
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61596e.setText("全部(" + this.f61513e.getRoom_cfg_info().getGolden_finger().size() + ")");
                        e2Var.f61598g.setVisibility(0);
                        e2Var.f61598g.setBackgroundColor(Color.parseColor("#FFEFEFEF"));
                        e2Var.f61597f.setOnClickListener(new k());
                    }
                    if ("开合服".equals(b1Var.f61563a) && this.f61513e.getGame_server_state().size() > 3) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f61226b.A(view);
                            }
                        });
                    }
                    if ("活动公告".equals(b1Var.f61563a) && this.f61513e.isHas_more_activities()) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f61257b.B(view);
                            }
                        });
                    }
                    if ("云存档".equals(b1Var.f61563a)) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61596e.setText("全部(" + this.f61513e.getRoom_cfg_info().getCloud_archive_count() + ")");
                        e2Var.f61598g.setVisibility(0);
                        e2Var.f61598g.setBackgroundColor(Color.parseColor("#FFEFEFEF"));
                        e2Var.f61597f.setOnClickListener(new v());
                    }
                    if ("福利礼包".equals(b1Var.f61563a)) {
                        e2Var.f61599h.setVisibility(8);
                    }
                    if ("福利礼包".equals(b1Var.f61563a)) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new g0());
                    }
                    if ("同厂商推荐".equals(b1Var.f61563a) && this.f61513e.getCompany_recommend() != null && this.f61513e.getCompany_recommend().size() > 3) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new r0());
                    }
                    if ("同厂商推荐".equals(b1Var.f61563a)) {
                        e2Var.f61598g.setVisibility(0);
                        e2Var.f61599h.setVisibility(0);
                    }
                    if ("下了还会下".equals(b1Var.f61563a)) {
                        e2Var.f61598g.setVisibility(0);
                        e2Var.f61599h.setVisibility(0);
                    }
                    if ("游戏单".equals(b1Var.f61563a)) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new u0());
                    }
                    if ("支持手柄".equals(b1Var.f61563a)) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61600i.setVisibility(0);
                        e2Var.f61600i.setImageResource(R.drawable.more_arrow_right_black);
                        ((LinearLayout.LayoutParams) e2Var.f61600i.getLayoutParams()).leftMargin = this.f61516h.getResources().getDimensionPixelOffset(R.dimen.wdp17);
                        e2Var.f61596e.setText("点击购买");
                        e2Var.f61597f.setOnClickListener(new v0(this.f61513e.getGame_handle_entrance().getSub().get(0)));
                    }
                    if ("社区讨论".equals(b1Var.f61563a)) {
                        e2Var.f61597f.setVisibility(0);
                        e2Var.f61597f.setOnClickListener(new w0());
                    }
                    if ("同类游戏".equals(b1Var.f61563a)) {
                        e2Var.f61599h.setVisibility(0);
                        e2Var.f61598g.setVisibility(0);
                    } else {
                        e2Var.f61598g.setVisibility(8);
                    }
                    if ("专属福利".equals(b1Var.f61563a)) {
                        e2Var.f61601j.setVisibility(0);
                        e2Var.f61601j.setImageResource(R.drawable.bt_gift_icon);
                    } else if ("充值返利".equals(b1Var.f61563a)) {
                        e2Var.f61601j.setImageResource(R.drawable.bt_backsouse_icon);
                        e2Var.f61601j.setVisibility(0);
                        if (com.join.mgps.Util.t2.i(this.f61513e.getGame_exclusive_benefits_qq())) {
                            e2Var.f61596e.setText("联系客服");
                            e2Var.f61596e.setTextColor(Color.parseColor("#f47500"));
                            e2Var.f61596e.setTextSize(0, this.f61516h.getResources().getDimensionPixelSize(R.dimen.wdp32));
                            e2Var.f61597f.setVisibility(0);
                            e2Var.f61597f.setOnClickListener(new x0());
                        }
                    } else {
                        e2Var.f61601j.setVisibility(8);
                    }
                    e2Var.f61599h.setVisibility(8);
                }
                break;
            case 2:
                u1 u1Var = (u1) holder;
                com.join.android.app.common.utils.l.h(u1Var.f61826d, this.f61513e.getIco_remote());
                u1Var.f61827e.setText(this.f61513e.getGame_name());
                u1Var.f61828f.setText(this.f61513e.getCompany_name());
                this.f61528t = u1Var.f61834l;
                if (this.f61513e.getBespeak_switch() != 1) {
                    u1Var.f61829g.setVisibility(0);
                    u1Var.f61830h.setText(com.join.mgps.Util.t2.c(this.f61513e.getDown_count()));
                    u1Var.f61829g.setText(this.f61513e.getAppSize() + "M");
                    try {
                        if (this.f61513e.getDown_status() == 5 && this.f61513e.getSp_tag_info() != null && this.f61513e.getSp_tag_info().getDown_res() != null) {
                            u1Var.f61830h.setText(this.f61513e.getSp_tag_info().getDown_res().getName());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    break;
                } else {
                    if (this.f61513e.getAppSize() == null || "0.00".equals(this.f61513e.getAppSize())) {
                        u1Var.f61829g.setVisibility(8);
                    } else {
                        u1Var.f61829g.setText(this.f61513e.getAppSize() + "M");
                        u1Var.f61829g.setVisibility(0);
                    }
                    if (this.f61513e.getBespeak_count() == null) {
                        u1Var.f61830h.setText("已有0人预约");
                    } else {
                        u1Var.f61830h.setText("已有" + this.f61513e.getBespeak_count() + "人预约");
                    }
                }
                if (this.f61513e.getPlugin_num() != null) {
                    if (this.f61513e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                        u1Var.f61829g.setVisibility(8);
                        u1Var.f61830h.setText(com.join.mgps.Util.t2.c(this.f61513e.getDown_count()).replace("安装", this.f61516h.getResources().getString(R.string.download_status_finished)));
                    }
                }
                GameScore game_score = this.f61513e.getGame_score();
                if ("1".equals(this.f61513e.getComment_score_switch()) && game_score != null && com.join.mgps.Util.t2.i(game_score.getScore())) {
                    if ("0.0".equals(game_score.getScore()) || "0".equals(game_score.getScore())) {
                        u1Var.f61836n.setText("暂无评分");
                        u1Var.f61836n.setTextSize(14.0f);
                        u1Var.f61836n.setTextColor(Color.parseColor("#8a8a8a"));
                    } else {
                        u1Var.f61836n.setText(game_score.getScore());
                    }
                    u1Var.f61831i.setIntegerMark(false);
                    u1Var.f61831i.setEnabled(false);
                    u1Var.f61831i.setStarMark(game_score.getTotal_stars());
                    u1Var.f61835m.setVisibility(0);
                } else {
                    u1Var.f61835m.setVisibility(8);
                }
                u1Var.f61835m.setOnClickListener(new y0());
                if (com.join.mgps.Util.t2.h(this.f61513e.getCompany_name())) {
                    u1Var.f61832j.setVisibility(8);
                } else {
                    u1Var.f61832j.setVisibility(0);
                    u1Var.f61833k.setOnClickListener(new a());
                }
                u1Var.f61828f.setOnClickListener(new b());
                break;
            case 3:
                b2 b2Var = (b2) holder;
                if (this.f61513e.getGame_book_tag() == null || this.f61513e.getGame_book_tag().size() <= 0) {
                    b2Var.f61569f.setVisibility(8);
                } else {
                    UtilsMy.A(this.f61513e.getGame_book_tag(), b2Var.f61567d, this.f61516h);
                }
                if (this.f61513e.getGame_book() == 1) {
                    b2Var.f61568e.setText("已预约");
                    b2Var.f61568e.setEnabled(false);
                } else {
                    b2Var.f61568e.setText("预约");
                }
                b2Var.f61568e.setOnClickListener(new c());
                break;
            case 4:
                C0692d2 c0692d2 = (C0692d2) holder;
                c0692d2.f61587d.removeAllViews();
                if (this.f61513e.getTag_info() != null) {
                    for (TipBean tipBean : this.f61513e.getTag_info()) {
                        if (tipBean.getId() == "7" || tipBean.getId() == "23") {
                            tipBean.setName("安卓");
                        }
                        if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48") && !tipBean.getId().equals("25") && !tipBean.getId().equals("154")) {
                            View viewInflate = LayoutInflater.from(this.f61516h).inflate(R.layout.gamedetail_item_tipitem, (ViewGroup) null);
                            c0692d2.f61587d.addView(viewInflate);
                            TextView textView = (TextView) viewInflate.findViewById(R.id.tipText);
                            textView.setText(tipBean.getName());
                            textView.setOnClickListener(new d(tipBean));
                        }
                    }
                }
                break;
            case 5:
                g2 g2Var = (g2) holder;
                ArrayList arrayList = new ArrayList();
                if (com.join.mgps.Util.t2.i(this.f61513e.getVedio_cover_pic()) && com.join.mgps.Util.t2.i(this.f61513e.getVedio_url())) {
                    arrayList.add(this.f61513e.getVedio_cover_pic());
                    this.f61514f = true;
                } else {
                    this.f61514f = false;
                }
                List<DetialShowImageBean> pic_info = this.f61513e.getPic_info();
                if (pic_info != null) {
                    for (int i10 = 0; i10 < pic_info.size(); i10++) {
                        arrayList.add(pic_info.get(i10).getRemote().getPath());
                    }
                }
                if (arrayList.size() == 0) {
                    g2Var.f61628d.setVisibility(8);
                } else {
                    g2Var.f61628d.setVisibility(0);
                    int pic_position = this.f61513e.getPic_position();
                    if (com.join.mgps.Util.t2.i(this.f61513e.getGif_slide_pic())) {
                        arrayList.add(0, this.f61513e.getGif_slide_pic());
                    }
                    g2Var.f61628d.setAdapter((ListAdapter) new com.join.mgps.adapter.h1(this.f61516h, pic_position, arrayList, this.f61514f));
                    g2Var.f61628d.setOnItemClickListener(new e(arrayList));
                }
                break;
            case 6:
                v1 v1Var = (v1) holder;
                List<GamePromptBean> game_prompt = this.f61513e.getGame_prompt();
                v1Var.f61841d.removeAllViewsInLayout();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(36, 0, 0, 0);
                layoutParams.gravity = 19;
                Drawable drawable = this.f61516h.getResources().getDrawable(R.drawable.game_detail_ok);
                Drawable drawable2 = this.f61516h.getResources().getDrawable(R.drawable.game_detail_warn);
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                drawable2.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                if (game_prompt != null) {
                    for (int i11 = 0; i11 < game_prompt.size(); i11++) {
                        GamePromptBean gamePromptBean = game_prompt.get(i11);
                        if (gamePromptBean != null) {
                            TextView textView2 = new TextView(this.f61516h);
                            textView2.setText(gamePromptBean.getText().toString());
                            if (gamePromptBean.getId() == 1) {
                                textView2.setCompoundDrawables(drawable, null, null, null);
                            } else {
                                textView2.setCompoundDrawables(drawable2, null, null, null);
                            }
                            textView2.setCompoundDrawablePadding(10);
                            textView2.setSingleLine(true);
                            textView2.setTextSize(1, 12.0f);
                            textView2.setTextColor(-7697782);
                            v1Var.f61841d.addView(textView2, layoutParams);
                        }
                    }
                }
                break;
            case 7:
                ((w1) holder).f61845d.setText((String) this.f61526r.get(position).f61563a);
                break;
            case 8:
                r1 r1Var = (r1) holder;
                b1 b1Var2 = this.f61526r.get(position);
                r1Var.f61781d.setText((String) b1Var2.f61563a);
                ViewTreeObserver viewTreeObserver = r1Var.f61781d.getViewTreeObserver();
                if (b1Var2.f61565c == 1) {
                    r1Var.f61781d.setMaxLines(Integer.MAX_VALUE);
                    r1Var.f61782e.setText("收起");
                } else {
                    r1Var.f61781d.setMaxLines(4);
                    r1Var.f61782e.setText("展开");
                }
                viewTreeObserver.addOnGlobalLayoutListener(new g(r1Var, r1Var));
                r1Var.f61782e.setOnClickListener(new h(r1Var, b1Var2));
                break;
            case 9:
                t1 t1Var = (t1) holder;
                GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) this.f61526r.get(position).f61563a;
                t1Var.f61820f.setText(giftPackageDataInfoBean.getGift_package_content());
                com.join.android.app.common.utils.l.d(t1Var.f61818d, R.drawable.main_normal_icon, giftPackageDataInfoBean.getGift_package_pic());
                t1Var.f61819e.setText(giftPackageDataInfoBean.getGift_package_title());
                if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                    t1Var.f61821g.setText("领取");
                } else {
                    t1Var.f61821g.setText("查看");
                }
                t1Var.f61821g.setOnClickListener(new i(giftPackageDataInfoBean));
                t1Var.f61822h.setOnClickListener(new j(giftPackageDataInfoBean));
                break;
            case 10:
                j1 j1Var = (j1) holder;
                GameDetialAuxiliaryBean auxiliary_tool = this.f61513e.getAuxiliary_tool();
                if (auxiliary_tool != null && auxiliary_tool.getData() != null) {
                    List<GamedetialAuxiliaryToolBean> data = auxiliary_tool.getData();
                    if (data.size() > 0) {
                        com.join.android.app.common.utils.l.d(j1Var.f61654d, R.drawable.main_normal_icon, data.get(0).getPic());
                        j1Var.f61661k.setText(data.get(0).getTitle());
                        j1Var.f61658h.setVisibility(0);
                    }
                    if (data.size() > 1) {
                        com.join.android.app.common.utils.l.d(j1Var.f61655e, R.drawable.main_normal_icon, data.get(1).getPic());
                        j1Var.f61662l.setText(data.get(1).getTitle());
                        j1Var.f61659i.setVisibility(0);
                    }
                    if (data.size() > 2) {
                        com.join.android.app.common.utils.l.d(j1Var.f61656f, R.drawable.main_normal_icon, data.get(2).getPic());
                        j1Var.f61663m.setText(data.get(2).getTitle());
                        j1Var.f61660j.setVisibility(0);
                    }
                    j1Var.f61657g.setOnClickListener(new l(data, auxiliary_tool));
                    j1Var.f61658h.setOnClickListener(new m(data));
                    j1Var.f61659i.setOnClickListener(new n(data));
                    j1Var.f61660j.setOnClickListener(new o(data));
                    break;
                }
                break;
            case 11:
                y1 y1Var = (y1) holder;
                y1Var.f61873f.setOnClickListener(new p(y1Var));
                y1Var.f61871d.setText(this.f61513e.getGame_upgrade_info());
                break;
            case 12:
                s1 s1Var = (s1) holder;
                s1Var.f61794g.setOnClickListener(new t(s1Var));
                GamedetialMoreBean game_detailed = this.f61513e.getGame_detailed();
                s1Var.f61803p.setText("版本:" + game_detailed.getCurrent_ver() + "    更新时间:" + game_detailed.getUpgrade_time());
                TextView textView3 = s1Var.f61797j;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(game_detailed.getSize());
                sb2.append("M");
                textView3.setText(sb2.toString());
                s1Var.f61795h.setText(com.join.mgps.Util.t2.b(game_detailed.getDownloads_count()) + "热度");
                s1Var.f61796i.setText(game_detailed.getCurrent_ver());
                if (com.join.mgps.Util.t2.i(game_detailed.getSource())) {
                    s1Var.f61801n.setText(game_detailed.getSource());
                    s1Var.f61804q.setVisibility(0);
                } else {
                    s1Var.f61804q.setVisibility(8);
                }
                if (com.join.mgps.Util.t2.i(game_detailed.getCompany_name())) {
                    s1Var.f61800m.setText(game_detailed.getCompany_name());
                    s1Var.f61805r.setVisibility(0);
                } else {
                    s1Var.f61805r.setVisibility(8);
                }
                if (com.join.mgps.Util.t2.i(game_detailed.getMobile_phone_system_ver())) {
                    s1Var.f61799l.setText(game_detailed.getMobile_phone_system_ver());
                    s1Var.f61807t.setVisibility(0);
                } else {
                    s1Var.f61807t.setVisibility(8);
                }
                s1Var.f61798k.setText(game_detailed.getUpgrade_time());
                s1Var.f61800m.setOnClickListener(new u());
                if (!"46".equals(this.f61513e.getPlugin_num())) {
                    s1Var.f61802o.setVisibility(0);
                    s1Var.f61802o.setOnClickListener(new w());
                }
                if (this.f61513e.getPlugin_num() != null) {
                    if (this.f61513e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                        s1Var.f61808u.setVisibility(8);
                        s1Var.f61806s.setVisibility(8);
                        s1Var.f61793f.setText("启动数");
                        s1Var.f61795h.setText(com.join.mgps.Util.t2.c(game_detailed.getDownloads_count()).replace("安装", this.f61516h.getResources().getString(R.string.download_status_finished)));
                    }
                }
                break;
            case 13:
                n1 n1Var = (n1) holder;
                this.f61513e.getGame_comment_count();
                n1Var.f61717f.setVisibility(8);
                n1Var.f61715d.setText("");
                n1Var.f61716e.setVisibility(8);
                n1Var.f61716e.setOnClickListener(new x());
                break;
            case 15:
                o1 o1Var = (o1) holder;
                d1 d1Var = (d1) this.f61526r.get(position).f61563a;
                if (d1Var.f61586g) {
                    o1Var.f61735h.setVisibility(8);
                    o1Var.f61736i.setVisibility(8);
                } else {
                    o1Var.f61735h.setVisibility(0);
                    o1Var.f61736i.setVisibility(0);
                }
                List<InformationCommentBean.Sub> sub = d1Var.f61581b.getSub();
                if (sub == null || sub.size() == 0) {
                    o1Var.f61731d.removeAllViews();
                } else {
                    E(o1Var.f61731d, d1Var, true, position);
                }
                break;
            case 16:
                m1 m1Var = (m1) holder;
                if (this.f61513e.getComment_switch() == 1) {
                    m1Var.f61701d.setVisibility(0);
                } else {
                    m1Var.f61701d.setVisibility(8);
                }
                m1Var.f61702e.setOnClickListener(new z());
                m1Var.f61703f.setOnClickListener(new a0());
                break;
            case 17:
                a2 a2Var = (a2) holder;
                b1 b1Var3 = this.f61526r.get(position);
                List<RecommendGameBean> recommend_game = this.f61513e.getRecommend_game();
                int i12 = this.f61525q;
                int iIntValue = ((Integer) b1Var3.f61563a).intValue();
                if (iIntValue == 1) {
                    recommend_game = this.f61513e.getRecommend_game();
                    i12 = 13301;
                } else if (iIntValue == 2) {
                    recommend_game = this.f61513e.getDown_and_down();
                    i12 = 13303;
                } else if (iIntValue == 3) {
                    recommend_game = this.f61513e.getCompany_recommend();
                    i12 = 13302;
                } else if (iIntValue == 4) {
                    recommend_game = this.f61513e.getBt_game_recommend();
                    i12 = 13304;
                }
                com.join.mgps.adapter.o1 o1Var2 = new com.join.mgps.adapter.o1(this.f61516h, recommend_game);
                o1Var2.f(i12);
                a2Var.f61557e.setAdapter((ListAdapter) o1Var2);
                if (recommend_game != null && recommend_game.size() > 0) {
                    o1Var2.notifyDataSetChanged();
                }
                a2Var.f61558f.setVisibility(8);
                break;
            case 18:
                break;
            case 19:
                f2 f2Var = (f2) holder;
                f2Var.f61614e.setMuteWhenPlay(false);
                String game_info_top_video_url = this.f61513e.getGame_info_top_video_url();
                if (com.join.mgps.Util.t2.h(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.d(f2Var.f61613d, R.drawable.banner_normal_icon, this.f61513e.getGame_info_top_pic());
                    f2Var.f61614e.setVisibility(8);
                    f2Var.f61613d.setVisibility(0);
                }
                if (com.join.mgps.Util.t2.i(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.h(f2Var.f61614e.f35112b, this.f61513e.getGame_info_top_pic());
                    f2Var.f61614e.setMuteWhenPlay(false);
                    f2Var.f61614e.setPlayTag("GameDetialModleThreeAdapter");
                    f2Var.f61614e.setPlayPosition(position);
                    f2Var.f61614e.setUp(game_info_top_video_url, StandardVideoView.D, "", this.f61513e.getGame_info_top_pic());
                }
                break;
            case 20:
                List<RecommendGameBean> recommend_game2 = this.f61513e.getRecommend_game();
                com.join.mgps.adapter.o1 o1Var3 = new com.join.mgps.adapter.o1(this.f61516h, this.f61519k);
                o1Var3.f(this.f61525q);
                ((p1) holder).f61770e.setAdapter((ListAdapter) o1Var3);
                if (recommend_game2 != null && recommend_game2.size() > 0) {
                    this.f61519k.clear();
                    this.f61519k.addAll(recommend_game2);
                    o1Var3.notifyDataSetChanged();
                    break;
                }
                break;
            case 21:
                List<RecommendGameBean> recommend_game3 = this.f61513e.getRecommend_game();
                com.join.mgps.adapter.o1 o1Var4 = new com.join.mgps.adapter.o1(this.f61516h, this.f61519k);
                o1Var4.f(this.f61525q);
                ((q1) holder).f61777e.setAdapter((ListAdapter) o1Var4);
                if (recommend_game3 != null && recommend_game3.size() > 0) {
                    this.f61519k.clear();
                    this.f61519k.addAll(recommend_game3);
                    o1Var4.notifyDataSetChanged();
                    break;
                }
                break;
            case 22:
                ((c2) holder).f61574e.setVisibility(0);
                break;
            case 23:
                try {
                    z1 z1Var = (z1) holder;
                    RecomDatabean game_handle_entrance = this.f61513e.getGame_handle_entrance();
                    ModleBean main = game_handle_entrance.getMain();
                    z1Var.f61879e.setText(main.getTitle());
                    z1Var.f61880f.setText(main.getSub_title());
                    z1Var.f61878d.setOnClickListener(new b0(game_handle_entrance.getSub().get(0)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
                break;
            case 24:
                try {
                    m2 m2Var = (m2) holder;
                    m2Var.f61706e.setText("悟饭玩家交流群:" + this.f61513e.getGame_detailed().getTpl_two_qq());
                    m2Var.f61705d.setOnClickListener(new c0());
                } catch (Exception e12) {
                    e12.printStackTrace();
                    return;
                }
                break;
            case 25:
                try {
                    a1 a1Var = (a1) holder;
                    CommentBaseBean commentBaseBean = (CommentBaseBean) this.f61526r.get(position).f61563a;
                    a1Var.f61554y.setVisibility(8);
                    a1Var.f61535f.setTextColor(-16777216);
                    if (commentBaseBean.getVip_level() > 0) {
                        a1Var.f61535f.setTextColor(this.f61516h.getResources().getColor(R.color.vip_color));
                    }
                    if (commentBaseBean.getSvip_level() > 0) {
                        a1Var.f61535f.setTextColor(this.f61516h.getResources().getColor(R.color.vip_svip_color));
                    }
                    a1Var.f61553x.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
                    if (commentBaseBean.getUid().equals(String.valueOf(AccountUtil_.getInstance_(this.f61516h).getAccountData().getUid()))) {
                        a1Var.f61536g.setVisibility(0);
                    } else {
                        a1Var.f61536g.setVisibility(8);
                    }
                    a1Var.f61534e.setOnClickListener(new j0(commentBaseBean));
                    GameScore game_score2 = this.f61513e.getGame_score();
                    if (game_score2 != null && game_score2.getSgc_switch() == 1 && commentBaseBean.getIs_old() == 0) {
                        a1Var.f61540k.setVisibility(0);
                        a1Var.f61540k.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
                    } else {
                        a1Var.f61540k.setVisibility(8);
                    }
                    a1Var.f61543n.setText(commentBaseBean.getContent());
                    a1Var.f61535f.setText(commentBaseBean.getUser_name());
                    if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
                        a1Var.f61546q.setVisibility(4);
                    } else {
                        a1Var.f61546q.setVisibility(0);
                        a1Var.f61546q.setText(commentBaseBean.getMobile_phone_model());
                    }
                    a1Var.f61548s.setText(commentBaseBean.getPraise_count() + "");
                    a1Var.f61550u.setText(commentBaseBean.getDespise_count() + "");
                    a1Var.f61552w.setText(commentBaseBean.getReply_count() + "");
                    a1Var.f61541l.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
                    if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || !(this.f61513e.getComment_score_switch() == null || this.f61513e.getComment_score_switch().equals("1"))) {
                        a1Var.f61539j.setVisibility(8);
                    } else {
                        a1Var.f61539j.setVisibility(0);
                        a1Var.f61539j.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
                        a1Var.f61539j.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
                    }
                    a1Var.f61539j.setEnabled(false);
                    if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
                        a1Var.f61542m.setVisibility(8);
                    } else {
                        a1Var.f61542m.setVisibility(0);
                    }
                    if (commentBaseBean.getRank().equals("")) {
                        a1Var.f61537h.setVisibility(8);
                    } else {
                        a1Var.f61537h.setVisibility(0);
                    }
                    a1Var.f61538i.setText(commentBaseBean.getRank());
                    if (commentBaseBean.getIs_praise() == 1) {
                        a1Var.f61547r.setImageResource(R.drawable.uped_ic);
                    } else {
                        a1Var.f61547r.setImageResource(R.drawable.up_ic);
                    }
                    if (commentBaseBean.getIs_despise() == 1) {
                        a1Var.f61549t.setImageResource(R.drawable.downed_ic);
                    } else {
                        a1Var.f61549t.setImageResource(R.drawable.down_ic);
                    }
                    UtilsMy.J3(this.f61516h, commentBaseBean.getHead_portrait(), a1Var.f61534e);
                    M(a1Var.f61547r, a1Var.f61548s, commentBaseBean, position);
                    O(a1Var.f61549t, a1Var.f61550u, commentBaseBean, position);
                    L(a1Var.f61551v, commentBaseBean);
                    L(a1Var.f61533d, commentBaseBean);
                    a1Var.f61543n.addOnAttachStateChangeListener(new k0(a1Var, position));
                    a1Var.f61544o.setOnClickListener(new l0(a1Var, position, commentBaseBean));
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
                break;
            case 27:
                g1 g1Var = (g1) holder;
                g1Var.f61622d.setOnClickListener(new y());
                g1Var.f61624f.setText("写评论");
                g1Var.f61623e.setVisibility(0);
                g1Var.f61625g.setVisibility(8);
                g1Var.f61626h.setVisibility(8);
                break;
            case 28:
                g2 g2Var2 = (g2) holder;
                List<ScreenshotGamedetialBean> game_screen_shot = this.f61513e.getGame_screen_shot();
                if (game_screen_shot.size() == 0) {
                    g2Var2.f61628d.setVisibility(8);
                } else {
                    g2Var2.f61628d.setVisibility(0);
                    this.f61513e.getPic_position();
                    g2Var2.f61628d.setAdapter((ListAdapter) new com.join.mgps.adapter.l1(this.f61516h, game_screen_shot));
                    g2Var2.f61628d.setOnItemClickListener(new f(game_screen_shot));
                }
                break;
            case 29:
                ((i1) holder).f61646d.setAdapter((ListAdapter) new com.join.mgps.adapter.x(this.f61516h, this.f61513e.getGame_favorites_top5(), 1));
                break;
            case 30:
                try {
                    i2 i2Var = (i2) holder;
                    i2Var.f61648d.setText((String) this.f61526r.get(position).f61563a);
                    i2Var.f61648d.setOnClickListener(new h0());
                } catch (Exception e14) {
                    e14.printStackTrace();
                    return;
                }
                break;
            case 31:
                try {
                    f1 f1Var = (f1) holder;
                    GameDetailCloudArchive gameDetailCloudArchive = (GameDetailCloudArchive) this.f61526r.get(position).f61563a;
                    if (gameDetailCloudArchive != null) {
                        if (gameDetailCloudArchive.getHideTop() == 1) {
                            f1Var.f61607e.setVisibility(8);
                        } else {
                            f1Var.f61607e.setVisibility(0);
                        }
                        com.join.android.app.common.utils.l.h(f1Var.f61611i, gameDetailCloudArchive.getPic());
                        f1Var.f61610h.setText(gameDetailCloudArchive.getTitle());
                        f1Var.f61609g.setText(gameDetailCloudArchive.getAuth());
                        f1Var.f61608f.setText(gameDetailCloudArchive.getPraise_count() + "");
                        if (gameDetailCloudArchive.getDivider() == 1) {
                            f1Var.f61606d.setVisibility(8);
                        } else {
                            f1Var.f61606d.setVisibility(0);
                        }
                        f1Var.itemView.setOnClickListener(new i0());
                        break;
                    }
                } catch (Exception e15) {
                    e15.printStackTrace();
                    return;
                }
                break;
            case 32:
                try {
                    l2 l2Var = (l2) holder;
                    List<GameDetailOneTouchSkill> one_touch_skill = this.f61513e.getRoom_cfg_info().getOne_touch_skill();
                    if (one_touch_skill.size() == 1) {
                        l2Var.f61694d.setVisibility(8);
                    }
                    l2Var.f61694d.setData(one_touch_skill);
                    ViewPager viewPager = l2Var.f61695e;
                    if (viewPager instanceof MViewpagerV4) {
                        ((MViewpagerV4) viewPager).setIntercept(false);
                    }
                    l2Var.f61695e.setAdapter(this.f61530v);
                    l2Var.f61694d.setViewPager(l2Var.f61695e);
                    if (Build.VERSION.SDK_INT >= 23) {
                        l2Var.f61694d.smoothScrollTo(this.f61522n, 0);
                        l2Var.f61694d.setOnScrollChangeListener(new d0());
                    }
                    l2Var.f61695e.setCurrentItem(this.f61523o);
                    l2Var.f61694d.setOnPageChangeListener(new e0(l2Var));
                } catch (Exception e16) {
                    e16.printStackTrace();
                    return;
                }
                break;
            case 33:
                try {
                    e1 e1Var = (e1) holder;
                    e1Var.f61593d.setAdapter((ListAdapter) new com.join.mgps.adapter.w(this.f61516h, this.f61513e.getRoom_cfg_info().getCheck_point(), 1));
                    e1Var.f61593d.setOnItemClickListener(new f0());
                } catch (Exception e17) {
                    e17.printStackTrace();
                    return;
                }
                break;
            case 34:
                x1 x1Var = (x1) holder;
                x1Var.f61852g.setOnClickListener(new q(x1Var));
                if (this.f61513e.getGame_upgrade_info_switch() == 1) {
                    x1Var.f61849d.setText(this.f61513e.getGame_upgrade_info());
                }
                if (this.f61513e.getGame_detailed() != null) {
                    GamedetialMoreBean game_detailed2 = this.f61513e.getGame_detailed();
                    x1Var.f61856k.setText(game_detailed2.getSize() + "M");
                    x1Var.f61854i.setText(com.join.mgps.Util.t2.b(game_detailed2.getDownloads_count()) + "热度");
                    x1Var.f61855j.setText(game_detailed2.getCurrent_ver());
                    if (com.join.mgps.Util.t2.i(game_detailed2.getSource())) {
                        x1Var.f61860o.setText(game_detailed2.getSource());
                        x1Var.f61863r.setVisibility(0);
                    } else {
                        x1Var.f61863r.setVisibility(8);
                    }
                    if (com.join.mgps.Util.t2.i(game_detailed2.getCompany_name())) {
                        x1Var.f61859n.setText(game_detailed2.getCompany_name());
                        x1Var.f61864s.setVisibility(8);
                    } else {
                        x1Var.f61864s.setVisibility(8);
                    }
                    if (com.join.mgps.Util.t2.i(game_detailed2.getMobile_phone_system_ver())) {
                        x1Var.f61858m.setText(game_detailed2.getMobile_phone_system_ver());
                        x1Var.f61866u.setVisibility(0);
                    } else {
                        x1Var.f61866u.setVisibility(8);
                    }
                    x1Var.f61857l.setText(game_detailed2.getUpgrade_time());
                    x1Var.f61859n.setOnClickListener(new r());
                    if (!"46".equals(this.f61513e.getPlugin_num())) {
                        x1Var.f61861p.setVisibility(0);
                        x1Var.f61861p.setOnClickListener(new s());
                    }
                    if (this.f61513e.getPlugin_num() != null) {
                        if (this.f61513e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                            x1Var.f61867v.setVisibility(8);
                            x1Var.f61865t.setVisibility(8);
                            x1Var.f61853h.setText("启动数");
                            x1Var.f61854i.setText(com.join.mgps.Util.t2.c(game_detailed2.getDownloads_count()).replace("安装", this.f61516h.getResources().getString(R.string.download_status_finished)));
                        }
                    }
                }
                break;
            case 35:
                try {
                    h2 h2Var = (h2) holder;
                    List list = (List) this.f61526r.get(position).f61563a;
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.c2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f61374b.C(view);
                        }
                    };
                    int i13 = 0;
                    while (true) {
                        TextView[] textViewArr = h2Var.f61641h;
                        if (textViewArr != null && i13 < textViewArr.length) {
                            if (list == null || list.size() <= i13) {
                                h2Var.f61641h[i13].setVisibility(8);
                            } else {
                                h2Var.f61641h[i13].setVisibility(0);
                                h2Var.f61641h[i13].setText((CharSequence) list.get(i13));
                                h2Var.f61641h[i13].setOnClickListener(onClickListener);
                            }
                            i13++;
                        }
                    }
                } catch (Exception e18) {
                    e18.printStackTrace();
                    return;
                }
                break;
            case 36:
                h1 h1Var = (h1) holder;
                Integer num = (Integer) this.f61526r.get(position).f61563a;
                h1Var.f61634d.setText(num + "张代金券可领取");
                h1Var.f61635e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63970b.lambda$onBindViewHolder$0(view);
                    }
                });
                break;
            case 37:
                n2 n2Var = (n2) holder;
                ServiceState serviceState = (ServiceState) this.f61526r.get(position).f61563a;
                n2Var.f61719d.setText(serviceState.getType() == 1 ? "开服" : "合服");
                n2Var.f61720e.setText(com.join.mgps.Util.e0.I(serviceState.getAdd_time()));
                n2Var.f61721f.setText(com.join.mgps.Util.e0.D(serviceState.getAdd_time(), "HH:mm"));
                n2Var.f61722g.setText(serviceState.getTitle());
                break;
            case 38:
                k2 k2Var = (k2) holder;
                final BTActivityBean bTActivityBean = (BTActivityBean) this.f61526r.get(position).f61563a;
                k2Var.f61672d.setText(bTActivityBean.getType());
                k2Var.f61673e.setText(bTActivityBean.getTitle());
                k2Var.f61674f.setText(bTActivityBean.getSub_head());
                k2Var.f61675g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f64038b.z(bTActivityBean, view);
                    }
                });
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case 1:
                return new e2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_title, parent, false));
            case 2:
                return new u1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_iconlayout, parent, false));
            case 3:
                return new b2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_subscribe, parent, false));
            case 4:
                return new C0692d2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_tipslayout, parent, false));
            case 5:
                return new g2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_viewpage, parent, false));
            case 6:
                return new v1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamenotice, parent, false));
            case 7:
                return new w1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_recommend, parent, false));
            case 8:
                return new r1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_describ, parent, false));
            case 9:
                return new t1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gifts, parent, false));
            case 10:
                return new j1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_auxiliarytool, parent, false));
            case 11:
                return new y1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_updateinfo, parent, false));
            case 12:
                return new s1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamedetialsimple, parent, false));
            case 13:
                return new n1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_record_header, parent, false));
            case 14:
                return new l1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_comment_item_layout, parent, false));
            case 15:
                return new o1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_comment_message_reply, parent, false));
            case 16:
                return new m1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_commit_footer, parent, false));
            case 17:
                return new a2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamerecommendlist, parent, false));
            case 18:
                return new k1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_bottom_empty, parent, false));
            case 19:
                return new f2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_video, parent, false));
            case 20:
                return new p1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_down_and_down, parent, false));
            case 21:
                return new q1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_factory_recommend, parent, false));
            case 22:
                return new c2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_supply_a_gap, parent, false));
            case 23:
                return new z1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_hand_shark_item, parent, false));
            case 24:
                return new m2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_qq_item, parent, false));
            case 25:
                return new a1(LayoutInflater.from(parent.getContext()).inflate(R.layout.comment_list_item_view, parent, false));
            case 26:
                return new j2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_none_comment_layout, parent, false));
            case 27:
                return new g1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_comment_game_layout, parent, false));
            case 28:
                return new g2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_viewpagenew, parent, false));
            case 29:
                return new i1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_favortis_layout, parent, false));
            case 30:
                return new i2(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_golden_finger_layout, parent, false));
            case 31:
                return new f1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_cloud_archive_layout, parent, false));
            case 32:
                return new l2(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_one_touch_skill_layout, parent, false));
            case 33:
                return new e1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_check_point_layout, parent, false));
            case 34:
                return new x1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_updateinfo1, parent, false));
            case 35:
                return new h2(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_golden_finger1_layout, parent, false));
            case 36:
                return new h1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_coupon_item, parent, false));
            case 37:
                return new n2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_serviceinfo_item, parent, false));
            case 38:
                return new k2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_notice_item, parent, false));
            default:
                return null;
        }
    }

    b1 p(String pid, InformationCommentBean bean, int myAuth, boolean showDivider) {
        return new b1(new d1(pid, bean, myAuth, showDivider), 15);
    }

    void q() {
        DownloadTask downloadtaskDown = this.f61513e.getDownloadtaskDown();
        UtilsMy.D1(downloadtaskDown, this.f61513e);
        if (UtilsMy.o1(this.f61516h, downloadtaskDown)) {
            return;
        }
        if (this.f61513e.getDown_status() == 5) {
            UtilsMy.l1(this.f61516h, downloadtaskDown);
        } else {
            UtilsMy.U0(this.f61516h, downloadtaskDown, this.f61513e.getTp_down_url(), this.f61513e.getOther_down_switch(), this.f61513e.getCdn_down_switch());
        }
    }

    void r(Context context, String type) {
        DownloadTask downloadTaskG = q5.f.M().G(this.f61513e.getGame_id());
        if (downloadTaskG == null || TextUtils.isEmpty(type)) {
            q();
            return;
        }
        if (downloadTaskG.getStatus() == 5) {
            S(context, context.getResources().getString(R.string.game_detail_down_status, type));
        } else if (downloadTaskG.getStatus() == 43 || downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 0) {
            q();
        } else {
            S(context, context.getResources().getString(R.string.game_detail_downing_status, type));
        }
    }

    public View s() {
        return this.f61528t;
    }

    public List<View> u() {
        return this.f61529u;
    }

    public com.danikula.videocache.i v(Context context) {
        return MApplication.q(context);
    }

    public int w() {
        return this.f61525q;
    }

    public List<b1> x() {
        return this.f61526r;
    }
}
