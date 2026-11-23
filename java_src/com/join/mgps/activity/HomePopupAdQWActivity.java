package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.net.http.AndroidHttpClient;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomCircleProgressBar;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.receiver.BootReceiver_;
import com.join.mgps.service.CommonService_;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.home_popup_adqw_activity)
public class HomePopupAdQWActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    MultiTouchViewPager f53972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    CircleIndicator f53973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    CustomCircleProgressBar f53974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f53975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f53976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    RelativeLayout f53977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Extra
    String f53978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Extra
    EverdayLogin f53979j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    PopupAdBean f53981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c f53982m;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Context f53987r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WebView f53988s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.github.snowdream.android.app.downloader.c f53990u;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Extra
    boolean f53980k = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f53983n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f53984o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f53985p = new Handler();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    EverdayLogin f53986q = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Handler f53989t = new b();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
        }
    }

    class b extends Handler {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(HomePopupAdQWActivity.this);
                HomePopupAdQWActivity homePopupAdQWActivity = HomePopupAdQWActivity.this;
                gVarT0.z(homePopupAdQWActivity, homePopupAdQWActivity.f53990u.g());
            }
        }

        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(HomePopupAdQWActivity.this);
                HomePopupAdQWActivity homePopupAdQWActivity = HomePopupAdQWActivity.this;
                gVarT0.z(homePopupAdQWActivity, homePopupAdQWActivity.f53990u.g());
                HomePopupAdQWActivity.this.f53974e.setProgress(100);
                HomePopupAdQWActivity.this.f53977h.setVisibility(0);
                HomePopupAdQWActivity.this.f53976g.setVisibility(0);
                HomePopupAdQWActivity.this.f53976g.setOnClickListener(new a());
                return;
            }
            if (i10 == 2) {
                HomePopupAdQWActivity.this.f53974e.setProgress(1);
                HomePopupAdQWActivity.this.f53977h.setVisibility(0);
            } else if (i10 == 4) {
                com.join.mgps.Util.a3.b(HomePopupAdQWActivity.this.f53987r).d("下载失败");
            } else {
                if (i10 != 5) {
                    return;
                }
                HomePopupAdQWActivity.this.f53974e.setProgress(msg.arg1);
            }
        }
    }

    public class c extends PagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<Object> f53994a;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePopupAdQWActivity.this.finish();
            }
        }

        class b extends com.facebook.drawee.controller.b<com.facebook.imagepipeline.image.g> {
            b() {
            }

            @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
                super.onFinalImageSet(id2, imageInfo, animatable);
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.HomePopupAdQWActivity$c$c, reason: collision with other inner class name */
        class ViewOnClickListenerC0671c implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f53998b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ RecomDatabean f53999c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Context f54000d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ AppBeanMain f54001e;

            ViewOnClickListenerC0671c(final String val$urlDown, final RecomDatabean val$bean, final Context val$context, final AppBeanMain val$appBeanMain) {
                this.f53998b = val$urlDown;
                this.f53999c = val$bean;
                this.f54000d = val$context;
                this.f54001e = val$appBeanMain;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                if (this.f53998b.startsWith("http")) {
                    HomePopupAdQWActivity.this.g(this.f53998b, this.f53999c.getMain().getSub_title());
                } else {
                    ((CommonService_.n0) CommonService_.P2(this.f54000d).extra("downGameId", this.f54001e.getCrc_link_type_val())).a();
                }
                HomePopupAdQWActivity.this.finish();
            }
        }

        class d implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f54003b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ RecomDatabean f54004c;

            d(final String val$urlDown, final RecomDatabean val$bean) {
                this.f54003b = val$urlDown;
                this.f54004c = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                if (this.f54003b.startsWith("http")) {
                    HomePopupAdQWActivity.this.g(this.f54003b, this.f54004c.getMain().getSub_title());
                } else {
                    HomePopupAdQWActivity.this.j(view.getContext(), this.f54004c.getSub().get(0));
                    HomePopupAdQWActivity.this.finish();
                }
            }
        }

        class e extends WebChromeClient {
            e() {
            }
        }

        class f extends WebViewClient {
            f() {
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

        public c() {
        }

        public List<Object> b() {
            return this.f53994a;
        }

        public void c(List<Object> beans) {
            this.f53994a = beans;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<Object> list = this.f53994a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int position) {
            Object obj = this.f53994a.get(position);
            if (!(obj instanceof RecomDatabean)) {
                if (!(obj instanceof EverdayLogin)) {
                    return new TextView(viewGroup.getContext());
                }
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.home_popup_ad_everdaylogin, (ViewGroup) null);
                HomePopupAdQWActivity.this.f53988s = (WebView) viewInflate.findViewById(R.id.webView);
                HomePopupAdQWActivity.this.f53988s.setBackgroundColor(0);
                HomePopupAdQWActivity.this.f53988s.getBackground().setAlpha(0);
                HomePopupAdQWActivity.this.f53988s.getSettings().setJavaScriptEnabled(true);
                HomePopupAdQWActivity.this.f53988s.loadUrl(((EverdayLogin) obj).getFilePath());
                HomePopupAdQWActivity.this.f53988s.setHorizontalScrollBarEnabled(false);
                HomePopupAdQWActivity.this.f53988s.setVerticalScrollBarEnabled(false);
                HomePopupAdQWActivity.this.f53988s.setWebChromeClient(new e());
                HomePopupAdQWActivity.this.f53988s.setWebViewClient(new f());
                HomePopupAdQWActivity.this.f53988s.addJavascriptInterface(HomePopupAdQWActivity.this.new d(), "papa");
                UtilsMy.T3(HomePopupAdQWActivity.this.f53988s);
                viewGroup.addView(viewInflate, -1, -1);
                return viewInflate;
            }
            RecomDatabean recomDatabean = (RecomDatabean) obj;
            String pic_remote = recomDatabean.getMain().getPic_remote();
            Context context = viewGroup.getContext();
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate2.findViewById(R.id.adImage);
            TextView textView = (TextView) viewInflate2.findViewById(R.id.downLoadView);
            HomePopupAdQWActivity.this.findViewById(R.id.close).setOnClickListener(new a());
            simpleDraweeView.getHierarchy().J(R.drawable.main_normal_icon);
            com.facebook.drawee.backends.pipeline.e eVarNewDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
            eVarNewDraweeControllerBuilder.b(HomePopupAdQWActivity.this.k(pic_remote) ? com.join.mgps.Util.t0.j(new File(com.join.mgps.Util.z.b(HomePopupAdQWActivity.this), com.join.mgps.Util.o0.t(pic_remote))) : Uri.parse(pic_remote));
            eVarNewDraweeControllerBuilder.c(simpleDraweeView.getController());
            eVarNewDraweeControllerBuilder.I(new b());
            simpleDraweeView.setController(eVarNewDraweeControllerBuilder.build());
            simpleDraweeView.setClickable(true);
            try {
                viewGroup.addView(viewInflate2, -1, -1);
                AppBeanMain appBeanMain = recomDatabean.getSub().get(0);
                String link_type_val = appBeanMain.getLink_type_val();
                if (appBeanMain.getLink_type() == 17) {
                    appBeanMain.setLink_type(1);
                    textView.setOnClickListener(new ViewOnClickListenerC0671c(link_type_val, recomDatabean, context, appBeanMain));
                }
                simpleDraweeView.setOnClickListener(new d(link_type_val, recomDatabean));
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

    class d {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f54009b;

            a(final String val$json) {
                this.f54009b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(HomePopupAdQWActivity.this.f53987r, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f54009b, IntentDateBean.class));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        d() {
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            UserInfo accountData = AccountUtil_.getInstance_(HomePopupAdQWActivity.this).getAccountData();
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
                HomePopupAdQWActivity.this.f53986q.setHasGetGiftTime(System.currentTimeMillis());
                com.join.mgps.pref.h.n(HomePopupAdQWActivity.this).Y(JsonMapper.getInstance().toJson(HomePopupAdQWActivity.this.f53986q));
            }
        }

        @JavascriptInterface
        public int getint() {
            return 100222;
        }

        @JavascriptInterface
        public void startIntent(final String json) {
            HomePopupAdQWActivity.this.f53985p.post(new a(json));
        }
    }

    @Receiver(actions = {p5.a.A})
    void d() {
        WebView webView = this.f53988s;
        if (webView != null) {
            webView.loadUrl("javascript:reloadEveryDayReceive()");
        }
    }

    @AfterViews
    void e() {
        List<RecomDatabean> big_pic;
        EverdayLogin everdayLogin;
        this.f53987r = this;
        try {
            PopupAdBean popupAdBean = (PopupAdBean) JsonMapper.getInstance().fromJson(com.join.mgps.Util.t2.g(this.f53978i), PopupAdBean.class);
            this.f53981l = popupAdBean;
            if (popupAdBean != null && popupAdBean.getAd_switch().equals("1")) {
                this.f53983n = true;
            }
            if (!this.f53983n && !this.f53984o) {
                finish();
            }
            ArrayList arrayList = new ArrayList();
            if (this.f53984o && (everdayLogin = this.f53986q) != null) {
                arrayList.add(everdayLogin);
            }
            if (this.f53983n && (big_pic = this.f53981l.getBig_pic()) != null) {
                arrayList.addAll(big_pic);
            }
            this.f53982m = new c();
            if (arrayList.size() == 1) {
                this.f53973d.setVisibility(8);
            }
            this.f53982m.c(arrayList);
            this.f53972c.setAdapter(this.f53982m);
            this.f53973d.setViewPager(this.f53972c);
            if (this.f53983n) {
                try {
                    this.f53971b.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27284a);
                    if (this.f53981l.getMore() == null || this.f53981l.getMore().size() <= 0 || this.f53981l.getMore().get(0).getMain().getAd_switch() != 1) {
                        this.f53971b.setVisibility(8);
                        this.f53971b.setOnClickListener(null);
                        return;
                    }
                    if (this.f53971b.getVisibility() != 0) {
                        this.f53971b.setVisibility(0);
                    }
                    RecomDatabean recomDatabean = this.f53981l.getMore().get(0);
                    this.f53971b.setOnClickListener(new a());
                    com.join.android.app.common.utils.l.h(this.f53971b, recomDatabean.getMain().getPic_remote());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.f96211o})
    void f(Intent intent) {
        intent.getStringExtra("packageName");
        String stringExtra = intent.getStringExtra("actionFrom");
        if (stringExtra.equals(BootReceiver_.f72254a)) {
            if (this.f53977h.getVisibility() == 0) {
                finish();
            }
        } else {
            if (stringExtra.equals(BootReceiver_.f72255b)) {
                return;
            }
            stringExtra.equals(BootReceiver_.f72257d);
        }
    }

    @Background
    void g(String url, String title) throws Throwable {
        String strI = i(url);
        String strSubstring = strI.substring(strI.lastIndexOf(47) + 1);
        if (strSubstring.length() > 15) {
            strSubstring = strSubstring.substring(0, 14);
        }
        this.f53975f.setText(title + "正在下载");
        m(strSubstring + "下载中");
        h(strI, strSubstring);
    }

    void h(String url, String fileName) throws Throwable {
        com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(url, fileName, com.join.mgps.Util.z.f50166e, 0L);
        this.f53990u = cVar;
        cVar.o(this.f53989t);
        this.f53990u.run();
    }

    public String i(String testUrl) {
        Header[] headers;
        AndroidHttpClient androidHttpClientNewInstance = AndroidHttpClient.newInstance("Android");
        try {
            try {
                HttpResponse httpResponseExecute = androidHttpClientNewInstance.execute(new HttpGet(testUrl));
                int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("code:");
                sb2.append(statusCode);
                if (statusCode != 200 && (headers = httpResponseExecute.getHeaders("Location")) != null && headers.length > 0) {
                    String strI = i(headers[headers.length - 1].getValue());
                    androidHttpClientNewInstance.close();
                    return strI;
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                if (androidHttpClientNewInstance != null) {
                }
                return testUrl;
            }
            androidHttpClientNewInstance.close();
            return testUrl;
        } catch (Throwable th) {
            if (androidHttpClientNewInstance != null) {
                androidHttpClientNewInstance.close();
            }
            throw th;
        }
    }

    public void j(Context context, AppBeanMain bean) {
        if (bean == null) {
            return;
        }
        IntentUtil.getInstance().intentActivity(context, new IntentDateBean(bean.getLink_type(), bean.getJump_type(), bean.getLink_type_val(), bean.getCrc_link_type_val(), bean.getTpl_type(), null));
    }

    boolean k(String url) {
        return new File(com.join.mgps.Util.z.b(this), com.join.mgps.Util.o0.t(url)).exists();
    }

    @Click
    void l() {
        setResult(1);
        if (this.f53977h.getVisibility() == 8) {
            finish();
        }
    }

    @UiThread
    void m(String message) {
        com.join.mgps.Util.a3.b(this.f53987r).d(message);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        com.github.snowdream.android.app.downloader.c cVar;
        super.onResume();
        try {
            RelativeLayout relativeLayout = this.f53977h;
            if (relativeLayout == null || relativeLayout.getVisibility() != 0 || (cVar = this.f53990u) == null || cVar.g() == null) {
                return;
            }
            String strS = com.join.android.app.common.utils.g.t0(this).s(this, this.f53990u.g().getAbsolutePath());
            if (com.join.mgps.Util.t2.i(strS) && com.join.android.app.common.utils.g.t0(this).e(this, strS)) {
                finish();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
