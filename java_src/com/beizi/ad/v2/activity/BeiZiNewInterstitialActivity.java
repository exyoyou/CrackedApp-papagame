package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.annotation.Nullable;
import com.beizi.ad.a.a.a;
import com.beizi.ad.a.a.b;
import com.beizi.ad.a.a.c;
import com.beizi.ad.a.a.d;
import com.beizi.ad.a.a.e;
import com.beizi.ad.a.a.f;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.i;
import com.beizi.ad.internal.e.s;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.q;
import com.beizi.ad.model.l;
import com.beizi.ad.model.m;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ae;
import com.beizi.fusion.tool.ai;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiNewInterstitialActivity extends Activity {
    private View A;
    private boolean D;
    private MediaPlayer E;
    private int G;
    private boolean H;
    private int I;
    private CountDownTimer J;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private AdSpacesBean.BuyerBean Q;
    private c R;
    private e S;
    private d T;
    private a U;
    private b V;
    private Timer X;
    private TimerTask Y;
    private boolean Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private ae f9774aa;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.beizi.ad.v2.c.b f9775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.beizi.ad.internal.d.a f9776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f9777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f9778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f9779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f9780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f9781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f9782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f9783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f9784k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f9785l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RelativeLayout f9786m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RelativeLayout f9787n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RelativeLayout f9788o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private RelativeLayout f9789p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RelativeLayout f9790q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RelativeLayout f9791r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private FrameLayout f9792s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CustomRoundImageView f9793t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private CustomRoundImageView f9794u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f9795v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ImageView f9796w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ImageView f9797x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private VideoView f9798y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f9799z;
    private boolean B = false;
    private boolean C = false;
    private boolean F = false;
    private boolean K = true;
    private boolean W = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f9773a = new Handler(Looper.getMainLooper()) { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10001) {
                return;
            }
            BeiZiNewInterstitialActivity.this.F();
        }
    };

    private void A() {
        try {
            if (this.f9798y != null && this.D) {
                if (this.f9789p.getVisibility() == 0) {
                    this.G = 0;
                } else {
                    this.G = this.f9798y.getCurrentPosition();
                }
                this.f9798y.pause();
            }
            e eVar = this.S;
            if (eVar != null) {
                eVar.b();
            }
            a aVar = this.U;
            if (aVar != null) {
                aVar.b();
            }
            CountDownTimer countDownTimer = this.J;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.J = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void B() {
        l lVarY;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9776c;
            if (aVar == null || this.f9777d == null || (lVarY = aVar.Y()) == null) {
                return;
            }
            this.f9774aa = new ae();
            this.f9774aa.a(this.f9777d, q.f(this), q.g(this), lVarY, new ae.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.14
                @Override // com.beizi.fusion.tool.ae.a
                public void a() {
                }

                @Override // com.beizi.fusion.tool.ae.a
                public void b() {
                    BeiZiNewInterstitialActivity.this.F();
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void C() {
        try {
            ae aeVar = this.f9774aa;
            if (aeVar != null) {
                aeVar.b();
            }
            this.f9774aa = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void D() {
        m mVarAa;
        int iA;
        com.beizi.ad.internal.d.a aVar = this.f9776c;
        if (aVar == null || this.f9773a == null) {
            return;
        }
        try {
            if (this.F || (mVarAa = aVar.aa()) == null || (iA = mVarAa.a()) <= 0) {
                return;
            }
            this.f9773a.sendEmptyMessageDelayed(10001, iA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean E() {
        m mVarAa;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9776c;
            return (aVar == null || (mVarAa = aVar.aa()) == null || mVarAa.b() != 1) ? false : true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        int width;
        int height;
        try {
            if (this.F) {
                return;
            }
            int[] iArr = new int[2];
            if (this.B) {
                width = this.f9791r.getWidth();
                height = this.f9791r.getHeight();
                this.f9791r.getLocationOnScreen(iArr);
            } else {
                width = this.f9790q.getWidth();
                height = this.f9790q.getHeight();
                this.f9790q.getLocationOnScreen(iArr);
            }
            int[] iArrA = ai.a(width / 2, height / 2);
            a(String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void y() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule;
        try {
            if (this.Q == null || com.beizi.fusion.c.b.a().p() || (eulerAngleRule = this.Q.getEulerAngleRule()) == null) {
                return;
            }
            a aVar = new a(this, eulerAngleRule, this.Q.getSpaceId(), this.P);
            this.U = aVar;
            if (this.B) {
                aVar.a(this.f9791r);
            } else {
                aVar.a(this.f9790q);
            }
            this.U.a(new a.InterfaceC0215a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.10
                @Override // com.beizi.ad.a.a.a.InterfaceC0215a
                public void a() {
                    n.a("BeiZisAd", "handleEulerAngleViewContent click");
                    BeiZiNewInterstitialActivity.this.a("", "", "", "", "", "", "", "", 2);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void z() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Q;
            if (buyerBean == null || (fullScreenClick = buyerBean.getFullScreenClick()) == null) {
                return;
            }
            b bVar = new b(this, fullScreenClick, this.P);
            this.V = bVar;
            bVar.a(this.f9786m, new b.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.11
                @Override // com.beizi.ad.a.a.b.a
                public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    n.a("BeiZisAd", "handleFullScreenClickContent click");
                    BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_beizi_interstitial);
            b();
            c();
            d();
            i();
            k();
            h();
            m();
            f();
            l();
            p();
            s();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            c cVar = this.R;
            if (cVar != null) {
                cVar.b();
            }
            this.R = null;
            e eVar = this.S;
            if (eVar != null) {
                eVar.d();
            }
            this.S = null;
            a aVar = this.U;
            if (aVar != null) {
                aVar.d();
            }
            this.U = null;
            d dVar = this.T;
            if (dVar != null) {
                dVar.a();
            }
            this.T = null;
            b bVar = this.V;
            if (bVar != null) {
                bVar.b();
            }
            this.V = null;
            Timer timer = this.X;
            if (timer != null) {
                timer.cancel();
            }
            this.X = null;
            TimerTask timerTask = this.Y;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.Y = null;
            Handler handler = this.f9773a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f9773a = null;
            C();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4 || i10 == 3) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        A();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        t();
    }

    private void c() {
        try {
            com.beizi.ad.v2.c.b bVar = com.beizi.ad.v2.c.b.H;
            this.f9775b = bVar;
            this.Q = bVar.a();
            this.Z = this.f9775b.j();
            AdSpacesBean.BuyerBean buyerBean = this.Q;
            if (buyerBean == null) {
                return;
            }
            if (buyerBean.getTemplate() == 1) {
                this.B = true;
            } else {
                this.B = false;
            }
            com.beizi.ad.internal.d.a aVarM = this.f9775b.m();
            this.f9776c = aVarM;
            if (aVarM == null) {
                return;
            }
            this.P = aVarM.c();
            boolean z10 = this.f9776c.z();
            this.D = z10;
            if (z10) {
                this.O = this.f9776c.y();
            } else {
                this.O = this.f9776c.x();
            }
            this.L = this.f9776c.A();
            this.H = this.f9776c.f();
            this.I = this.f9776c.h();
            this.M = this.f9776c.v();
            this.N = this.f9776c.w();
            this.C = this.f9776c.e() ? false : true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams;
        double d10;
        double d11;
        RelativeLayout.LayoutParams layoutParams2;
        LinearLayout.LayoutParams layoutParams3;
        try {
            int iA = t.a(this, 10.0f);
            com.beizi.ad.internal.e.m.a(this.f9778e, "#FFFFFF", 0, (String) null, iA);
            int iA2 = t.a(this, 49.0f);
            int iA3 = t.a(this, 19.0f);
            int iA4 = t.a(this, 8.0f);
            int iA5 = t.a(this, 52.0f);
            TextView textView = this.f9781h;
            if (textView != null) {
                com.beizi.ad.internal.e.m.a(textView, "#66303030", 0, (String) null, iA);
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f9781h.getLayoutParams();
                layoutParams4.width = iA2;
                layoutParams4.height = iA3;
                layoutParams4.setMargins(iA4, iA4, 0, 0);
                layoutParams4.addRule(17);
                this.f9781h.setLayoutParams(layoutParams4);
            }
            ImageView imageView = this.f9795v;
            if (imageView != null && this.D) {
                RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams5.width = iA3;
                layoutParams5.height = iA3;
                layoutParams5.setMargins(0, iA4, iA, 0);
                this.f9795v.setLayoutParams(layoutParams5);
            }
            LinearLayout linearLayout = this.f9779f;
            if (linearLayout != null) {
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams6.width = iA5;
                layoutParams6.height = iA3;
                layoutParams6.setMargins(0, iA4, iA4, 0);
                this.f9779f.setLayoutParams(layoutParams6);
                com.beizi.ad.internal.e.m.a(this.f9779f, "#66303030", 0, (String) null, iA);
            }
            TextView textView2 = this.f9782i;
            if (textView2 != null) {
                LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
                layoutParams7.width = iA3;
                layoutParams7.height = iA3;
                this.f9782i.setLayoutParams(layoutParams7);
                com.beizi.ad.internal.e.m.a(this.f9782i, "#66303030", 0, (String) null, iA * 2);
            }
            ImageView imageView2 = this.f9796w;
            if (imageView2 != null) {
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
                layoutParams8.width = iA3;
                layoutParams8.height = iA3;
                layoutParams8.setMargins(0, iA4, iA4, 0);
                this.f9796w.setLayoutParams(layoutParams8);
            }
            int iF = q.f(this);
            int iG = q.g(this);
            double d12 = iF;
            int i10 = (int) (0.65d * d12);
            int iA6 = t.a(this, 5.0f);
            if (this.B) {
                i10 = (int) (d12 * 0.85d);
                iA6 = t.a(this, 10.0f);
                this.f9791r.setVisibility(0);
                RelativeLayout relativeLayout = this.f9791r;
                if (relativeLayout != null && (layoutParams3 = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams()) != null) {
                    layoutParams3.width = i10 - (iA6 * 3);
                    layoutParams3.height = -2;
                    if (!TextUtils.isEmpty(this.L) && TextUtils.isEmpty(this.M) && TextUtils.isEmpty(this.N)) {
                        layoutParams3.setMargins(0, iA6, 0, t.a(this, 5.0f));
                    } else {
                        layoutParams3.setMargins(0, (int) (((double) iA6) * 1.5d), 0, t.a(this, 5.0f));
                    }
                    this.f9791r.setLayoutParams(layoutParams3);
                }
            } else {
                this.f9790q.setVisibility(0);
                RelativeLayout relativeLayout2 = this.f9790q;
                if (relativeLayout2 != null && (layoutParams = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams()) != null) {
                    layoutParams.width = i10;
                    layoutParams.height = -2;
                    layoutParams.setMargins(0, iA6 * 3, 0, 0);
                    this.f9790q.setLayoutParams(layoutParams);
                }
            }
            LinearLayout linearLayout2 = this.f9778e;
            if (linearLayout2 != null && (layoutParams2 = (RelativeLayout.LayoutParams) linearLayout2.getLayoutParams()) != null) {
                layoutParams2.width = i10;
                layoutParams2.height = -2;
                this.f9778e.setLayoutParams(layoutParams2);
                this.f9778e.setPadding(iA6, iA6, iA6, iA6);
            }
            RelativeLayout relativeLayout3 = this.f9788o;
            if (relativeLayout3 != null) {
                int i11 = i10 - (iA6 * 2);
                if (this.B) {
                    d10 = i11;
                    d11 = 0.56d;
                } else {
                    d10 = i11;
                    d11 = 1.78d;
                }
                int i12 = (int) (d10 * d11);
                double d13 = iG;
                if (i12 > 0.7d * d13) {
                    i12 = (int) (d13 * 0.5d);
                }
                RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) relativeLayout3.getLayoutParams();
                if (layoutParams9 != null) {
                    layoutParams9.width = i11;
                    layoutParams9.height = i12;
                    this.f9788o.setLayoutParams(layoutParams9);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean e() {
        if (this.D) {
            return true;
        }
        return this.H && this.I > 0;
    }

    private void f() {
        try {
            if (!e()) {
                this.f9779f.setVisibility(8);
                this.f9796w.setVisibility(0);
            } else {
                this.f9779f.setVisibility(0);
                this.f9796w.setVisibility(8);
                this.f9779f.measure(0, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            this.J = null;
            int i10 = this.I;
            TextView textView = this.f9782i;
            if (textView != null) {
                try {
                    String string = textView.getText().toString();
                    if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                        i10 = Integer.parseInt(string);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f9782i.setText(String.valueOf(i10));
            }
            CountDownTimer countDownTimer = new CountDownTimer(i10 * 1000, 1000L) { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.12
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    try {
                        n.a("BeiZisAd", "onFinish");
                        if (!BeiZiNewInterstitialActivity.this.H || BeiZiNewInterstitialActivity.this.I <= 0) {
                            return;
                        }
                        BeiZiNewInterstitialActivity.this.q();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j10) {
                    try {
                        int i11 = (int) ((j10 / 1000) + 1);
                        if (BeiZiNewInterstitialActivity.this.f9782i != null) {
                            BeiZiNewInterstitialActivity.this.f9782i.setText(String.valueOf(i11));
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            };
            this.J = countDownTimer;
            countDownTimer.start();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void h() {
        try {
            if (!this.D && this.f9793t != null && !TextUtils.isEmpty(this.O)) {
                this.f9793t.setVisibility(0);
                h.a(this).a(this.O, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.15
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        try {
                            if (BeiZiNewInterstitialActivity.this.f9793t != null) {
                                if (BeiZiNewInterstitialActivity.this.f9788o != null) {
                                    BeiZiNewInterstitialActivity.this.f9788o.measure(0, 0);
                                    ViewGroup.LayoutParams layoutParams = BeiZiNewInterstitialActivity.this.f9793t.getLayoutParams();
                                    if (layoutParams != null) {
                                        layoutParams.width = BeiZiNewInterstitialActivity.this.f9788o.getMeasuredWidth();
                                        layoutParams.height = BeiZiNewInterstitialActivity.this.f9788o.getMeasuredHeight();
                                        BeiZiNewInterstitialActivity.this.f9793t.setLayoutParams(layoutParams);
                                    }
                                }
                                BeiZiNewInterstitialActivity.this.f9793t.setRectRadius(t.a(BeiZiNewInterstitialActivity.this, 6.0f));
                                BeiZiNewInterstitialActivity.this.f9793t.setBackground(new BitmapDrawable(i.a(BeiZiNewInterstitialActivity.this, bitmap, 20.0f)));
                                BeiZiNewInterstitialActivity.this.f9793t.setImageBitmap(bitmap);
                                BeiZiNewInterstitialActivity.this.o();
                                BeiZiNewInterstitialActivity.this.u();
                                BeiZiNewInterstitialActivity.this.r();
                                if (!BeiZiNewInterstitialActivity.this.H || BeiZiNewInterstitialActivity.this.I <= 0) {
                                    return;
                                }
                                BeiZiNewInterstitialActivity.this.g();
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                        BeiZiNewInterstitialActivity.this.finish();
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void i() {
        AdSpacesBean.ComplainBean complain;
        TextView textView;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Q;
            if (buyerBean == null || (complain = buyerBean.getComplain()) == null || complain.getOpen() != 1 || (textView = this.f9781h) == null) {
                return;
            }
            textView.setVisibility(0);
            this.f9781h.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.16
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BeiZiNewInterstitialActivity.this.j();
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            A();
            com.beizi.ad.internal.view.a.a.C0222a c0222a = new com.beizi.ad.internal.view.a.a.C0222a(this);
            c0222a.a(new com.beizi.ad.internal.view.a.a.b() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.17
                @Override // com.beizi.ad.internal.view.a.a.b
                public void a(String str) {
                    try {
                        if (BeiZiNewInterstitialActivity.this.f9775b == null) {
                            return;
                        }
                        BeiZiNewInterstitialActivity.this.f9775b.g(str);
                        BeiZiNewInterstitialActivity.this.f9775b.D();
                        BeiZiNewInterstitialActivity.this.finish();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }

                @Override // com.beizi.ad.internal.view.a.a.b
                public void a() {
                    BeiZiNewInterstitialActivity.this.t();
                }
            });
            c0222a.a().show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void k() {
        try {
            if (this.f9776c == null) {
                return;
            }
            if (TextUtils.isEmpty(this.L)) {
                View view = this.f9799z;
                if (view != null) {
                    view.setVisibility(8);
                }
                CustomRoundImageView customRoundImageView = this.f9794u;
                if (customRoundImageView != null) {
                    customRoundImageView.setVisibility(8);
                    return;
                }
                return;
            }
            int iA = t.a(this, 20.0f);
            CustomRoundImageView customRoundImageView2 = this.f9794u;
            if (customRoundImageView2 != null) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) customRoundImageView2.getLayoutParams();
                int i10 = iA * 2;
                layoutParams.width = i10;
                layoutParams.height = i10;
                this.f9794u.setLayoutParams(layoutParams);
                this.f9794u.setVisibility(0);
            }
            View view2 = this.f9799z;
            if (view2 != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view2.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = iA;
                this.f9799z.setLayoutParams(layoutParams2);
                this.f9799z.setVisibility(0);
            }
            h.a(this).a(this.L, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.18
                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    try {
                        if (BeiZiNewInterstitialActivity.this.f9794u != null) {
                            BeiZiNewInterstitialActivity.this.f9794u.setImageBitmap(bitmap);
                        }
                        BeiZiNewInterstitialActivity.this.f9794u.setRectRadius(t.a(BeiZiNewInterstitialActivity.this, 6.0f));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(this.M) && TextUtils.isEmpty(this.N)) {
                this.f9780g.setVisibility(8);
            } else {
                this.f9780g.setVisibility(0);
            }
            if (this.f9784k != null) {
                if (TextUtils.isEmpty(this.M)) {
                    this.f9784k.setVisibility(8);
                } else {
                    this.f9784k.setVisibility(0);
                    this.f9784k.setText(this.M);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f9784k.getLayoutParams();
                    if (layoutParams != null) {
                        if (TextUtils.isEmpty(this.N)) {
                            layoutParams.setMargins(0, t.a(this, 13.0f), 0, 0);
                        } else {
                            layoutParams.setMargins(0, t.a(this, 10.0f), 0, 0);
                        }
                        this.f9784k.setLayoutParams(layoutParams);
                    }
                    this.f9784k.setPadding(0, 0, 0, 0);
                }
            }
            if (this.f9785l != null) {
                if (TextUtils.isEmpty(this.N)) {
                    this.f9785l.setVisibility(8);
                } else {
                    this.f9785l.setVisibility(0);
                    this.f9785l.setText(this.N);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f9785l.getLayoutParams();
                    if (TextUtils.isEmpty(this.M)) {
                        layoutParams2.setMargins(0, t.a(this, 13.0f), 0, 0);
                    } else {
                        layoutParams2.setMargins(0, t.a(this, 8.0f), 0, 0);
                    }
                    if (layoutParams2 != null) {
                        this.f9785l.setLayoutParams(layoutParams2);
                    }
                    this.f9785l.setPadding(0, 0, 0, 0);
                }
            }
            if (this.B) {
                View view = this.A;
                if (view != null) {
                    view.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.A != null) {
                if (TextUtils.isEmpty(this.M) && TextUtils.isEmpty(this.N) && TextUtils.isEmpty(this.L)) {
                    this.A.setVisibility(8);
                    return;
                }
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.A.getLayoutParams();
                layoutParams3.width = -2;
                if (TextUtils.isEmpty(this.M) && TextUtils.isEmpty(this.N) && !TextUtils.isEmpty(this.L)) {
                    layoutParams3.height = t.a(this, 5.0f);
                } else {
                    layoutParams3.height = t.a(this, 10.0f);
                }
                this.A.setLayoutParams(layoutParams3);
                this.A.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void m() {
        try {
            if (this.D && this.f9798y != null && !TextUtils.isEmpty(this.O)) {
                RelativeLayout relativeLayout = this.f9788o;
                if (relativeLayout != null) {
                    com.beizi.ad.internal.e.m.a(relativeLayout, "#000000", 0, (String) null, t.a(this, 6.0f));
                }
                ImageView imageView = this.f9795v;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    if (this.C) {
                        this.f9795v.setImageResource(R.drawable.beizi_voice_on);
                    } else {
                        this.f9795v.setImageResource(R.drawable.beizi_voice_off);
                    }
                }
                RelativeLayout relativeLayout2 = this.f9789p;
                if (relativeLayout2 != null) {
                    com.beizi.ad.internal.e.m.a(relativeLayout2, "#66303030", 0, (String) null, t.a(this, 6.0f));
                    this.f9789p.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.19
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                if (BeiZiNewInterstitialActivity.this.f9789p != null) {
                                    BeiZiNewInterstitialActivity.this.f9789p.setVisibility(8);
                                }
                                if (BeiZiNewInterstitialActivity.this.f9798y != null) {
                                    if (Build.VERSION.SDK_INT >= 26) {
                                        BeiZiNewInterstitialActivity.this.E.seekTo(0L, 3);
                                    }
                                    BeiZiNewInterstitialActivity.this.f9798y.start();
                                }
                                int duration = BeiZiNewInterstitialActivity.this.E.getDuration() / 1000;
                                if (BeiZiNewInterstitialActivity.this.f9782i != null) {
                                    BeiZiNewInterstitialActivity.this.f9782i.setText(String.valueOf(duration));
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                }
                if (this.f9797x != null) {
                    int iA = t.a(this, 54.0f);
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f9797x.getLayoutParams();
                    layoutParams.width = iA;
                    layoutParams.height = iA;
                    this.f9797x.setLayoutParams(layoutParams);
                }
                this.f9798y.setVisibility(0);
                s.a().a(this, this.O, new s.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.20
                    @Override // com.beizi.ad.internal.e.s.a
                    public void a(String str) {
                        try {
                            n.a("BeiZisAd", "onVideoLoaded: 加载成功");
                            BeiZiNewInterstitialActivity.this.f9798y.setVideoPath(str);
                            BeiZiNewInterstitialActivity.this.f9798y.requestFocus();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }

                    @Override // com.beizi.ad.internal.e.s.a
                    public void a() {
                        BeiZiNewInterstitialActivity.this.finish();
                    }
                });
                this.f9798y.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.21
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        n.a("BeiZisAd", "onCompletion: 播放完成");
                        try {
                            BeiZiNewInterstitialActivity.this.G = 0;
                            if (BeiZiNewInterstitialActivity.this.f9789p != null) {
                                BeiZiNewInterstitialActivity.this.f9789p.setVisibility(0);
                            }
                            if (!BeiZiNewInterstitialActivity.this.H || BeiZiNewInterstitialActivity.this.I <= 0) {
                                if (BeiZiNewInterstitialActivity.this.H) {
                                    BeiZiNewInterstitialActivity.this.q();
                                } else if (BeiZiNewInterstitialActivity.this.f9782i != null) {
                                    BeiZiNewInterstitialActivity.this.f9782i.setText("0");
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.f9798y.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.2
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        try {
                            BeiZiNewInterstitialActivity.this.E = mediaPlayer;
                            n.a("BeiZisAd", "onPrepared: 准备完成");
                            if (BeiZiNewInterstitialActivity.this.C) {
                                BeiZiNewInterstitialActivity.this.E.setVolume(0.0f, 1.0f);
                            } else {
                                BeiZiNewInterstitialActivity.this.E.setVolume(0.0f, 0.0f);
                            }
                            if (BeiZiNewInterstitialActivity.this.f9798y != null) {
                                if (BeiZiNewInterstitialActivity.this.G > 0) {
                                    if (Build.VERSION.SDK_INT >= 26) {
                                        BeiZiNewInterstitialActivity.this.E.seekTo(BeiZiNewInterstitialActivity.this.G, 3);
                                    }
                                } else if (Build.VERSION.SDK_INT >= 26) {
                                    BeiZiNewInterstitialActivity.this.E.seekTo(2L, 3);
                                }
                                if (BeiZiNewInterstitialActivity.this.f9789p != null && BeiZiNewInterstitialActivity.this.f9789p.getVisibility() == 8) {
                                    BeiZiNewInterstitialActivity.this.f9798y.start();
                                }
                            }
                            if (BeiZiNewInterstitialActivity.this.W) {
                                if (!BeiZiNewInterstitialActivity.this.H || BeiZiNewInterstitialActivity.this.I <= 0) {
                                    int duration = mediaPlayer.getDuration() / 1000;
                                    if (BeiZiNewInterstitialActivity.this.f9782i != null) {
                                        BeiZiNewInterstitialActivity.this.f9782i.setText(String.valueOf(duration));
                                    }
                                }
                                BeiZiNewInterstitialActivity.this.n();
                                BeiZiNewInterstitialActivity.this.o();
                                BeiZiNewInterstitialActivity.this.u();
                                BeiZiNewInterstitialActivity.this.r();
                            }
                            BeiZiNewInterstitialActivity.this.W = false;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.f9798y.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.3
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                        return false;
                    }
                });
                if (!this.H || this.I <= 0) {
                    a();
                } else {
                    g();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            if (this.f9798y == null) {
                return;
            }
            int width = this.f9788o.getWidth();
            int height = this.f9788o.getHeight();
            this.f9798y.measure(0, 0);
            int measuredWidth = this.f9798y.getMeasuredWidth();
            int measuredHeight = this.f9798y.getMeasuredHeight();
            float f10 = (float) ((((double) measuredWidth) * 1.0d) / ((double) measuredHeight));
            ViewGroup.LayoutParams layoutParams = this.f9798y.getLayoutParams();
            int i10 = -2;
            int i11 = -1;
            if (measuredWidth >= width || (measuredHeight <= height && width - measuredWidth <= height - measuredHeight)) {
                i10 = -1;
                i11 = -2;
            }
            if (layoutParams != null) {
                layoutParams.width = i10;
                layoutParams.height = i11;
                this.f9798y.setLayoutParams(layoutParams);
            }
            float f11 = (this.B ? 1.78f : 0.56f) - f10;
            if (Math.abs(f11) < 0.0f || Math.abs(f11) > 0.15d) {
                return;
            }
            this.f9798y.setOutlineProvider(new f(t.a(this, 6.0f)));
            this.f9798y.setClipToOutline(true);
            RelativeLayout relativeLayout = this.f9788o;
            if (relativeLayout != null) {
                com.beizi.ad.internal.e.m.a(relativeLayout, "#FFFFFF", 0, (String) null, t.a(this, 6.0f));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(this, this.f9776c.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(this, this.f9776c.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            if (this.f9792s != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                int iA = t.a(this, 8.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                this.f9792s.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void p() {
        RelativeLayout relativeLayout = this.f9787n;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        BeiZiNewInterstitialActivity.this.q();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }
        ImageView imageView = this.f9795v;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (BeiZiNewInterstitialActivity.this.C) {
                            BeiZiNewInterstitialActivity.this.f9795v.setImageResource(R.drawable.beizi_voice_off);
                            if (BeiZiNewInterstitialActivity.this.E != null) {
                                BeiZiNewInterstitialActivity.this.E.setVolume(0.0f, 0.0f);
                            }
                        } else {
                            BeiZiNewInterstitialActivity.this.f9795v.setImageResource(R.drawable.beizi_voice_on);
                            if (BeiZiNewInterstitialActivity.this.E != null) {
                                BeiZiNewInterstitialActivity.this.E.setVolume(0.0f, 1.0f);
                            }
                        }
                        BeiZiNewInterstitialActivity beiZiNewInterstitialActivity = BeiZiNewInterstitialActivity.this;
                        beiZiNewInterstitialActivity.C = !beiZiNewInterstitialActivity.C;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        CountDownTimer countDownTimer = this.J;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.J = null;
        }
        com.beizi.ad.v2.c.b bVar = this.f9775b;
        if (bVar != null) {
            bVar.D();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        com.beizi.ad.internal.d.a aVarM;
        try {
            com.beizi.ad.v2.c.b bVar = this.f9775b;
            if (bVar == null || (aVarM = bVar.m()) == null) {
                return;
            }
            aVarM.a(this.f9778e, this.f9775b.e());
            this.f9775b.C();
            B();
            D();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void s() {
        try {
            com.beizi.ad.internal.d.a aVar = this.f9776c;
            if (aVar == null) {
                return;
            }
            int iU = aVar.u();
            if (iU == 2 || iU == 5) {
                this.f9783j.setVisibility(0);
                final String strL = this.f9776c.l();
                String strP = this.f9776c.p();
                String strO = this.f9776c.o();
                String strR = this.f9776c.r();
                final String strQ = !TextUtils.isEmpty(strR) ? strR : this.f9776c.q();
                final String strS = this.f9776c.s();
                final String strT = this.f9776c.t();
                this.f9783j.setText(Html.fromHtml("应用名称：" + strL + " | 开发者：" + strP + " | 应用版本：" + strO + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
                this.f9783j.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        try {
                            Intent intent = new Intent(BeiZiNewInterstitialActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                            intent.putExtra("title_content_key", strL);
                            intent.putExtra("privacy_content_key", strS);
                            intent.putExtra("permission_content_key", strQ);
                            intent.putExtra("intro_content_key", strT);
                            intent.setFlags(C.ENCODING_PCM_MU_LAW);
                            BeiZiNewInterstitialActivity.this.startActivity(intent);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        try {
            VideoView videoView = this.f9798y;
            if (videoView != null && this.D) {
                videoView.resume();
            }
            e eVar = this.S;
            if (eVar != null) {
                eVar.a();
            }
            a aVar = this.U;
            if (aVar != null) {
                aVar.a();
            }
            if (!this.K && this.H && this.I > 0) {
                g();
            }
            this.K = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            if (this.Q == null) {
                return;
            }
            z();
            v();
            w();
            x();
            y();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void v() {
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Q;
            if (buyerBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = buyerBean.getRegionalClickView();
            if (regionalClickView == null) {
                regionalClickView = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                regionalClickView.setBackgroundAlpha(1.0d);
                regionalClickView.setBackgroundColor("#3976FF");
                regionalClickView.setTitle("点击跳转网页或第三方应用");
                regionalClickView.setTitleColor("#FFFFFF");
            }
            c cVar = new c(this, regionalClickView, this.P, this.Z);
            this.R = cVar;
            if (this.B) {
                cVar.a(this.f9791r);
            } else {
                cVar.a(this.f9790q);
            }
            this.R.a(new c.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.7
                @Override // com.beizi.ad.a.a.c.a
                public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    n.a("BeiZisAd", "handleRegionalClickViewContent click");
                    BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void w() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.Q == null || com.beizi.fusion.c.b.a().p() || (shakeView = this.Q.getShakeView()) == null) {
                return;
            }
            e eVar = new e(this, shakeView, this.Q.getSpaceId(), this.P);
            this.S = eVar;
            if (this.B) {
                eVar.a(this.f9791r);
            } else {
                eVar.a(this.f9790q);
            }
            this.S.a(new e.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.8
                @Override // com.beizi.ad.a.a.e.a
                public void a() {
                    n.a("BeiZisAd", "handleShakeViewContent click");
                    BeiZiNewInterstitialActivity.this.a("", "", "", "", "", "", "", "", 2);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void x() {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Q;
            if (buyerBean == null || (scrollClick = buyerBean.getScrollClick()) == null) {
                return;
            }
            d dVar = new d(this, scrollClick, this.Q.getSpaceId(), this.P);
            this.T = dVar;
            dVar.a(E());
            if (this.B) {
                this.T.a(this.f9791r);
            } else {
                this.T.a(this.f9790q);
            }
            this.T.a(this.f9786m, new d.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.9
                @Override // com.beizi.ad.a.a.d.a
                public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    n.a("BeiZisAd", "handleScrollViewContent scroll");
                    BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
                }

                @Override // com.beizi.ad.a.a.d.a
                public void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    if (BeiZiNewInterstitialActivity.this.V == null || !BeiZiNewInterstitialActivity.this.V.a()) {
                        return;
                    }
                    n.a("BeiZisAd", "handleScrollViewContent scroll click");
                    BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        this.f9777d = (RelativeLayout) findViewById(R.id.beizi_interstitial_root_container_rl);
        this.f9786m = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_content_rl);
        this.f9778e = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_container_ll);
        this.f9781h = (TextView) findViewById(R.id.beizi_interstitial_ad_complain_tv);
        this.f9787n = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_close_container_rl);
        this.f9779f = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_close_text_container_ll);
        this.f9796w = (ImageView) findViewById(R.id.beizi_interstitial_ad_close_iv);
        this.f9782i = (TextView) findViewById(R.id.beizi_interstitial_ad_countdown_tv);
        this.f9788o = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_material_container_rl);
        this.f9789p = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_video_replay_container_rl);
        this.f9797x = (ImageView) findViewById(R.id.beizi_interstitial_ad_video_replay_iv);
        this.f9792s = (FrameLayout) findViewById(R.id.beizi_interstitial_ad_logo_container_fl);
        this.f9793t = (CustomRoundImageView) findViewById(R.id.beizi_interstitial_ad_img_iv);
        this.f9798y = (VideoView) findViewById(R.id.beizi_interstitial_ad_video_vv);
        this.f9794u = (CustomRoundImageView) findViewById(R.id.beizi_interstitial_ad_app_icon_iv);
        this.f9799z = findViewById(R.id.beizi_interstitial_ad_divide_view);
        this.f9795v = (ImageView) findViewById(R.id.beizi_interstitial_ad_voice_iv);
        this.f9780g = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_title_container_ll);
        this.f9784k = (TextView) findViewById(R.id.beizi_interstitial_ad_title_tv);
        this.f9785l = (TextView) findViewById(R.id.beizi_interstitial_ad_subtitle_tv);
        this.A = findViewById(R.id.beizi_interstitial_ad_title_divider_view);
        this.f9791r = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_interaction_container_landscape_rl);
        this.f9790q = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_interaction_container_portrait_rl);
        this.f9783j = (TextView) findViewById(R.id.beizi_interstitial_ad_app_download_info_tv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        com.beizi.ad.internal.d.a aVarM;
        try {
            if (this.f9775b == null || !hasWindowFocus() || (aVarM = this.f9775b.m()) == null) {
                return;
            }
            String strE = this.f9775b.e();
            com.beizi.ad.model.f fVar = new com.beizi.ad.model.f();
            fVar.a(str);
            fVar.e(str5);
            fVar.b(str2);
            fVar.f(str6);
            fVar.c(str3);
            fVar.g(str7);
            fVar.d(str4);
            fVar.h(str8);
            aVarM.a(true);
            aVarM.a(this.f9778e, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.F, strE, i10);
            this.F = true;
            this.f9775b.E();
            ae aeVar = this.f9774aa;
            if (aeVar != null) {
                aeVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a() {
        try {
            if (this.X == null) {
                this.X = new Timer();
            }
            if (this.Y == null) {
                this.Y = new TimerTask() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.13
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            if (BeiZiNewInterstitialActivity.this.f9798y == null || !BeiZiNewInterstitialActivity.this.f9798y.isPlaying()) {
                                return;
                            }
                            BeiZiNewInterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.13.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    int duration;
                                    try {
                                        if (BeiZiNewInterstitialActivity.this.f9782i == null || (duration = (BeiZiNewInterstitialActivity.this.f9798y.getDuration() - BeiZiNewInterstitialActivity.this.f9798y.getCurrentPosition()) / 1000) <= 0) {
                                            return;
                                        }
                                        BeiZiNewInterstitialActivity.this.f9782i.setText(String.valueOf(duration));
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                            });
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                };
            }
            this.X.scheduleAtFixedRate(this.Y, 0L, 1000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
