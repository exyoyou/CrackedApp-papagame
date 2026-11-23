package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flipboard.bottomsheet.custom.SimpleSheetView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_web_view_search)
public class WebViewSearchActivity extends BaseFragmentActivity {
    Animation animation;
    TextView biground;

    @ViewById
    BottomSheetLayout bottomSheetLayout;

    @ViewById
    View close;

    @ViewById
    View downloadCenter;
    LinearLayout downloadLayout;
    ImageView downloadLine;

    @Extra
    DownloadTask downloadTask;
    ImageView hasNewFinishedGameImage;
    ImageView imageLoading;

    @ViewById
    TextView inputUrl;
    private boolean isError;

    @ViewById
    View layoutFail;

    @ViewById
    View layoutLoading;

    @ViewById
    View next;

    @ViewById
    ImageView nextImg;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View prev;

    @ViewById
    ImageView prevImg;

    @ViewById
    View refresh;
    TextView scroll_text;
    ScrollTextViewLayout scroll_text_layout;
    SimpleSheetView simpleSheetView;

    @ViewById
    View sniffer;
    DownloadCfg snifferDomain;
    CountDownTimer timer;

    @ViewById
    TextView tipSniffing;

    @Extra
    String url;

    @ViewById
    LJWebView web;
    private String word;
    private String TAG = getClass().getSimpleName();

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f56403id = "downloadc94873e7a457ef607a0cb27c7036b0e2";
    private final String id_android_11 = "downloadc94873e7a457ef607a0cb27c7036b0e3";
    private boolean sniffingWhenPageLoaded = true;
    boolean isObbOrData = false;
    private int num = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f56404n = 0;
    List<DownloadTask> downloadTasks = new ArrayList();
    Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();

