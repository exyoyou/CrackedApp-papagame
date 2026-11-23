package com.baidu.oauth.sdkbqt.view;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.oauth.sdkbqt.R;
import com.baidu.oauth.sdkbqt.auth.AuthInfo;
import com.baidu.oauth.sdkbqt.auth.BdOauthSdk;

/* JADX INFO: loaded from: classes6.dex */
public class a extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f8270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f8271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AuthInfo f8272c;
    protected com.baidu.oauth.sdkbqt.auth.i oauthWebView;

    /* JADX INFO: renamed from: com.baidu.oauth.sdkbqt.view.a$a, reason: collision with other inner class name */
    private class ViewOnClickListenerC0210a implements View.OnClickListener {
        private ViewOnClickListenerC0210a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.oauthWebView.b();
        }

        /* synthetic */ ViewOnClickListenerC0210a(a aVar, b bVar) {
            this();
        }
    }

    private void b() {
        int iOauthResID;
        int iOauthResID2;
        LayoutInflater layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
        AuthInfo authInfo = this.f8272c;
        if (authInfo == null || authInfo.getFindViewDelegate() == null) {
            iOauthResID = R.layout.layout_bd_oauth_sdk_loading_timeout;
            iOauthResID2 = R.id.btn_retry;
        } else {
            iOauthResID = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7540c);
            iOauthResID2 = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7545h);
        }
        View viewInflate = layoutInflater.inflate(iOauthResID, (ViewGroup) null);
        viewInflate.findViewById(iOauthResID2).setOnClickListener(new e(this, viewInflate));
        this.oauthWebView.b(viewInflate);
    }

    private void c() {
        try {
            ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
            progressBar.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, com.baidu.oauth.sdkbqt.a.i.a(this, 2.0f), 0, 0));
            this.oauthWebView.a(progressBar);
        } catch (Throwable th) {
            com.baidu.oauth.sdkbqt.a.d.a(th);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        onFinish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.oauthWebView.destroy();
    }

    protected void onFinish() {
        finish();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.oauthWebView.a(com.baidu.oauth.sdkbqt.auth.i.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.oauthWebView.a(com.baidu.oauth.sdkbqt.auth.i.b.ON_RESUME);
    }

    public void setTitle(String str) {
        this.f8271b.setText(str);
    }

    protected void setupViews() {
        int iOauthResID;
        int iOauthResID2;
        int iOauthResID3;
        this.oauthWebView = new com.baidu.oauth.sdkbqt.auth.i(this);
        this.oauthWebView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        AuthInfo authInfo = BdOauthSdk.getAuthInfo();
        this.f8272c = authInfo;
        if (authInfo == null || authInfo.getFindViewDelegate() == null) {
            iOauthResID = R.id.oauth_title_back;
            iOauthResID2 = R.id.oauth_title;
            iOauthResID3 = R.id.oauth_webview_container;
        } else {
            iOauthResID = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7541d);
            iOauthResID2 = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7543f);
            iOauthResID3 = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7542e);
        }
        this.f8270a = findViewById(iOauthResID);
        this.f8271b = (TextView) findViewById(iOauthResID2);
        LinearLayout linearLayout = (LinearLayout) findViewById(iOauthResID3);
        if (linearLayout != null) {
            linearLayout.addView(this.oauthWebView);
        }
        this.f8270a.setOnClickListener(new ViewOnClickListenerC0210a(this, null));
        a();
        b();
        c();
        this.oauthWebView.a(new b(this));
        this.oauthWebView.a(new c(this));
    }

    private void a() {
        int iOauthResID;
        int iOauthResID2;
        LayoutInflater layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
        AuthInfo authInfo = this.f8272c;
        if (authInfo == null || authInfo.getFindViewDelegate() == null) {
            iOauthResID = R.layout.layout_bd_oauth_sdk_network_unavailable;
            iOauthResID2 = R.id.btn_network_settings;
        } else {
            iOauthResID = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7539b);
            iOauthResID2 = this.f8272c.getFindViewDelegate().oauthResID(com.baidu.mobads.sdk.internal.b.a.b.f7544g);
        }
        View viewInflate = layoutInflater.inflate(iOauthResID, (ViewGroup) null);
        viewInflate.findViewById(iOauthResID2).setOnClickListener(new d(this));
        this.oauthWebView.a(viewInflate);
    }
}
