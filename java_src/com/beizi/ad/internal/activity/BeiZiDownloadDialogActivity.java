package com.beizi.ad.internal.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.beizi.ad.DownloadService;
import com.beizi.ad.internal.download.b;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.model.c;
import com.beizi.ad.model.j;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.beizi.fusion.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiDownloadDialogActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FrameLayout f8669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f8670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f8671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f8672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f8673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f8674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ExpandableListView f8675g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f8676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f8677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f8678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f8679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ApkBean f8680l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f8681m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8682n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<String> f8683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f8684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f8685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f8686r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f8687s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f8688t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c.b.C0229b f8689u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private j f8690v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f8691w;

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f8682n == 2 && !this.f8691w && !TextUtils.isEmpty(this.f8684p) && this.f8684p.startsWith("http")) {
            try {
                Intent intent = new Intent(this, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.f8685q);
                bundle.putBoolean("isDownload", this.f8686r);
                if (!TextUtils.isEmpty(this.f8687s)) {
                    boolean z10 = true;
                    if (this.f8688t != 1) {
                        z10 = false;
                    }
                    bundle.putBoolean("webDeepLink", z10);
                    bundle.putString("deeplinkUrl", this.f8687s);
                }
                if (!TextUtils.isEmpty(this.f8684p)) {
                    bundle.putString("landingPageUrl", this.f8684p);
                }
                c.b.C0229b c0229b = this.f8689u;
                if (c0229b != null) {
                    bundle.putSerializable("followTrackExt", c0229b);
                }
                j jVar = this.f8690v;
                if (jVar != null) {
                    bundle.putSerializable("lpOptimizeModule", jVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.beizi_download_dialog);
        setFinishOnTouchOutside(false);
        a();
        b();
        c();
    }

    private void a() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra == null) {
                return;
            }
            if (bundleExtra.containsKey("apkBean")) {
                this.f8680l = (ApkBean) bundleExtra.getSerializable("apkBean");
            }
            if (bundleExtra.containsKey("type")) {
                this.f8682n = bundleExtra.getInt("type");
            }
            if (bundleExtra.containsKey("openList")) {
                this.f8683o = bundleExtra.getStringArrayList("openList");
            }
            if (bundleExtra.containsKey("landingPageUrl")) {
                this.f8684p = bundleExtra.getString("landingPageUrl");
            }
            if (bundleExtra.containsKey("isCanJump")) {
                this.f8685q = bundleExtra.getBoolean("isCanJump", false);
            }
            if (bundleExtra.containsKey("isDownload")) {
                this.f8686r = bundleExtra.getBoolean("isDownload", false);
            }
            if (bundleExtra.containsKey("deeplinkUrl")) {
                this.f8687s = bundleExtra.getString("deeplinkUrl");
            }
            if (bundleExtra.containsKey("webDeepLink")) {
                this.f8688t = bundleExtra.getInt("webDeepLink");
            }
            if (bundleExtra.containsKey("followTrackExt")) {
                this.f8689u = (c.b.C0229b) bundleExtra.getSerializable("followTrackExt");
            }
            if (bundleExtra.containsKey("lpOptimizeModule")) {
                this.f8690v = (j) bundleExtra.getSerializable("lpOptimizeModule");
            }
            if (bundleExtra.containsKey("isForbidOpenLandingPage")) {
                this.f8691w = bundleExtra.getBoolean("isForbidOpenLandingPage");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        try {
            this.f8669a = (FrameLayout) findViewById(R.id.beizi_download_dialog_container_fl);
            this.f8673e = (ImageView) findViewById(R.id.beizi_download_dialog_close_iv);
            this.f8674f = (ImageView) findViewById(R.id.beizi_download_dialog_icon_iv);
            this.f8670b = (TextView) findViewById(R.id.beizi_download_dialog_name_tv);
            this.f8671c = (TextView) findViewById(R.id.beizi_download_dialog_version_tv);
            this.f8672d = (TextView) findViewById(R.id.beizi_download_dialog_developer_tv);
            this.f8675g = (ExpandableListView) findViewById(R.id.beizi_download_dialog_expand_lv);
            this.f8676h = (LinearLayout) findViewById(R.id.beizi_download_dialog_download_container_ll);
            this.f8677i = (LinearLayout) findViewById(R.id.beizi_download_dialog_market_container_ll);
            this.f8678j = (TextView) findViewById(R.id.beizi_download_dialog_market_cancel_tv);
            this.f8679k = (TextView) findViewById(R.id.beizi_download_dialog_market_confirm_tv);
            this.f8675g.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.1
                @Override // android.widget.ExpandableListView.OnGroupClickListener
                public boolean onGroupClick(ExpandableListView expandableListView, View view, int i10, long j10) {
                    try {
                        if (BeiZiDownloadDialogActivity.this.f8675g.isGroupExpanded(i10)) {
                            BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(i10);
                        } else {
                            BeiZiDownloadDialogActivity.this.f8675g.expandGroup(i10);
                            if (i10 == 0) {
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(1);
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(2);
                            } else if (i10 == 1) {
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(0);
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(2);
                            } else if (i10 == 2) {
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(0);
                                BeiZiDownloadDialogActivity.this.f8675g.collapseGroup(1);
                            }
                        }
                        return true;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return false;
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            if (this.f8680l == null) {
                return;
            }
            if (this.f8682n == 1) {
                this.f8673e.setVisibility(0);
                this.f8673e.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiDownloadDialogActivity.this.finish();
                    }
                });
                this.f8676h.setVisibility(0);
                this.f8676h.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiDownloadDialogActivity.this.d();
                        BeiZiDownloadDialogActivity.this.finish();
                    }
                });
                this.f8677i.setVisibility(8);
            } else {
                this.f8673e.setVisibility(8);
                this.f8676h.setVisibility(8);
                this.f8677i.setVisibility(0);
                this.f8678j.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiDownloadDialogActivity.this.e();
                        BeiZiDownloadDialogActivity.this.finish();
                    }
                });
                this.f8679k.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiDownloadDialogActivity.this.d();
                        BeiZiDownloadDialogActivity.this.finish();
                    }
                });
            }
            if (this.f8674f != null && !TextUtils.isEmpty(this.f8680l.getAppIconURL())) {
                try {
                    h.a(this).a(this.f8680l.getAppIconURL(), new h.a() { // from class: com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity.6
                        @Override // com.beizi.ad.internal.e.h.a
                        public void a() {
                        }

                        @Override // com.beizi.ad.internal.e.h.a
                        public void a(Bitmap bitmap) {
                            try {
                                BeiZiDownloadDialogActivity.this.f8674f.setImageBitmap(bitmap);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                } catch (Exception unused) {
                }
            }
            if (this.f8670b != null && !TextUtils.isEmpty(this.f8680l.getApkTittleName())) {
                this.f8670b.setText(this.f8680l.getApkTittleName());
            }
            if (this.f8671c != null && !TextUtils.isEmpty(this.f8680l.getAppVersion())) {
                this.f8671c.setText("版本号 ：" + this.f8680l.getAppVersion());
            }
            if (this.f8672d != null && !TextUtils.isEmpty(this.f8680l.getAppDeveloper())) {
                this.f8672d.setText("开发者 ：" + this.f8680l.getAppDeveloper());
            }
            ArrayList arrayList = new ArrayList();
            b bVar = new b();
            bVar.a("应用权限");
            if (!TextUtils.isEmpty(this.f8680l.getAppPermissionsUrl())) {
                bVar.c(this.f8680l.getAppPermissionsUrl());
                bVar.b("h5");
            } else if (!TextUtils.isEmpty(this.f8680l.getAppPermissionsDesc())) {
                bVar.c(this.f8680l.getAppPermissionsDesc());
                bVar.b("text");
            }
            arrayList.add(bVar);
            b bVar2 = new b();
            bVar2.a("隐私协议");
            String appPrivacyUrl = this.f8680l.getAppPrivacyUrl();
            if (!TextUtils.isEmpty(appPrivacyUrl)) {
                if (appPrivacyUrl.startsWith("http")) {
                    bVar2.c(appPrivacyUrl);
                    bVar2.b("h5");
                } else {
                    bVar2.c(appPrivacyUrl);
                    bVar2.b("text");
                }
            }
            arrayList.add(bVar2);
            b bVar3 = new b();
            bVar3.a("产品功能介绍");
            String appintro = this.f8680l.getAppintro();
            if (!TextUtils.isEmpty(appintro)) {
                if (appintro.startsWith("http")) {
                    bVar3.c(appintro);
                    bVar3.b("h5");
                } else {
                    bVar3.c(appintro);
                    bVar3.b("text");
                }
            }
            arrayList.add(bVar3);
            this.f8675g.setAdapter(new com.beizi.ad.internal.download.a(this, arrayList));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            if (this.f8680l == null) {
                return;
            }
            if (this.f8682n != 2) {
                Bundle bundle = new Bundle();
                bundle.putSerializable("apkBean", this.f8680l);
                Intent intent = new Intent(this, (Class<?>) DownloadService.class);
                intent.putExtra("data", bundle);
                startService(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(this.f8680l.getApkUrl()));
            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent2);
            List<String> list = this.f8683o;
            if (list != null) {
                k.a(list);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