    class a implements SimpleSheetView.d {
        a() {
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void a(SimpleSheetView.c item) {
            com.join.mgps.Util.a3.b(WebViewSearchActivity.this).d("onItemClicked " + item.f29152a);
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void b(SimpleSheetView.c item) {
            DownloadTask downloadTaskG = q5.f.M().G(WebViewSearchActivity.this.downloadTask.getCrc_link_type_val());
            if (downloadTaskG != null) {
                if (downloadTaskG.getStatus() == 1 || downloadTaskG.getStatus() == 2) {
                    com.join.mgps.Util.a3.b(WebViewSearchActivity.this).d("已创建下载任务");
                } else if (downloadTaskG.getStatus() == 5) {
                    com.join.mgps.Util.a3.b(WebViewSearchActivity.this).d("下载已完成");
                }
            }
            WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
            com.php25.PDownload.d.c(webViewSearchActivity.downloadTask, webViewSearchActivity.simpleSheetView.getContext());
            WebViewSearchActivity.this.bottomSheetLayout.r();
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void onClose() {
            WebViewSearchActivity.this.bottomSheetLayout.r();
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    class c extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f56407a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long millisInFuture, long countDownInterval, final boolean val$found) {
            super(millisInFuture, countDownInterval);
            this.f56407a = val$found;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            WebViewSearchActivity.this.tipSniffing.setVisibility(8);
            WebViewSearchActivity.this.showContent();
            if (WebViewSearchActivity.this.simpleSheetView.getMixins().size() > 0) {
                WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
                webViewSearchActivity.simpleSheetView.setTitle(webViewSearchActivity.getResources().getString(R.string.sniffing_result_sheet_title, Integer.valueOf(WebViewSearchActivity.this.simpleSheetView.getMixins().size())));
                WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
                webViewSearchActivity2.bottomSheetLayout.I(webViewSearchActivity2.simpleSheetView);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            if (this.f56407a || millisUntilFinished > 600) {
                return;
            }
            WebViewSearchActivity.this.tipSniffing.setText(R.string.sniffing_unfound);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity.this.downloadLayout();
        }
    }

    class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public class f {
        public f() {
        }

        @JavascriptInterface
        public void processHtml(String html) {
            String queryParameter = Uri.parse(WebViewSearchActivity.this.url).getQueryParameter("word");
            WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
            if (webViewSearchActivity.isBaiduHost(webViewSearchActivity.url) && !TextUtils.isEmpty(queryParameter)) {
                WebViewSearchActivity.this.acquirePackageFromBaiduByHtml(html);
                return;
            }
            WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
            if (webViewSearchActivity2.isSnifferHost(webViewSearchActivity2.url)) {
                WebViewSearchActivity.this.acquirePackageByHtml(html);
            }
        }
    }

    private class g extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Context f56412a;

        public g(Context context) {
            this.f56412a = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            com.join.mgps.Util.g1.b(WebViewSearchActivity.this.TAG, "onPageFinished() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                WebViewSearchActivity.this.url = url2;
            }
            if (WebViewSearchActivity.this.url.equals("data:text/html,chromewebdata") || WebViewSearchActivity.this.isError) {
                WebViewSearchActivity.this.showLoadingFailed();
                return;
            }
            view.getSettings().setBlockNetworkImage(false);
            if (WebViewSearchActivity.this.sniffingWhenPageLoaded && WebViewSearchActivity.this.tipSniffing.getVisibility() != 0) {
                Uri.parse(WebViewSearchActivity.this.url).getHost();
                String queryParameter = Uri.parse(WebViewSearchActivity.this.url).getQueryParameter("word");
                WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
                boolean z10 = true;
                if (!webViewSearchActivity.isBaiduHost(webViewSearchActivity.url) || TextUtils.isEmpty(queryParameter)) {
                    WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
                    if (!webViewSearchActivity2.isSnifferHost(webViewSearchActivity2.url)) {
                        z10 = false;
                    }
                }
                if (!z10) {
                    return;
                }
                WebViewSearchActivity.this.tipSniffing.setText(R.string.sniffing);
                WebViewSearchActivity.this.tipSniffing.setVisibility(0);
                WebViewSearchActivity.this.layoutLoading.setVisibility(0);
                WebViewSearchActivity.this.web.w("javascript:wufan.processHtml(document.documentElement.outerHTML);");
                WebViewSearchActivity.this.sniffingWhenPageLoaded = false;
            }
            WebViewSearchActivity.this.refreshUi();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(WebViewSearchActivity.this.TAG, "onPageStarted() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                WebViewSearchActivity.this.url = url2;
            }
            WebViewSearchActivity.this.showLoading();
            WebViewSearchActivity.this.refreshUi();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(WebViewSearchActivity.this.TAG, "onReceivedError() called." + failingUrl);
            WebViewSearchActivity.this.isError = true;
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            WebViewSearchActivity.this.showLoadingFailed();
            WebViewSearchActivity.this.refreshUi();
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
        public boolean shouldOverrideUrlLoading(WebView view, String url2) {
            com.join.mgps.Util.g1.b(WebViewSearchActivity.this.TAG, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.m.j(this.f56412a)) {
                com.join.mgps.Util.a3.b(this.f56412a).d(WebViewSearchActivity.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        WebViewSearchActivity.this.url = url2;
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        WebViewSearchActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    WebViewSearchActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return true;
        }
    }

    private void initDownloadViews() {
        this.biground = (TextView) findViewById(R.id.biground);
        this.downloadLayout = (LinearLayout) findViewById(R.id.downloadLayout);
        this.scroll_text = (TextView) findViewById(R.id.scroll_text);
        this.scroll_text_layout = (ScrollTextViewLayout) findViewById(R.id.scroll_text_layout);
        this.hasNewFinishedGameImage = (ImageView) findViewById(R.id.hasNewFinishedGameImage);
        this.downloadLine = (ImageView) findViewById(R.id.downloadLine);
        this.imageLoading = (ImageView) findViewById(R.id.imageLoading);
        this.downloadLayout.setOnClickListener(new d());
        getdownloadTask();
    }

    private void loadWebView(String url) {
        com.join.mgps.Util.g1.b(this.TAG, "lodeWebView() called.");
        try {
            if (com.join.android.app.common.utils.m.j(this)) {
                LJWebView lJWebView = this.web;
                if (lJWebView == null) {
                    return;
                }
                lJWebView.setVisibility(0);
                this.web.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
                this.web.setClickable(true);
                this.web.setUseWideViewPort(true);
                this.web.setSupportZoom(false);
                this.web.setBuiltInZoomControls(false);
                this.web.setJavaScriptEnabled(true);
                this.web.setCacheMode(-1);
                this.web.setWebViewClient(new g(this));
                this.web.s(new f());
                this.web.w(url);
            } else {
                showLoadingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void acquirePackage(String url) {
        try {
            Document document = getDocument(url);
            Elements elementsSelect = (Build.VERSION.SDK_INT < 30 || !this.isObbOrData) ? null : document.select("a#downloadc94873e7a457ef607a0cb27c7036b0e3");
            if (elementsSelect == null || elementsSelect.size() <= 0) {
                elementsSelect = document.select("a#downloadc94873e7a457ef607a0cb27c7036b0e2");
            }
            ArrayList arrayList = new ArrayList();
            for (Element element : elementsSelect) {
                String strAttr = element.attr("gid");
                String strAttr2 = element.attr("abs:href");
                String strSubstring = strAttr2.substring(strAttr2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("acquirePackage href=");
                sb2.append(element.attr("abs:href"));
                sb2.append(" gid=");
                sb2.append(element.attr("gid"));
                sb2.append(" text=");
                sb2.append(element.text());
                DownloadTask downloadTask = this.downloadTask;
                if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && com.join.mgps.Util.i1.d(this.downloadTask.getCrc_link_type_val()).equals(strAttr)) {
                    SimpleSheetView.c cVar = new SimpleSheetView.c(strAttr, strSubstring, "来源：" + url);
                    cVar.d(url);
                    cVar.c(strAttr2);
                    arrayList.add(cVar);
                }
            }
            this.simpleSheetView.getMixins().addAll(arrayList);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void acquirePackageByHtml(String html) {
        Document document = Jsoup.parse(html);
        Elements elementsSelect = (Build.VERSION.SDK_INT < 30 || !this.isObbOrData) ? null : document.select("a#downloadc94873e7a457ef607a0cb27c7036b0e3");
        if (elementsSelect == null || elementsSelect.size() <= 0) {
            elementsSelect = document.select("a#downloadc94873e7a457ef607a0cb27c7036b0e2");
        }
        ArrayList arrayList = new ArrayList();
        for (Element element : elementsSelect) {
            String strAttr = element.attr("gid");
            String strAttr2 = element.attr("abs:href");
            String strSubstring = strAttr2.substring(strAttr2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("acquirePackage href=");
            sb2.append(element.attr("abs:href"));
            sb2.append(" gid=");
            sb2.append(element.attr("gid"));
            sb2.append(" text=");
            sb2.append(element.text());
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && com.join.mgps.Util.i1.d(this.downloadTask.getCrc_link_type_val()).equals(strAttr)) {
                SimpleSheetView.c cVar = new SimpleSheetView.c(strAttr, strSubstring, "来源：" + this.url);
                cVar.d(this.url);
                cVar.c(strAttr2);
                arrayList.add(cVar);
            }
        }
        this.simpleSheetView.setMixins(arrayList);
        showResult();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void acquirePackageFromBaidu(String url) {
        try {
            List<String> snifferUrls = getSnifferUrls(getDocument(url));
            for (int i10 = 0; i10 < snifferUrls.size(); i10++) {
                acquirePackage(snifferUrls.get(i10));
            }
            showResult();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void acquirePackageFromBaiduByHtml(String html) {
        List<String> snifferUrls = getSnifferUrls(Jsoup.parse(html));
        for (int i10 = 0; i10 < snifferUrls.size(); i10++) {
            acquirePackage(snifferUrls.get(i10));
        }
        showResult();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void acquirePackageFromSpecifyDomain(String url) {
        acquirePackage(url);
        showResult();
    }

    @AfterViews
    void afterViews() {
        if (!TextUtils.isEmpty(this.url)) {
            this.word = Uri.parse(this.url).getQueryParameter("word");
        }
        this.snifferDomain = com.join.mgps.pref.h.n(this).w().getSniffer_down_load_domain();
        this.simpleSheetView = new SimpleSheetView(this, getResources().getString(R.string.sniffing_result_sheet_title, 0), new a());
        this.layoutLoading.setOnTouchListener(new b());
        for (TipBean tipBean : this.downloadTask.getTipBeans()) {
            if (!tipBean.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                if (!tipBean.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                    if (tipBean.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                    }
                }
            }
            this.isObbOrData = true;
        }
        com.join.mgps.Util.j0.a().d(this);
        initDownloadViews();
        this.inputUrl.setText(this.url);
        loadWebView(this.url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        this.num = q5.f.M().V();
        this.f56404n = q5.f.M().Z(this);
        updateLine(q5.f.M().d0());
        int i10 = this.num;
        if (i10 != 0) {
            updateDownloadingPoint(i10);
        } else if (this.f56404n != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    @Click
    void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void closeTip() {
        closeTip(true);
    }

    void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.scroll_text_layout.p();
        this.imageLoading.setVisibility(8);
        this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
        this.hasNewFinishedGameImage.setVisibility(8);
    }

    Document getDocument(String url) {
        new HashMap();
        Connection connectionConnect = Jsoup.connect(url);
        try {
            return connectionConnect.header("User-Agent", "Mozilla/5.0 (Linux; Android 8.1.0; XX; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.91 Mobile Safari/537.36").get();
        } catch (IOException e10) {
            e10.printStackTrace();
            try {
                return connectionConnect.get();
            } catch (IOException e11) {
                e11.printStackTrace();
                return null;
            }
        }
    }

    String getRedirectUrl(String path) {
        String strGroup = "";
        if (TextUtils.isEmpty(path)) {
            return "";
        }
        try {
            Elements elementsSelect = getDocument(path).select("noscript > META[content]");
            if (elementsSelect != null) {
                Element elementFirst = elementsSelect.first();
                Matcher matcher = Pattern.compile("(?=http).*?(?=('|$))", 2).matcher(elementFirst.attr("content"));
                if (matcher.find() && matcher.groupCount() > 0) {
                    strGroup = matcher.group(0);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getRedirectUrl1 text=");
                sb2.append(elementFirst.attr("content"));
                sb2.append(" url=");
                sb2.append(strGroup);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return strGroup;
    }

    String getRedirectUrl1(String path) {
        String headerField = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(path).openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(5000);
            headerField = httpURLConnection.getHeaderField("Location");
            httpURLConnection.disconnect();
            return headerField;
        } catch (IOException e10) {
            e10.printStackTrace();
            return headerField;
        }
    }

    List<String> getSnifferUrls(Document doc) {
        ArrayList arrayList = new ArrayList();
        Elements elementsSelect = doc.select("div.result");
        if (elementsSelect == null) {
            elementsSelect = doc.select("a[href]");
        }
        Iterator<Element> it2 = elementsSelect.iterator();
        while (it2.hasNext()) {
            Element elementFirst = it2.next().select("a[href]").first();
            if (elementFirst != null) {
                String redirectUrl = getRedirectUrl(elementFirst.attr("abs:href"));
                String host = Uri.parse(redirectUrl).getHost();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("queryLinksByDomain href=");
                sb2.append(elementFirst.attr("abs:href"));
                sb2.append(" \ntext=");
                sb2.append(elementFirst.text());
                sb2.append(" \nredirect=");
                sb2.append(redirectUrl);
                sb2.append(" \nhost=");
                sb2.append(host);
                if (isSnifferHost(redirectUrl)) {
                    arrayList.add(redirectUrl);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getdownloadTask() {
        List<DownloadTask> listD = q5.f.M().d();
        this.downloadTasks = listD;
        if (listD == null || listD.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.downloadTasks) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    boolean isBaiduHost(String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        return Pattern.compile("(www|m).baidu.com").matcher(Uri.parse(url).getHost()).find();
    }

    boolean isSnifferHost(String url) {
        DownloadCfg downloadCfg;
        if (TextUtils.isEmpty(url) || (downloadCfg = this.snifferDomain) == null || TextUtils.isEmpty(downloadCfg.getCfg_values())) {
            return false;
        }
        return Pattern.compile("(^|,)" + Uri.parse(url).getHost()).matcher(this.snifferDomain.getCfg_values()).find();
    }

    boolean isSniffing() {
        return this.tipSniffing.getVisibility() == 0;
    }

    @Click
    void layoutFail() {
        loadWebView(this.url);
    }

    @Click
    void next() {
        if (this.tipSniffing.getVisibility() == 0) {
            this.web.setClickable(false);
        } else if (this.web.getWebView().canGoForward()) {
            this.web.getWebView().goForward();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        switch (downloadTaskEvent.c()) {
            case 2:
                updateUI(downloadTaskA, 1);
                break;
            case 3:
                updateUI(downloadTaskA, 2);
                break;
            case 5:
            case 11:
                updateUI(downloadTaskA, 5);
                break;
            case 6:
                updateUI(downloadTaskA, 6);
                break;
            case 7:
                downloadTaskA.setStatus(7);
                updateUI(downloadTaskA, 3);
                break;
            case 8:
                updateUI(downloadTaskA, 4);
                break;
            case 10:
                if (downloadTaskA != null) {
                    updateUI(downloadTaskA, 7);
                    break;
                }
                break;
            case 12:
                updateUI(downloadTaskA, 8);
                break;
            case 13:
                updateUI(downloadTaskA, 9);
                break;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || !this.web.getWebView().canGoBack()) {
            return super.onKeyDown(keyCode, event);
        }
        this.web.getWebView().goBack();
        return true;
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        checkDownlodingNumber();
    }

    @Click
    void prev() {
        if (this.tipSniffing.getVisibility() == 0) {
            this.web.setClickable(false);
        } else if (this.web.getWebView().canGoBack()) {
            this.web.getWebView().goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                List<DownloadTask> listT = q5.f.M().T(null);
                if (listT != null && listT.size() == 0) {
                    this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
                    this.hasNewFinishedGameImage.setVisibility(8);
                }
                checkDownlodingNumber();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveStart(DownloadTask downloadTask, int from) {
        UtilsMy.X4(this.downloadTasks);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            this.scroll_text_layout.setTextArray(new String[]{"", "size", "", "size"});
            this.scroll_text_layout.setIsStop(false);
            this.scroll_text_layout.n();
            checkDownlodingNumber();
            return;
        }
        if (from == 1 || from == 7) {
            checkDownlodingNumber();
        } else if (downloadTask.getStatus() == 3 || downloadTask.getStatus() == 6) {
            checkDownlodingNumber();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        checkDownlodingNumber();
        this.prefDef.isNewFinishedGame().g(Boolean.TRUE);
        this.hasNewFinishedGameImage.setVisibility(0);
    }

    @Click
    void refresh() {
        if (this.tipSniffing.getVisibility() == 0) {
            this.web.setClickable(false);
        } else {
            this.web.w(this.url);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshUi() {
        LJWebView lJWebView = this.web;
        if (lJWebView == null) {
            return;
        }
        if (lJWebView.getWebView().canGoBack()) {
            this.prevImg.setBackgroundResource(R.drawable.back_f1);
        } else {
            this.prevImg.setBackgroundResource(R.drawable.back_f1_disable);
        }
        if (this.web.getWebView().canGoForward()) {
            this.nextImg.setBackgroundResource(R.drawable.back_f2);
        } else {
            this.nextImg.setBackgroundResource(R.drawable.back_f2_disable);
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        com.join.mgps.Util.p2.r(this, -1, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showContent() {
        try {
            this.layoutFail.setVisibility(8);
            this.layoutLoading.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    public void showLoading() {
        try {
            this.inputUrl.setText(this.url);
            this.layoutLoading.setVisibility(8);
            this.layoutLoading.setClickable(false);
            this.layoutFail.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingFailed() {
        try {
            this.layoutFail.setVisibility(0);
            this.layoutLoading.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showResult() {
        if (this.simpleSheetView.getMixins().size() > 0) {
            closeTip();
        } else {
            closeTip(false);
        }
    }

    @Click
    void sniffer() {
        if (this.tipSniffing.getVisibility() == 0) {
            this.web.setClickable(false);
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(getResources().getString(R.string.net_connect_failed));
            closeTip(false);
            return;
        }
        this.tipSniffing.setText(R.string.sniffing);
        this.tipSniffing.setVisibility(0);
        this.layoutLoading.setVisibility(0);
        if (TextUtils.isEmpty(this.url)) {
            closeTip(false);
            return;
        }
        try {
            String queryParameter = Uri.parse(this.url).getQueryParameter("word");
            if (isBaiduHost(this.url) && !TextUtils.isEmpty(queryParameter) && queryParameter.equals(this.word)) {
                this.simpleSheetView.getMixins().clear();
                acquirePackageFromBaidu(this.url);
            } else if (isSnifferHost(this.url)) {
                this.simpleSheetView.getMixins().clear();
                acquirePackageFromSpecifyDomain(this.url);
            } else {
                closeTip(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(0);
        this.imageLoading.startAnimation(this.animation);
        this.animation.setAnimationListener(new e());
    }

    void stopLineAnimation() {
        this.imageLoading.clearAnimation();
        this.imageLoading.setVisibility(8);
        this.downloadLine.setImageResource(R.drawable.line_grey_bg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int number) {
        this.biground.setVisibility(0);
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        this.biground.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int downloadingNumber) {
        this.scroll_text_layout.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        if (downloadingNumber == 0) {
            stopLineAnimation();
        } else {
            this.downloadLine.setImageResource(R.drawable.line_blue_bg);
            startLineAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            if (from != 1 && from != 2) {
                if (from == 3) {
                    receiveDelete(downloadTask);
                    return;
                } else if (from == 5) {
                    receiveSuccess(downloadTask);
                    return;
                } else if (from != 7 && from != 8 && from != 9) {
                    return;
                }
            }
            receiveStart(downloadTask, from);
        }
    }

    void closeTip(final boolean found) {
        c cVar = new c(BaseCloudFileManager.ACK_TIMEOUT, 200L, found);
        this.timer = cVar;
        cVar.start();
    }
}
