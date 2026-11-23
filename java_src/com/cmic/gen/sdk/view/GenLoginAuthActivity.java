package com.cmic.gen.sdk.view;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cmic.gen.sdk.auth.GenAuthnHelper;
import com.cmic.gen.sdk.auth.GenTokenListener;
import com.cmic.gen.sdk.e.h;
import com.cmic.gen.sdk.e.n;
import com.cmic.gen.sdk.e.q;
import com.join.mgps.activity.posting.PostingActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class GenLoginAuthActivity extends Activity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final String f24573a = "GenLoginAuthActivity";
    private GenAuthThemeConfig B;
    private int C;
    private int D;
    private boolean E;
    private Dialog F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f24574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f24575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f24576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f24577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f24578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f24579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f24580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private d f24581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<d> f24582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList<String> f24583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String[] f24584l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.cmic.gen.sdk.a f24585m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.cmic.gen.sdk.auth.a f24586n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CheckBox f24588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RelativeLayout f24589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RelativeLayout f24590r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private GenTokenListener f24594v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RelativeLayout f24596x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f24597y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f24598z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f24587o = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24591s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24592t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a f24593u = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f24595w = true;
    private String A = "";

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<GenLoginAuthActivity> f24610a;

        a(GenLoginAuthActivity genLoginAuthActivity) {
            this.f24610a = new WeakReference<>(genLoginAuthActivity);
        }

        private void a(Message message) {
            GenLoginAuthActivity genLoginAuthActivity = this.f24610a.get();
            if (genLoginAuthActivity == null || message.what != 1) {
                return;
            }
            genLoginAuthActivity.c();
            genLoginAuthActivity.k();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                a(message);
            } catch (Exception e10) {
                com.cmic.gen.sdk.d.c.f24472b.add(e10);
                e10.printStackTrace();
            }
        }
    }

    private static class b extends n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<GenLoginAuthActivity> f24611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<c> f24612b;

        protected b(GenLoginAuthActivity genLoginAuthActivity, c cVar) {
            this.f24611a = new WeakReference<>(genLoginAuthActivity);
            this.f24612b = new WeakReference<>(cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b() {
            c cVar = this.f24612b.get();
            if (this.f24611a.get() == null || cVar == null) {
                return false;
            }
            return cVar.a(false);
        }

        @Override // com.cmic.gen.sdk.e.n.a
        protected void a() {
            final GenLoginAuthActivity genLoginAuthActivity = this.f24611a.get();
            genLoginAuthActivity.f24585m.a("logintype", 1);
            h.a(true, false);
            genLoginAuthActivity.f24586n.b(genLoginAuthActivity.f24585m, new com.cmic.gen.sdk.auth.b() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.b.1
                @Override // com.cmic.gen.sdk.auth.b
                public void a(String str, String str2, com.cmic.gen.sdk.a aVar, JSONObject jSONObject) {
                    if (b.this.b()) {
                        long jB = aVar.b("loginTime", 0L);
                        String strB = aVar.b("phonescrip");
                        if (jB != 0) {
                            aVar.a("loginTime", System.currentTimeMillis() - jB);
                        }
                        if (!"103000".equals(str) || TextUtils.isEmpty(strB)) {
                            genLoginAuthActivity.f24595w = false;
                            com.cmic.gen.sdk.d.a.a("authClickFailed");
                        } else {
                            com.cmic.gen.sdk.d.a.a("authClickSuccess");
                            genLoginAuthActivity.f24595w = true;
                        }
                        genLoginAuthActivity.a(str, str2, aVar, jSONObject);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e10) {
                            e10.printStackTrace();
                        }
                        genLoginAuthActivity.f24593u.sendEmptyMessage(1);
                    }
                }
            });
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.cmic.gen.sdk.a f24616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f24617c;

        c(com.cmic.gen.sdk.a aVar) {
            this.f24616b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a(true)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("resultCode", "102507");
                    jSONObject.put("resultString", "请求超时");
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                GenLoginAuthActivity.this.f24595w = false;
                com.cmic.gen.sdk.d.a.a("authClickFailed");
                GenLoginAuthActivity.this.f24593u.sendEmptyMessage(1);
                long jB = this.f24616b.b("loginTime", 0L);
                if (jB != 0) {
                    this.f24616b.a("loginTime", System.currentTimeMillis() - jB);
                }
                GenLoginAuthActivity.this.a("102507", "请求超时", this.f24616b, jSONObject);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean a(boolean z10) {
            boolean z11;
            z11 = this.f24617c;
            this.f24617c = z10;
            return !z11;
        }
    }

    static /* synthetic */ int a(GenLoginAuthActivity genLoginAuthActivity, int i10) {
        int i11 = genLoginAuthActivity.f24592t + i10;
        genLoginAuthActivity.f24592t = i11;
        return i11;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id2 = view.getId();
            if (id2 != 17476) {
                if (id2 == 26214) {
                    a(false);
                    return;
                } else {
                    if (id2 != 34952) {
                        return;
                    }
                    if (this.f24588p.isChecked()) {
                        this.f24588p.setChecked(false);
                        return;
                    } else {
                        this.f24588p.setChecked(true);
                        return;
                    }
                }
            }
            if (!this.f24588p.isChecked()) {
                if (this.B.getGenAuthLoginListener() != null) {
                    this.B.getGenAuthLoginListener().onAuthLoginListener(this.f24575c, new AuthLoginCallBack() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.2
                        @Override // com.cmic.gen.sdk.view.AuthLoginCallBack
                        public void onAuthLoginCallBack(boolean z10) {
                            if (z10) {
                                GenLoginAuthActivity.this.f24588p.setChecked(true);
                                GenLoginAuthActivity.a(GenLoginAuthActivity.this, 1);
                                GenLoginAuthActivity.this.m();
                            }
                        }
                    });
                    return;
                }
                if (this.B.getPrivacyAnimation() != null) {
                    Context context = this.f24575c;
                    this.f24589q.startAnimation(AnimationUtils.loadAnimation(context, com.cmic.gen.sdk.view.c.c(context, this.B.getPrivacyAnimation())));
                }
                if (this.B.getGenCheckBoxListener() != null) {
                    this.B.getGenCheckBoxListener().onLoginClick(this.f24575c, null);
                    return;
                } else if (!TextUtils.isEmpty(this.B.getCheckTipText())) {
                    Toast.makeText(this.f24575c, this.B.getCheckTipText(), 1).show();
                    return;
                }
            }
            this.f24592t++;
            m();
        } catch (Exception e10) {
            com.cmic.gen.sdk.d.c.f24472b.add(e10);
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            try {
                finish();
            } catch (Exception e10) {
                if (this.f24585m == null) {
                    this.f24585m = new com.cmic.gen.sdk.a(0);
                }
                this.f24585m.a().f24446a.add(e10);
                com.cmic.gen.sdk.e.c.a(f24573a, e10.toString());
                e10.printStackTrace();
                a("200025", "发生未知错误", this.f24585m, null);
                return;
            }
        }
        this.f24575c = this;
        GenAuthThemeConfig authThemeConfig = GenAuthnHelper.getInstance((Context) this).getAuthThemeConfig();
        this.B = authThemeConfig;
        if (authThemeConfig != null) {
            if (authThemeConfig.getThemeId() != -1) {
                setTheme(this.B.getThemeId());
            }
            if (this.B.getAuthPageActIn() != null && this.B.getActivityOut() != null) {
                overridePendingTransition(com.cmic.gen.sdk.view.c.c(this, this.B.getAuthPageActIn()), com.cmic.gen.sdk.view.c.c(this, this.B.getActivityOut()));
            }
        }
        com.cmic.gen.sdk.d.a.a("authPageIn");
        this.f24591s = System.currentTimeMillis();
        this.f24586n = com.cmic.gen.sdk.auth.a.a(this);
        d();
        f();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            this.f24574b.removeCallbacksAndMessages(null);
            com.cmic.gen.sdk.d.a.a("timeOnAuthPage", (System.currentTimeMillis() - this.f24591s) + "");
            if (this.f24588p.isChecked()) {
                com.cmic.gen.sdk.d.a.a("authPrivacyState", "1");
            } else {
                com.cmic.gen.sdk.d.a.a("authPrivacyState", "0");
            }
            com.cmic.gen.sdk.d.a.a(this.f24575c.getApplicationContext(), this.f24585m);
            com.cmic.gen.sdk.d.a.a();
            this.F = null;
            com.cmic.gen.sdk.view.b.a().c();
            this.f24593u.removeCallbacksAndMessages(null);
        } catch (Exception e10) {
            com.cmic.gen.sdk.e.c.a(f24573a, "GenLoginAuthActivity clear failed");
            com.cmic.gen.sdk.d.c.f24472b.add(e10);
            e10.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 4 || keyEvent.isCanceled() || keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (this.B.getGenBackPressedListener() != null) {
            this.B.getGenBackPressedListener().onBackPressed();
        }
        if (this.B.getWindowWidth() != 0 && !this.B.isBackButton()) {
            return true;
        }
        a(false);
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            com.cmic.gen.sdk.a aVar = this.f24585m;
            if (aVar != null) {
                aVar.a("loginMethod", "loginAuth");
            }
            GenAuthnHelper.getInstance((Context) this).loginPageInCallBack("200087", null);
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f24585m.a().f24446a.add(e10);
            a("200025", "发生未知错误", this.f24585m, null);
        }
    }

    private void d() {
        String str;
        com.cmic.gen.sdk.a aVarD = com.cmic.gen.sdk.e.e.d(getIntent().getStringExtra("traceId"));
        this.f24585m = aVarD;
        if (aVarD == null) {
            this.f24585m = new com.cmic.gen.sdk.a(0);
        }
        this.f24594v = com.cmic.gen.sdk.e.e.c(this.f24585m.b("traceId", ""));
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.f24574b = new Handler(getMainLooper());
        this.f24593u = new a(this);
        this.f24587o = this.f24585m.b("securityphone");
        String str2 = f24573a;
        com.cmic.gen.sdk.e.c.b(str2, "mSecurityPhone value is " + this.f24587o);
        String strB = this.f24585m.b("operatortype", "");
        com.cmic.gen.sdk.e.c.b(str2, "operator value is " + strB);
        if (this.B.getAppLanguageType() == 1) {
            this.f24584l = com.cmic.gen.sdk.c.f24331b;
            this.A = com.cmic.gen.sdk.c.f24334e[1];
        } else if (this.B.getAppLanguageType() == 2) {
            this.f24584l = com.cmic.gen.sdk.c.f24332c;
            this.A = com.cmic.gen.sdk.c.f24334e[2];
        } else {
            this.f24584l = com.cmic.gen.sdk.c.f24330a;
            this.A = com.cmic.gen.sdk.c.f24334e[0];
        }
        if (strB.equals("1")) {
            this.f24597y = this.f24584l[0];
            str = "https://wap.cmpassport.com/resources/html/contract.html";
        } else if (strB.equals("3")) {
            this.f24597y = this.f24584l[1];
            str = "https://e.189.cn/sdk/agreement/detail.do?hidetop=true";
        } else {
            this.f24597y = this.f24584l[2];
            str = "https://opencloud.wostore.cn/authz/resource/html/disclaimer.html?fromsdk=true";
        }
        d dVar = new d(this.f24575c, R.style.Theme.Translucent.NoTitleBar, this.f24597y, str);
        this.f24577e = dVar;
        dVar.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                if (i10 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                    GenLoginAuthActivity.this.f24577e.b();
                }
                return true;
            }
        });
        this.f24582j = new ArrayList<>();
        this.f24583k = new ArrayList<>();
        if (!TextUtils.isEmpty(this.B.getClauseUrl())) {
            d dVar2 = new d(this.f24575c, R.style.Theme.Translucent.NoTitleBar, this.B.getClauseName(), this.B.getClauseUrl());
            this.f24578f = dVar2;
            dVar2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.4
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    if (i10 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        GenLoginAuthActivity.this.f24578f.b();
                    }
                    return true;
                }
            });
            this.f24582j.add(this.f24578f);
            this.f24583k.add(this.B.getClauseName());
        }
        if (!TextUtils.isEmpty(this.B.getClauseUrl2())) {
            d dVar3 = new d(this.f24575c, R.style.Theme.Translucent.NoTitleBar, this.B.getClauseName2(), this.B.getClauseUrl2());
            this.f24579g = dVar3;
            dVar3.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.5
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    if (i10 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        GenLoginAuthActivity.this.f24579g.b();
                    }
                    return true;
                }
            });
            this.f24582j.add(this.f24579g);
            this.f24583k.add(this.B.getClauseName2());
        }
        if (!TextUtils.isEmpty(this.B.getClauseUrl3())) {
            d dVar4 = new d(this.f24575c, R.style.Theme.Translucent.NoTitleBar, this.B.getClauseName3(), this.B.getClauseUrl3());
            this.f24580h = dVar4;
            dVar4.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.6
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    if (i10 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        GenLoginAuthActivity.this.f24580h.b();
                    }
                    return true;
                }
            });
            this.f24582j.add(this.f24580h);
            this.f24583k.add(this.B.getClauseName3());
        }
        if (!TextUtils.isEmpty(this.B.getClauseUrl4())) {
            d dVar5 = new d(this.f24575c, R.style.Theme.Translucent.NoTitleBar, this.B.getClauseName4(), this.B.getClauseUrl4());
            this.f24581i = dVar5;
            dVar5.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.7
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    if (i10 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        GenLoginAuthActivity.this.f24581i.b();
                    }
                    return true;
                }
            });
            this.f24582j.add(this.f24581i);
            this.f24583k.add(this.B.getClauseName4());
        }
        j();
        if (this.B.isPrivacyBookSymbol()) {
            for (int i10 = 0; i10 < this.f24583k.size(); i10++) {
                String str3 = String.format("《%s》", this.f24583k.get(i10));
                this.f24598z = this.f24598z.replaceFirst(this.f24583k.get(i10), str3);
                this.f24583k.set(i10, str3);
            }
        }
        com.cmic.gen.sdk.view.b.a().a(new com.cmic.gen.sdk.view.b.a() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.8
            @Override // com.cmic.gen.sdk.view.b.a
            public void a() {
                GenLoginAuthActivity.this.f24574b.removeCallbacksAndMessages(null);
                if (GenLoginAuthActivity.this.f24577e != null && GenLoginAuthActivity.this.f24577e.isShowing()) {
                    GenLoginAuthActivity.this.f24577e.dismiss();
                }
                if (GenLoginAuthActivity.this.f24578f != null && GenLoginAuthActivity.this.f24578f.isShowing()) {
                    GenLoginAuthActivity.this.f24578f.dismiss();
                }
                GenLoginAuthActivity.this.a(true);
            }
        });
    }

    private void e() {
        int privacyMarginLeft;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f24590r.getLayoutParams();
        if (this.B.getNumFieldOffsetY() > 0 || this.B.getNumFieldOffsetY_B() < 0) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.f24590r.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            String str = f24573a;
            com.cmic.gen.sdk.e.c.b(str, "mPhoneLayout.getMeasuredHeight()=" + this.f24590r.getMeasuredHeight());
            if (this.B.getNumFieldOffsetY() <= 0 || (this.C - this.f24590r.getMeasuredHeight()) - e.a(this.f24575c, this.B.getNumFieldOffsetY()) <= 0) {
                layoutParams.addRule(12, -1);
            } else {
                com.cmic.gen.sdk.e.c.b(str, "numberField_top");
                layoutParams.addRule(10, -1);
                layoutParams.setMargins(0, e.a(this.f24575c, this.B.getNumFieldOffsetY()), 0, 0);
            }
        } else if (this.B.getNumFieldOffsetY_B() <= 0 || (this.C - this.f24590r.getMeasuredHeight()) - e.a(this.f24575c, this.B.getNumFieldOffsetY_B()) <= 0) {
            layoutParams.addRule(10, -1);
        } else {
            com.cmic.gen.sdk.e.c.b(f24573a, "numberField_bottom");
            layoutParams.addRule(12, -1);
            layoutParams.setMargins(0, 0, 0, e.a(this.f24575c, this.B.getNumFieldOffsetY_B()));
        }
        this.f24590r.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f24576d.getLayoutParams();
        int iMax = Math.max(this.B.getLogBtnMarginLeft(), 0);
        int iMax2 = Math.max(this.B.getLogBtnMarginRight(), 0);
        if (this.B.getLogBtnOffsetY() > 0 || this.B.getLogBtnOffsetY_B() < 0) {
            if (this.B.getLogBtnOffsetY() <= 0 || this.C - e.a(this.f24575c, this.B.getLogBtnHeight() + this.B.getLogBtnOffsetY()) <= 0) {
                layoutParams2.addRule(12, -1);
                layoutParams2.setMargins(e.a(this.f24575c, iMax), 0, e.a(this.f24575c, iMax2), 0);
            } else {
                com.cmic.gen.sdk.e.c.b(f24573a, "logBtn_top");
                layoutParams2.addRule(10, -1);
                layoutParams2.setMargins(e.a(this.f24575c, iMax), e.a(this.f24575c, this.B.getLogBtnOffsetY()), e.a(this.f24575c, iMax2), 0);
            }
        } else if (this.B.getLogBtnOffsetY_B() <= 0 || this.C - e.a(this.f24575c, this.B.getLogBtnHeight() + this.B.getLogBtnOffsetY_B()) <= 0) {
            layoutParams2.addRule(10, -1);
            layoutParams2.setMargins(e.a(this.f24575c, iMax), 0, e.a(this.f24575c, iMax2), 0);
        } else {
            com.cmic.gen.sdk.e.c.b(f24573a, "logBtn_bottom");
            layoutParams2.addRule(12, -1);
            layoutParams2.setMargins(e.a(this.f24575c, iMax), 0, e.a(this.f24575c, iMax2), e.a(this.f24575c, this.B.getLogBtnOffsetY_B()));
        }
        this.f24576d.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f24589q.getLayoutParams();
        if (this.B.getPrivacyMarginLeft() >= 0) {
            privacyMarginLeft = this.B.getCheckedImgWidth() > 30 ? this.B.getPrivacyMarginLeft() : this.B.getPrivacyMarginLeft() - (30 - this.B.getCheckedImgWidth());
        } else {
            privacyMarginLeft = this.B.getCheckedImgWidth() > 30 ? 0 : -(30 - this.B.getCheckedImgWidth());
        }
        int iMax3 = Math.max(this.B.getPrivacyMarginRight(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f24589q.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
        if (this.B.getPrivacyOffsetY() > 0 || this.B.getPrivacyOffsetY_B() < 0) {
            if (this.B.getPrivacyOffsetY() <= 0 || (this.C - this.f24589q.getMeasuredHeight()) - e.a(this.f24575c, this.B.getPrivacyOffsetY()) <= 0) {
                com.cmic.gen.sdk.e.c.b(f24573a, "privacy_bottom=" + privacyMarginLeft);
                layoutParams3.addRule(12, -1);
                layoutParams3.setMargins(e.a(this.f24575c, (float) privacyMarginLeft), 0, e.a(this.f24575c, (float) iMax3), 0);
            } else {
                com.cmic.gen.sdk.e.c.b(f24573a, "privacy_top = " + this.f24589q.getMeasuredHeight());
                layoutParams3.addRule(10, -1);
                layoutParams3.setMargins(e.a(this.f24575c, (float) privacyMarginLeft), e.a(this.f24575c, (float) this.B.getPrivacyOffsetY()), e.a(this.f24575c, (float) iMax3), 0);
            }
        } else if (this.B.getPrivacyOffsetY_B() <= 0 || (this.C - this.f24589q.getMeasuredHeight()) - e.a(this.f24575c, this.B.getPrivacyOffsetY_B()) <= 0) {
            layoutParams3.addRule(10, -1);
            layoutParams3.setMargins(e.a(this.f24575c, privacyMarginLeft), 0, e.a(this.f24575c, iMax3), 0);
            com.cmic.gen.sdk.e.c.b(f24573a, "privacy_top");
        } else {
            com.cmic.gen.sdk.e.c.b(f24573a, "privacy_bottom=" + this.f24589q.getMeasuredHeight());
            layoutParams3.addRule(12, -1);
            layoutParams3.setMargins(e.a(this.f24575c, (float) privacyMarginLeft), 0, e.a(this.f24575c, (float) iMax3), e.a(this.f24575c, (float) this.B.getPrivacyOffsetY_B()));
        }
        this.f24589q.setLayoutParams(layoutParams3);
    }

    private void f() {
        int i10 = Build.VERSION.SDK_INT;
        getWindow().addFlags(67108864);
        getWindow().addFlags(134217728);
        if (this.B.getStatusBarColor() != 0) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().clearFlags(67108864);
            getWindow().setStatusBarColor(this.B.getStatusBarColor());
            getWindow().setNavigationBarColor(this.B.getStatusBarColor());
        }
        if (i10 >= 23) {
            if (this.B.isLightColor()) {
                getWindow().getDecorView().setSystemUiVisibility(8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        View contentView = this.B.getContentView();
        if (contentView != null) {
            ViewParent parent = contentView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(contentView);
            }
            relativeLayout.addView(contentView);
        } else if (this.B.getLayoutResID() != -1) {
            getLayoutInflater().inflate(this.B.getLayoutResID(), relativeLayout);
        }
        setContentView(relativeLayout);
        int requestedOrientation = getRequestedOrientation();
        this.C = e.b(this.f24575c);
        int iA = e.a(this.f24575c);
        this.D = iA;
        boolean z10 = true;
        if ((requestedOrientation == 1 && iA > this.C) || (requestedOrientation == 0 && iA < this.C)) {
            this.D = this.C;
            this.C = iA;
        }
        com.cmic.gen.sdk.e.c.b(f24573a, "orientation = " + requestedOrientation + "--screenWidth = " + this.D + "--screenHeight = " + this.C);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (this.B.getWindowWidth() != 0) {
            getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
            getWindowManager().getDefaultDisplay().getSize(new Point());
            attributes.width = e.a(this.f24575c, this.B.getWindowWidth());
            int iA2 = e.a(this.f24575c, this.B.getWindowHeight());
            attributes.height = iA2;
            this.D = attributes.width;
            this.C = iA2;
            attributes.x = e.a(this.f24575c, this.B.getWindowX());
            if (this.B.getWindowBottom() == 1) {
                getWindow().setGravity(80);
            } else {
                attributes.y = e.a(this.f24575c, this.B.getWindowY());
            }
            getWindow().setAttributes(attributes);
        }
        relativeLayout.setFitsSystemWindows(this.B.isFitsSystemWindows());
        relativeLayout.setClipToPadding(true);
        try {
            g();
            relativeLayout.addView(this.f24590r);
            relativeLayout.addView(h());
            relativeLayout.addView(i());
            e();
            this.f24576d.setOnClickListener(this);
            this.f24596x.setOnClickListener(this);
            this.f24588p.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.9
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                    if (GenLoginAuthActivity.this.B.getGenCheckedChangeListener() != null) {
                        GenLoginAuthActivity.this.B.getGenCheckedChangeListener().onCheckedChanged(z11);
                    }
                    boolean z12 = true;
                    if (z11) {
                        GenLoginAuthActivity.this.f24576d.setEnabled(true);
                        try {
                            CheckBox checkBox = GenLoginAuthActivity.this.f24588p;
                            GenLoginAuthActivity genLoginAuthActivity = GenLoginAuthActivity.this;
                            checkBox.setBackgroundResource(com.cmic.gen.sdk.view.c.b(genLoginAuthActivity, genLoginAuthActivity.B.getCheckedImgPath()));
                        } catch (Exception unused) {
                            GenLoginAuthActivity.this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(GenLoginAuthActivity.this, "umcsdk_check_image"));
                        }
                        GenLoginAuthActivity.this.f24588p.setContentDescription("复选框 已勾选 " + GenLoginAuthActivity.this.f24598z);
                        return;
                    }
                    RelativeLayout relativeLayout2 = GenLoginAuthActivity.this.f24576d;
                    if (GenLoginAuthActivity.this.B.getGenCheckBoxListener() == null && TextUtils.isEmpty(GenLoginAuthActivity.this.B.getCheckTipText())) {
                        z12 = false;
                    }
                    relativeLayout2.setEnabled(z12);
                    try {
                        CheckBox checkBox2 = GenLoginAuthActivity.this.f24588p;
                        GenLoginAuthActivity genLoginAuthActivity2 = GenLoginAuthActivity.this;
                        checkBox2.setBackgroundResource(com.cmic.gen.sdk.view.c.b(genLoginAuthActivity2, genLoginAuthActivity2.B.getUncheckedImgPath()));
                    } catch (Exception unused2) {
                        GenLoginAuthActivity.this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(GenLoginAuthActivity.this, "umcsdk_uncheck_image"));
                    }
                    GenLoginAuthActivity.this.f24588p.setContentDescription("复选框 请双击勾选 " + GenLoginAuthActivity.this.f24598z);
                }
            });
            k();
            try {
                if (this.B.isPrivacyState()) {
                    this.f24588p.setChecked(true);
                    this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this, this.B.getCheckedImgPath()));
                    this.f24576d.setEnabled(true);
                    this.f24588p.setContentDescription("复选框 已勾选 " + this.f24598z);
                    return;
                }
                this.f24588p.setChecked(false);
                RelativeLayout relativeLayout2 = this.f24576d;
                if (this.B.getGenCheckBoxListener() == null && TextUtils.isEmpty(this.B.getCheckTipText())) {
                    z10 = false;
                }
                relativeLayout2.setEnabled(z10);
                this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this, this.B.getUncheckedImgPath()));
                this.f24588p.setContentDescription("复选框 请双击勾选 " + this.f24598z);
            } catch (Exception unused) {
                this.f24588p.setChecked(false);
            }
        } catch (Exception e10) {
            com.cmic.gen.sdk.d.c.f24472b.add(e10);
            e10.printStackTrace();
            com.cmic.gen.sdk.e.c.a(f24573a, e10.toString());
            a("200040", "UI资源加载异常", this.f24585m, null);
        }
    }

    private void g() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f24590r = relativeLayout;
        relativeLayout.setId(13107);
        this.f24590r.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        TextView textView = new TextView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setGravity(15);
        int numberOffsetX = this.B.getNumberOffsetX();
        if (numberOffsetX == 0) {
            layoutParams.addRule(13);
        } else if (numberOffsetX > 0) {
            float f10 = numberOffsetX;
            if ((this.D - textView.getWidth()) - e.a(this.f24575c, f10) > 0) {
                layoutParams.setMargins(e.a(this.f24575c, f10), 0, 0, 0);
            } else {
                com.cmic.gen.sdk.e.c.b(f24573a, "RelativeLayout.ALIGN_PARENT_RIGHT");
                layoutParams.addRule(11);
            }
        }
        try {
            textView.setTextSize(2, this.B.getNumberSize());
            textView.setContentDescription(this.f24587o.replace("****", "星星星星").replaceAll("(.{1})", "$1 "));
        } catch (Exception unused) {
            textView.setTextSize(2, 18.0f);
        }
        textView.setText(this.f24587o);
        if (this.B.isNumberBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        textView.setId(30583);
        this.f24590r.addView(textView, layoutParams);
        try {
            textView.setTextColor(this.B.getNumberColor());
        } catch (Exception unused2) {
            textView.setTextColor(-13421773);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f24590r.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        com.cmic.gen.sdk.e.c.b(f24573a, "mPhoneLayout.getMeasuredHeight()=" + this.f24590r.getMeasuredHeight());
    }

    private RelativeLayout h() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f24576d = relativeLayout;
        relativeLayout.setId(PostingActivity.ACTIVITY_RESULT_POSTING);
        this.f24576d.setLayoutParams(new RelativeLayout.LayoutParams(e.a(this.f24575c, this.B.getLogBtnWidth()), e.a(this.f24575c, this.B.getLogBtnHeight())));
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.B.getLogBtnTextSize());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        textView.setLayoutParams(layoutParams);
        if (this.B.isLogBtnTextBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        this.f24576d.addView(textView);
        textView.setText(this.B.getLogBtnText());
        try {
            textView.setTextColor(this.B.getLogBtnTextColor());
        } catch (Exception unused) {
            textView.setTextColor(-1);
        }
        try {
            this.f24576d.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this.f24575c, this.B.getLogBtnBackgroundPath()));
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f24576d.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this.f24575c, "umcsdk_login_btn_bg"));
        }
        return this.f24576d;
    }

    private RelativeLayout i() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f24589q = relativeLayout;
        relativeLayout.setHorizontalGravity(1);
        this.f24589q.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int checkedImgWidth = this.B.getCheckedImgWidth();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(e.a(this.f24575c, Math.max(checkedImgWidth, 30)), e.a(this.f24575c, Math.max(this.B.getCheckedImgHeight(), 30)));
        if (this.B.getCheckBoxLocation() == 1) {
            layoutParams.addRule(15, -1);
        }
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        this.f24596x = relativeLayout2;
        relativeLayout2.setId(34952);
        this.f24596x.setLayoutParams(layoutParams);
        CheckBox checkBox = new CheckBox(this);
        this.f24588p = checkBox;
        checkBox.setChecked(false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(e.a(this.f24575c, this.B.getCheckedImgWidth()), e.a(this.f24575c, this.B.getCheckedImgHeight()));
        layoutParams2.setMargins(e.a(this.f24575c, checkedImgWidth > 30 ? 0.0f : 30 - checkedImgWidth), 0, 0, 0);
        layoutParams2.addRule(11, -1);
        if (this.B.getCheckBoxLocation() == 1) {
            layoutParams2.addRule(15, -1);
        }
        this.f24588p.setLayoutParams(layoutParams2);
        this.f24596x.addView(this.f24588p);
        this.f24589q.addView(this.f24596x);
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.B.getPrivacyTextSize());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(e.a(this.f24575c, 5.0f), 0, 0, e.a(this.f24575c, 5.0f));
        layoutParams3.addRule(1, 34952);
        textView.setLayoutParams(layoutParams3);
        this.f24589q.addView(textView);
        textView.setTextColor(this.B.getClauseBaseColor());
        textView.setText(e.a(this, this.f24598z, this.f24597y, this.f24577e, this.f24582j, this.f24583k));
        textView.setLineSpacing(8.0f, 1.0f);
        textView.setIncludeFontPadding(false);
        if (this.B.isPrivacyTextBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        if (this.B.isPrivacyTextGravityCenter()) {
            textView.setGravity(17);
        }
        textView.setHighlightColor(getResources().getColor(17170445));
        this.f24589q.setOnClickListener(new View.OnClickListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenLoginAuthActivity.this.f24588p.setChecked(!GenLoginAuthActivity.this.f24588p.isChecked());
            }
        });
        textView.setMovementMethod(new LinkMovementMethod() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.11
            @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
            public boolean onTouchEvent(TextView textView2, Spannable spannable, MotionEvent motionEvent) {
                boolean zOnTouchEvent = super.onTouchEvent(textView2, spannable, motionEvent);
                if (!zOnTouchEvent && motionEvent.getAction() == 1) {
                    ViewParent parent = textView2.getParent();
                    if (parent instanceof ViewGroup) {
                        return ((ViewGroup) parent).performClick();
                    }
                }
                return zOnTouchEvent;
            }
        });
        this.f24588p.setButtonDrawable(new ColorDrawable());
        try {
            this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this, this.B.getUncheckedImgPath()));
        } catch (Exception unused) {
            this.f24588p.setBackgroundResource(com.cmic.gen.sdk.view.c.b(this, "umcsdk_uncheck_image"));
        }
        return this.f24589q;
    }

    private String j() {
        this.f24598z = this.B.getPrivacy();
        if (this.B.isPrivacyBookSymbol()) {
            this.f24597y = String.format("《%s》", this.f24597y);
        }
        if (this.f24598z.contains(GenAuthThemeConfig.PLACEHOLDER)) {
            this.f24598z = this.f24598z.replace(GenAuthThemeConfig.PLACEHOLDER, this.f24597y);
        }
        return this.f24598z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.f24576d.setClickable(true);
        this.f24588p.setClickable(true);
    }

    private void l() {
        this.f24576d.setClickable(false);
        this.f24588p.setClickable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            if (this.f24592t >= 5) {
                Toast.makeText(this.f24575c, "网络不稳定,请返回重试其他登录方式", 1).show();
                this.f24576d.setClickable(true);
                return;
            }
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb2 = new StringBuilder();
            for (StackTraceElement stackTraceElement : stackTrace) {
                com.cmic.gen.sdk.e.c.a("stack", stackTraceElement.getClassName());
                String className = stackTraceElement.getClassName();
                if (!TextUtils.isEmpty(className) && className.contains("com.cmic.gen.sdk.activity") && !sb2.toString().contains(className)) {
                    sb2.append(className);
                    sb2.append(";");
                }
            }
            this.f24585m.a("loginTime", System.currentTimeMillis());
            String strB = this.f24585m.b("traceId", "");
            if (!TextUtils.isEmpty(strB) && com.cmic.gen.sdk.e.e.a(strB)) {
                String strC = q.c();
                this.f24585m.a("traceId", strC);
                com.cmic.gen.sdk.e.e.a(strC, this.f24594v);
            }
            b();
            l();
            c cVar = new c(this.f24585m);
            this.f24574b.postDelayed(cVar, GenAuthnHelper.getInstance((Context) this).getOverTime());
            n.a(new b(this, cVar));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c() {
        try {
            com.cmic.gen.sdk.e.c.a(f24573a, "loginClickComplete");
            if (this.B.getGenLoginClickListener() == null || !this.E) {
                Dialog dialog = this.F;
                if (dialog != null && dialog.isShowing()) {
                    this.F.dismiss();
                }
            } else {
                this.E = false;
                this.B.getGenLoginClickListener().onLoginClickComplete(this.f24575c, null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b() {
        com.cmic.gen.sdk.e.c.a(f24573a, "loginClickStart");
        try {
            this.E = true;
            if (this.B.getGenLoginClickListener() != null) {
                this.B.getGenLoginClickListener().onLoginClickStart(this.f24575c, null);
            } else {
                Dialog dialog = this.F;
                if (dialog != null) {
                    dialog.show();
                    return;
                }
                AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
                this.F = alertDialogCreate;
                alertDialogCreate.setCancelable(false);
                this.F.setCanceledOnTouchOutside(false);
                this.F.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.gen.sdk.view.GenLoginAuthActivity.3
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                        return i10 == 4;
                    }
                });
                RelativeLayout relativeLayout = new RelativeLayout(this.F.getContext());
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                ImageView imageView = new ImageView(this.F.getContext());
                imageView.setImageResource(com.cmic.gen.sdk.view.c.b(this.f24575c, "umcsdk_dialog_loading"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(80, 80);
                layoutParams.addRule(13, -1);
                relativeLayout.addView(imageView, layoutParams);
                if (this.F.getWindow() != null) {
                    this.F.getWindow().setDimAmount(0.0f);
                }
                this.F.setContentView(relativeLayout);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.cmic.gen.sdk.e.c.a(f24573a, "loginClickStart");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        try {
            com.cmic.gen.sdk.d.a.a("authPageOut");
            a("200020", "登录页面关闭", this.f24585m, null);
        } catch (Exception e10) {
            com.cmic.gen.sdk.d.c.f24472b.add(e10);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, com.cmic.gen.sdk.a aVar, JSONObject jSONObject) {
        try {
            if (this.f24574b == null) {
                this.f24574b = new Handler(getMainLooper());
                this.f24593u = new a(this);
            }
            this.f24574b.removeCallbacksAndMessages(null);
            if ("103000".equals(str)) {
                if (GenAuthnHelper.getInstance((Context) this) == null || com.cmic.gen.sdk.e.e.c(aVar.b("traceId")) == null) {
                    return;
                }
                aVar.a("keepListener", true);
                GenAuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
                return;
            }
            if ("200020".equals(str)) {
                if (GenAuthnHelper.getInstance((Context) this) != null) {
                    if (com.cmic.gen.sdk.e.e.c(aVar.b("traceId")) != null) {
                        GenAuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
                        a();
                        return;
                    } else {
                        a();
                        return;
                    }
                }
                return;
            }
            aVar.a("keepListener", true);
            GenAuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
        } catch (Exception e10) {
            com.cmic.gen.sdk.e.c.a(f24573a, "CallbackResult:未知错误");
            e10.printStackTrace();
        }
    }

    public void a() {
        this.f24574b.removeCallbacksAndMessages(null);
        d dVar = this.f24577e;
        if (dVar != null && dVar.isShowing()) {
            this.f24577e.dismiss();
        }
        d dVar2 = this.f24578f;
        if (dVar2 != null && dVar2.isShowing()) {
            this.f24578f.dismiss();
        }
        c();
        this.F = null;
        RelativeLayout relativeLayout = this.f24589q;
        if (relativeLayout != null) {
            relativeLayout.clearAnimation();
        }
        com.cmic.gen.sdk.view.b.a().f24627a = 0;
        finish();
        if (this.B.getAuthPageActOut() == null || this.B.getActivityIn() == null) {
            return;
        }
        overridePendingTransition(com.cmic.gen.sdk.view.c.c(this, this.B.getActivityIn()), com.cmic.gen.sdk.view.c.c(this, this.B.getAuthPageActOut()));
    }
}
