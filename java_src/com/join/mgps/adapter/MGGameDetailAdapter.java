package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.GameDetialGiftMoreActivity_;
import com.join.mgps.activity.GameDetialInformationMoreActivity_;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.activity.HotVoucherActivity_;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.MyVoucherGameActivity_;
import com.join.mgps.activity.UpdateRecordActivity_;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherStatus;
import com.join.mgps.dto.AccountVoucherStatusBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.BannerImage;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDetialStrategyItem;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RecommendAdInfoBean;
import com.join.mgps.dto.RecommendAdInfoData;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.TipBean;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MGGameDetailAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f60851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f60852c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RelativeLayout f60854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f60855f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private DetailResultBeanV3 f60856g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Drawable f60864o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Drawable f60865p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Handler f60866q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<y0> f60868s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private LinearLayout.LayoutParams f60869t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private u0 f60870u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TextView f60872w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f60873x;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f60853d = getClass().getSimpleName();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f60857h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<String> f60858i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f60859j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f60860k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f60861l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f60862m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f60863n = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<RecommendGameBean> f60867r = new ArrayList();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f60871v = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    v0 f60874y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    long f60875z = System.currentTimeMillis();

    public enum ViewType {
        TITLE,
        VIEWPAGE,
        UPDATE_RECORD,
        WEB,
        GAME_GIFTS,
        GAMEAD,
        MESSAGE,
        RECOMMEND,
        INFORMATION,
        COMMIT_HEADER,
        COMMIT,
        COMMIT_REPLY,
        COMMIT_FOOTER,
        GAME_ITEM_TOP,
        GAME_GIFTS_ITEM,
        GAME_GIFTS_BOTTOM,
        VOUCHER,
        DETIAL_ADGROUP,
        INFORMATIONTOP,
        SERVICEITEM,
        STRAYTEGYTABLE,
        STRAYTEGYITEM_IMAGE,
        STRAYTEGYITEM_NOIMAGE,
        GAME_FAST_ENTRY,
        GIFT_AND_SERVICE,
        NULLITEM
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60876b;

        a(final List val$bannerBeen) {
            this.f60876b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60876b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60876b.get(0)).getIntentDataBean());
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (MGGameDetailAdapter.this.f60870u != null) {
                MGGameDetailAdapter.this.f60870u.a(Boolean.valueOf(MGGameDetailAdapter.this.f60871v));
                ImageView imageView = (ImageView) v10;
                if (MGGameDetailAdapter.this.f60871v) {
                    imageView.setImageResource(R.drawable.detial_more_up);
                    MGGameDetailAdapter.this.f60871v = false;
                } else {
                    imageView.setImageResource(R.drawable.forum_ext_func);
                    MGGameDetailAdapter.this.f60871v = true;
                }
            }
        }
    }

    public class a1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f60879a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f60880b;

        public a1() {
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60882b;

        b(final List val$bannerBeen) {
            this.f60882b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60882b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60882b.get(0)).getIntentDataBean());
        }
    }

    class b0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60884b;

        b0(final List val$adInfo) {
            this.f60884b = val$adInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f60884b;
            if (list == null || list.size() <= 0 || ((RecommendAdInfoData) this.f60884b.get(0)).getSub() == null || ((RecommendAdInfoData) this.f60884b.get(0)).getSub().size() <= 0) {
                return;
            }
            RecommendAdInfoBean recommendAdInfoBean = ((RecommendAdInfoData) this.f60884b.get(0)).getSub().get(0);
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(recommendAdInfoBean.getJump_type());
            intentDateBean.setLink_type(recommendAdInfoBean.getLink_type());
            intentDateBean.setLink_type_val(recommendAdInfoBean.getLink_type_val());
            intentDateBean.setTpl_type(recommendAdInfoBean.getTpl_type());
            intentDateBean.setCrc_link_type_val(recommendAdInfoBean.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, intentDateBean);
        }
    }

    public class b1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f60886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RelativeLayout f60887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f60888c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f60889d;

        public b1() {
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60891b;

        c(final String val$palerId) {
            this.f60891b = val$palerId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f60855f, this.f60891b);
        }
    }

    class c0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ y0.t f60893b;

        c0(final y0.t val$item) {
            this.f60893b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UpdateRecordActivity_.intent(MGGameDetailAdapter.this.f60855f).a(this.f60893b.f61194b).start();
        }
    }

    public class c1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private FrameLayout f60895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CarouselViewPager2 f60896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ViewGroup f60897c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f60898d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ArrayList<BannerImage> f60899e = new ArrayList<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView[] f60900f = new ImageView[0];

        class a extends ViewPager.SimpleOnPageChangeListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ MGGameDetailAdapter f60902b;

            a(final MGGameDetailAdapter val$this$0) {
                this.f60902b = val$this$0;
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                int size = position % c1.this.f60899e.size();
                for (int i10 = 0; i10 < c1.this.f60899e.size(); i10++) {
                    c1.this.f60900f[size].setBackgroundResource(R.drawable.point_selected);
                    if (size != i10) {
                        c1.this.f60900f[i10].setBackgroundResource(R.drawable.point_normal);
                    }
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ List f60904b;

            b(final List val$bannerBeanList) {
                this.f60904b = val$bannerBeanList;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int currentItem = c1.this.f60896b.getCurrentItem();
                c1 c1Var = c1.this;
                List list = this.f60904b;
                c1Var.d(list, currentItem % list.size());
            }
        }

        public c1(View view) {
            this.f60898d = view;
            this.f60897c = (ViewGroup) view.findViewById(R.id.point_group);
            CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) view.findViewById(R.id.top_ad_viewpager);
            this.f60896b = carouselViewPager2;
            carouselViewPager2.addOnPageChangeListener(new a(MGGameDetailAdapter.this));
            this.f60895a = (FrameLayout) view.findViewById(R.id.onlyOne);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(List<BannerBean> tablesBeanListB, int i10) {
            if (tablesBeanListB == null || tablesBeanListB.size() == 0) {
                return;
            }
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(tablesBeanListB.get(i10).getJump_type());
            intentDateBean.setLink_type(tablesBeanListB.get(i10).getLink_type());
            intentDateBean.setLink_type_val(tablesBeanListB.get(i10).getLink_type_val());
            if (tablesBeanListB.get(i10).getLink_type() == 1) {
                intentDateBean.setTpl_type(tablesBeanListB.get(i10).getGame_info_tpl_type());
            } else {
                intentDateBean.setTpl_type(tablesBeanListB.get(i10).getTpl_type());
            }
            intentDateBean.setCrc_link_type_val(tablesBeanListB.get(i10).getCrc_link_type_val());
            intentDateBean.setObject(tablesBeanListB.get(i10).getTitle());
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, intentDateBean);
        }

        public void c(final List<BannerBean> bannerBeanList) {
            this.f60899e.clear();
            for (int i10 = 0; i10 < bannerBeanList.size(); i10++) {
                BannerImage bannerImage = new BannerImage();
                SimpleDraweeView simpleDraweeView = new SimpleDraweeView(MGGameDetailAdapter.this.f60855f);
                com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.banner_normal_icon, bannerBeanList.get(i10).getPic_remote());
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                bannerImage.setImageView(simpleDraweeView);
                bannerImage.setUrl(bannerBeanList.get(i10).getPic_remote());
                this.f60899e.add(bannerImage);
                simpleDraweeView.setOnClickListener(new b(bannerBeanList));
            }
            int dimensionPixelOffset = MGGameDetailAdapter.this.f60855f.getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
            int dimensionPixelOffset2 = MGGameDetailAdapter.this.f60855f.getResources().getDimensionPixelOffset(R.dimen.round_point_size);
            this.f60897c.removeAllViews();
            this.f60900f = new ImageView[bannerBeanList.size()];
            int i11 = 0;
            while (true) {
                ImageView[] imageViewArr = this.f60900f;
                if (i11 >= imageViewArr.length) {
                    break;
                }
                if (i11 <= 8) {
                    imageViewArr[i11] = new ImageView(MGGameDetailAdapter.this.f60855f);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelOffset2, dimensionPixelOffset2);
                    layoutParams.gravity = 1;
                    layoutParams.setMargins(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
                    this.f60900f[i11].setLayoutParams(layoutParams);
                    if (i11 == 0) {
                        this.f60900f[i11].setBackgroundResource(R.drawable.point_selected);
                    } else {
                        this.f60900f[i11].setBackgroundResource(R.drawable.point_normal);
                    }
                    this.f60897c.addView(this.f60900f[i11]);
                }
                i11++;
            }
            ArrayList<BannerImage> arrayList = this.f60899e;
            if (arrayList == null || arrayList.size() == 0) {
                return;
            }
            this.f60895a.setVisibility(4);
            this.f60896b.setVisibility(0);
            if (this.f60899e.size() != 1) {
                this.f60896b.setAdapter(new d7(MGGameDetailAdapter.this.f60855f, this.f60896b, bannerBeanList));
                this.f60896b.getAdapter().notifyDataSetChanged();
            } else {
                SimpleDraweeView imageView = this.f60899e.get(0).getImageView();
                com.join.android.app.common.utils.l.h(imageView, this.f60899e.get(0).getUrl());
                this.f60895a.addView(imageView);
                this.f60895a.setVisibility(0);
                this.f60896b.setVisibility(4);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60906b;

        d(final List val$bannerBeen) {
            this.f60906b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60906b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60906b.get(0)).getIntentDataBean());
        }
    }

    class d0 implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ y0.u f60908a;

        d0(final y0.u val$item) {
            this.f60908a = val$item;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(MGGameDetailAdapter.this.f60855f, (Class<?>) ImagePagerActivity.class);
                String[] strArr = new String[MGGameDetailAdapter.this.f60858i.size()];
                for (int i10 = 0; i10 < MGGameDetailAdapter.this.f60858i.size(); i10++) {
                    strArr[i10] = (String) MGGameDetailAdapter.this.f60858i.get(i10);
                }
                if (com.join.mgps.Util.t2.i(this.f60908a.f61198d) && position == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(this.f60908a.f61198d);
                    videoInfo.C(strArr[0]);
                    FullScreenActivity_.intent(MGGameDetailAdapter.this.f60855f).a(videoInfo).start();
                } else {
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", position);
                    MGGameDetailAdapter.this.f60855f.startActivity(intent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class d1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LinearLayout f60910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f60911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f60912c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f60913d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60914e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f60915f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public SimpleDraweeView f60916g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f60917h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public SimpleDraweeView f60918i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public SimpleDraweeView f60919j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public SimpleDraweeView f60920k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f60921l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f60922m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f60923n;

        public d1() {
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60925b;

        e(final List val$bannerBeen) {
            this.f60925b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60925b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60925b.get(0)).getIntentDataBean());
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MGGameDetailAdapter.this.f60874y.e();
        }
    }

    public class e1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LinearLayout f60928a;

        public e1(View convertView) {
            this.f60928a = (LinearLayout) convertView.findViewById(R.id.group);
            convertView.setTag(this);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60930b;

        f(final String val$serverid) {
            this.f60930b = val$serverid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQChart(MGGameDetailAdapter.this.f60855f, this.f60930b);
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MGGameDetailAdapter.this.f60874y.h();
        }
    }

    public class f1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f60933a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f60934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f60935c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f60936d;

        public f1() {
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60938b;

        g(final String val$palerId) {
            this.f60938b = val$palerId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f60855f, this.f60938b);
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            DetialMoreServiceListActivity_.intent(MGGameDetailAdapter.this.f60855f).a(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).start();
        }
    }

    public class g1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f60941a;

        public g1() {
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60943b;

        h(final List val$bannerBeen) {
            this.f60943b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60943b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60943b.get(0)).getIntentDataBean());
        }
    }

    class h0 implements u0 {
        h0() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.u0
        public void a(Boolean b10) {
            if (b10.booleanValue()) {
                if (MGGameDetailAdapter.this.f60872w != null) {
                    MGGameDetailAdapter.this.f60872w.setVisibility(0);
                }
                if (MGGameDetailAdapter.this.f60873x != null) {
                    MGGameDetailAdapter.this.f60873x.setVisibility(8);
                    return;
                }
                return;
            }
            if (MGGameDetailAdapter.this.f60872w != null) {
                MGGameDetailAdapter.this.f60872w.setVisibility(8);
            }
            if (MGGameDetailAdapter.this.f60873x != null) {
                MGGameDetailAdapter.this.f60873x.setVisibility(0);
            }
        }
    }

    public class h1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f60946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f60947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f60948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f60949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f60950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f60951f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        RelativeLayout f60952g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f60953h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f60954i;

        public h1() {
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60956b;

        i(final List val$bannerBeen) {
            this.f60956b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60956b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60956b.get(0)).getIntentDataBean());
        }
    }

    class i0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f60958b;

        i0(final InformationCommentBean val$commitDataBean) {
            this.f60958b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f60958b.isHasPraised()) {
                com.join.mgps.Util.a3.b(MGGameDetailAdapter.this.f60855f).d("你已赞过");
                return;
            }
            if (AccountUtil_.getInstance_(MGGameDetailAdapter.this.f60855f).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f60855f);
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(MGGameDetailAdapter.this.f60855f, R.anim.scale_reset));
            v0 v0Var = MGGameDetailAdapter.this.f60874y;
            if (v0Var != null) {
                v0Var.a(this.f60958b);
            }
        }
    }

    public class i1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f60960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f60962c;

        public i1() {
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60964b;

        j(final String val$palerId) {
            this.f60964b = val$palerId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f60855f, this.f60964b);
        }
    }

    class j0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f60966b;

        j0(final InformationCommentBean.Sub val$sub) {
            this.f60966b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v0 v0Var = MGGameDetailAdapter.this.f60874y;
            if (v0Var != null) {
                v0Var.b(this.f60966b);
            }
        }
    }

    public class j1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LinearLayout f60968a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f60969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60970c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f60971d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f60972e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f60973f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f60974g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f60975h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f60976i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f60977j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60978k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f60979l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f60980m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f60981n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public LinearLayout f60982o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public LinearLayout f60983p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public LinearLayout f60984q;

        public j1() {
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameDetialGiftMoreActivity_.intent(MGGameDetailAdapter.this.f60855f).a(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).start();
        }
    }

    class k0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f60987b;

        k0(final CommentBaseBean val$commitDataBean) {
            this.f60987b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v0 v0Var = MGGameDetailAdapter.this.f60874y;
            if (v0Var != null) {
                v0Var.c(this.f60987b);
            }
        }
    }

    public class k1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f60989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f60990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f60991c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f60992d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f60993e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f60994f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f60995g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f60996h;

        public k1() {
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60998b;

        l(final List val$bannerBeen) {
            this.f60998b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f60998b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f60998b.get(0)).getIntentDataBean());
        }
    }

    class l0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61001c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61002d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ y0.r f61003e;

        l0(final int val$itemIndex, final int val$position, final String val$cid, final y0.r val$commentMessageReply) {
            this.f61000b = val$itemIndex;
            this.f61001c = val$position;
            this.f61002d = val$cid;
            this.f61003e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61000b == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f61000b; i10 >= 0; i10--) {
                y0 y0Var = (y0) MGGameDetailAdapter.this.f60868s.get(this.f61001c - i10);
                y0.r rVar = y0Var.b() == ViewType.COMMIT_REPLY ? (y0.r) y0Var.a() : null;
                if (rVar != null && this.f61002d == rVar.f61174a) {
                    arrayList.addAll(rVar.f61175b.getSub());
                }
            }
            for (int i11 = 0; i11 <= this.f61000b; i11++) {
                MGGameDetailAdapter.this.f60868s.remove(this.f61001c - i11);
            }
            informationCommentBean.setSub(arrayList);
            MGGameDetailAdapter.this.f60868s.add(this.f61001c - this.f61000b, MGGameDetailAdapter.this.l(this.f61002d, informationCommentBean, this.f61003e.f61176c, true));
            MGGameDetailAdapter.this.notifyDataSetChanged();
        }
    }

    public class l1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f61005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61007c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f61008d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61009e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f61010f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61011g;

        public l1() {
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61013b;

        m(final List val$bannerBeen) {
            this.f61013b = val$bannerBeen;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List list = this.f61013b;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f60855f, ((BannerBean) this.f61013b.get(0)).getIntentDataBean());
        }
    }

    class m0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f61016c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61017d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ y0.r f61018e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f61019f;

        m0(final int val$size, final InformationCommentBean val$forumCommentBean, final String val$cid, final y0.r val$commentMessageReply, final int val$position) {
            this.f61015b = val$size;
            this.f61016c = val$forumCommentBean;
            this.f61017d = val$cid;
            this.f61018e = val$commentMessageReply;
            this.f61019f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f61015b) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f61016c);
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
                y0 y0VarL = MGGameDetailAdapter.this.l(this.f61017d, informationCommentBean, this.f61018e.f61176c, i11 == 0);
                y0.r rVar = (y0.r) y0VarL.a();
                rVar.f61178e = i11;
                rVar.f61179f = z10;
                rVar.f61177d = i11 == 0;
                MGGameDetailAdapter.this.V(y0VarL, !z10);
                MGGameDetailAdapter.this.f60868s.add(this.f61019f + i11 + 1, y0VarL);
                i11++;
                i10 = i12;
            }
            MGGameDetailAdapter.this.f60868s.remove(this.f61019f);
            MGGameDetailAdapter.this.notifyDataSetChanged();
        }
    }

    class m1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f61021a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        View f61022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f61023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f61024d;

        m1() {
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String[] f61027c;

        n(final int val$imgIndex, final String[] val$rawPicList) {
            this.f61026b = val$imgIndex;
            this.f61027c = val$rawPicList;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f61026b, this.f61027c);
        }
    }

    class n0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61030c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f61031d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f61032e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(n0.this.f61032e.getText().toString()).longValue();
                n0.this.f61032e.setText((jLongValue + 1) + "");
                n0 n0Var = n0.this;
                MGGameDetailAdapter.this.k(n0Var.f61030c);
                n0 n0Var2 = n0.this;
                v0 v0Var = MGGameDetailAdapter.this.f60874y;
                if (v0Var != null) {
                    v0Var.onPraise(n0Var2.f61029b, n0Var2.f61030c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        n0(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f61029b = val$commitDataBean;
            this.f61030c = val$position;
            this.f61031d = val$view;
            this.f61032e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            long jCurrentTimeMillis = System.currentTimeMillis();
            MGGameDetailAdapter mGGameDetailAdapter = MGGameDetailAdapter.this;
            if (jCurrentTimeMillis - mGGameDetailAdapter.f60875z < 500) {
                return;
            }
            mGGameDetailAdapter.f60875z = jCurrentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f60855f) || (commentBaseBean = this.f61029b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                MGGameDetailAdapter.this.g0(this.f61030c);
                this.f61031d.setImageResource(R.drawable.up_ic);
                v0 v0Var = MGGameDetailAdapter.this.f60874y;
                if (v0Var != null) {
                    v0Var.onPraise(this.f61029b, this.f61030c, 2);
                    return;
                }
                return;
            }
            this.f61029b.setIs_praise(1);
            if (AccountUtil_.getInstance_(MGGameDetailAdapter.this.f60855f).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f60855f);
                return;
            }
            this.f61031d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(MGGameDetailAdapter.this.f60855f, R.anim.scale_reset);
            this.f61031d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    public class n1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61035a;

        public n1() {
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61037b;

        o(final int val$pid) {
            this.f61037b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f61037b);
            com.join.mgps.Util.r0.v0(MGGameDetailAdapter.this.f60855f, forumPostsBean);
        }
    }

    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            DetialMoreServiceListActivity_.intent(MGGameDetailAdapter.this.f60855f).a(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).start();
        }
    }

    public class o1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f61040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        MyGridView f61041b;

        public o1() {
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyTag f61043b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f61044c;

        p(final GameDetialStrategyTag val$tabBean, final List val$tabBeanList) {
            this.f61043b = val$tabBean;
            this.f61044c = val$tabBeanList;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            DetialIntentBean detialIntentBean = new DetialIntentBean();
            detialIntentBean.setGameId(MGGameDetailAdapter.this.f60856g.getCrc_sign_id());
            detialIntentBean.setIntentType(5);
            detialIntentBean.setStartegyTab(this.f61043b.getTag_id());
            detialIntentBean.setStrategyTags(this.f61044c);
            GameDetialInformationMoreActivity_.intent(MGGameDetailAdapter.this.f60855f).a(detialIntentBean).start();
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            DetialMoreServiceListActivity_.intent(MGGameDetailAdapter.this.f60855f).a(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).start();
        }
    }

    public class p1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61048b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61049c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61050d;

        public p1() {
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendInfomationBean f61052b;

        q(final RecommendInfomationBean val$recommendInfomationBean) {
            this.f61052b = val$recommendInfomationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f61052b.getPost_id());
                com.join.mgps.Util.r0.v0(MGGameDetailAdapter.this.f60855f, forumPostsBean);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class q0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61054b;

        q0(final GiftPackageDataInfoBean val$gameGiftPackageBean) {
            this.f61054b = val$gameGiftPackageBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61054b.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 3;
                message.obj = this.f61054b;
                MGGameDetailAdapter.this.f60866q.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.f61054b;
            MGGameDetailAdapter.this.f60866q.sendMessage(message2);
        }
    }

    class q1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f61056a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61057b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        LinearLayout f61058c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61059d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61060e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61061f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f61062g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Button f61063h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public SimpleDraweeView f61064i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LinearLayout f61065j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Button f61066k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public LinearLayout f61067l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f61068m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public HorizontalScrollView f61069n;

        q1() {
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61071b;

        r(final GiftPackageDataInfoBean val$gameGiftPackageBean) {
            this.f61071b = val$gameGiftPackageBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(MGGameDetailAdapter.this.f60855f).getAccountData();
            if (accountData == null) {
                GiftsDetailActivity_.intent(MGGameDetailAdapter.this.f60855f).c(this.f61071b).start();
            } else {
                GiftsDetailActivity_.intent(MGGameDetailAdapter.this.f60855f).c(this.f61071b).a(accountData.getUid()).start();
            }
        }
    }

    class r0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f61073b;

        r0(final long val$fid) {
            this.f61073b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goForumFid(MGGameDetailAdapter.this.f60855f, (int) this.f61073b);
        }
    }

    public class r1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f61075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f61077c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f61078d;

        public r1() {
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61080b;

        s(final GiftPackageDataInfoBean val$gameGiftPackageBean) {
            this.f61080b = val$gameGiftPackageBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61080b.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 3;
                message.obj = this.f61080b;
                MGGameDetailAdapter.this.f60866q.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.f61080b;
            MGGameDetailAdapter.this.f60866q.sendMessage(message2);
        }
    }

    class s0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f61082b;

        s0(final String val$serverid) {
            this.f61082b = val$serverid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQChart(MGGameDetailAdapter.this.f60855f, this.f61082b);
        }
    }

    class s1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        HListView f61084a;

        s1() {
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetialIntentBean f61086b;

        t(final DetialIntentBean val$intentDateBean) {
            this.f61086b = val$intentDateBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int intentType = this.f61086b.getIntentType();
            if (intentType == 1 || intentType == 2) {
                GameDetialInformationMoreActivity_.intent(MGGameDetailAdapter.this.f60855f).a(this.f61086b).start();
            } else if (intentType == 3) {
                DetialMoreServiceListActivity_.intent(MGGameDetailAdapter.this.f60855f).a(this.f61086b.getGameId()).start();
            } else {
                if (intentType != 4) {
                    return;
                }
                GameDetialGiftMoreActivity_.intent(MGGameDetailAdapter.this.f60855f).a(this.f61086b.getGameId()).start();
            }
        }
    }

    class t0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f61088b;

        t0(final String val$palerId) {
            this.f61088b = val$palerId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f60855f, this.f61088b);
        }
    }

    public class t1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61092c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61093d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f61094e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61095f;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameVoucherBean f61097b;

            a(final GameVoucherBean val$mBean) {
                this.f61097b = val$mBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                Message messageObtainMessage = MGGameDetailAdapter.this.f60866q.obtainMessage();
                messageObtainMessage.what = 4;
                messageObtainMessage.obj = this.f61097b;
                MGGameDetailAdapter.this.f60866q.sendMessage(messageObtainMessage);
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                AccountVoucher accountVoucher = new AccountVoucher();
                accountVoucher.setGame_id(Long.parseLong(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()));
                accountVoucher.setGame_name(MGGameDetailAdapter.this.f60856g.getGame_name());
                accountVoucher.setStatus(new AccountVoucherStatus(new AccountVoucherStatusBean(0.0d, 0), null));
                accountVoucher.setGame_tpl(MGGameDetailAdapter.this.f60856g.getGame_info_tpl_type());
                accountVoucher.setSp_tpl_two_position(MGGameDetailAdapter.this.f60856g.getSp_tpl_two_position());
                MyVoucherGameActivity_.intent(MGGameDetailAdapter.this.f60855f).a(accountVoucher).start();
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                HotVoucherActivity_.intent(MGGameDetailAdapter.this.f60855f).start();
            }
        }

        public t1(View mView) {
            this.f61090a = (TextView) mView.findViewById(R.id.voucherPrice);
            this.f61091b = (TextView) mView.findViewById(R.id.voucherContent);
            this.f61093d = (TextView) mView.findViewById(R.id.voucherGameGet);
            this.f61092c = (TextView) mView.findViewById(R.id.voucherGameNumber);
            this.f61094e = (LinearLayout) mView.findViewById(R.id.layoutGamevoucher);
            this.f61095f = (LinearLayout) mView.findViewById(R.id.gameVoucherRight);
        }

        public void a(final GameVoucherBean mBean) {
            if (mBean != null) {
                this.f61090a.setText("￥" + mBean.getGame_coupon_money());
                this.f61091b.setText(mBean.getGame_coupon_title());
                int game_coupon_status = mBean.getGame_coupon_status();
                if (game_coupon_status == 1) {
                    this.f61092c.setText(String.format(MGGameDetailAdapter.this.f60855f.getString(R.string.voucher_surplus), mBean.getGame_coupon_surplus_number() + ""));
                    this.f61093d.setText(MGGameDetailAdapter.this.f60855f.getString(R.string.voucher_get));
                    this.f61092c.setPadding(0, com.join.mgps.Util.i0.a(MGGameDetailAdapter.this.f60855f, 15.0f), 0, 0);
                    this.f61092c.setTextColor(MGGameDetailAdapter.this.f60855f.getResources().getColorStateList(R.color.app_blue_color));
                    this.f61093d.setVisibility(0);
                    this.f61095f.setOnClickListener(new a(mBean));
                    return;
                }
                if (game_coupon_status == 2) {
                    this.f61092c.setTextColor(MGGameDetailAdapter.this.f60855f.getResources().getColorStateList(R.color.gray));
                    this.f61092c.setText(MGGameDetailAdapter.this.f60855f.getString(R.string.voucher_is_get));
                    this.f61093d.setText(MGGameDetailAdapter.this.f60855f.getString(R.string.voucher_detail));
                    this.f61092c.setPadding(0, com.join.mgps.Util.i0.a(MGGameDetailAdapter.this.f60855f, 15.0f), 0, 0);
                    this.f61093d.setVisibility(0);
                    this.f61095f.setOnClickListener(new b());
                    return;
                }
                if (game_coupon_status != 3) {
                    return;
                }
                this.f61092c.setTextColor(MGGameDetailAdapter.this.f60855f.getResources().getColorStateList(R.color.gray));
                this.f61093d.setText("看看其他");
                this.f61092c.setText(MGGameDetailAdapter.this.f60855f.getString(R.string.voucher_get_out));
                this.f61092c.setPadding(0, com.join.mgps.Util.i0.a(MGGameDetailAdapter.this.f60855f, 15.0f), 0, 0);
                this.f61095f.setOnClickListener(new c());
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.intent(MGGameDetailAdapter.this.f60855f).f(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).i(MGGameDetailAdapter.this.f60856g.getPackage_name()).h(MGGameDetailAdapter.this.f60856g.getPlugin_num()).g(0).j(MGGameDetailAdapter.this.f60856g.getGame_score().getSgc_switch()).a(MGGameDetailAdapter.this.f60856g.getBespeak_switch()).d("0").start();
        }
    }

    interface u0 {
        void a(Boolean b10);
    }

    public class u1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f61102a;

        public u1(View mView) {
            this.f61102a = (LinearLayout) mView.findViewById(R.id.layout_voucher_game_item);
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            DetialMoreServiceListActivity_.intent(MGGameDetailAdapter.this.f60855f).a(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).start();
        }
    }

    public interface v0 {
        void a(InformationCommentBean bean);

        void b(InformationCommentBean.Sub sub);

        void c(CommentBaseBean bean);

        void d();

        void e();

        void f();

        void g();

        void h();

        void onPraise(CommentBaseBean bean, int position, int type);

        void onRootView(CommentBaseBean bean);

        void onUnPraise(CommentBaseBean bean, int position, int type);
    }

    public class v1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61107c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61108d;

        public v1() {
        }
    }

    class w implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f61110b;

        w(final CommentBaseBean val$commitDataBean) {
            this.f61110b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v0 v0Var;
            CommentBaseBean commentBaseBean = this.f61110b;
            if (commentBaseBean == null || (v0Var = MGGameDetailAdapter.this.f60874y) == null) {
                return;
            }
            v0Var.onRootView(commentBaseBean);
        }
    }

    class w0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f61112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RelativeLayout f61113b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61114c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61115d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61116e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public LinearLayout f61117f;

        public w0(View convertView) {
            this.f61113b = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            this.f61112a = (TextView) convertView.findViewById(R.id.images_count);
            this.f61117f = (LinearLayout) convertView.findViewById(R.id.viewBottom);
            convertView.setTag(this);
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(MGGameDetailAdapter.this.f60855f).getAccountData();
            if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(MGGameDetailAdapter.this.f60855f);
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f60855f)) {
                return;
            }
            if (MGGameDetailAdapter.this.f60856g.getSelf_comment() == null) {
                CommentCreatActivity_.intent(MGGameDetailAdapter.this.f60855f).f(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).j(MGGameDetailAdapter.this.f60856g.getPackage_name()).h(MGGameDetailAdapter.this.f60856g.getPlugin_num()).g(0).a(MGGameDetailAdapter.this.f60856g.getBespeak_switch()).d("0").start();
            } else {
                CommentAllListBean.SelfCommentBean self_comment = MGGameDetailAdapter.this.f60856g.getSelf_comment();
                CommentCreatActivity_.intent(MGGameDetailAdapter.this.f60855f).f(MGGameDetailAdapter.this.f60856g.getCrc_sign_id()).j(MGGameDetailAdapter.this.f60856g.getPackage_name()).d("0").c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(MGGameDetailAdapter.this.f60856g.getBespeak_switch()).h(MGGameDetailAdapter.this.f60856g.getPlugin_num()).g(0).b(self_comment.getContent()).start();
            }
        }
    }

    class x0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LinearLayout f61120a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f61121b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61122c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61123d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f61124e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f61125f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f61126g;

        x0() {
        }
    }

    class y implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendInfomationBean f61128b;

        y(final RecommendInfomationBean val$recommendInfomationBean) {
            this.f61128b = val$recommendInfomationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f61128b.getPost_id());
                com.join.mgps.Util.r0.v0(MGGameDetailAdapter.this.f60855f, forumPostsBean);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static class y0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f61130a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f61131b;

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61136a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f61137b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f61138c;

            public b(boolean switchOpen, String comment_count, String crc_sign_id) {
                this.f61136a = switchOpen;
                this.f61137b = comment_count;
                this.f61138c = crc_sign_id;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f61139a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f61140b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f61141c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f61142d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f61143e;

            public c(int recommend_information_switch, int recommend_game_switch, int comment_switch, String comment_count, String crc_sign_id) {
                this.f61139a = recommend_information_switch;
                this.f61140b = recommend_game_switch;
                this.f61141c = comment_switch;
                this.f61142d = comment_count;
                this.f61143e = crc_sign_id;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            List<BannerBean> f61144a;

            public d(List<BannerBean> bannerBeens) {
                this.f61144a = bannerBeens;
            }
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String f61145a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            long f61146b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            String f61147c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            String f61148d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            List<BannerBean> f61149e;

            public e(long forum_id, String server_qq, String player_qq, List<BannerBean> fast_entry_no4, String forum_count) {
                this.f61146b = forum_id;
                this.f61147c = server_qq;
                this.f61148d = player_qq;
                this.f61149e = fast_entry_no4;
                this.f61145a = forum_count;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f61150a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<RecommendAdInfoData> f61151b;

            public f(int recommend_adinfo_switch, List<RecommendAdInfoData> recommend_ad_info) {
                this.f61150a = recommend_adinfo_switch;
                this.f61151b = recommend_ad_info;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61152a;

            public g(boolean showGameGifts) {
                this.f61152a = showGameGifts;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61153a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public GiftPackageDataInfoBean f61154b;

            public h(boolean showGameGifts, GiftPackageDataInfoBean infoBean) {
                this.f61153a = showGameGifts;
                this.f61154b = infoBean;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61155a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Object f61156b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f61157c;

            public i(boolean showGameGifts, int topType, Object moreData) {
                this.f61155a = showGameGifts;
                this.f61156b = moreData;
                this.f61157c = topType;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            List<GiftPackageDataInfoBean> f61158a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            List<ServiceState> f61159b;

            public j(List<GiftPackageDataInfoBean> gifts, List<ServiceState> serviceStates) {
                this.f61158a = gifts;
                this.f61159b = serviceStates;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public RecommendInfomationBean f61160a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f61161b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f61162c;

            public k(boolean hideTopDivider, int recommend_information_switch, RecommendInfomationBean recommendInfomationBean) {
                this.f61162c = hideTopDivider;
                this.f61161b = recommend_information_switch;
                this.f61160a = recommendInfomationBean;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String f61163a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f61164b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            long f61165c;

            public l(String message, int messageType, long ad_time) {
                this.f61163a = message;
                this.f61164b = messageType;
                this.f61165c = ad_time;
            }
        }

        public static class n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            List<GameDetialStrategyTag> f61168a;

            public n(List<GameDetialStrategyTag> tags) {
                this.f61168a = tags;
            }
        }

        public static class o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            DetialIntentBean f61169a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f61170b;

            public o(DetialIntentBean intentDateBean, String message) {
                this.f61169a = intentDateBean;
                this.f61170b = message;
            }
        }

        public static class p {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<GamePromptBean> f61171a;

            public p(List<GamePromptBean> game_prompt) {
                this.f61171a = game_prompt;
            }
        }

        public static class q {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f61172a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<RecommendGameBean> f61173b;

            public q(int recommend_game_switch, List<RecommendGameBean> recommend_game) {
                this.f61172a = recommend_game_switch;
                this.f61173b = recommend_game;
            }
        }

        public static class r {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f61174a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public InformationCommentBean f61175b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f61176c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f61177d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f61178e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f61179f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f61180g;

            public r(String commentId, InformationCommentBean commentBean, int myAuth, boolean showDivider) {
                this.f61174a = commentId;
                this.f61175b = commentBean;
                this.f61176c = myAuth;
                this.f61177d = showDivider;
            }
        }

        public static class s {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f61181a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f61182b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ArrayList<TipBean> f61183c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f61184d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f61185e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f61186f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public String f61187g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public List<GameDetialBookTag> f61188h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public String f61189i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f61190j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f61191k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f61192l;

            public s(String ico_remote, String game_name, ArrayList<TipBean> tag_info, int down_count, int down_count_manual, String company_name, String size, int game_follow, int game_book, String follow_background_img, List<GameDetialBookTag> game_book_tag, int bespeak_switch) {
                this.f61181a = ico_remote;
                this.f61182b = game_name;
                this.f61183c = tag_info;
                this.f61184d = down_count;
                this.f61185e = down_count_manual;
                this.f61186f = company_name;
                this.f61187g = size;
                this.f61190j = game_follow;
                this.f61191k = game_book;
                this.f61189i = follow_background_img;
                this.f61188h = game_book_tag;
                this.f61192l = bespeak_switch;
            }
        }

        public static class t {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f61193a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f61194b;

            public t(int game_upgrade_info_switch, String game_upgrade_info) {
                this.f61193a = game_upgrade_info_switch;
                this.f61194b = game_upgrade_info;
            }
        }

        public static class u {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f61195a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<DetialShowImageBean> f61196b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f61197c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f61198d;

            public u(String vedio_cover_pic, List<DetialShowImageBean> pic_info, int pic_position, String vedio_url) {
                this.f61195a = vedio_cover_pic;
                this.f61196b = pic_info;
                this.f61197c = pic_position;
                this.f61198d = vedio_url;
            }
        }

        public static class v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61199a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public GameVoucherBean f61200b;

            public v(boolean switchOpen, GameVoucherBean infoBean) {
                this.f61199a = switchOpen;
                this.f61200b = infoBean;
            }
        }

        public static class w {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f61201a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f61202b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f61203c;

            public w(String edit_recommend, String game_describe_second, int lineCount) {
                this.f61201a = edit_recommend;
                this.f61202b = game_describe_second;
                this.f61203c = lineCount;
            }
        }

        public y0() {
        }

        public Object a() {
            return this.f61131b;
        }

        public ViewType b() {
            return this.f61130a;
        }

        public void c(Object obj) {
            this.f61131b = obj;
        }

        public void d(ViewType viewType) {
            this.f61130a = viewType;
        }

        public y0(ViewType viewType, Object obj) {
            this.f61130a = viewType;
            this.f61131b = obj;
        }

        public static class m {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            GameDetialStrategyItem f61166a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f61167b;

            public m(GameDetialStrategyItem strategyItem) {
                this.f61167b = false;
                this.f61166a = strategyItem;
            }

            public m(GameDetialStrategyItem strategyItem, boolean notShowDate) {
                this.f61166a = strategyItem;
                this.f61167b = notShowDate;
            }
        }

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f61132a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f61133b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public GameCommitListBean.GameCommitList f61134c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public CommentBaseBean f61135d;

            public a(boolean switchOpen, GameCommitListBean.GameCommitList gameCommitList, boolean hideBottomDivider) {
                this.f61132a = switchOpen;
                this.f61133b = hideBottomDivider;
                this.f61134c = gameCommitList;
            }

            public a(boolean switchOpen, CommentBaseBean data, boolean hideBottomDivider) {
                this.f61132a = switchOpen;
                this.f61133b = hideBottomDivider;
                this.f61135d = data;
            }
        }
    }

    class z implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyItem f61204b;

        z(final GameDetialStrategyItem val$recommendInfomationBean) {
            this.f61204b = val$recommendInfomationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f61204b.getId());
                com.join.mgps.Util.r0.v0(MGGameDetailAdapter.this.f60855f, forumPostsBean);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class z0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f61206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f61207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f61208c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61209d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f61210e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f61211f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61212g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        VipView f61213h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public View f61214i;

        public z0() {
        }
    }

    public MGGameDetailAdapter(Context _context, DetailResultBeanV3 detailResultData, Handler handler, RelativeLayout layoutM, List<y0> dataSet) {
        this.f60855f = _context;
        this.f60856g = detailResultData;
        this.f60866q = handler;
        this.f60854e = layoutM;
        this.f60868s = dataSet;
        this.f60864o = _context.getResources().getDrawable(R.drawable.game_detail_ok);
        this.f60865p = this.f60855f.getResources().getDrawable(R.drawable.game_detail_warn);
        Drawable drawable = this.f60864o;
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), this.f60864o.getMinimumHeight());
        this.f60865p.setBounds(0, 0, this.f60864o.getMinimumWidth(), this.f60864o.getMinimumHeight());
        this.f60851b = detailResultData.getBackground_color();
        this.f60852c = detailResultData.getSp_tpl_two_position();
        this.f60870u = new h0();
    }

    private View A(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        i1 i1Var;
        y0.o oVar = (y0.o) getItem(position);
        DetialIntentBean detialIntentBean = oVar.f61169a;
        if (view == null) {
            i1Var = new i1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_gifts_top, (ViewGroup) null);
            i1Var.f60961b = (TextView) viewInflate.findViewById(R.id.titleText);
            i1Var.f60962c = (LinearLayout) viewInflate.findViewById(R.id.look_other);
            X(viewInflate.findViewById(R.id.backLayout));
            if (this.f60852c == 0) {
                i1Var.f60961b.setTextColor(-1);
                ((TextView) viewInflate.findViewById(R.id.moreText)).setTextColor(-10592674);
                viewInflate.findViewById(R.id.line_h).setVisibility(8);
            }
            viewInflate.setTag(i1Var);
        } else {
            viewInflate = view;
            i1Var = (i1) view.getTag();
        }
        if (detialIntentBean == null) {
            i1Var.f60962c.setVisibility(8);
        } else {
            i1Var.f60962c.setVisibility(0);
        }
        i1Var.f60961b.setText(oVar.f61170b);
        i1Var.f60962c.setOnClickListener(new t(detialIntentBean));
        return viewInflate;
    }

    private View B(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        m1 m1Var;
        if (view == null) {
            m1Var = new m1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_message, (ViewGroup) null);
            m1Var.f61021a = (LinearLayout) viewInflate.findViewById(R.id.itemLayout);
            m1Var.f61022b = viewInflate.findViewById(R.id.itemLine);
            m1Var.f61023c = (LinearLayout) viewInflate.findViewById(R.id.messageLayoutMain);
            m1Var.f61024d = (ImageView) viewInflate.findViewById(R.id.moreImage);
            X((LinearLayout) viewInflate.findViewById(R.id.backLayout));
            viewInflate.setTag(m1Var);
        } else {
            viewInflate = view;
            m1Var = (m1) view.getTag();
        }
        List<GamePromptBean> list = ((y0.p) getItem(position)).f61171a;
        if (list == null || list.size() <= 0) {
            m1Var.f61021a.setVisibility(8);
            m1Var.f61022b.setVisibility(8);
        } else {
            m1Var.f61021a.setVisibility(0);
            m1Var.f61022b.setVisibility(0);
            m1Var.f61024d.setOnClickListener(new a0());
            if (this.f60852c == 0) {
                m1Var.f61022b.setVisibility(8);
            }
            m1Var.f61021a.removeAllViewsInLayout();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(36, 0, 0, 0);
            layoutParams.gravity = 19;
            for (int i10 = 0; i10 < list.size(); i10++) {
                GamePromptBean gamePromptBean = list.get(i10);
                if (gamePromptBean != null) {
                    TextView textView = new TextView(this.f60855f);
                    textView.setText(gamePromptBean.getText().toString());
                    if (gamePromptBean.getId() == 1) {
                        textView.setCompoundDrawables(this.f60864o, null, null, null);
                    } else {
                        textView.setCompoundDrawables(this.f60865p, null, null, null);
                    }
                    textView.setCompoundDrawablePadding(10);
                    textView.setSingleLine(true);
                    textView.setTextSize(1, 10.0f);
                    textView.setTextColor(-8355712);
                    m1Var.f61021a.addView(textView, layoutParams);
                }
            }
        }
        m1Var.f61023c.removeAllViewsInLayout();
        RelativeLayout relativeLayout = this.f60854e;
        if (relativeLayout != null) {
            m1Var.f61023c.addView(relativeLayout);
        }
        return viewInflate;
    }

    private View C(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        n1 n1Var;
        String str = (String) getItem(position);
        if (view == null) {
            n1Var = new n1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.detial_null_item, (ViewGroup) null);
            n1Var.f61035a = (TextView) viewInflate.findViewById(R.id.itemNul);
            viewInflate.setTag(n1Var);
        } else {
            viewInflate = view;
            n1Var = (n1) view.getTag();
        }
        if (this.f60852c == 0) {
            X(n1Var.f61035a);
        } else if ("1".equals(str)) {
            n1Var.f61035a.setBackgroundColor(0);
        } else {
            n1Var.f61035a.setBackgroundColor(-1);
        }
        return viewInflate;
    }

    private View D(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        o1 o1Var;
        if (view == null) {
            o1Var = new o1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_recommend, (ViewGroup) null);
            o1Var.f61041b = (MyGridView) viewInflate.findViewById(R.id.recomListView);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layoutContent);
            o1Var.f61040a = linearLayout;
            X(linearLayout);
            if (this.f60852c == 0) {
                viewInflate.findViewById(R.id.line_h).setVisibility(8);
            }
            viewInflate.setTag(o1Var);
        } else {
            viewInflate = view;
            o1Var = (o1) view.getTag();
        }
        y0.q qVar = (y0.q) getItem(position);
        int i10 = qVar.f61172a;
        if (i10 != 0 && i10 == 1) {
            o1Var.f61040a.setVisibility(0);
            com.join.mgps.adapter.o1 o1Var2 = new com.join.mgps.adapter.o1(this.f60855f, this.f60867r);
            o1Var.f61041b.setAdapter((ListAdapter) o1Var2);
            List<RecommendGameBean> list = qVar.f61173b;
            if (list != null && list.size() > 0) {
                this.f60867r.clear();
                this.f60867r.addAll(qVar.f61173b);
                o1Var2.notifyDataSetChanged();
            }
        } else {
            o1Var.f61040a.setVisibility(8);
        }
        return viewInflate;
    }

    private View E(int position, View convertView, ViewGroup viewGroup) {
        x0 x0Var;
        try {
            if (convertView != null) {
                x0Var = (x0) convertView.getTag();
            } else {
                x0Var = new x0();
                convertView = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                x0Var.f61126g = (LinearLayout) convertView.findViewById(R.id.parentLayout);
                x0Var.f61120a = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
                x0Var.f61121b = convertView.findViewById(R.id.comment_reply_divider);
                x0Var.f61122c = (TextView) convertView.findViewById(R.id.comment_reply_content);
                x0Var.f61123d = (TextView) convertView.findViewById(R.id.comment_reply_more);
                x0Var.f61124e = convertView.findViewById(R.id.line);
                x0Var.f61125f = convertView.findViewById(R.id.bottom);
                X(x0Var.f61126g);
                convertView.setTag(x0Var);
            }
            y0.r rVar = (y0.r) getItem(position);
            if (this.f60852c == 0) {
                x0Var.f61121b.setBackgroundColor(-13290187);
                x0Var.f61124e.setBackgroundColor(-13290187);
            }
            if (rVar == null || rVar.f61175b == null) {
                return convertView;
            }
            if (rVar.f61177d) {
                x0Var.f61121b.setVisibility(0);
            } else {
                x0Var.f61121b.setVisibility(8);
            }
            if (rVar.f61180g) {
                x0Var.f61124e.setVisibility(8);
                x0Var.f61125f.setVisibility(8);
            } else {
                x0Var.f61124e.setVisibility(0);
                x0Var.f61125f.setVisibility(0);
            }
            x0Var.f61120a.removeAllViews();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View F(int position, View view, ViewGroup viewGroup) {
        p1 p1Var;
        y0.l lVar = (y0.l) getItem(position);
        String str = lVar.f61163a;
        if (view == null) {
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.game_detial_service_item_layout, (ViewGroup) null);
            p1Var = new p1();
            p1Var.f61047a = (TextView) view.findViewById(R.id.message);
            p1Var.f61048b = (TextView) view.findViewById(R.id.messageType);
            p1Var.f61049c = (TextView) view.findViewById(R.id.date);
            p1Var.f61050d = (TextView) view.findViewById(R.id.dateMorning);
            X(view.findViewById(R.id.backLayout));
            if (this.f60852c == 0) {
                view.findViewById(R.id.line).setVisibility(8);
            }
            view.setTag(p1Var);
        } else {
            p1Var = (p1) view.getTag();
        }
        if (this.f60852c == 0) {
            p1Var.f61048b.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, "#3ca4fd", 2));
            p1Var.f61048b.setTextColor(Color.parseColor("#3ca4fd"));
        } else {
            p1Var.f61048b.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, "#3ca4fd"));
        }
        p1Var.f61048b.setVisibility(0);
        if (lVar.f61164b == 1) {
            p1Var.f61048b.setText("开服");
        } else {
            p1Var.f61048b.setText("合服");
        }
        p1Var.f61047a.setText(str);
        p1Var.f61049c.setText(com.join.mgps.Util.e0.q(lVar.f61165c));
        String strL = com.join.mgps.Util.e0.l(lVar.f61165c);
        String str2 = "上午";
        if (com.join.mgps.Util.t2.i(strL)) {
            int i10 = Integer.parseInt(strL);
            if (i10 > 12) {
                str2 = "下午" + (i10 - 12) + "点";
            } else {
                str2 = "上午" + i10 + "点";
            }
        }
        p1Var.f61050d.setText(str2);
        return view;
    }

    private View G(int position, View view, ViewGroup viewGroup) {
        w0 w0Var;
        GameDetialStrategyItem gameDetialStrategyItem = ((y0.m) getItem(position)).f61166a;
        if (view == null) {
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.game_detial_item_strategy_itemimage3, (ViewGroup) null);
            w0Var = new w0(view);
            w0Var.f61114c = (TextView) view.findViewById(R.id.pubtime);
            w0Var.f61115d = (TextView) view.findViewById(R.id.pv);
            w0Var.f61116e = (TextView) view.findViewById(R.id.uv);
            w0Var.f61116e = (TextView) view.findViewById(R.id.uv);
            X(view.findViewById(R.id.forum_post_media_container));
            X(view.findViewById(R.id.viewBottom));
            if (this.f60852c == 0) {
                w0Var.f61114c.setTextColor(-10592674);
                w0Var.f61115d.setTextColor(-10592674);
                w0Var.f61116e.setTextColor(-10592674);
                view.findViewById(R.id.line).setVisibility(8);
            }
        } else {
            w0Var = (w0) view.getTag();
        }
        try {
            w0Var.f61115d.setText(gameDetialStrategyItem.getCommit() + "");
            w0Var.f61116e.setText(gameDetialStrategyItem.getView() + "");
            w0Var.f61114c.setText(com.join.android.app.common.utils.i.b(gameDetialStrategyItem.getAdd_time()));
            R(w0Var.f61113b, gameDetialStrategyItem);
            int id2 = gameDetialStrategyItem.getId();
            a0(view, id2);
            a0(w0Var.f61113b, id2);
            a0(w0Var.f61113b, id2);
            a0(w0Var.f61117f, id2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return view;
    }

    private View H(int position, View view, ViewGroup viewGroup) {
        e1 e1Var;
        y0.n nVar = (y0.n) getItem(position);
        if (view == null) {
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.forum_strategy_tag_grid, (ViewGroup) null);
            e1Var = new e1(view);
            X(view.findViewById(R.id.group));
            view.findViewById(R.id.line).setVisibility(8);
        } else {
            e1Var = (e1) view.getTag();
        }
        if (e1Var == null) {
            return view;
        }
        m(e1Var, nVar);
        return view;
    }

    private View I(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        k1 k1Var;
        if (view == null) {
            k1Var = new k1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_infomation_item, (ViewGroup) null);
            k1Var.f60990b = (SimpleDraweeView) viewInflate.findViewById(R.id.informationImage);
            k1Var.f60991c = (TextView) viewInflate.findViewById(R.id.informationTv);
            k1Var.f60992d = (TextView) viewInflate.findViewById(R.id.pubtime);
            k1Var.f60996h = (TextView) viewInflate.findViewById(R.id.messageType);
            k1Var.f60989a = (LinearLayout) viewInflate.findViewById(R.id.layoutInformation);
            k1Var.f60993e = (LinearLayout) viewInflate.findViewById(R.id.informationTitle);
            k1Var.f60994f = (LinearLayout) viewInflate.findViewById(R.id.layoutTop);
            k1Var.f60995g = viewInflate.findViewById(R.id.line_h);
            X(viewInflate.findViewById(R.id.layoutInformation));
            if (this.f60852c == 0) {
                k1Var.f60991c.setTextColor(-7434610);
                k1Var.f60992d.setTextColor(-10592674);
                k1Var.f60995g.setVisibility(8);
            }
            viewInflate.setTag(k1Var);
        } else {
            viewInflate = view;
            k1Var = (k1) view.getTag();
        }
        y0.m mVar = (y0.m) getItem(position);
        GameDetialStrategyItem gameDetialStrategyItem = mVar.f61166a;
        if (gameDetialStrategyItem.getTag_name() != null) {
            k1Var.f60996h.setText(gameDetialStrategyItem.getTag_name().getTitle());
            if (com.join.mgps.Util.t2.i(gameDetialStrategyItem.getTag_name().getTitle())) {
                GameDetialBookTag tag_name = gameDetialStrategyItem.getTag_name();
                if (tag_name != null) {
                    if (com.join.mgps.Util.t2.h(tag_name.getColor())) {
                        tag_name.setColor("#8dbbec");
                    }
                    if (this.f60852c == 0) {
                        k1Var.f60996h.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, gameDetialStrategyItem.getTag_name().getColor(), gameDetialStrategyItem.getTag_name().getTitle().length()));
                        k1Var.f60996h.setTextColor(Color.parseColor(gameDetialStrategyItem.getTag_name().getColor()));
                    } else {
                        k1Var.f60996h.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, gameDetialStrategyItem.getTag_name().getColor() + ""));
                    }
                }
                k1Var.f60996h.setVisibility(0);
            } else {
                k1Var.f60996h.setVisibility(8);
            }
        }
        if (mVar.f61167b) {
            k1Var.f60992d.setVisibility(8);
        } else {
            k1Var.f60992d.setVisibility(0);
        }
        k1Var.f60992d.setText(com.join.android.app.common.utils.i.b(gameDetialStrategyItem.getAdd_time()));
        k1Var.f60991c.setText(gameDetialStrategyItem.getSubject());
        k1Var.f60989a.setOnClickListener(new z(gameDetialStrategyItem));
        return viewInflate;
    }

    private View K(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        q1 q1Var;
        if (view == null) {
            q1Var = new q1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_title, (ViewGroup) null);
            q1Var.f61056a = (SimpleDraweeView) viewInflate.findViewById(R.id.appIcon);
            q1Var.f61057b = (TextView) viewInflate.findViewById(R.id.appName);
            q1Var.f61058c = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            q1Var.f61059d = (TextView) viewInflate.findViewById(R.id.appDownloadCount);
            q1Var.f61061f = (TextView) viewInflate.findViewById(R.id.appCompany);
            q1Var.f61060e = (TextView) viewInflate.findViewById(R.id.appSize);
            q1Var.f61064i = (SimpleDraweeView) viewInflate.findViewById(R.id.gameInfoLayout);
            q1Var.f61065j = (LinearLayout) viewInflate.findViewById(R.id.titleMoreLayout);
            q1Var.f61062g = (LinearLayout) viewInflate.findViewById(R.id.titleMoreTip);
            q1Var.f61063h = (Button) viewInflate.findViewById(R.id.titleMoreBookButn);
            q1Var.f61066k = (Button) viewInflate.findViewById(R.id.gameFollowButn);
            q1Var.f61067l = (LinearLayout) viewInflate.findViewById(R.id.titlelayout);
            q1Var.f61068m = (TextView) viewInflate.findViewById(R.id.textNullToTwo);
            q1Var.f61069n = (HorizontalScrollView) viewInflate.findViewById(R.id.scrollView);
            viewInflate.setTag(q1Var);
        } else {
            viewInflate = view;
            q1Var = (q1) view.getTag();
        }
        y0.s sVar = (y0.s) getItem(position);
        q1Var.f61066k.setOnClickListener(new e0());
        q1Var.f61063h.setOnClickListener(new f0());
        if (sVar.f61192l == 1) {
            List<GameDetialBookTag> list = sVar.f61188h;
            if (list != null && list.size() > 0) {
                UtilsMy.z(sVar.f61188h, q1Var.f61062g, this.f60855f);
            }
            q1Var.f61065j.setVisibility(0);
            q1Var.f61067l.setBackgroundColor(16777215);
        } else {
            q1Var.f61065j.setVisibility(8);
            q1Var.f61067l.setBackgroundColor(-1);
        }
        q1Var.f61066k.setBackgroundResource(R.drawable.recom_blue_butn);
        q1Var.f61066k.setTextColor(this.f60855f.getResources().getColor(R.color.app_blue_color));
        if (this.f60852c == 0) {
            q1Var.f61064i.setVisibility(0);
            q1Var.f61057b.setTextColor(-1);
            com.join.android.app.common.utils.l.d(q1Var.f61064i, R.drawable.arena_dialog_bg, sVar.f61189i);
            q1Var.f61068m.setVisibility(0);
            q1Var.f61065j.setBackgroundColor(0);
            q1Var.f61067l.setBackgroundColor(0);
            q1Var.f61066k.setBackgroundResource(R.drawable.detial_white_stroke_butn);
            q1Var.f61066k.setTextColor(-1);
            ArrayList<TipBean> arrayList = sVar.f61183c;
            if (arrayList == null || arrayList.size() <= 0) {
                q1Var.f61069n.setVisibility(8);
            } else {
                q1Var.f61069n.setVisibility(0);
            }
        } else {
            q1Var.f61064i.setVisibility(8);
            q1Var.f61068m.setVisibility(8);
            q1Var.f61065j.setBackgroundColor(-1);
            if (sVar.f61192l == 1) {
                q1Var.f61057b.setTextColor(-1);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) q1Var.f61064i.getLayoutParams();
                int iH = (int) (com.join.android.app.common.utils.q.n(this.f60855f).h(this.f60855f) * 253.0f);
                com.join.mgps.Util.g1.d("sssss", iH + "");
                layoutParams.height = iH;
                q1Var.f61064i.setLayoutParams(layoutParams);
                q1Var.f61064i.setVisibility(0);
                q1Var.f61067l.setBackgroundColor(0);
                q1Var.f61065j.setBackgroundColor(0);
                q1Var.f61066k.setBackgroundResource(R.drawable.detial_white_stroke_butn);
                q1Var.f61066k.setTextColor(-1);
                com.join.android.app.common.utils.l.d(q1Var.f61064i, R.drawable.arena_dialog_bg, sVar.f61189i);
            } else {
                q1Var.f61067l.setBackgroundColor(-1);
            }
        }
        if (sVar.f61190j == 1) {
            q1Var.f61066k.setText("已收藏");
        } else {
            q1Var.f61066k.setText("收藏");
        }
        if (sVar.f61191k == 1) {
            q1Var.f61063h.setText("已预约");
            q1Var.f61063h.setEnabled(false);
        } else {
            q1Var.f61063h.setText("预约");
        }
        com.join.android.app.common.utils.l.h(q1Var.f61056a, sVar.f61181a);
        if (sVar.f61182b != null) {
            q1Var.f61057b.setText(sVar.f61182b + "");
        }
        UtilsMy.K(this.f60856g.getScore(), this.f60856g.getDown_count(), this.f60856g.getSize(), this.f60856g.getSp_tag_info(), this.f60856g.getTag_info(), q1Var.f61058c, this.f60855f);
        int i10 = sVar.f61184d;
        if (i10 <= 0) {
            i10 = sVar.f61185e;
        }
        if (sVar.f61192l == 1) {
            q1Var.f61058c.setVisibility(8);
            if (this.f60856g.getBespeak_count() == null) {
                q1Var.f61059d.setText("0人预约");
            } else {
                q1Var.f61059d.setText(this.f60856g.getBespeak_count() + "人预约");
            }
        } else {
            q1Var.f61058c.setVisibility(4);
            if (i10 >= 100000) {
                q1Var.f61059d.setText((i10 / 10000) + "万热度");
            } else if (i10 >= 10000) {
                String str = (((double) Math.round(i10 / 1000)) / 10.0d) + "万";
                q1Var.f61059d.setText(str + "热度");
            } else {
                q1Var.f61059d.setText(i10 + "热度");
            }
        }
        q1Var.f61061f.setText(sVar.f61186f);
        if (sVar.f61187g != null) {
            q1Var.f61060e.setText(sVar.f61187g + "M");
        }
        return viewInflate;
    }

    private View L(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        r1 r1Var;
        if (view == null) {
            r1Var = new r1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_update, (ViewGroup) null);
            r1Var.f61075a = (RelativeLayout) viewInflate.findViewById(R.id.giftsLayout);
            r1Var.f61076b = (TextView) viewInflate.findViewById(R.id.giftsTitle);
            r1Var.f61077c = (ImageView) viewInflate.findViewById(R.id.arrowImage);
            r1Var.f61078d = viewInflate.findViewById(R.id.lineUpdate);
            viewInflate.setTag(r1Var);
        } else {
            viewInflate = view;
            r1Var = (r1) view.getTag();
        }
        y0.t tVar = (y0.t) getItem(position);
        if (tVar.f61193a == 1) {
            r1Var.f61075a.setVisibility(0);
            r1Var.f61078d.setVisibility(0);
            r1Var.f61076b.setText("更新记录");
            r1Var.f61075a.setOnClickListener(new c0(tVar));
        } else {
            r1Var.f61075a.setVisibility(8);
            r1Var.f61078d.setVisibility(8);
        }
        return viewInflate;
    }

    private View M(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        s1 s1Var;
        if (view == null) {
            s1Var = new s1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_viewpage, (ViewGroup) null);
            s1Var.f61084a = (HListView) viewInflate.findViewById(R.id.screenListView);
            X((LinearLayout) viewInflate.findViewById(R.id.backLayout));
            viewInflate.setTag(s1Var);
        } else {
            viewInflate = view;
            s1Var = (s1) view.getTag();
        }
        y0.u uVar = (y0.u) getItem(position);
        if (this.f60858i.size() == 0) {
            if (com.join.mgps.Util.t2.i(uVar.f61195a) && uVar.f61196b == null) {
                s1Var.f61084a.setVisibility(8);
            } else {
                if (com.join.mgps.Util.t2.i(uVar.f61195a)) {
                    this.f60858i.add(uVar.f61195a);
                    this.f60859j = true;
                } else {
                    this.f60859j = false;
                }
                if (uVar.f61196b != null) {
                    for (int i10 = 0; i10 < uVar.f61196b.size(); i10++) {
                        this.f60858i.add(uVar.f61196b.get(i10).getRemote().getPath());
                    }
                }
                if (this.f60858i.size() == 0) {
                    s1Var.f61084a.setVisibility(8);
                } else {
                    s1Var.f61084a.setVisibility(0);
                    s1Var.f61084a.setAdapter((ListAdapter) new com.join.mgps.adapter.h1(this.f60855f, uVar.f61197c, this.f60858i, this.f60859j));
                    s1Var.f61084a.setOnItemClickListener(new d0(uVar));
                }
            }
        }
        return viewInflate;
    }

    private View N(int position, View view, ViewGroup viewGroup) {
        t1 t1Var;
        if (view == null) {
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.layout_voucher_game_detail, (ViewGroup) null);
            t1Var = new t1(view);
            view.setTag(t1Var);
        } else {
            t1Var = (t1) view.getTag();
        }
        y0.v vVar = (y0.v) getItem(position);
        if (vVar.f61199a) {
            t1Var.a(vVar.f61200b);
            t1Var.f61094e.setVisibility(0);
        } else {
            t1Var.f61094e.setVisibility(8);
        }
        return view;
    }

    private View O(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        v1 v1Var;
        if (view == null) {
            v1Var = new v1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_web, (ViewGroup) null);
            v1Var.f61105a = (TextView) viewInflate.findViewById(R.id.htmlEditRecommend);
            v1Var.f61106b = (TextView) viewInflate.findViewById(R.id.htmlGameDescribe);
            v1Var.f61108d = (TextView) viewInflate.findViewById(R.id.htmlGameDescribeShort);
            v1Var.f61107c = (TextView) viewInflate.findViewById(R.id.textMore);
            X((RelativeLayout) viewInflate.findViewById(R.id.backLayout));
            if (this.f60852c == 0) {
                viewInflate.findViewById(R.id.lineView).setVisibility(8);
            }
            viewInflate.setTag(v1Var);
        } else {
            viewInflate = view;
            v1Var = (v1) view.getTag();
        }
        y0.w wVar = (y0.w) getItem(position);
        v1Var.f61105a.setText(wVar.f61201a);
        if (wVar.f61202b != null) {
            v1Var.f61106b.setVisibility(0);
            v1Var.f61106b.setText(wVar.f61202b);
            v1Var.f61108d.setText(wVar.f61202b);
            v1Var.f61108d.setVisibility(0);
            v1Var.f61106b.setVisibility(8);
            v1Var.f61108d.setMaxLines(2);
            this.f60872w = v1Var.f61106b;
            this.f60873x = v1Var.f61108d;
        }
        return viewInflate;
    }

    private void Q(final View parent, final y0.r commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f61174a;
        int i12 = commentMessageReply.f61178e;
        boolean z11 = commentMessageReply.f61179f;
        InformationCommentBean informationCommentBean = commentMessageReply.f61175b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view.setOnClickListener(new m0(size, informationCommentBean, str, commentMessageReply, position));
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
                                Z(view, sub2);
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
                    view.setOnClickListener(new l0(i15, position, str, commentMessageReply));
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

    private void R(RelativeLayout container, GameDetialStrategyItem item) {
        item.getPic_list();
        if (this.f60869t == null) {
            this.f60869t = J();
        }
        String[] pic_list = item.getPic_list();
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i10 = 0; i10 < 3; i10++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) container.findViewById(iArr[i10]);
            if (i10 >= item.getPic_list().length) {
                simpleDraweeView.setVisibility(8);
            } else {
                W(simpleDraweeView, i10, item.getPic_list()[i10], i10 + 0, pic_list);
            }
        }
    }

    private void X(View view) {
        if (this.f60852c == 0) {
            view.setBackgroundColor(1275068416);
        }
    }

    private void Z(View view, final InformationCommentBean.Sub sub) {
        view.setOnClickListener(new j0(sub));
    }

    private void b0(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new w(commitDataBean));
    }

    private void c0(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new i0(commitDataBean));
    }

    private void d0(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        n0 n0Var = new n0(commitDataBean, position, view, tv2);
        view.setOnClickListener(n0Var);
        tv2.setOnClickListener(n0Var);
    }

    private void e0(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new k0(commitDataBean));
    }

    private void m(e1 holder, y0.n item) {
        S(holder.f60928a, item.f61168a);
    }

    private View n(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        a1 a1Var;
        if (view == null) {
            a1Var = new a1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_record_footer, (ViewGroup) null);
            a1Var.f60880b = (TextView) viewInflate.findViewById(R.id.showAllCommit);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.commentFooterLayout);
            a1Var.f60879a = relativeLayout;
            X(relativeLayout);
            if (this.f60852c == 0) {
                a1Var.f60880b.setBackgroundResource(R.drawable.detial_grey_stroke_butn);
                a1Var.f60880b.setTextColor(-5723992);
            }
            viewInflate.setTag(a1Var);
        } else {
            viewInflate = view;
            a1Var = (a1) view.getTag();
        }
        y0.b bVar = (y0.b) getItem(position);
        if (bVar.f61136a) {
            a1Var.f60879a.setVisibility(0);
        } else {
            a1Var.f60879a.setVisibility(8);
        }
        a1Var.f60880b.setText("查看全部" + bVar.f61137b + "条评论");
        a1Var.f60880b.setOnClickListener(new u());
        return viewInflate;
    }

    private View o(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        b1 b1Var;
        if (view == null) {
            b1Var = new b1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_record_header, (ViewGroup) null);
            b1Var.f60888c = (TextView) viewInflate.findViewById(R.id.commitImage);
            b1Var.f60889d = (TextView) viewInflate.findViewById(R.id.commitCount);
            b1Var.f60886a = (LinearLayout) viewInflate.findViewById(R.id.layoutBottom);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.commentHeaderLayout);
            b1Var.f60887b = relativeLayout;
            X(relativeLayout);
            if (this.f60852c == 0) {
                ((TextView) viewInflate.findViewById(R.id.commitTv)).setTextColor(-1);
                b1Var.f60889d.setTextColor(-9145228);
                b1Var.f60888c.setTextColor(-5723992);
                b1Var.f60888c.setBackgroundResource(R.drawable.detial_grey_stroke_butn);
            }
            viewInflate.setTag(b1Var);
        } else {
            viewInflate = view;
            b1Var = (b1) view.getTag();
        }
        y0.c cVar = (y0.c) getItem(position);
        if (cVar.f61139a == 0 && cVar.f61140b == 0) {
            b1Var.f60886a.setVisibility(8);
        } else {
            b1Var.f60886a.setVisibility(0);
        }
        if (cVar.f61141c == 1) {
            b1Var.f60887b.setVisibility(0);
            b1Var.f60889d.setText(" (" + cVar.f61142d + ") ");
            b1Var.f60888c.setOnClickListener(new x());
        } else {
            b1Var.f60887b.setVisibility(8);
        }
        return viewInflate;
    }

    private View p(int position, View view, ViewGroup viewGroup) {
        return E(position, view, viewGroup);
    }

    private View q(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        z0 z0Var;
        if (view == null) {
            z0Var = new z0();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.game_detail_comment_item_layout, (ViewGroup) null);
            z0Var.f61206a = (RelativeLayout) viewInflate.findViewById(R.id.main);
            z0Var.f61207b = (SimpleDraweeView) viewInflate.findViewById(R.id.usericon);
            z0Var.f61208c = (ImageView) viewInflate.findViewById(R.id.parise);
            z0Var.f61209d = (TextView) viewInflate.findViewById(R.id.username);
            z0Var.f61210e = (TextView) viewInflate.findViewById(R.id.time);
            z0Var.f61211f = (TextView) viewInflate.findViewById(R.id.content);
            z0Var.f61212g = (TextView) viewInflate.findViewById(R.id.pariseNumber);
            z0Var.f61213h = (VipView) viewInflate.findViewById(R.id.levelTv);
            z0Var.f61214i = viewInflate.findViewById(R.id.line);
            X(z0Var.f61206a);
            if (this.f60852c == 0) {
                z0Var.f61214i.setBackgroundColor(-13290187);
                z0Var.f61211f.setTextColor(-10395295);
                z0Var.f61209d.setTextColor(-1);
                z0Var.f61210e.setTextColor(-5658199);
                z0Var.f61212g.setTextColor(-6250336);
            }
            viewInflate.setTag(z0Var);
        } else {
            viewInflate = view;
            z0Var = (z0) view.getTag();
        }
        y0.a aVar = (y0.a) getItem(position);
        if (aVar.f61133b) {
            z0Var.f61214i.setVisibility(8);
        } else {
            z0Var.f61214i.setVisibility(0);
        }
        if (aVar.f61132a) {
            z0Var.f61206a.setVisibility(0);
            CommentBaseBean commentBaseBean = aVar.f61135d;
            z0Var.f61210e.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
            z0Var.f61211f.setText(commentBaseBean.getContent());
            z0Var.f61212g.setText(commentBaseBean.getPraise_count() + "");
            if (commentBaseBean.getIs_praise() == 1) {
                z0Var.f61208c.setImageResource(R.drawable.like);
            } else {
                z0Var.f61208c.setImageResource(R.drawable.unlike);
            }
            if (com.join.mgps.Util.t2.i(commentBaseBean.getHead_portrait())) {
                UtilsMy.J3(this.f60855f, commentBaseBean.getHead_portrait(), z0Var.f61207b);
            }
            e0(z0Var.f61206a, commentBaseBean);
            d0(z0Var.f61208c, z0Var.f61212g, commentBaseBean, position);
            b0(z0Var.f61211f, commentBaseBean);
            z0Var.f61209d.setText(Html.fromHtml(commentBaseBean.getUser_name()));
            z0Var.f61213h.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
            com.join.mgps.Util.r0.S0(z0Var.f61207b, z0Var.f61209d, z0Var.f61210e);
            com.join.mgps.Util.r0.U0(z0Var.f61213h);
        } else {
            z0Var.f61206a.setVisibility(8);
        }
        return viewInflate;
    }

    private View r(int position, View view, ViewGroup viewGroup) {
        c1 c1Var;
        List<BannerBean> list = ((y0.d) getItem(position)).f61144a;
        if (view == null) {
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.gamedetial_ad_group_layout, (ViewGroup) null);
            c1Var = new c1(view);
            X(view.findViewById(R.id.top_ad_viewpager));
            view.setTag(c1Var);
        } else {
            c1Var = (c1) view.getTag();
        }
        c1Var.c(list);
        return view;
    }

    private View s(int position, View view, ViewGroup viewGroup) {
        d1 d1Var;
        View viewInflate;
        y0.e eVar = (y0.e) getItem(position);
        if (this.f60856g.getFast_entry_switch() == 0) {
            eVar.f61149e = null;
        }
        List<BannerBean> list = eVar.f61149e;
        long j10 = eVar.f61146b;
        String str = eVar.f61147c;
        String str2 = eVar.f61148d;
        if (view == null) {
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.fast_entry_layout, (ViewGroup) null);
            d1Var = new d1();
            d1Var.f60910a = (LinearLayout) viewInflate.findViewById(R.id.autoLayout);
            d1Var.f60918i = (SimpleDraweeView) viewInflate.findViewById(R.id.forumImage);
            d1Var.f60919j = (SimpleDraweeView) viewInflate.findViewById(R.id.qqImage);
            d1Var.f60920k = (SimpleDraweeView) viewInflate.findViewById(R.id.weiCharImage);
            d1Var.f60911b = (LinearLayout) viewInflate.findViewById(R.id.weichartLayout);
            d1Var.f60912c = (LinearLayout) viewInflate.findViewById(R.id.qqLayout);
            d1Var.f60913d = (LinearLayout) viewInflate.findViewById(R.id.forum_layout);
            d1Var.f60917h = (LinearLayout) viewInflate.findViewById(R.id.bottomLayout);
            d1Var.f60914e = (TextView) viewInflate.findViewById(R.id.today_number);
            d1Var.f60921l = (TextView) viewInflate.findViewById(R.id.forumText);
            d1Var.f60922m = (TextView) viewInflate.findViewById(R.id.qqText);
            d1Var.f60923n = (TextView) viewInflate.findViewById(R.id.weiCharText);
            d1Var.f60915f = (TextView) viewInflate.findViewById(R.id.fastFourlayoutText);
            d1Var.f60916g = (SimpleDraweeView) viewInflate.findViewById(R.id.fastFourlayoutImage);
            if (this.f60852c == 0) {
                d1Var.f60911b.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f60912c.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f60913d.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f60910a.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                viewInflate.findViewById(R.id.title).setVisibility(0);
                X(viewInflate.findViewById(R.id.mainlayout));
            }
            viewInflate.setTag(d1Var);
        } else {
            d1Var = (d1) view.getTag();
            viewInflate = view;
        }
        if (j10 != 0) {
            d1Var.f60914e.setVisibility(8);
            d1Var.f60913d.setOnClickListener(new r0(j10));
            if (com.join.mgps.Util.t2.i(str)) {
                d1Var.f60912c.setOnClickListener(new s0(str));
                if (com.join.mgps.Util.t2.i(str2)) {
                    d1Var.f60911b.setOnClickListener(new t0(str2));
                    if (list == null || list.size() <= 0) {
                        d1Var.f60910a.setVisibility(4);
                    } else {
                        BannerBean bannerBean = list.get(0);
                        d1Var.f60915f.setText(bannerBean.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60916g, bannerBean.getPic_remote());
                        d1Var.f60910a.setOnClickListener(new a(list));
                    }
                } else {
                    d1Var.f60910a.setVisibility(4);
                    if (list == null || list.size() <= 0) {
                        d1Var.f60911b.setVisibility(4);
                        d1Var.f60917h.setVisibility(8);
                    } else {
                        BannerBean bannerBean2 = list.get(0);
                        d1Var.f60923n.setText(bannerBean2.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60920k, bannerBean2.getPic_remote());
                        d1Var.f60911b.setOnClickListener(new b(list));
                    }
                }
            } else {
                d1Var.f60910a.setVisibility(4);
                if (com.join.mgps.Util.t2.i(str2)) {
                    d1Var.f60912c.setOnClickListener(new c(str2));
                    com.join.android.app.common.utils.l.d(d1Var.f60919j, R.drawable.detial_weichart, "");
                    d1Var.f60922m.setText("玩家讨论区");
                    if (list == null || list.size() <= 0) {
                        d1Var.f60917h.setVisibility(8);
                    } else {
                        BannerBean bannerBean3 = list.get(0);
                        d1Var.f60923n.setText(bannerBean3.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60920k, bannerBean3.getPic_remote());
                        d1Var.f60911b.setOnClickListener(new d(list));
                    }
                } else {
                    d1Var.f60917h.setVisibility(8);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean4 = list.get(0);
                        d1Var.f60922m.setText(bannerBean4.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60919j, bannerBean4.getPic_remote());
                        d1Var.f60912c.setOnClickListener(new e(list));
                    }
                }
            }
        } else {
            d1Var.f60914e.setVisibility(8);
            d1Var.f60910a.setVisibility(4);
            if (com.join.mgps.Util.t2.i(str)) {
                d1Var.f60913d.setOnClickListener(new f(str));
                com.join.android.app.common.utils.l.d(d1Var.f60918i, R.drawable.detial_qq, "");
                d1Var.f60921l.setText("官方客服");
                if (com.join.mgps.Util.t2.i(str2)) {
                    d1Var.f60912c.setOnClickListener(new g(str2));
                    com.join.android.app.common.utils.l.d(d1Var.f60919j, R.drawable.detial_weichart, "");
                    d1Var.f60922m.setText("玩家讨论区");
                    if (list == null || list.size() <= 0) {
                        d1Var.f60923n.setVisibility(8);
                    } else {
                        BannerBean bannerBean5 = list.get(0);
                        d1Var.f60923n.setText(bannerBean5.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60920k, bannerBean5.getPic_remote());
                        d1Var.f60911b.setOnClickListener(new h(list));
                    }
                } else {
                    d1Var.f60917h.setVisibility(8);
                    if (list == null || list.size() <= 0) {
                        d1Var.f60912c.setVisibility(4);
                    } else {
                        BannerBean bannerBean6 = list.get(0);
                        d1Var.f60922m.setText(bannerBean6.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60919j, bannerBean6.getPic_remote());
                        d1Var.f60912c.setOnClickListener(new i(list));
                    }
                }
            } else {
                d1Var.f60917h.setVisibility(8);
                if (com.join.mgps.Util.t2.i(str2)) {
                    d1Var.f60913d.setOnClickListener(new j(str2));
                    com.join.android.app.common.utils.l.d(d1Var.f60918i, R.drawable.detial_weichart, "");
                    d1Var.f60921l.setText("玩家讨论区");
                    if (list == null || list.size() <= 0) {
                        d1Var.f60912c.setVisibility(4);
                    } else {
                        BannerBean bannerBean7 = list.get(0);
                        d1Var.f60922m.setText(bannerBean7.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60919j, bannerBean7.getPic_remote());
                        d1Var.f60912c.setOnClickListener(new l(list));
                    }
                } else {
                    d1Var.f60912c.setVisibility(4);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean8 = list.get(0);
                        d1Var.f60921l.setText(bannerBean8.getLabel());
                        com.join.android.app.common.utils.l.h(d1Var.f60918i, bannerBean8.getPic_remote());
                        d1Var.f60913d.setOnClickListener(new m(list));
                    }
                }
            }
        }
        return viewInflate;
    }

    private View t(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        f1 f1Var;
        if (view == null) {
            f1Var = new f1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_gifts, (ViewGroup) null);
            f1Var.f60933a = (RelativeLayout) viewInflate.findViewById(R.id.giftsLayout);
            f1Var.f60935c = (TextView) viewInflate.findViewById(R.id.giftsTitle);
            f1Var.f60934b = (SimpleDraweeView) viewInflate.findViewById(R.id.giftsImage);
            f1Var.f60936d = (ImageView) viewInflate.findViewById(R.id.arrowImage);
            X(f1Var.f60933a);
            viewInflate.setTag(f1Var);
        } else {
            viewInflate = view;
            f1Var = (f1) view.getTag();
        }
        y0.f fVar = (y0.f) getItem(position);
        List<RecommendAdInfoData> list = fVar.f61151b;
        if (fVar.f61150a == 1) {
            f1Var.f60933a.setVisibility(0);
            if (list != null && list.size() > 0) {
                f1Var.f60935c.setText(list.get(0).getMain().getLabel());
            }
            com.join.android.app.common.utils.l.h(f1Var.f60934b, (list == null || list.size() <= 0 || list.get(0).getMain() == null) ? "" : list.get(0).getMain().getPic_remote());
            f1Var.f60933a.setOnClickListener(new b0(list));
        } else {
            f1Var.f60933a.setVisibility(8);
        }
        return viewInflate;
    }

    private View u(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        g1 g1Var;
        if (view == null) {
            g1Var = new g1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_gifts_bottom, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layoutBottom);
            g1Var.f60941a = linearLayout;
            X(linearLayout);
            viewInflate.setTag(g1Var);
        } else {
            viewInflate = view;
            g1Var = (g1) view.getTag();
        }
        if (((y0.g) getItem(position)).f61152a) {
            g1Var.f60941a.setVisibility(0);
        } else {
            g1Var.f60941a.setVisibility(8);
        }
        return viewInflate;
    }

    private View v(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        h1 h1Var;
        if (view == null) {
            h1Var = new h1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_gifts_item, (ViewGroup) null);
            h1Var.f60946a = (LinearLayout) viewInflate.findViewById(R.id.layoutContent);
            h1Var.f60947b = (SimpleDraweeView) viewInflate.findViewById(R.id.giftIcon);
            h1Var.f60948c = (TextView) viewInflate.findViewById(R.id.giftName);
            h1Var.f60949d = (TextView) viewInflate.findViewById(R.id.giftSurplus);
            h1Var.f60950e = (TextView) viewInflate.findViewById(R.id.giftCount);
            h1Var.f60951f = (TextView) viewInflate.findViewById(R.id.giftContent);
            h1Var.f60953h = (TextView) viewInflate.findViewById(R.id.getGiftTextView);
            h1Var.f60954i = (TextView) viewInflate.findViewById(R.id.giftSurplusTitle);
            h1Var.f60952g = (RelativeLayout) viewInflate.findViewById(R.id.rightButnLayout);
            viewInflate.setTag(h1Var);
            X(h1Var.f60946a);
        } else {
            viewInflate = view;
            h1Var = (h1) view.getTag();
        }
        y0.h hVar = (y0.h) getItem(position);
        if (hVar.f61153a) {
            GiftPackageDataInfoBean giftPackageDataInfoBean = hVar.f61154b;
            h1Var.f60946a.setVisibility(0);
            h1Var.f60946a.setOnClickListener(new r(giftPackageDataInfoBean));
            com.join.android.app.common.utils.l.h(h1Var.f60947b, giftPackageDataInfoBean.getGift_package_pic());
            h1Var.f60948c.setText(giftPackageDataInfoBean.getGift_package_title());
            h1Var.f60951f.setText("礼包内容:" + giftPackageDataInfoBean.getGift_package_content());
            h1Var.f60950e.setText(giftPackageDataInfoBean.getGift_package_count() + "");
            if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                h1Var.f60953h.setText("领取");
                h1Var.f60954i.setText("（剩余:" + giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0 + giftPackageDataInfoBean.getGift_package_count() + "）");
            } else {
                h1Var.f60949d.setText("该礼包已领取");
                h1Var.f60953h.setText("查看");
            }
            h1Var.f60954i.setText("（剩余:" + giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0 + giftPackageDataInfoBean.getGift_package_count() + "）");
            h1Var.f60952g.setOnClickListener(new s(giftPackageDataInfoBean));
        } else {
            h1Var.f60946a.setVisibility(8);
        }
        return viewInflate;
    }

    private View w(int position, View view, ViewGroup viewGroup) {
        f1 f1Var;
        if (view == null) {
            f1Var = new f1();
            view = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_gifts, (ViewGroup) null);
            f1Var.f60933a = (RelativeLayout) view.findViewById(R.id.giftsLayout);
            f1Var.f60935c = (TextView) view.findViewById(R.id.giftsTitle);
            f1Var.f60934b = (SimpleDraweeView) view.findViewById(R.id.giftsImage);
            f1Var.f60936d = (ImageView) view.findViewById(R.id.arrowImage);
            X(f1Var.f60933a);
            view.setTag(f1Var);
        } else {
            f1Var = (f1) view.getTag();
        }
        f1Var.f60933a.setVisibility(8);
        return view;
    }

    private View x(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        j1 j1Var;
        y0.j jVar = (y0.j) getItem(position);
        if (view == null) {
            j1Var = new j1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.detial_gift_and_service_layout, (ViewGroup) null);
            j1Var.f60968a = (LinearLayout) viewInflate.findViewById(R.id.informationLayout);
            j1Var.f60969b = (LinearLayout) viewInflate.findViewById(R.id.giftLayout);
            j1Var.f60970c = (TextView) viewInflate.findViewById(R.id.line);
            j1Var.f60971d = (LinearLayout) viewInflate.findViewById(R.id.look_other);
            j1Var.f60972e = (LinearLayout) viewInflate.findViewById(R.id.look_other2);
            j1Var.f60973f = (SimpleDraweeView) viewInflate.findViewById(R.id.giftIcon);
            j1Var.f60974g = (TextView) viewInflate.findViewById(R.id.getGift);
            j1Var.f60975h = (TextView) viewInflate.findViewById(R.id.giftMessage);
            j1Var.f60976i = (TextView) viewInflate.findViewById(R.id.messageType1);
            j1Var.f60977j = (TextView) viewInflate.findViewById(R.id.messageType2);
            j1Var.f60978k = (TextView) viewInflate.findViewById(R.id.time1);
            j1Var.f60979l = (TextView) viewInflate.findViewById(R.id.time2);
            j1Var.f60980m = (TextView) viewInflate.findViewById(R.id.message1);
            j1Var.f60981n = (TextView) viewInflate.findViewById(R.id.message2);
            j1Var.f60982o = (LinearLayout) viewInflate.findViewById(R.id.backLayout2);
            j1Var.f60983p = (LinearLayout) viewInflate.findViewById(R.id.backLayout22);
            j1Var.f60984q = (LinearLayout) viewInflate.findViewById(R.id.backLayout1);
            viewInflate.setTag(j1Var);
        } else {
            viewInflate = view;
            j1Var = (j1) view.getTag();
        }
        List<GiftPackageDataInfoBean> list = jVar.f61158a;
        List<ServiceState> list2 = jVar.f61159b;
        j1Var.f60971d.setOnClickListener(new k());
        j1Var.f60972e.setOnClickListener(new v());
        j1Var.f60984q.setOnClickListener(new g0());
        j1Var.f60982o.setOnClickListener(new o0());
        j1Var.f60983p.setOnClickListener(new p0());
        if (list == null || list.size() == 0) {
            j1Var.f60968a.setVisibility(8);
            j1Var.f60970c.setVisibility(8);
        } else {
            GiftPackageDataInfoBean giftPackageDataInfoBean = list.get(0);
            com.join.android.app.common.utils.l.h(j1Var.f60973f, list.get(0).getGift_package_pic());
            j1Var.f60975h.setText(list.get(0).getGift_package_title());
            if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                j1Var.f60974g.setText("领取");
            } else {
                j1Var.f60974g.setText("查看");
            }
            j1Var.f60974g.setOnClickListener(new q0(giftPackageDataInfoBean));
        }
        if (list2 == null || list2.size() == 0) {
            j1Var.f60969b.setVisibility(8);
            j1Var.f60970c.setVisibility(8);
        } else {
            ServiceState serviceState = list2.get(0);
            if (this.f60852c == 0) {
                j1Var.f60976i.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, "#3ca4fd", 2));
                j1Var.f60976i.setTextColor(Color.parseColor("#3ca4fd"));
            } else {
                j1Var.f60976i.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, "#3ca4fd"));
            }
            j1Var.f60976i.setVisibility(0);
            j1Var.f60978k.setText(com.join.android.app.common.utils.i.c(serviceState.getAdd_time()));
            j1Var.f60980m.setText(serviceState.getTitle());
            if (serviceState.getType() == 1) {
                j1Var.f60976i.setText("开服");
            } else {
                j1Var.f60976i.setText("合服");
            }
            j1Var.f60976i.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, "#3ca4fd", 2));
            if (list2.size() > 1) {
                ServiceState serviceState2 = list2.get(1);
                if (this.f60852c == 0) {
                    j1Var.f60977j.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, "#3ca4fd", 2));
                    j1Var.f60977j.setTextColor(Color.parseColor("#3ca4fd"));
                } else {
                    j1Var.f60977j.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, "#3ca4fd"));
                }
                j1Var.f60977j.setVisibility(0);
                j1Var.f60979l.setText(com.join.android.app.common.utils.i.c(serviceState2.getAdd_time()));
                j1Var.f60981n.setText(serviceState2.getTitle());
                if (serviceState2.getType() == 1) {
                    j1Var.f60977j.setText("开服");
                } else {
                    j1Var.f60977j.setText("合服");
                }
                j1Var.f60977j.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, "#3ca4fd", 2));
            }
        }
        return viewInflate;
    }

    private View y(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        k1 k1Var;
        if (view == null) {
            k1Var = new k1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_infomation_item, (ViewGroup) null);
            k1Var.f60990b = (SimpleDraweeView) viewInflate.findViewById(R.id.informationImage);
            k1Var.f60991c = (TextView) viewInflate.findViewById(R.id.informationTv);
            k1Var.f60996h = (TextView) viewInflate.findViewById(R.id.messageType);
            k1Var.f60992d = (TextView) viewInflate.findViewById(R.id.pubtime);
            k1Var.f60989a = (LinearLayout) viewInflate.findViewById(R.id.layoutInformation);
            k1Var.f60993e = (LinearLayout) viewInflate.findViewById(R.id.informationTitle);
            k1Var.f60994f = (LinearLayout) viewInflate.findViewById(R.id.layoutTop);
            k1Var.f60995g = viewInflate.findViewById(R.id.line_h);
            X(k1Var.f60989a);
            if (this.f60852c == 0) {
                k1Var.f60995g.setVisibility(8);
                k1Var.f60991c.setTextColor(-7434610);
                k1Var.f60992d.setTextColor(-10592674);
                k1Var.f60995g.setVisibility(8);
            }
            viewInflate.setTag(k1Var);
        } else {
            viewInflate = view;
            k1Var = (k1) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = ((y0.k) getItem(position)).f61160a;
        k1Var.f60996h.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.t2.i(recommendInfomationBean.getType())) {
            if (this.f60852c == 0) {
                k1Var.f60996h.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, recommendInfomationBean.getType_color(), recommendInfomationBean.getType().length()));
                k1Var.f60996h.setTextColor(Color.parseColor(recommendInfomationBean.getType_color()));
            } else {
                k1Var.f60996h.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, recommendInfomationBean.getType_color() + ""));
            }
            k1Var.f60996h.setVisibility(0);
        } else {
            k1Var.f60996h.setVisibility(8);
        }
        k1Var.f60992d.setText(com.join.android.app.common.utils.i.b(recommendInfomationBean.getTimes()));
        k1Var.f60991c.setText(recommendInfomationBean.getTitle());
        k1Var.f60989a.setOnClickListener(new y(recommendInfomationBean));
        return viewInflate;
    }

    private View z(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        l1 l1Var;
        if (view == null) {
            l1Var = new l1();
            viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.mg_gamedetail_infomation_item_top, (ViewGroup) null);
            l1Var.f61010f = (SimpleDraweeView) viewInflate.findViewById(R.id.informationImage);
            l1Var.f61008d = (LinearLayout) viewInflate.findViewById(R.id.layoutInformation);
            l1Var.f61005a = (TextView) viewInflate.findViewById(R.id.pubtime);
            l1Var.f61011g = (TextView) viewInflate.findViewById(R.id.messageType);
            l1Var.f61009e = (TextView) viewInflate.findViewById(R.id.informationTv);
            l1Var.f61006b = (TextView) viewInflate.findViewById(R.id.pv);
            l1Var.f61007c = (TextView) viewInflate.findViewById(R.id.uv);
            X(l1Var.f61008d);
            if (this.f60852c == 0) {
                l1Var.f61009e.setTextColor(-7434610);
                l1Var.f61005a.setTextColor(-10592674);
                l1Var.f61006b.setTextColor(-10592674);
                l1Var.f61007c.setTextColor(-10592674);
                viewInflate.findViewById(R.id.line).setVisibility(8);
            }
            viewInflate.setTag(l1Var);
        } else {
            viewInflate = view;
            l1Var = (l1) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = ((y0.k) getItem(position)).f61160a;
        com.join.android.app.common.utils.l.h(l1Var.f61010f, recommendInfomationBean.getPic_list()[0]);
        l1Var.f61006b.setText(recommendInfomationBean.getCommit() + "");
        l1Var.f61007c.setText(recommendInfomationBean.getView() + "");
        l1Var.f61005a.setText(com.join.android.app.common.utils.i.b(recommendInfomationBean.getTimes()));
        l1Var.f61009e.setText(recommendInfomationBean.getTitle());
        l1Var.f61011g.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.t2.i(recommendInfomationBean.getType())) {
            if (this.f60852c == 0) {
                if (com.join.mgps.Util.t2.h(recommendInfomationBean.getType_color())) {
                    recommendInfomationBean.setType_color("#8dbbec");
                }
                l1Var.f61011g.setBackgroundDrawable(com.join.mgps.Util.z2.d(this.f60855f, recommendInfomationBean.getType_color(), recommendInfomationBean.getType().length()));
                l1Var.f61011g.setTextColor(Color.parseColor(recommendInfomationBean.getType_color()));
            } else {
                l1Var.f61011g.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f60855f, recommendInfomationBean.getType_color() + ""));
            }
            l1Var.f61011g.setVisibility(0);
        } else {
            l1Var.f61011g.setVisibility(8);
        }
        l1Var.f61008d.setOnClickListener(new q(recommendInfomationBean));
        return viewInflate;
    }

    LinearLayout.LayoutParams J() {
        DisplayMetrics displayMetrics = this.f60855f.getResources().getDisplayMetrics();
        int dimensionPixelSize = ((displayMetrics.widthPixels - (this.f60855f.getResources().getDimensionPixelSize(R.dimen.dp48) * 2)) - (((int) (displayMetrics.density * 6.0f)) * 2)) / 3;
        return new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
    }

    public v0 P() {
        return this.f60874y;
    }

    public void S(ViewGroup parent, final List<GameDetialStrategyTag> tabBeanList) {
        if (parent != null) {
            parent.removeAllViews();
        }
        if (tabBeanList == null || tabBeanList.size() == 0) {
            return;
        }
        TextView[] textViewArr = null;
        for (int i10 = 0; i10 < tabBeanList.size(); i10++) {
            GameDetialStrategyTag gameDetialStrategyTag = tabBeanList.get(i10);
            int i11 = i10 % 4;
            if (i11 == 0) {
                View viewInflate = LayoutInflater.from(this.f60855f).inflate(R.layout.forum_theme_category_item, (ViewGroup) null);
                TextView[] textViewArr2 = {(TextView) viewInflate.findViewById(R.id.tv1), (TextView) viewInflate.findViewById(R.id.tv2), (TextView) viewInflate.findViewById(R.id.tv3), (TextView) viewInflate.findViewById(R.id.tv4)};
                parent.addView(viewInflate);
                textViewArr = textViewArr2;
            }
            String tag_name = gameDetialStrategyTag.getTag_name();
            int color = this.f60855f.getResources().getColor(R.color.game_detail_tab_text_color);
            TextView textView = textViewArr[i11];
            textView.setVisibility(0);
            textView.setText(tag_name);
            textView.setTextColor(color);
            if (this.f60852c == 0) {
                textView.setBackgroundResource(R.drawable.detail_strategy_tab_backtwo);
                if (i10 == 0) {
                    textView.setBackgroundResource(R.drawable.detial_strategy_table_back_two_selected);
                    textView.setTextColor(-1);
                } else {
                    textView.setTextColor(Color.parseColor("#7b410b"));
                }
            }
            textView.setOnClickListener(new p(gameDetialStrategyTag, tabBeanList));
        }
    }

    public void T(int position, int state) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(position)).f61135d;
        long jLongValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        if (commentBaseBean.getIs_despise() == 1) {
            commentBaseBean.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                commentBaseBean.setDespise_count("0");
            } else {
                commentBaseBean.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            commentBaseBean.setIs_despise(1);
            commentBaseBean.setDespise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void U(int position, int state) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(position)).f61135d;
        long praise_count = commentBaseBean.getPraise_count();
        if (commentBaseBean.getIs_praise() == 1) {
            commentBaseBean.setIs_praise(0);
            long j10 = praise_count - 1;
            if (j10 < 0) {
                commentBaseBean.setPraise_count(0L);
            } else {
                commentBaseBean.setPraise_count(j10);
            }
        } else if (state != 1) {
            commentBaseBean.setIs_praise(1);
            commentBaseBean.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void V(y0 bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((y0.r) bean.a()).f61180g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void W(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final String[] rawPicList) {
        if (this.f60869t == null) {
            this.f60869t = J();
        }
        int i10 = (int) (this.f60855f.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f60869t;
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
        img.setOnClickListener(new n(imgIndex, rawPicList));
    }

    public void Y(v0 mListenr) {
        this.f60874y = mListenr;
    }

    public void a0(View v10, final int pid) {
        v10.setOnClickListener(new o(pid));
    }

    public void f0(int sp_tpl_two_position) {
        this.f60852c = sp_tpl_two_position;
    }

    public void g0(int position) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(position)).f61135d;
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            commentBaseBean.setPraise_count(0L);
        } else {
            commentBaseBean.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<y0> list = this.f60868s;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        List<y0> list = this.f60868s;
        if (list != null) {
            return list.get(i10).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        List<y0> list = this.f60868s;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f60868s.get(position).b().ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return K(position, view, viewGroup);
        }
        if (itemViewType == ViewType.VIEWPAGE.ordinal()) {
            return M(position, view, viewGroup);
        }
        if (itemViewType == ViewType.UPDATE_RECORD.ordinal()) {
            return L(position, view, viewGroup);
        }
        if (itemViewType == ViewType.WEB.ordinal()) {
            return O(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS.ordinal()) {
            return w(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAMEAD.ordinal()) {
            return t(position, view, viewGroup);
        }
        if (itemViewType == ViewType.MESSAGE.ordinal()) {
            return B(position, view, viewGroup);
        }
        if (itemViewType == ViewType.RECOMMEND.ordinal()) {
            return D(position, view, viewGroup);
        }
        if (itemViewType == ViewType.INFORMATION.ordinal()) {
            return y(position, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_HEADER.ordinal()) {
            return o(position, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT.ordinal()) {
            return q(position, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_REPLY.ordinal()) {
            return p(position, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_FOOTER.ordinal()) {
            return n(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_ITEM_TOP.ordinal()) {
            return A(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS_ITEM.ordinal()) {
            return v(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS_BOTTOM.ordinal()) {
            return u(position, view, viewGroup);
        }
        if (itemViewType == ViewType.VOUCHER.ordinal()) {
            return N(position, view, viewGroup);
        }
        if (itemViewType == ViewType.DETIAL_ADGROUP.ordinal()) {
            return r(position, view, viewGroup);
        }
        if (itemViewType == ViewType.INFORMATIONTOP.ordinal()) {
            return z(position, view, viewGroup);
        }
        if (itemViewType == ViewType.SERVICEITEM.ordinal()) {
            return F(position, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYTABLE.ordinal()) {
            return H(position, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYITEM_IMAGE.ordinal()) {
            return G(position, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYITEM_NOIMAGE.ordinal()) {
            return I(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_FAST_ENTRY.ordinal()) {
            return s(position, view, viewGroup);
        }
        if (itemViewType == ViewType.GIFT_AND_SERVICE.ordinal()) {
            return x(position, view, viewGroup);
        }
        return itemViewType == ViewType.NULLITEM.ordinal() ? C(position, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void k(int position) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(position)).f61135d;
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(1);
        commentBaseBean.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    y0 l(String pid, InformationCommentBean bean, int myAuth, boolean showDivider) {
        return new y0(ViewType.COMMIT_REPLY, new y0.r(pid, bean, myAuth, showDivider));
    }
}
