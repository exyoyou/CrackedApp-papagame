package com.join.mgps.activity;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.WebAccountDataBean;
import com.uc.crashsdk.export.LogType;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.home_popup_ad_activity)
public class HomePopupAdActivity extends BaseActivity {

    @Extra
    String adJson;
    b adapter;
    Context context;

    @Extra
    EverdayLogin everdayLogin;

    @ViewById
    CircleIndicator indicator;

    @ViewById
    SimpleDraweeView more;
    PopupAdBean popupAdBean;

    @ViewById
    MultiTouchViewPager viewPager;
    private WebView webView;

    @Extra
    boolean isFromAccountCenter = false;
    boolean showAd = false;
    boolean showEverdayLogin = false;
    private Handler mHandler = new Handler();
    EverdayLogin everdayLogin1 = null;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecomDatabean f53954b;

        a(final RecomDatabean val$moreBean) {
            this.f53954b = val$moreBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f53954b.getSub() == null || this.f53954b.getSub().size() <= 0) {
                return;
            }
            HomePopupAdActivity.this.goIntent(v10.getContext(), this.f53954b.getSub().get(0));
        }
    }

    public class b extends PagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<Object> f53956a;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Context f53958b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ AppBeanMain f53959c;

            a(final Context val$context, final AppBeanMain val$appBeanMain) {
                this.f53958b = val$context;
                this.f53959c = val$appBeanMain;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilsMy.a1(this.f53958b, this.f53959c);
                HomePopupAdActivity.this.finish();
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.HomePopupAdActivity$b$b, reason: collision with other inner class name */
        class ViewOnClickListenerC0670b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecomDatabean f53961b;

            ViewOnClickListenerC0670b(final RecomDatabean val$bean) {
                this.f53961b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePopupAdActivity.this.goIntent(view.getContext(), this.f53961b.getSub().get(0));
                HomePopupAdActivity.this.finish();
            }
        }

        class c extends WebChromeClient {
            c() {
            }
        }

        class d extends WebViewClient {
            d() {
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                int primaryError = error.getPrimaryError();
                if (primaryError == 3 || primaryError == 5) {
                    handler.proceed();
                }
                handler.cancel();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        }

        public b() {
        }

        public List<Object> b() {
            return this.f53956a;
        }

        public void c(List<Object> beans) {
            this.f53956a = beans;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<Object> list = this.f53956a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int position) {
            Object obj = this.f53956a.get(position);
            if (!(obj instanceof RecomDatabean)) {
                if (!(obj instanceof EverdayLogin)) {
                    return new TextView(viewGroup.getContext());
                }
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.home_popup_ad_everdaylogin, (ViewGroup) null);
                HomePopupAdActivity.this.webView = (WebView) viewInflate.findViewById(R.id.webView);
                HomePopupAdActivity.this.webView.setBackgroundColor(0);
                HomePopupAdActivity.this.webView.getBackground().setAlpha(0);
                HomePopupAdActivity.this.webView.getSettings().setJavaScriptEnabled(true);
                HomePopupAdActivity.this.webView.loadUrl(((EverdayLogin) obj).getFilePath());
                HomePopupAdActivity.this.webView.setHorizontalScrollBarEnabled(false);
                HomePopupAdActivity.this.webView.setVerticalScrollBarEnabled(false);
                HomePopupAdActivity.this.webView.setWebChromeClient(new c());
                HomePopupAdActivity.this.webView.setWebViewClient(new d());
                HomePopupAdActivity.this.webView.addJavascriptInterface(HomePopupAdActivity.this.new c(), "papa");
                HomePopupAdActivity.this.webView.setLayerType(1, null);
                UtilsMy.T3(HomePopupAdActivity.this.webView);
                viewGroup.addView(viewInflate, -1, -1);
                return viewInflate;
            }
            RecomDatabean recomDatabean = (RecomDatabean) obj;
            String pic_remote = recomDatabean.getMain().getPic_remote();
            Context context = viewGroup.getContext();
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate2.findViewById(R.id.adImage);
            TextView textView = (TextView) viewInflate2.findViewById(R.id.downLoadView);
            simpleDraweeView.getHierarchy().J(R.drawable.main_normal_icon);
            Fresco.newDraweeControllerBuilder().b(HomePopupAdActivity.this.isHomePopupAdLocalCached(pic_remote) ? com.join.mgps.Util.t0.j(new File(com.join.mgps.Util.z.b(context), com.join.mgps.Util.o0.t(pic_remote))) : Uri.parse(pic_remote));
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().b(Uri.parse(pic_remote)).F(true).build());
            simpleDraweeView.setClickable(true);
            try {
                viewGroup.addView(viewInflate2, -1, -1);
                AppBeanMain appBeanMain = recomDatabean.getSub().get(0);
                if (appBeanMain != null && appBeanMain.getLink_type() == 17) {
                    appBeanMain.setLink_type(1);
                    textView.setOnClickListener(new a(context, appBeanMain));
                }
                simpleDraweeView.setOnClickListener(new ViewOnClickListenerC0670b(recomDatabean));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return viewInflate2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    class c {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f53966b;

            a(final String val$json) {
                this.f53966b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(HomePopupAdActivity.this.context, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f53966b, IntentDateBean.class));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        c() {
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            UserInfo accountData = AccountUtil_.getInstance_(HomePopupAdActivity.this).getAccountData();
            if (accountData != null) {
                webAccountDataBean.setAccountBean(AccountBean.convert(accountData));
                webAccountDataBean.setHasLogin(true);
            } else {
                webAccountDataBean.setHasLogin(false);
            }
            return JsonMapper.getInstance().toJson(webAccountDataBean);
        }

        @JavascriptInterface
        public void getRewards(boolean success) {
            if (success) {
                HomePopupAdActivity.this.everdayLogin1.setHasGetGiftTime(System.currentTimeMillis());
                com.join.mgps.pref.h.n(HomePopupAdActivity.this).Y(JsonMapper.getInstance().toJson(HomePopupAdActivity.this.everdayLogin1));
            }
        }

        @JavascriptInterface
        public int getint() {
            return 100222;
        }

        @JavascriptInterface
        public void startIntent(final String json) {
            HomePopupAdActivity.this.mHandler.post(new a(json));
        }
    }

    @Receiver(actions = {p5.a.A})
    void accountChange() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.loadUrl("javascript:reloadEveryDayReceive()");
        }
    }

    @AfterViews
    void afterViews() {
        List<RecomDatabean> big_pic;
        EverdayLogin everdayLogin;
        this.context = this;
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        try {
            PopupAdBean popupAdBean = (PopupAdBean) JsonMapper.getInstance().fromJson(com.join.mgps.Util.t2.g(this.adJson), PopupAdBean.class);
            this.popupAdBean = popupAdBean;
            if (popupAdBean != null && popupAdBean.getAd_switch().equals("1")) {
                this.showAd = true;
            }
            if (!this.showAd && !this.showEverdayLogin) {
                finish();
            }
            ArrayList arrayList = new ArrayList();
            if (this.showEverdayLogin && (everdayLogin = this.everdayLogin1) != null) {
                arrayList.add(everdayLogin);
            }
            if (this.showAd && (big_pic = this.popupAdBean.getBig_pic()) != null) {
                arrayList.addAll(big_pic);
            }
            this.adapter = new b();
            if (arrayList.size() == 1) {
                this.indicator.setVisibility(8);
            }
            this.adapter.c(arrayList);
            this.viewPager.setAdapter(this.adapter);
            this.indicator.setViewPager(this.viewPager);
            if (this.showAd) {
                try {
                    this.more.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27284a);
                    if (this.popupAdBean.getMore() == null || this.popupAdBean.getMore().size() <= 0 || this.popupAdBean.getMore().get(0).getMain().getAd_switch() != 1) {
                        this.more.setVisibility(8);
                        this.more.setOnClickListener(null);
                        return;
                    }
                    if (this.more.getVisibility() != 0) {
                        this.more.setVisibility(0);
                    }
                    RecomDatabean recomDatabean = this.popupAdBean.getMore().get(0);
                    this.more.setOnClickListener(new a(recomDatabean));
                    com.join.android.app.common.utils.l.h(this.more, recomDatabean.getMain().getPic_remote());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void goIntent(Context context, AppBeanMain bean) {
        if (bean == null) {
            return;
        }
        PopupAdBean popupAdBean = this.popupAdBean;
        if (popupAdBean != null && com.join.mgps.Util.t2.i(popupAdBean.getTag()) && "SP_001".equals(this.popupAdBean.getTag())) {
            com.papa.sim.statistic.t.l(context).p("fingerClickAdPop", "", AccountUtil_.getInstance_(context).getUid());
        }
        IntentDateBean intentDateBean = new IntentDateBean(bean.getLink_type(), bean.getJump_type(), bean.getLink_type_val(), bean.getCrc_link_type_val(), bean.getTpl_type(), null);
        intentDateBean.setExtBean(new ExtBean(13202));
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    boolean isHomePopupAdLocalCached(String url) {
        return new File(com.join.mgps.Util.z.b(this.context), com.join.mgps.Util.o0.t(url)).exists();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Click
    void parentLayout() {
        setResult(1);
        finish();
    }
}
