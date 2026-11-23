package com.beizi.ad.internal.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.beizi.ad.internal.download.BeiZiWebView;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class DownloadAppInfoActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f8698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f8699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayout f8700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f8701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f8702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f8703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f8704g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f8705h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f8706i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f8707j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f8708k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8709l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f8710m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f8711n = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f8712o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f8713p = "";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ScrollView f8714q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ScrollView f8715r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ScrollView f8716s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f8717t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f8718u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f8719v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private BeiZiWebView f8720w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private BeiZiWebView f8721x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private BeiZiWebView f8722y;

    private void b() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            return;
        }
        this.f8711n = extras.getString("privacy_content_key");
        this.f8713p = extras.getString("title_content_key");
        this.f8710m = extras.getString("permission_content_key");
        this.f8712o = extras.getString("intro_content_key");
        this.f8709l = extras.getInt("from_position_key");
    }

    private void c() {
        if (!TextUtils.isEmpty(this.f8713p)) {
            this.f8699b.setText(this.f8713p);
        }
        this.f8698a.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.DownloadAppInfoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadAppInfoActivity.this.finish();
            }
        });
        this.f8700c.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.DownloadAppInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadAppInfoActivity.this.a(0);
            }
        });
        this.f8701d.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.DownloadAppInfoActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadAppInfoActivity.this.a(1);
            }
        });
        this.f8702e.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.DownloadAppInfoActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadAppInfoActivity.this.a(2);
            }
        });
    }

    private void d() {
        TextView textView = this.f8705h;
        int i10 = R.color.appinfo_tab_unselected_color;
        textView.setTextColor(ContextCompat.getColor(this, i10));
        this.f8708k.setVisibility(4);
        this.f8703f.setTextColor(ContextCompat.getColor(this, i10));
        this.f8706i.setVisibility(4);
        this.f8704g.setTextColor(ContextCompat.getColor(this, i10));
        this.f8707j.setVisibility(4);
        this.f8716s.setVisibility(8);
        this.f8722y.setVisibility(8);
        this.f8719v.setVisibility(8);
        this.f8714q.setVisibility(8);
        this.f8717t.setVisibility(8);
        this.f8720w.setVisibility(8);
        this.f8715r.setVisibility(8);
        this.f8718u.setVisibility(8);
        this.f8721x.setVisibility(8);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        b();
        setContentView(R.layout.beizi_download_appinfo_activity);
        a();
        a(this.f8709l);
        c();
    }

    private void a() {
        this.f8698a = (ImageView) findViewById(R.id.beizi_download_appinfo_back);
        this.f8699b = (TextView) findViewById(R.id.beizi_download_appinfo_title);
        this.f8700c = (LinearLayout) findViewById(R.id.beizi_appinfo_permission_layout);
        this.f8703f = (TextView) findViewById(R.id.beizi_appinfo_permission_textview);
        this.f8706i = findViewById(R.id.beizi_appinfo_permission_below_line);
        this.f8701d = (LinearLayout) findViewById(R.id.beizi_appinfo_privacy_layout);
        this.f8704g = (TextView) findViewById(R.id.beizi_appinfo_privacy_textview);
        this.f8707j = findViewById(R.id.beizi_appinfo_privacy_below_line);
        this.f8702e = (LinearLayout) findViewById(R.id.beizi_appinfo_intro_layout);
        this.f8705h = (TextView) findViewById(R.id.beizi_appinfo_intro_textview);
        this.f8708k = findViewById(R.id.beizi_appinfo_intro_below_line);
        this.f8714q = (ScrollView) findViewById(R.id.beizi_download_appinfo_persmission_content_scrollview);
        this.f8717t = (TextView) findViewById(R.id.beizi_download_appinfo_persmission_content_textview);
        this.f8720w = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_persmission_content_webview);
        this.f8715r = (ScrollView) findViewById(R.id.beizi_download_appinfo_privacy_content_scrollview);
        this.f8718u = (TextView) findViewById(R.id.beizi_download_appinfo_privacy_content_textview);
        this.f8721x = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_privacy_content_webview);
        this.f8716s = (ScrollView) findViewById(R.id.beizi_download_appinfo_intro_content_scrollview);
        this.f8719v = (TextView) findViewById(R.id.beizi_download_appinfo_intro_content_textview);
        this.f8722y = (BeiZiWebView) findViewById(R.id.beizi_download_appinfo_intro_content_webview);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        if (i10 == 2) {
            d();
            a(this.f8705h, this.f8708k, this.f8712o, this.f8719v, this.f8716s, this.f8722y);
        } else if (i10 == 1) {
            d();
            a(this.f8704g, this.f8707j, this.f8711n, this.f8718u, this.f8715r, this.f8721x);
        } else {
            d();
            a(this.f8703f, this.f8706i, this.f8710m, this.f8717t, this.f8714q, this.f8720w);
        }
    }

    private void a(TextView textView, View view, String str, TextView textView2, ScrollView scrollView, WebView webView) {
        int i10 = R.color.appinfo_tab_selected_color;
        textView.setTextColor(ContextCompat.getColor(this, i10));
        view.setBackgroundColor(ContextCompat.getColor(this, i10));
        view.setVisibility(0);
        if (str.startsWith("http")) {
            textView2.setText("");
            scrollView.setVisibility(8);
            webView.setVisibility(0);
            webView.loadUrl(str);
            return;
        }
        textView2.setText(str);
        textView2.setVisibility(0);
        scrollView.setVisibility(0);
        webView.setVisibility(8);
    }
}
