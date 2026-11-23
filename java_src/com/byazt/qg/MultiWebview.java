package com.byazt.qg;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import com.byazt.nl.uj;
import com.byazt.nl.ve;
import com.byazt.nr.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 716})
public class MultiWebview extends FrameLayout implements com.byazt.nl.tt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f19071n = 1;
    public static com.byazt.el.c uj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f19072a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f19073c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<uj, Set<String>> f19074i;
    public com.byazt.nl.tt.c sp;
    public volatile uj tt;
    public WebViewImpl ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Deque<uj> f19075x;

    public MultiWebview(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        while (true) {
            uj ujVarC = c();
            if (ujVarC == null) {
                break;
            } else {
                removeView(ujVarC.getView());
            }
        }
        WebViewImpl webViewImpl = this.ve;
        if (webViewImpl != null) {
            webViewImpl.tt();
        }
    }

    public static void setExceptionReport(com.byazt.el.c cVar) {
        uj = cVar;
    }

    public static void setMaxWebViewCount(int i10) {
        f19071n = i10 + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public uj sp() {
        if (this.f19075x.size() < 2) {
            this.tt = this.ve;
            return null;
        }
        uj ujVarPollLast = this.f19075x.pollLast();
        if (ujVarPollLast != null) {
            removeView(ujVarPollLast.getView());
            ujVarPollLast.destroy();
            this.f19074i.remove(ujVarPollLast);
        }
        uj last = this.f19075x.getLast();
        if (last != null) {
            last.setVisibility(0);
            last.onResume();
            this.tt = last;
        }
        return ujVarPollLast;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        if (this.ve == null) {
            return;
        }
        removeAllViews();
        setBackground(null);
        try {
            this.ve.getView().setId(2064056317);
        } catch (Throwable unused) {
        }
        addView(this.ve.getView(), new FrameLayout.LayoutParams(-1, -1));
        this.f19075x.add(this.ve);
        this.tt = this.ve;
    }

    public void M_() {
        this.f19074i.clear();
        this.sp = null;
        c(new Runnable() { // from class: com.byazt.qg.MultiWebview.2
            @Override // java.lang.Runnable
            public void run() {
                MultiWebview.this.a();
            }
        });
    }

    public void destroy() {
        while (true) {
            uj ujVarPollLast = this.f19075x.pollLast();
            if (ujVarPollLast == null) {
                this.ve = null;
                this.tt = null;
                this.f19074i.clear();
                this.sp = null;
                return;
            }
            ujVarPollLast.destroy();
        }
    }

    public long getCreateDuration() {
        return this.f19072a;
    }

    public uj getCurrentWebView() {
        return this.tt;
    }

    public int getWebViewCount() {
        return this.f19075x.size();
    }

    public boolean n() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public MultiWebview(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public uj tt(String str) {
        uj ujVarVe = ve();
        if (ujVarVe != null) {
            uj ujVar = this.tt;
            this.f19075x.add(ujVarVe);
            this.tt = ujVarVe;
            addView(ujVarVe.getView(), new FrameLayout.LayoutParams(-1, -1));
            c(ujVarVe);
            ujVarVe.loadUrl(str);
            if (ujVar != null) {
                ujVar.onPause();
                ujVar.setVisibility(8);
            }
        }
        return ujVarVe;
    }

    private uj ve() {
        String name = Thread.currentThread().getName();
        try {
            return new WebViewImpl(this, getContext());
        } catch (Throwable th) {
            com.byazt.el.c cVar = uj;
            if (cVar == null) {
                return null;
            }
            cVar.c(name, th);
            return null;
        }
    }

    public MultiWebview(final Context context, final AttributeSet attributeSet, final int i10) {
        super(context, attributeSet, i10);
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f19073c = atomicInteger;
        this.f19075x = new LinkedList();
        this.f19074i = new ConcurrentHashMap();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        atomicInteger.set(1);
        if (n()) {
            this.ve = c(context, attributeSet, i10);
            uj();
            this.f19072a = System.currentTimeMillis() - jCurrentTimeMillis;
            return;
        }
        c(new Runnable() { // from class: com.byazt.qg.MultiWebview.1
            @Override // java.lang.Runnable
            public void run() {
                MultiWebview multiWebview = MultiWebview.this;
                multiWebview.ve = multiWebview.c(context, attributeSet, i10);
                MultiWebview.this.uj();
                MultiWebview.this.f19072a = System.currentTimeMillis() - jCurrentTimeMillis;
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebViewImpl c(Context context, AttributeSet attributeSet, int i10) {
        WebViewImpl webViewImpl;
        try {
            this.f19073c.set(2);
            if (i10 == 0) {
                webViewImpl = new WebViewImpl(this, context, attributeSet);
            } else {
                webViewImpl = new WebViewImpl(this, context, attributeSet, i10);
            }
            this.f19073c.set(3);
            return webViewImpl;
        } catch (Throwable th) {
            this.f19073c.set(4);
            if (uj == null) {
                return null;
            }
            uj.c(Thread.currentThread().getName(), th);
            return null;
        }
    }

    @Override // com.byazt.nl.tt
    public void tt(uj ujVar, String str) {
        if (ujVar == null) {
            return;
        }
        if (str == null) {
            this.f19074i.remove(ujVar);
            return;
        }
        Set<String> set = this.f19074i.get(ujVar);
        if (set != null) {
            set.remove(str);
            if (set.isEmpty()) {
                this.f19074i.remove(ujVar);
            }
        }
    }

    @Override // com.byazt.nl.tt
    public int c(final String str) {
        uj ujVarTt;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (f19071n == 1) {
            return 2;
        }
        if (getWebViewCount() >= f19071n) {
            return 1;
        }
        if (n()) {
            ujVarTt = tt(str);
        } else {
            final uj[] ujVarArr = new uj[1];
            final Object obj = new Object();
            c(new Runnable() { // from class: com.byazt.qg.MultiWebview.3
                @Override // java.lang.Runnable
                public void run() {
                    ujVarArr[0] = MultiWebview.this.tt(str);
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            });
            try {
                if (ujVarArr[0] == null) {
                    synchronized (obj) {
                        obj.wait(2500L);
                    }
                }
            } catch (InterruptedException unused) {
            }
            ujVarTt = ujVarArr[0];
        }
        return ujVarTt != null ? 0 : -999;
    }

    private void c(uj ujVar) {
        c cVar;
        Object objC;
        WebViewImpl webViewImpl = this.ve;
        if (webViewImpl == null || ujVar == null) {
            return;
        }
        Integer backgroundColor = webViewImpl.getBackgroundColor();
        if (backgroundColor != null) {
            ujVar.setBackgroundColor(backgroundColor.intValue());
        }
        Boolean allowFileAccess = webViewImpl.getAllowFileAccess();
        if (allowFileAccess != null) {
            ujVar.setAllowFileAccess(allowFileAccess.booleanValue());
        }
        Boolean databaseEnabled = webViewImpl.getDatabaseEnabled();
        if (databaseEnabled != null) {
            ujVar.setDatabaseEnabled(databaseEnabled.booleanValue());
        }
        Boolean appCacheEnabled = webViewImpl.getAppCacheEnabled();
        if (appCacheEnabled != null) {
            ujVar.setAppCacheEnabled(appCacheEnabled.booleanValue());
        }
        Boolean domStorageEnabled = webViewImpl.getDomStorageEnabled();
        if (domStorageEnabled != null) {
            ujVar.setDomStorageEnabled(domStorageEnabled.booleanValue());
        }
        Boolean supportZoom = webViewImpl.getSupportZoom();
        if (supportZoom != null) {
            ujVar.setSupportZoom(supportZoom.booleanValue());
        }
        Boolean builtInZoomControls = webViewImpl.getBuiltInZoomControls();
        if (builtInZoomControls != null) {
            ujVar.setBuiltInZoomControls(builtInZoomControls.booleanValue());
        }
        Boolean useWideViewPort = webViewImpl.getUseWideViewPort();
        if (useWideViewPort != null) {
            ujVar.setUseWideViewPort(useWideViewPort.booleanValue());
        }
        WebSettings.LayoutAlgorithm layoutAlgorithm = webViewImpl.getLayoutAlgorithm();
        if (layoutAlgorithm != null) {
            ujVar.setLayoutAlgorithm(layoutAlgorithm);
        }
        Boolean javaScriptEnabled = webViewImpl.getJavaScriptEnabled();
        if (javaScriptEnabled != null) {
            ujVar.setJavaScriptEnabled(javaScriptEnabled.booleanValue());
        }
        Boolean javaScriptCanOpenWindowsAutomatically = webViewImpl.getJavaScriptCanOpenWindowsAutomatically();
        if (javaScriptCanOpenWindowsAutomatically != null) {
            ujVar.setJavaScriptCanOpenWindowsAutomatically(javaScriptCanOpenWindowsAutomatically.booleanValue());
        }
        View.OnScrollChangeListener onScrollChangeListener = webViewImpl.getOnScrollChangeListener();
        if (onScrollChangeListener != null) {
            ujVar.setOnScrollChangeListener(onScrollChangeListener);
        }
        Boolean mediaPlaybackRequiresUserGesture = webViewImpl.getMediaPlaybackRequiresUserGesture();
        if (mediaPlaybackRequiresUserGesture != null) {
            ujVar.setMediaPlaybackRequiresUserGesture(mediaPlaybackRequiresUserGesture.booleanValue());
        }
        Boolean savePassword = webViewImpl.getSavePassword();
        if (savePassword != null) {
            ujVar.setSavePassword(savePassword.booleanValue());
        }
        Boolean allowFileAccessFromFileURLs = webViewImpl.getAllowFileAccessFromFileURLs();
        if (allowFileAccessFromFileURLs != null) {
            ujVar.setAllowFileAccessFromFileURLs(allowFileAccessFromFileURLs.booleanValue());
        }
        Boolean allowUniversalAccessFromFileURLs = webViewImpl.getAllowUniversalAccessFromFileURLs();
        if (allowUniversalAccessFromFileURLs != null) {
            ujVar.setAllowUniversalAccessFromFileURLs(allowUniversalAccessFromFileURLs.booleanValue());
        }
        Boolean blockNetworkImage = webViewImpl.getBlockNetworkImage();
        if (blockNetworkImage != null) {
            ujVar.setBlockNetworkImage(blockNetworkImage.booleanValue());
        }
        Integer defaultFontSize = webViewImpl.getDefaultFontSize();
        if (defaultFontSize != null) {
            ujVar.setDefaultFontSize(defaultFontSize.intValue());
        }
        String defaultTextEncodingName = webViewImpl.getDefaultTextEncodingName();
        if (defaultTextEncodingName != null) {
            ujVar.setDefaultTextEncodingName(defaultTextEncodingName);
        }
        Integer cacheMode = webViewImpl.getCacheMode();
        if (cacheMode != null) {
            ujVar.setCacheMode(cacheMode.intValue());
        }
        Boolean displayZoomControls = webViewImpl.getDisplayZoomControls();
        if (displayZoomControls != null) {
            ujVar.setDisplayZoomControls(displayZoomControls.booleanValue());
        }
        Boolean loadWithOverviewMod = webViewImpl.getLoadWithOverviewMod();
        if (loadWithOverviewMod != null) {
            ujVar.setLoadWithOverviewMode(loadWithOverviewMod.booleanValue());
        }
        String userAgentString = webViewImpl.getUserAgentString();
        if (userAgentString != null) {
            ujVar.setUserAgentString(userAgentString);
        }
        ve.c onTouchEventListener = webViewImpl.getOnTouchEventListener();
        if (onTouchEventListener != null) {
            ujVar.setTouchEventListener(onTouchEventListener);
        }
        DownloadListener downloadListener = webViewImpl.getDownloadListener();
        if (downloadListener != null) {
            ujVar.setDownloadListener(downloadListener);
        }
        WebChromeClient chromeClient = webViewImpl.getChromeClient();
        if (chromeClient != null) {
            ujVar.setWebChromeClient(chromeClient);
        }
        com.byazt.el.tt client = webViewImpl.getClient();
        if (client != null) {
            ujVar.setWebViewClient(client.c());
        }
        Map<String, c> javascriptInterfaces = webViewImpl.getJavascriptInterfaces();
        if (javascriptInterfaces != null) {
            for (String str : javascriptInterfaces.keySet()) {
                if (str != null && (cVar = javascriptInterfaces.get(str)) != null && (objC = cVar.c()) != null) {
                    ujVar.addJavascriptInterface(objC, str);
                }
            }
        }
    }

    @Override // com.byazt.nl.tt
    public uj c() {
        if (n()) {
            return sp();
        }
        final uj[] ujVarArr = new uj[1];
        final Object obj = new Object();
        c(new Runnable() { // from class: com.byazt.qg.MultiWebview.4
            @Override // java.lang.Runnable
            public void run() {
                ujVarArr[0] = MultiWebview.this.sp();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (ujVarArr[0] == null) {
                synchronized (obj) {
                    obj.wait(2500L);
                }
            }
        } catch (InterruptedException unused) {
        }
        return ujVarArr[0];
    }

    @Override // com.byazt.nl.tt
    public void c(uj ujVar, String str, String str2, Object obj) {
        Set<String> set;
        if (str2 == null || ujVar == null) {
            return;
        }
        for (uj ujVar2 : this.f19074i.keySet()) {
            if (ujVar2 != null && ujVar != ujVar2 && (set = this.f19074i.get(ujVar2)) != null && set.contains(str2)) {
                ujVar2.c(str, str2, obj);
            }
        }
    }

    @Override // com.byazt.nl.tt
    public void c(uj ujVar, String str) {
        if (ujVar == null || str == null) {
            return;
        }
        Set<String> hashSet = this.f19074i.get(ujVar);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f19074i.put(ujVar, hashSet);
        }
        hashSet.add(str);
    }

    public void c(Runnable runnable) {
        c(runnable, false);
    }

    public void c(final Runnable runnable, boolean z10) {
        if (n()) {
            runnable.run();
        } else if (z10) {
            post(new Runnable() { // from class: com.byazt.qg.MultiWebview.5
                @Override // java.lang.Runnable
                public void run() {
                    if (MultiWebview.this.n()) {
                        runnable.run();
                    } else {
                        da.tt().post(runnable);
                    }
                }
            });
        } else {
            da.tt().post(runnable);
        }
    }
}
