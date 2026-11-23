package cn.sharesdk.sina.weibo.utils;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.i;
import com.mob.tools.FakeActivity;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.sina.weibo.sdk.api.ImageObject;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class WebSharePage extends FakeActivity implements View.OnClickListener {
    private static final String SHARE_URL = "http://service.weibo.com/share/mobilesdk.php";
    private static final String UPLOAD_PIC_URL = "http://service.weibo.com/share/mobilesdk_uppic.php";
    private AuthorizeListener actionListener;
    private String appKey;
    private Button btnRetry;
    private cn.sharesdk.sina.weibo.sdk.a.a layout;
    private LinearLayout llRetry;
    private int pageStatus;
    private Platform.ShareParams params;
    private String token;
    private TextView tvBack;
    private WebView webView;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x005b  */
    public String getPicId() {
        String str;
        HashMap mapFromJson;
        try {
            Bitmap imageData = this.params.getImageData();
            if (imageData == null && !TextUtils.isEmpty(this.params.getImagePath())) {
                imageData = BitmapHelper.getBitmap(this.params.getImagePath());
            } else if (imageData == null && !TextUtils.isEmpty(this.params.getImageUrl())) {
                imageData = BitmapHelper.getBitmap(getContext(), this.params.getImageUrl());
            }
            if (imageData != null) {
                ImageObject imageObject = new ImageObject();
                imageObject.setImageData(imageData);
                byte[] bArr = imageObject.imageData;
                if (bArr == null || bArr.length <= 0) {
                    str = null;
                } else {
                    str = new String(cn.sharesdk.sina.weibo.sdk.a.a(bArr));
                }
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            NetworkHelper networkHelper = new NetworkHelper();
            ArrayList<KVPair<String>> arrayList = new ArrayList<>();
            arrayList.add(new KVPair<>("img", str));
            arrayList.add(new KVPair<>("oauth_timestamp", String.valueOf(System.currentTimeMillis() / 1000)));
            TextUtils.isEmpty(this.token);
            TextUtils.isEmpty(this.appKey);
            String strHttpPost = networkHelper.httpPost(UPLOAD_PIC_URL, arrayList, (KVPair<String>) null, (ArrayList<KVPair<String>>) null, (NetworkHelper.NetworkTimeOut) null);
            if (!TextUtils.isEmpty(strHttpPost) && (mapFromJson = new Hashon().fromJson(strHttpPost)) != null && mapFromJson.containsKey("code") && mapFromJson.containsKey("data")) {
                String strValueOf = String.valueOf(mapFromJson.get("code"));
                String strValueOf2 = String.valueOf(mapFromJson.get("data"));
                if ("1".equals(strValueOf) && !TextUtils.isEmpty(strValueOf2)) {
                    return strValueOf2;
                }
            }
            return null;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getReqUrl(final String str, final ShareSDKCallback<String> shareSDKCallback) {
        cn.sharesdk.sina.weibo.sdk.a.a(getContext(), this.activity.getPackageName(), new ShareSDKCallback<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.2
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(String str2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new KVPair("title", WebSharePage.this.params.getText()));
                arrayList.add(new KVPair("source", WebSharePage.this.appKey));
                arrayList.add(new KVPair("access_token", WebSharePage.this.token));
                arrayList.add(new KVPair("packagename", ((FakeActivity) WebSharePage.this).activity.getPackageName()));
                arrayList.add(new KVPair("picinfo", str));
                arrayList.add(new KVPair("luicode", "10000360"));
                arrayList.add(new KVPair("key_hash", str2));
                arrayList.add(new KVPair("lfid", "OP_" + WebSharePage.this.appKey));
                arrayList.add(new KVPair("version", "0041005000"));
                String str3 = "http://service.weibo.com/share/mobilesdk.php?" + ResHelper.encodeUrl((ArrayList<KVPair<String>>) arrayList);
                ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                if (shareSDKCallback2 != null) {
                    shareSDKCallback2.onCallback(str3);
                }
            }
        });
    }

    private void initView() {
        this.tvBack = this.layout.b();
        this.webView = this.layout.c();
        this.llRetry = this.layout.d();
        this.btnRetry = this.layout.a();
        this.tvBack.setOnClickListener(this);
        this.btnRetry.setOnClickListener(this);
        if (ShareSDK.isRemoveCookieOnAuthorize()) {
            CookieSyncManager.createInstance(this.activity);
            CookieManager.getInstance().removeAllCookie();
        }
        this.webView.setWebViewClient(new WebViewClient() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (WebSharePage.this.pageStatus == -1) {
                    WebSharePage.this.llRetry.setVisibility(0);
                    WebSharePage.this.webView.setVisibility(8);
                }
                WebSharePage.this.pageStatus = 0;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                super.onReceivedError(webView, i10, str, str2);
                String url = webView.getUrl();
                if (TextUtils.isEmpty(url) || TextUtils.isEmpty(str2)) {
                    return;
                }
                Uri uri = Uri.parse(url);
                Uri uri2 = Uri.parse(str2);
                if (uri.getHost().equals(uri2.getHost()) && uri.getScheme().equals(uri2.getScheme())) {
                    WebSharePage.this.pageStatus = -1;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!str.startsWith("sinaweibo://browser/close")) {
                    return false;
                }
                if (WebSharePage.this.actionListener == null) {
                    return true;
                }
                WebSharePage.this.reCode(str);
                return true;
            }
        });
        loadWebView();
    }

    private String loadWebView() {
        RxMob.Subscribable subscribableCreate = RxMob.create(new RxMob.OnSubscribe<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.3
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber<String> subscriber) {
                subscriber.onNext(WebSharePage.this.getPicId());
            }
        });
        subscribableCreate.subscribeOn(RxMob.Thread.NEW_THREAD);
        subscribableCreate.observeOn(RxMob.Thread.UI_THREAD);
        subscribableCreate.subscribe(new RxMob.Subscriber<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.4
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                super.onCompleted();
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                SSDKLog.b().b(th);
                WebSharePage.this.getReqUrl(null, new ShareSDKCallback<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.4.2
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str) {
                        if (TextUtils.isEmpty(str)) {
                            SSDKLog.b().a("data null", new Object[0]);
                        } else {
                            WebSharePage.this.webView.loadUrl(str);
                        }
                    }
                });
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onStart() {
                super.onStart();
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onNext(String str) {
                WebSharePage.this.getReqUrl(str, new ShareSDKCallback<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.4.1
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str2) {
                        if (TextUtils.isEmpty(str2)) {
                            SSDKLog.b().a("data null", new Object[0]);
                        } else {
                            WebSharePage.this.webView.loadUrl(str2);
                        }
                    }
                });
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reCode(String str) {
        Bundle bundleUrlToBundle = ResHelper.urlToBundle(str);
        String string = bundleUrlToBundle.getString("code");
        String string2 = bundleUrlToBundle.getString("msg");
        if (this.actionListener != null) {
            if (TextUtils.isEmpty(string)) {
                this.actionListener.onCancel();
            } else if ("0".equals(string)) {
                this.actionListener.onComplete(bundleUrlToBundle);
            } else {
                this.actionListener.onError(new Throwable(string2));
            }
        }
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.tvBack) {
            AuthorizeListener authorizeListener = this.actionListener;
            if (authorizeListener != null) {
                authorizeListener.onCancel();
            }
            finish();
            return;
        }
        if (view == this.btnRetry) {
            this.llRetry.setVisibility(8);
            this.webView.setVisibility(0);
            loadWebView();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        this.layout = new cn.sharesdk.sina.weibo.sdk.a.a(getContext());
        RelativeLayout relativeLayoutA = this.layout.a(ResHelper.getStringRes(getContext(), "ssdk_sina_web_title"));
        i.a(relativeLayoutA);
        this.activity.setContentView(relativeLayoutA);
        initView();
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setFocusable(false);
        }
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onFinish() {
        if (this.actionListener != null) {
            this.actionListener = null;
        }
        return super.onFinish();
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onKeyEvent(int i10, KeyEvent keyEvent) {
        if (i10 != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        AuthorizeListener authorizeListener = this.actionListener;
        if (authorizeListener != null) {
            authorizeListener.onCancel();
        }
        finish();
        return true;
    }

    public void setAppKey(String str, String str2) {
        this.appKey = str;
        this.token = str2;
    }

    public void setListener(AuthorizeListener authorizeListener) {
        this.actionListener = authorizeListener;
    }

    public void setShareParams(Platform.ShareParams shareParams) {
        this.params = shareParams;
    }
}
