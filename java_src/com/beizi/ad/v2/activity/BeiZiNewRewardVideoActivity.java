package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.annotation.Nullable;
import com.beizi.ad.a.a.a;
import com.beizi.ad.a.a.c;
import com.beizi.ad.a.a.d;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.download.BeiZiWebView;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.i;
import com.beizi.ad.internal.e.j;
import com.beizi.ad.internal.e.m;
import com.beizi.ad.internal.e.s;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.q;
import com.beizi.ad.model.a.e;
import com.beizi.ad.model.a.f;
import com.beizi.ad.model.a.g;
import com.beizi.ad.model.l;
import com.beizi.ad.model.o;
import com.beizi.ad.v2.f.b;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ae;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.widget.BZCarouselView;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiNewRewardVideoActivity extends Activity {
    private TextView A;
    private FrameLayout B;
    private CustomRoundImageView C;
    private CustomRoundImageView D;
    private VideoView E;
    private ProgressBar F;
    private boolean H;
    private int K;
    private int L;
    private boolean M;
    private MediaPlayer N;
    private int P;
    private boolean Q;
    private int R;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private AdSpacesBean.BuyerBean Y;
    private c Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f9883a;
    private boolean aA;
    private boolean aB;
    private boolean aC;
    private boolean aD;
    private int aH;
    private int aI;
    private int aJ;
    private boolean aL;
    private List<com.beizi.ad.model.c.d> aM;
    private List<e> aN;
    private BZCarouselView aP;
    private com.beizi.ad.model.a.b aQ;
    private com.beizi.ad.model.a.b aR;
    private int aS;
    private int aT;
    private g aU;
    private g aV;
    private g aW;
    private g aX;
    private LinearLayout aY;
    private RelativeLayout aZ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.beizi.ad.a.a.e f9884aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private d f9885ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private a f9886ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private com.beizi.ad.a.a.b f9887ad;
    private boolean af;
    private String ag;
    private String ah;
    private String ai;
    private long aj;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private String ap;
    private int aq;
    private boolean ar;
    private boolean as;
    private boolean at;
    private boolean au;
    private boolean av;
    private f aw;
    private int ax;
    private com.beizi.ad.model.a.d ay;
    private int az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.beizi.ad.internal.d.a f9888b;

    /* JADX INFO: renamed from: ba, reason: collision with root package name */
    private TextView f9889ba;

    /* JADX INFO: renamed from: bb, reason: collision with root package name */
    private TextView f9890bb;

    /* JADX INFO: renamed from: bc, reason: collision with root package name */
    private TextView f9891bc;

    /* JADX INFO: renamed from: bd, reason: collision with root package name */
    private TextView f9892bd;
    private com.beizi.ad.model.a.c be;
    private boolean bf;
    private boolean bg;
    private FrameLayout bh;
    private TextView bi;
    private ImageView bj;
    private int bk;
    private int bl;
    private int bm;
    private int bu;
    private ae bv;
    private boolean bw;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RelativeLayout f9893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f9894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f9895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f9896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f9897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f9898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f9899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinearLayout f9900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f9901k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ImageView f9902l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ImageView f9903m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f9904n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f9905o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TextView f9906p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView f9907q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f9908r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TextView f9909s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f9910t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f9911u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f9912v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TextView f9913w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f9914x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f9915y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f9916z;
    private boolean G = false;
    private boolean I = false;
    private int J = 30;
    private boolean O = false;
    private boolean S = true;
    private boolean ae = true;
    private boolean ak = false;
    private int aE = 0;
    private int aF = 0;
    private int aG = 1;
    private Handler aK = new Handler(Looper.getMainLooper()) { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                int i10 = message.what;
                int currentPosition = 0;
                if (i10 == 10001) {
                    if (BeiZiNewRewardVideoActivity.this.O) {
                        return;
                    }
                    BeiZiNewRewardVideoActivity.this.e(0);
                    return;
                }
                if (i10 != 10010) {
                    return;
                }
                BeiZiNewRewardVideoActivity.this.aK.sendEmptyMessageDelayed(10010, 1000L);
                BeiZiNewRewardVideoActivity.this.Y();
                if (BeiZiNewRewardVideoActivity.this.M && BeiZiNewRewardVideoActivity.this.E != null && BeiZiNewRewardVideoActivity.this.E.isPlaying()) {
                    int duration = BeiZiNewRewardVideoActivity.this.E.getDuration();
                    currentPosition = BeiZiNewRewardVideoActivity.this.E.getCurrentPosition();
                    BeiZiNewRewardVideoActivity.this.b(currentPosition);
                    BeiZiNewRewardVideoActivity.this.a(duration, currentPosition);
                }
                if (!BeiZiNewRewardVideoActivity.this.as && !BeiZiNewRewardVideoActivity.this.am && !BeiZiNewRewardVideoActivity.this.bg && !BeiZiNewRewardVideoActivity.this.aD) {
                    if (!BeiZiNewRewardVideoActivity.this.M) {
                        BeiZiNewRewardVideoActivity.j(BeiZiNewRewardVideoActivity.this);
                        currentPosition = BeiZiNewRewardVideoActivity.this.az * 1000;
                    }
                    int i11 = ((BeiZiNewRewardVideoActivity.this.J * 1000) - currentPosition) / 1000;
                    BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                    beiZiNewRewardVideoActivity.K = ((beiZiNewRewardVideoActivity.J * 1000) - currentPosition) / 1000;
                    if (BeiZiNewRewardVideoActivity.this.K <= BeiZiNewRewardVideoActivity.this.L || BeiZiNewRewardVideoActivity.this.L <= 0) {
                        BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity2 = BeiZiNewRewardVideoActivity.this;
                        beiZiNewRewardVideoActivity2.L = beiZiNewRewardVideoActivity2.K;
                        if (BeiZiNewRewardVideoActivity.this.bm == BeiZiNewRewardVideoActivity.this.bn) {
                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity3 = BeiZiNewRewardVideoActivity.this;
                            beiZiNewRewardVideoActivity3.bp = (beiZiNewRewardVideoActivity3.bq * 1000) - currentPosition;
                        }
                        if (BeiZiNewRewardVideoActivity.this.bm != BeiZiNewRewardVideoActivity.this.bn || BeiZiNewRewardVideoActivity.this.bp > 0 || i11 <= 0) {
                            BeiZiNewRewardVideoActivity.this.d(i11);
                        } else {
                            BeiZiNewRewardVideoActivity.this.I();
                        }
                        if (!BeiZiNewRewardVideoActivity.this.M && i11 <= 0) {
                            BeiZiNewRewardVideoActivity.this.O();
                        }
                        if ((BeiZiNewRewardVideoActivity.this.bq * 1000) - currentPosition >= 0 || BeiZiNewRewardVideoActivity.this.bm != BeiZiNewRewardVideoActivity.this.bo || BeiZiNewRewardVideoActivity.this.al) {
                            return;
                        }
                        BeiZiNewRewardVideoActivity.this.W();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };
    private int aO = 0;
    private int bn = 1;
    private int bo = 2;
    private int bp = 0;
    private int bq = 5;
    private int br = 15;
    private int bs = 15;
    private int bt = 0;

    static /* synthetic */ int j(BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity) {
        int i10 = beiZiNewRewardVideoActivity.az;
        beiZiNewRewardVideoActivity.az = i10 + 1;
        return i10;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        com.beizi.ad.model.c.d dVarA;
        int i10;
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_beizi_reward_video);
            a();
            b();
            c();
            d();
            if (this.aE != this.aF) {
                g();
            } else if (this.M) {
                l();
            } else {
                f();
            }
            com.beizi.ad.model.c.d dVarA2 = this.f9888b.a(3);
            if (dVarA2 == null) {
                dVarA = this.f9888b.a(this.aE);
                i10 = this.aE;
            } else {
                this.aL = true;
                dVarA = dVarA2;
                i10 = 3;
            }
            a(dVarA, i10, this.aL, this.C, 55, this.f9906p, this.f9907q);
            V();
            K();
            G();
            H();
            q();
            w();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            c cVar = this.Z;
            if (cVar != null) {
                cVar.b();
            }
            this.Z = null;
            com.beizi.ad.a.a.e eVar = this.f9884aa;
            if (eVar != null) {
                eVar.d();
            }
            this.f9884aa = null;
            a aVar = this.f9886ac;
            if (aVar != null) {
                aVar.d();
            }
            this.f9886ac = null;
            d dVar = this.f9885ab;
            if (dVar != null) {
                dVar.a();
            }
            this.f9885ab = null;
            com.beizi.ad.a.a.b bVar = this.f9887ad;
            if (bVar != null) {
                bVar.b();
            }
            this.f9887ad = null;
            Handler handler = this.aK;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.aK = null;
            ad();
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
        this.ak = false;
        D();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f9888b == null || this.f9883a == null) {
            finish();
        }
        this.ak = true;
        x();
        aa();
        S();
        this.aj = 0L;
        if (this.ao) {
            return;
        }
        VideoView videoView = this.E;
        if (videoView != null && this.M && !this.ar && !this.as && !this.am && !this.bg) {
            videoView.resume();
        }
        if (!this.S) {
            h();
        }
        this.S = false;
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.am) {
            if (!this.O) {
                this.aj = 0L;
            } else if (this.br >= 0) {
                this.aj = System.currentTimeMillis();
            } else {
                this.aj = 0L;
            }
        }
    }

    private void A() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.Y == null || com.beizi.fusion.c.b.a().p() || (shakeView = this.Y.getShakeView()) == null) {
                return;
            }
            com.beizi.ad.a.a.e eVar = new com.beizi.ad.a.a.e(this, shakeView, this.Y.getSpaceId(), this.X);
            this.f9884aa = eVar;
            eVar.a(new com.beizi.ad.a.a.e.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.7
                @Override // com.beizi.ad.a.a.e.a
                public void a() {
                    n.a("BeiZisAd", "handleShakeViewContent click");
                    BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
                }
            });
            this.ai = "shake";
            this.ah = this.f9884aa.c();
            a(this.f9903m);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void B() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule;
        try {
            if (this.Y == null || com.beizi.fusion.c.b.a().p() || (eulerAngleRule = this.Y.getEulerAngleRule()) == null) {
                return;
            }
            a aVar = new a(this, eulerAngleRule, this.Y.getSpaceId(), this.X);
            this.f9886ac = aVar;
            aVar.a(new a.InterfaceC0215a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.8
                @Override // com.beizi.ad.a.a.a.InterfaceC0215a
                public void a() {
                    n.a("BeiZisAd", "handleEulerAngleViewContent click");
                    BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
                }
            });
            this.ai = "eulerAngle";
            this.ah = this.f9886ac.c();
            a(this.f9903m);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void C() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Y;
            if (buyerBean == null || (fullScreenClick = buyerBean.getFullScreenClick()) == null) {
                return;
            }
            com.beizi.ad.a.a.b bVar = new com.beizi.ad.a.a.b(this, fullScreenClick, this.X);
            this.f9887ad = bVar;
            bVar.a(this.f9893c, new com.beizi.ad.a.a.b.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.9
                @Override // com.beizi.ad.a.a.b.a
                public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    n.a("BeiZisAd", "handleFullScreenClickContent click");
                    BeiZiNewRewardVideoActivity.this.a(0, str, str2, str3, str4, str5, str6, str7, str8, 0);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void D() {
        try {
            VideoView videoView = this.E;
            if (videoView != null && this.M) {
                int currentPosition = videoView.getCurrentPosition();
                if (currentPosition > 0) {
                    this.P = currentPosition;
                }
                n();
            }
            com.beizi.ad.a.a.e eVar = this.f9884aa;
            if (eVar != null) {
                eVar.b();
            }
            a aVar = this.f9886ac;
            if (aVar != null) {
                aVar.b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        com.beizi.ad.internal.d.a aVarM;
        try {
            b bVar = this.f9883a;
            if (bVar == null || (aVarM = bVar.m()) == null) {
                return;
            }
            aVarM.b(this.f9893c, this.f9883a.e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        com.beizi.ad.internal.d.a aVarM;
        try {
            b bVar = this.f9883a;
            if (bVar == null || (aVarM = bVar.m()) == null) {
                return;
            }
            aVarM.f(this.f9893c, this.f9883a.e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void G() {
        try {
            f fVar = this.aw;
            if (fVar == null) {
                return;
            }
            com.beizi.ad.model.a.b bVarG = fVar.g();
            this.aQ = bVarG;
            if (bVarG == null) {
                this.aQ = new com.beizi.ad.model.a.b();
            }
            g gVarC = this.aQ.c();
            this.aU = gVarC;
            if (gVarC == null) {
                g gVar = new g();
                this.aU = gVar;
                gVar.a("__TIME__秒后可领取奖励");
                this.aU.b("点击广告可提前领取奖励");
                this.aU.c("已经获得奖励");
                this.aQ.a(this.aU);
            }
            g gVarD = this.aQ.d();
            this.aV = gVarD;
            if (gVarD == null) {
                g gVar2 = new g();
                this.aV = gVar2;
                gVar2.a("跳过");
                this.aV.c("关闭");
                this.aQ.b(this.aV);
            }
            com.beizi.ad.model.a.b bVarH = this.aw.h();
            this.aR = bVarH;
            if (bVarH == null) {
                this.aR = new com.beizi.ad.model.a.b();
            }
            g gVarC2 = this.aR.c();
            this.aW = gVarC2;
            if (gVarC2 == null) {
                g gVar3 = new g();
                this.aW = gVar3;
                gVar3.a("点击广告领取奖励");
                this.aW.b("点击广告领取奖励");
                this.aW.c("已经获得奖励");
                this.aR.a(this.aW);
            }
            g gVarD2 = this.aR.d();
            this.aX = gVarD2;
            if (gVarD2 == null) {
                g gVar4 = new g();
                this.aX = gVar4;
                gVar4.a("跳过");
                this.aX.b("跳过");
                this.aX.c("关闭");
                this.aR.b(this.aX);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void H() {
        com.beizi.ad.model.a.b bVar;
        try {
            if (this.aw != null && (bVar = this.aQ) != null) {
                this.aS = bVar.a();
                this.aT = this.aQ.b();
                g gVarC = this.aQ.c();
                this.aU = gVarC;
                String strReplace = null;
                String strA = gVarC != null ? gVarC.a() : null;
                g gVarD = this.aQ.d();
                this.aV = gVarD;
                String strA2 = gVarD != null ? gVarD.a() : null;
                if (!TextUtils.isEmpty(strA)) {
                    strReplace = strA.replace("__TIME__", this.J + "");
                }
                if (this.aS != 0 || this.aT != 0) {
                    strA2 = strReplace;
                } else if (!TextUtils.isEmpty(strReplace)) {
                    strA2 = strReplace + " ｜ " + strA2;
                }
                if (this.f9905o != null && !TextUtils.isEmpty(strA2)) {
                    this.f9905o.setText(strA2);
                }
                if (this.aS == 0 && this.aT > 0) {
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.14
                        @Override // java.lang.Runnable
                        public void run() {
                            BeiZiNewRewardVideoActivity.this.aT = 0;
                        }
                    }, this.aT * 1000);
                }
                TextView textView = this.f9905o;
                if (textView != null) {
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.15
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (BeiZiNewRewardVideoActivity.this.aS == 1 || BeiZiNewRewardVideoActivity.this.aT > 0) {
                                return;
                            }
                            BeiZiNewRewardVideoActivity.this.J();
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        try {
            if (this.bm != this.bn || this.ao || this.f9905o == null) {
                return;
            }
            this.an = true;
            g gVar = this.aU;
            String strB = gVar != null ? gVar.b() : null;
            g gVar2 = this.aV;
            String strA = gVar2 != null ? gVar2.a() : null;
            if (this.aS == 0 && this.aT == 0) {
                if (TextUtils.isEmpty(strB)) {
                    strB = strA;
                } else {
                    strB = strB + " ｜ " + strA;
                }
            }
            if (this.f9905o == null || TextUtils.isEmpty(strB)) {
                return;
            }
            this.f9905o.setText(strB);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        com.beizi.ad.model.a.b bVar;
        try {
            if (this.aw == null || (bVar = this.aQ) == null) {
                return;
            }
            int iF = bVar.f();
            if (!ai.a(this.aQ.e())) {
                iF = 0;
            }
            if (this.ao) {
                iF = 0;
            }
            int iG = this.aQ.g();
            if (iF != 0) {
                if (iF == 1) {
                    this.aQ.c(0);
                    W();
                    return;
                } else {
                    if (iF != 2) {
                        return;
                    }
                    this.aQ.c(0);
                    ab();
                    return;
                }
            }
            if (this.aQ.f() == 1 && iG == 1 && this.am) {
                return;
            }
            if (this.ao) {
                af();
            } else {
                L();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void K() {
        try {
            f fVar = this.aw;
            if (fVar == null) {
                return;
            }
            com.beizi.ad.model.a.c cVarJ = fVar.j();
            this.be = cVarJ;
            if (cVarJ == null) {
                this.be = new com.beizi.ad.model.a.c();
            }
            if (this.be.a() == null) {
                g gVar = new g();
                gVar.a("仅需再观看__TIME__秒即可获取奖励");
                this.be.a(gVar);
            }
            if (this.be.b() == null) {
                g gVar2 = new g();
                gVar2.a("确定退出吗");
                this.be.b(gVar2);
            }
            if (this.be.c() == null) {
                g gVar3 = new g();
                gVar3.a("继续观看");
                this.be.c(gVar3);
            }
            if (this.be.d() == null) {
                g gVar4 = new g();
                gVar4.a("关闭广告");
                this.be.d(gVar4);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void L() {
        try {
            if (this.aZ == null) {
                return;
            }
            i();
            if (this.ao) {
                O();
                return;
            }
            this.as = true;
            D();
            this.aZ.setVisibility(0);
            com.beizi.ad.model.a.c cVar = this.be;
            String strA = null;
            if (cVar != null) {
                g gVarA = cVar.a();
                strA = gVarA != null ? gVarA.a() : null;
                b(this.f9890bb, this.be.b());
                b(this.f9891bc, this.be.c());
                b(this.f9892bd, this.be.d());
            }
            if (this.f9889ba != null && !TextUtils.isEmpty(strA)) {
                this.f9889ba.setText(strA.replace("__TIME__", this.K + ""));
            }
            TextView textView = this.f9891bc;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.16
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiNewRewardVideoActivity.this.M();
                    }
                });
            }
            TextView textView2 = this.f9892bd;
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.17
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BeiZiNewRewardVideoActivity.this.as = false;
                        BeiZiNewRewardVideoActivity.this.M();
                        BeiZiNewRewardVideoActivity.this.N();
                        BeiZiNewRewardVideoActivity.this.h();
                    }
                });
            }
            this.aZ.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        try {
            this.as = false;
            RelativeLayout relativeLayout = this.aZ;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            x();
            m();
            h();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        try {
            if (this.aw == null) {
                af();
                return;
            }
            com.beizi.ad.model.a.c cVar = this.be;
            if (cVar == null) {
                af();
                return;
            }
            int iF = cVar.f();
            if (!ai.a(this.be.e())) {
                iF = 0;
            }
            if (this.ao) {
                iF = 0;
            }
            if (iF == 0) {
                af();
                return;
            }
            if (iF == 1) {
                M();
                this.be.a(0);
                if (this.am) {
                    Z();
                }
                O();
                return;
            }
            if (iF == 2) {
                M();
                this.be.a(0);
                W();
            } else if (iF == 3) {
                M();
                this.be.a(0);
                ab();
            } else {
                if (iF != 4) {
                    return;
                }
                this.be.a(0);
                M();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            af();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        com.beizi.ad.model.c.d dVarA;
        try {
            if (this.aw == null) {
                return;
            }
            i();
            if (this.bg) {
                return;
            }
            this.bg = true;
            com.beizi.ad.model.a.a aVarK = this.aw.k();
            if (aVarK == null) {
                aVarK = new com.beizi.ad.model.a.a();
                aVarK.a(0);
            }
            this.bk = aVarK.a();
            String strP = this.f9888b.P();
            if (TextUtils.isEmpty(strP)) {
                this.bk = 0;
            }
            RelativeLayout relativeLayout = this.f9894d;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            P();
            com.beizi.ad.internal.d.a aVar = this.f9888b;
            if (aVar != null && (dVarA = aVar.a(7)) != null) {
                a(dVarA, 7);
            }
            int i10 = this.bk;
            if (i10 != 0 && i10 != 1) {
                if (i10 != 2 || this.f9888b == null) {
                    return;
                }
                D();
                ac();
                HashMap map = new HashMap();
                if (this.f9888b != null) {
                    map = new HashMap();
                    map.put("isRedirectionCanJump", Boolean.valueOf(this.f9888b.V()));
                    map.put("isDownload", Boolean.valueOf(this.af));
                    map.put("landingPageUrl", strP);
                    map.put("deeplinkUrl", this.f9888b.O());
                    map.put("webDeepLink", Boolean.valueOf(this.f9888b.W()));
                }
                BeiZiWebView beiZiWebView = new BeiZiWebView(this, map);
                beiZiWebView.loadUrl(strP);
                this.bh.addView(beiZiWebView);
                return;
            }
            R();
            Q();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void P() {
        if (this.bf) {
            return;
        }
        this.bf = true;
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_end_car_container_rl);
        relativeLayout.setVisibility(0);
        int iF = q.f(this);
        int iG = q.g(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        layoutParams.width = iF;
        layoutParams.height = iG;
        relativeLayout.setLayoutParams(layoutParams);
        this.bi = (TextView) findViewById(R.id.beizi_reward_video_ad_end_car_close_tv);
        a((FrameLayout) findViewById(R.id.beizi_reward_video_ad_end_car_logo_container_fl));
        this.bh = (FrameLayout) findViewById(R.id.beizi_reward_video_ad_end_car_container_fl);
        if (this.bi != null) {
            int iA = t.a(this, 15.0f);
            int iA2 = t.a(this, 30.0f);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.bi.getLayoutParams();
            layoutParams2.width = -2;
            layoutParams2.height = iA2;
            this.bi.setLayoutParams(layoutParams2);
            this.bi.setVisibility(0);
            m.a(this.bi, "#66000000", 1, "#66FFFFFF", iA);
            this.bi.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.19
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BeiZiNewRewardVideoActivity.this.U();
                }
            });
            T();
        }
    }

    private void Q() {
        com.beizi.ad.model.c.d dVarA;
        String strJ;
        int i10;
        boolean z10;
        com.beizi.ad.internal.d.a aVar;
        List<com.beizi.ad.model.c.a> listE;
        e eVarA;
        FrameLayout frameLayout;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.beizi_reward_video_end_car_normal, (ViewGroup) null);
        if (viewInflate != null && (frameLayout = this.bh) != null) {
            frameLayout.removeAllViews();
            this.bh.addView(viewInflate);
        }
        final ImageView imageView = (ImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_image_iv);
        viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_image_mask_view);
        com.beizi.ad.internal.d.a aVar2 = this.f9888b;
        if (aVar2 != null) {
            dVarA = aVar2.a(5);
            strJ = (dVarA == null || (listE = dVarA.e()) == null || listE.size() <= 0 || (eVarA = a(listE.get(0).b())) == null) ? null : eVarA.d();
        } else {
            dVarA = null;
            strJ = null;
        }
        if (TextUtils.isEmpty(strJ) && (aVar = this.f9888b) != null) {
            strJ = aVar.J();
        }
        if (imageView != null && !TextUtils.isEmpty(strJ)) {
            h.a(this).a(strJ, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.20
                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    try {
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(i.a(BeiZiNewRewardVideoActivity.this, bitmap, 10.0f));
                        ImageView imageView2 = imageView;
                        if (imageView2 == null || bitmap == null) {
                            return;
                        }
                        imageView2.setBackground(bitmapDrawable);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            if (dVarA != null) {
                a(5, dVarA);
            }
        }
        View view = (LinearLayout) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_container_ll);
        if (view != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = t.a(this, 50.0f);
            view.setLayoutParams(layoutParams);
        }
        if (view != null) {
            m.a(view, "#3976FF", 0, (String) null, t.a(this, 25.0f));
        }
        CustomRoundImageView customRoundImageView = (CustomRoundImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_icon_iv);
        TextView textView = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_title_tv);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_subtitle_tv);
        if (dVarA == null) {
            dVarA = this.f9888b.a(this.aE);
            i10 = this.aE;
            z10 = false;
        } else {
            i10 = 5;
            z10 = true;
        }
        a(dVarA, i10, z10, customRoundImageView, 89, textView, textView2);
        this.bj = (ImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_iv);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_title_tv);
        if (!TextUtils.isEmpty(this.ag) && textView3 != null) {
            textView3.setText(this.ag);
        }
        a(this.bj);
        a(view);
        a(dVarA, this.bj);
    }

    private void R() {
        MediaPlayer mediaPlayer;
        try {
            if (this.bk != 1 || this.ar) {
                n();
                return;
            }
            if (this.E == null || !this.M) {
                return;
            }
            int i10 = this.P;
            if (i10 > 0 && (mediaPlayer = this.N) != null && Build.VERSION.SDK_INT >= 26) {
                mediaPlayer.seekTo(i10, 3);
            }
            ImageView imageView = this.f9902l;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.beizi_voice_off);
            }
            this.I = false;
            this.N.setVolume(0.0f, 0.0f);
            this.E.start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        try {
            if (this.bg) {
                T();
                if (!this.am) {
                    a(this.bj);
                }
                R();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void T() {
        String strA;
        try {
            g gVar = this.aW;
            String strA2 = null;
            if (gVar == null) {
                strA = null;
            } else if (this.ao) {
                strA = gVar.c();
            } else {
                strA = gVar.a();
                if (TextUtils.isEmpty(strA)) {
                    strA = this.aW.b();
                }
            }
            g gVar2 = this.aX;
            if (gVar2 != null) {
                if (this.ao) {
                    strA2 = gVar2.c();
                } else {
                    strA2 = gVar2.a();
                    if (TextUtils.isEmpty(strA2)) {
                        strA2 = this.aX.b();
                    }
                }
            }
            TextView textView = this.bi;
            if (textView != null) {
                textView.setText(strA + " ｜ " + strA2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        try {
            if (this.aw == null) {
                r();
                return;
            }
            com.beizi.ad.model.a.b bVar = this.aR;
            if (bVar == null) {
                r();
                return;
            }
            int iF = bVar.f();
            if (!ai.a(this.aR.e())) {
                iF = 0;
            }
            if (this.ao) {
                iF = 0;
            }
            if (iF == 0) {
                r();
                return;
            }
            if (iF == 1) {
                this.aR.c(0);
                W();
            } else {
                if (iF != 2) {
                    return;
                }
                this.aR.c(0);
                ab();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            r();
        }
    }

    private void V() {
        f fVar = this.aw;
        if (fVar == null) {
            return;
        }
        com.beizi.ad.model.a.d dVarI = fVar.i();
        this.ay = dVarI;
        if (dVarI == null) {
            this.ay = new com.beizi.ad.model.a.d();
            int iA = this.aw.a();
            if (iA > 0) {
                this.ay.b(iA);
            }
            int iD = this.aw.d();
            if (iD > 0) {
                this.ay.c(iD);
            }
            int iB = this.aw.b();
            if (iB > 0) {
                this.ay.d(iB);
            }
            int iC = this.aw.c();
            if (iC > 0) {
                this.ay.e(iC);
            }
        }
        this.bq = this.ay.j();
        int iK = this.ay.k();
        this.bt = iK;
        this.bu = iK;
        int i10 = this.ay.i();
        this.br = i10;
        this.bs = i10;
        this.bm = this.ay.b();
        this.bl = this.ay.a();
        this.aI = this.ay.o();
        if (this.ay.c() == null) {
            g gVar = new g();
            gVar.a("恭喜获得特权");
            gVar.b("恭喜获得特权");
            gVar.c("恭喜获得特权");
            this.ay.a(gVar);
        }
        if (this.ay.d() == null) {
            g gVar2 = new g();
            gVar2.a("打开并体验内容");
            gVar2.b("只需再体验__TIME__秒");
            gVar2.c("任务达成");
            this.ay.b(gVar2);
        }
        if (this.ay.e() == null) {
            g gVar3 = new g();
            gVar3.a("__TIME__秒即可获得奖励");
            gVar3.b("即可获得奖励");
            gVar3.c("已经提前获取到奖励");
            this.ay.c(gVar3);
        }
        if (this.ay.f() == null) {
            g gVar4 = new g();
            gVar4.a("浏览详情，获取奖励");
            gVar4.b("继续浏览，获取奖励");
            gVar4.c("已获得奖励，继续体验");
            this.ay.d(gVar4);
        }
        if (this.ay.g() == null) {
            g gVar5 = new g();
            gVar5.a("__TIME__秒后继续播放");
            gVar5.b("浏览时间不足，无法领取奖励");
            gVar5.c("恭喜您！已提前获取奖励");
            this.ay.e(gVar5);
        }
        if (this.ay.h() == null) {
            g gVar6 = new g();
            gVar6.a("放弃特权");
            gVar6.b("放弃特权");
            gVar6.c("关闭");
            this.ay.f(gVar6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        try {
            if (this.ay != null && this.f9897g != null) {
                i();
                if (this.am) {
                    return;
                }
                x();
                this.al = true;
                this.am = true;
                if (this.bm == 1) {
                    this.an = true;
                }
                this.bq = this.ay.j();
                int iK = this.ay.k();
                this.bt = iK;
                this.bu = iK;
                int i10 = this.ay.i();
                this.br = i10;
                this.bs = i10;
                this.f9897g.setVisibility(0);
                this.f9897g.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.21
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
                b(this.f9909s, this.ay.c());
                b(this.f9910t, this.ay.d());
                g gVarE = this.ay.e();
                if (gVarE != null) {
                    String strA = gVarE.a();
                    if (this.f9911u != null && !TextUtils.isEmpty(strA)) {
                        if (strA.contains("__TIME__秒")) {
                            String str = this.bs + "秒";
                            String strReplace = strA.replace("__TIME__秒", str);
                            int iIndexOf = strReplace.indexOf(str);
                            SpannableString spannableString = new SpannableString(strReplace);
                            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#3976FF")), iIndexOf, str.length() + iIndexOf, 33);
                            this.f9911u.setText(spannableString);
                        } else {
                            this.f9911u.setText(strA);
                        }
                    }
                }
                b(this.f9916z, this.ay.f());
                g gVarG = this.ay.g();
                if (gVarG != null) {
                    String strA2 = gVarG.a();
                    if (this.f9912v != null && !TextUtils.isEmpty(strA2)) {
                        this.f9912v.setText(strA2.replace("__TIME__", this.bu + ""));
                    }
                }
                b(this.f9913w, this.ay.h());
                n();
                if (this.f9899i != null) {
                    if (TextUtils.isEmpty(this.T) && TextUtils.isEmpty(this.U) && TextUtils.isEmpty(this.V)) {
                        this.f9899i.setVisibility(8);
                    } else {
                        this.f9899i.setVisibility(0);
                    }
                }
                com.beizi.ad.model.c.d dVarA = null;
                if (this.aJ == 0) {
                    com.beizi.ad.internal.d.a aVar = this.f9888b;
                    if (aVar != null) {
                        dVarA = aVar.a(this.aE);
                        List<com.beizi.ad.model.c.d> list = this.aM;
                        if (list != null) {
                            int size = list.size();
                            int i11 = this.aO;
                            if (size > i11) {
                                dVarA = this.aM.get(i11);
                            }
                        }
                    }
                } else {
                    com.beizi.ad.internal.d.a aVar2 = this.f9888b;
                    if (aVar2 != null) {
                        List<com.beizi.ad.model.c.d> listAc = aVar2.ac();
                        if (listAc != null && listAc.size() > 0) {
                            for (com.beizi.ad.model.c.d dVar : listAc) {
                                if (dVar.u() && !dVar.v()) {
                                    dVarA = dVar;
                                    break;
                                }
                            }
                        }
                        if (dVarA == null) {
                            dVarA = this.f9888b.a(this.aE);
                        }
                    }
                }
                a(dVarA, this.aE, false, this.D, 47, this.f9914x, this.f9915y);
                a(this.f9904n);
                a(this.f9900j);
                if (this.f9913w != null) {
                    if (this.ay.l() == 1) {
                        this.f9913w.setVisibility(8);
                    } else {
                        this.f9913w.setVisibility(0);
                    }
                    this.f9913w.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.22
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                            beiZiNewRewardVideoActivity.bs = beiZiNewRewardVideoActivity.br;
                            BeiZiNewRewardVideoActivity.this.X();
                            BeiZiNewRewardVideoActivity.this.h();
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        try {
            com.beizi.ad.model.a.d dVar = this.ay;
            if (dVar == null) {
                return;
            }
            int iN = dVar.n();
            if (!ai.a(this.ay.m())) {
                iN = 0;
            }
            boolean z10 = this.ao;
            if (z10) {
                iN = 0;
            }
            if (iN != 0) {
                if (iN == 1) {
                    this.ay.g(0);
                    ab();
                }
            } else if (z10) {
                af();
            } else {
                Z();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        int i10;
        try {
            com.beizi.ad.model.a.d dVar = this.ay;
            if (dVar != null && dVar.k() != 0 && this.am && this.ak && !this.as && (i10 = this.bu) != -999 && !this.aD) {
                if (i10 <= 0) {
                    if (i10 == 0) {
                        Z();
                        return;
                    }
                    return;
                }
                g gVarG = this.ay.g();
                if (gVarG != null) {
                    String strA = gVarG.a();
                    if (this.f9912v != null && !TextUtils.isEmpty(strA)) {
                        this.f9912v.setText(strA.replace("__TIME__", this.bu + ""));
                    }
                }
                this.bu--;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Z() {
        this.am = false;
        LinearLayout linearLayout = this.f9897g;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (this.bg) {
            S();
        } else {
            if (this.ak) {
                m();
            }
            a(this.f9903m);
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aa() {
        g gVarD;
        try {
            if (this.S) {
                return;
            }
            if (this.am) {
                a(this.f9904n);
            }
            if (this.O && !this.as && this.am) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j10 = this.aj;
                long j11 = jCurrentTimeMillis - j10;
                if (this.ax != 3) {
                    if (j10 <= 0) {
                        return;
                    }
                    if (this.bm == this.bn && !this.an) {
                        return;
                    }
                    if (((j11 > ((long) (this.bs * 1000))) && this.bl == 0) || (this.bl == 1 && this.ao)) {
                        t();
                        d(0);
                    }
                } else {
                    if (j10 <= 0 && this.br > 0) {
                        return;
                    }
                    int i10 = this.aI;
                    if ((i10 > 0 && this.aH >= i10) || j11 > this.bs * 1000) {
                        t();
                        d(0);
                    }
                }
                a(this.f9909s, this.ay.c());
                int i11 = ((int) (((long) (this.bs * 1000)) - j11)) / 1000;
                this.bs = i11;
                if (i11 <= 0) {
                    this.bs = 1;
                }
                if (this.f9910t != null && (gVarD = this.ay.d()) != null) {
                    String strB = gVarD.b();
                    if (this.ao) {
                        strB = gVarD.c();
                    }
                    if (!TextUtils.isEmpty(strB)) {
                        if (strB.contains("__TIME__秒")) {
                            String str = this.bs + "秒";
                            String strReplace = strB.replace("__TIME__秒", str);
                            SpannableString spannableString = new SpannableString(strReplace);
                            int iIndexOf = strReplace.indexOf(str);
                            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#3976FF")), iIndexOf, str.length() + iIndexOf, 33);
                            this.f9910t.setText(spannableString);
                        } else {
                            this.f9910t.setText(strB);
                        }
                    }
                }
                a(this.f9911u, this.ay.e());
                a(this.f9916z, this.ay.f());
                this.bu = -999;
                a(this.f9912v, this.ay.g());
                a(this.f9913w, this.ay.h());
                if (this.bl == 1) {
                    this.f9912v.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.24
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                Intent launchIntentForPackage = BeiZiNewRewardVideoActivity.this.getPackageManager().getLaunchIntentForPackage(BeiZiNewRewardVideoActivity.this.f9888b.m());
                                if (launchIntentForPackage != null) {
                                    launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
                                    BeiZiNewRewardVideoActivity.this.startActivity(launchIntentForPackage);
                                }
                                BeiZiNewRewardVideoActivity.this.ao = true;
                                BeiZiNewRewardVideoActivity.this.aa();
                                BeiZiNewRewardVideoActivity.this.S();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void ab() {
        try {
            LinearLayout linearLayout = this.f9896f;
            if (linearLayout == null) {
                return;
            }
            int[] iArr = new int[2];
            linearLayout.getLocationOnScreen(iArr);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f9896f.getLayoutParams();
            int iA = t.a(this, 50.0f);
            int iD = layoutParams != null ? layoutParams.width : 0;
            if (iD <= 0) {
                iD = q.d(this) - t.a(this, 30.0f);
            }
            int[] iArrA = ai.a(iD / 2, iA / 2);
            a(0, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void ac() {
        try {
            int[] iArr = new int[2];
            this.f9896f.getLocationOnScreen(iArr);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f9896f.getLayoutParams();
            int iA = t.a(this, 50.0f);
            int iD = layoutParams != null ? layoutParams.width : 0;
            if (iD <= 0) {
                iD = q.d(this) - t.a(this, 30.0f);
            }
            int[] iArrA = ai.a(iD / 2, iA / 2);
            String strE = this.f9883a.e();
            com.beizi.ad.model.f fVar = new com.beizi.ad.model.f();
            fVar.a(String.valueOf(iArrA[0]));
            fVar.e(String.valueOf(iArrA[0]));
            fVar.b(String.valueOf(iArrA[1]));
            fVar.f(String.valueOf(iArrA[1]));
            fVar.c(String.valueOf(iArrA[0] + iArr[0]));
            fVar.g(String.valueOf(iArrA[0] + iArr[0]));
            fVar.d(String.valueOf(iArrA[1] + iArr[1]));
            fVar.h(String.valueOf(iArrA[1] + iArr[1]));
            this.f9888b.a(true);
            this.f9888b.a(this.f9896f, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), strE, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void ad() {
        try {
            ae aeVar = this.bv;
            if (aeVar != null) {
                aeVar.b();
            }
            this.bv = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void ae() {
        com.beizi.ad.model.m mVarAa;
        int iA;
        com.beizi.ad.internal.d.a aVar = this.f9888b;
        if (aVar == null || this.aK == null) {
            return;
        }
        try {
            if (this.O || (mVarAa = aVar.aa()) == null || (iA = mVarAa.a()) <= 0) {
                return;
            }
            this.aK.sendEmptyMessageDelayed(10001, iA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void af() {
        com.beizi.ad.model.a.b bVar = this.aQ;
        if ((bVar != null ? bVar.h() : 0) != 1) {
            r();
            return;
        }
        if (this.am) {
            Z();
        }
        O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        MediaPlayer mediaPlayer;
        try {
            if (this.E != null && this.M && !this.am && !this.as && !this.bg) {
                int i10 = this.P;
                if (i10 > 0 && (mediaPlayer = this.N) != null && Build.VERSION.SDK_INT >= 26) {
                    mediaPlayer.seekTo(i10, 3);
                }
                this.E.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void n() {
        VideoView videoView = this.E;
        if (videoView == null) {
            return;
        }
        videoView.pause();
    }

    private String o() {
        b bVar = this.f9883a;
        if (bVar == null) {
            return null;
        }
        return bVar.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(this, this.f9888b.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(this, this.f9888b.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            if (this.B != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                int iA = t.a(this, 8.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                this.B.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q() {
        ImageView imageView = this.f9902l;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (BeiZiNewRewardVideoActivity.this.I) {
                            BeiZiNewRewardVideoActivity.this.f9902l.setImageResource(R.drawable.beizi_voice_off);
                            if (BeiZiNewRewardVideoActivity.this.N != null) {
                                BeiZiNewRewardVideoActivity.this.N.setVolume(0.0f, 0.0f);
                            }
                        } else {
                            BeiZiNewRewardVideoActivity.this.f9902l.setImageResource(R.drawable.beizi_voice_on);
                            if (BeiZiNewRewardVideoActivity.this.N != null) {
                                BeiZiNewRewardVideoActivity.this.N.setVolume(0.0f, 1.0f);
                            }
                        }
                        BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                        beiZiNewRewardVideoActivity.I = !beiZiNewRewardVideoActivity.I;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }
    }

    private void r() {
        Handler handler = this.aK;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        b bVar = this.f9883a;
        if (bVar != null) {
            bVar.F();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        com.beizi.ad.internal.d.a aVarM;
        com.beizi.ad.model.c.d dVarA;
        try {
            b bVar = this.f9883a;
            if (bVar == null || this.aA || (aVarM = bVar.m()) == null) {
                return;
            }
            this.aA = true;
            String strE = this.f9883a.e();
            int i10 = this.aE;
            if (i10 == this.aF) {
                dVarA = aVarM.a(i10);
            } else {
                List<com.beizi.ad.model.c.d> list = this.aM;
                dVarA = (list == null || list.size() <= 0) ? null : this.aM.get(this.aO);
            }
            aVarM.a(dVarA, this.f9893c, strE);
            this.f9883a.E();
            com.beizi.ad.model.c.d dVarA2 = aVarM.a(2);
            if (dVarA2 != null) {
                a(dVarA2, 2);
            } else {
                a(dVarA, this.aE);
            }
            ae();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        b bVar;
        com.beizi.ad.internal.d.a aVarM;
        try {
            if (this.ao || (bVar = this.f9883a) == null || (aVarM = bVar.m()) == null) {
                return;
            }
            this.ao = true;
            aVarM.a(this.f9883a.e(), this.f9883a.A(), this.f9883a.B());
            this.f9883a.a((String) null, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        b bVar;
        try {
            if (this.aB || (bVar = this.f9883a) == null || bVar.m() == null) {
                return;
            }
            this.aB = true;
            this.f9883a.H();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        b bVar;
        try {
            if (this.aC || (bVar = this.f9883a) == null || bVar.m() == null) {
                return;
            }
            this.aC = true;
            this.f9883a.I();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x009b  */
    public void w() {
        String strP;
        final String str;
        String strO;
        String strR;
        String strK;
        String strL;
        final String strM;
        int iU;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9888b;
            if (aVar == null) {
                return;
            }
            if (this.aE != this.aF) {
                List<e> list = this.aN;
                if (list != null) {
                    int size = list.size();
                    int i10 = this.aO;
                    if (size >= i10) {
                        e eVar = this.aN.get(i10);
                        if (eVar == null) {
                            this.A.setVisibility(8);
                            return;
                        }
                        if (!eVar.e()) {
                            this.A.setVisibility(8);
                            return;
                        }
                        int iF = eVar.f();
                        String strG = eVar.g();
                        String strH = eVar.h();
                        String strI = eVar.i();
                        String strJ = eVar.j();
                        strK = eVar.k();
                        strL = eVar.l();
                        strM = eVar.m();
                        iU = iF;
                        str = strG;
                        strP = strH;
                        strO = strI;
                        strR = strJ;
                    } else {
                        strP = "";
                        str = null;
                        strO = "";
                        strR = strO;
                        strK = strR;
                        strL = strK;
                        strM = strL;
                        iU = 0;
                    }
                } else {
                    strP = "";
                    str = null;
                    strO = "";
                    strR = strO;
                    strK = strR;
                    strL = strK;
                    strM = strL;
                    iU = 0;
                }
            } else {
                if (!this.af) {
                    this.A.setVisibility(8);
                    return;
                }
                iU = aVar.u();
                String strL2 = this.f9888b.l();
                strP = this.f9888b.p();
                strO = this.f9888b.o();
                strR = this.f9888b.r();
                String strQ = this.f9888b.q();
                String strS = this.f9888b.s();
                strM = this.f9888b.t();
                strL = strS;
                strK = strQ;
                str = strL2;
            }
            if (iU != 2 && iU != 5) {
                this.A.setVisibility(8);
                return;
            }
            this.A.setVisibility(0);
            String str2 = !TextUtils.isEmpty(strR) ? strR : strK;
            this.A.setText(Html.fromHtml("应用名称：" + str + " | 开发者：" + strP + " | 应用版本：" + strO + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
            final String str3 = strL;
            final String str4 = str2;
            this.A.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        Intent intent = new Intent(BeiZiNewRewardVideoActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                        intent.putExtra("title_content_key", str);
                        intent.putExtra("privacy_content_key", str3);
                        intent.putExtra("permission_content_key", str4);
                        intent.putExtra("intro_content_key", strM);
                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                        BeiZiNewRewardVideoActivity.this.startActivity(intent);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        try {
            com.beizi.ad.a.a.e eVar = this.f9884aa;
            if (eVar != null) {
                eVar.a();
            }
            a aVar = this.f9886ac;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        try {
            if (this.Y == null) {
                return;
            }
            LinearLayout linearLayout = this.f9896f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            C();
            z();
            A();
            B();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void z() {
        try {
            AdSpacesBean.BuyerBean buyerBean = this.Y;
            if (buyerBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = buyerBean.getRegionalClickView();
            String str = "#3976FF";
            if (regionalClickView == null) {
                regionalClickView = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                regionalClickView.setBackgroundAlpha(1.0d);
                regionalClickView.setBackgroundColor("#3976FF");
                regionalClickView.setTitle("点击跳转网页或第三方应用");
                regionalClickView.setTitleColor("#FFFFFF");
            }
            this.ag = regionalClickView.getTitle();
            c cVar = new c(this, regionalClickView, this.X, this.af);
            this.Z = cVar;
            String strA = cVar.a();
            if (!TextUtils.isEmpty(strA)) {
                str = strA;
            }
            LinearLayout linearLayout = this.f9896f;
            if (linearLayout != null) {
                m.a(linearLayout, str, 0, (String) null, t.a(this, 5.0f));
                this.Z.a(this.f9896f, this.f9908r);
                this.Z.a(new c.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.6
                    @Override // com.beizi.ad.a.a.c.a
                    public void a(String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
                        n.a("BeiZisAd", "handleRegionalClickViewContent click");
                        BeiZiNewRewardVideoActivity.this.a(0, str2, str3, str4, str5, str6, str7, str8, str9, 0);
                    }
                });
            }
            LinearLayout linearLayout2 = this.f9900j;
            if (linearLayout2 != null) {
                m.a(linearLayout2, "#2A8BEF", 0, (String) null, t.a(this, 25.0f));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        BZCarouselView bZCarouselView;
        try {
            if (this.as || this.bg || this.am || (bZCarouselView = this.aP) == null) {
                return;
            }
            bZCarouselView.startCarousel();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void i() {
        try {
            BZCarouselView bZCarouselView = this.aP;
            if (bZCarouselView != null) {
                bZCarouselView.stopCarousel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            BZCarouselView bZCarouselView = this.aP;
            if (bZCarouselView != null) {
                bZCarouselView.performNextCarousel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            BZCarouselView bZCarouselView = this.aP;
            if (bZCarouselView != null) {
                bZCarouselView.performLastCarousel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void l() {
        try {
            if (this.M && this.E != null && !TextUtils.isEmpty(this.W)) {
                d(this.J);
                ImageView imageView = this.f9902l;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    if (this.I) {
                        this.f9902l.setImageResource(R.drawable.beizi_voice_on);
                    } else {
                        this.f9902l.setImageResource(R.drawable.beizi_voice_off);
                    }
                }
                this.E.setVisibility(0);
                if (this.H) {
                    n.a("BeiZisAd", "isVideoCacheSuccess: true");
                    a(0);
                } else {
                    n.a("BeiZisAd", "isVideoCacheSuccess: false");
                    this.E.setVideoPath(this.W);
                    this.E.requestFocus();
                }
                this.E.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.32
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        n.a("BeiZisAd", "onCompletion: 播放完成");
                        try {
                            BeiZiNewRewardVideoActivity.this.ar = true;
                            if (BeiZiNewRewardVideoActivity.this.F != null) {
                                BeiZiNewRewardVideoActivity.this.F.setVisibility(8);
                            }
                            BeiZiNewRewardVideoActivity.this.P = 0;
                            if (mediaPlayer != null) {
                                BeiZiNewRewardVideoActivity.this.b(mediaPlayer.getDuration());
                            }
                            BeiZiNewRewardVideoActivity.this.F();
                            if (BeiZiNewRewardVideoActivity.this.bg) {
                                return;
                            }
                            BeiZiNewRewardVideoActivity.this.u();
                            BeiZiNewRewardVideoActivity.this.t();
                            BeiZiNewRewardVideoActivity.this.O();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.E.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.33
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        try {
                            BeiZiNewRewardVideoActivity.this.N = mediaPlayer;
                            if (BeiZiNewRewardVideoActivity.this.I) {
                                BeiZiNewRewardVideoActivity.this.N.setVolume(0.0f, 1.0f);
                            } else {
                                BeiZiNewRewardVideoActivity.this.N.setVolume(0.0f, 0.0f);
                            }
                            BeiZiNewRewardVideoActivity.this.m();
                            if (BeiZiNewRewardVideoActivity.this.ae) {
                                int duration = mediaPlayer.getDuration() / 1000;
                                if (BeiZiNewRewardVideoActivity.this.J > duration) {
                                    BeiZiNewRewardVideoActivity.this.J = duration;
                                }
                                BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                                beiZiNewRewardVideoActivity.K = beiZiNewRewardVideoActivity.J;
                                if (BeiZiNewRewardVideoActivity.this.F != null) {
                                    BeiZiNewRewardVideoActivity.this.F.setMax(duration);
                                }
                                BeiZiNewRewardVideoActivity.this.p();
                                BeiZiNewRewardVideoActivity.this.y();
                                BeiZiNewRewardVideoActivity.this.s();
                                if (BeiZiNewRewardVideoActivity.this.aK != null) {
                                    BeiZiNewRewardVideoActivity.this.aK.sendEmptyMessageDelayed(10010, 1000L);
                                }
                                BeiZiNewRewardVideoActivity.this.E();
                            }
                            BeiZiNewRewardVideoActivity.this.ae = false;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.E.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.2
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                        try {
                            n.a("BeiZisAd", "setOnErrorListener: 播放失败");
                            s sVarA = s.a();
                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                            sVarA.a(beiZiNewRewardVideoActivity, beiZiNewRewardVideoActivity.W);
                            if (BeiZiNewRewardVideoActivity.this.bg) {
                                return true;
                            }
                            BeiZiNewRewardVideoActivity.this.v();
                            BeiZiNewRewardVideoActivity.this.y();
                            BeiZiNewRewardVideoActivity.this.s();
                            BeiZiNewRewardVideoActivity.this.t();
                            BeiZiNewRewardVideoActivity.this.O();
                            return true;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return false;
                        }
                    }
                });
                this.E.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.3
                    @Override // android.media.MediaPlayer.OnInfoListener
                    public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                        if (mediaPlayer == null || i10 != 701) {
                            return false;
                        }
                        try {
                            BeiZiNewRewardVideoActivity.this.a(mediaPlayer.getCurrentPosition());
                            return false;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return false;
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        try {
            b bVar = b.H;
            this.f9883a = bVar;
            this.Y = bVar.a();
            this.af = this.f9883a.j();
            this.H = this.f9883a.C();
            AdSpacesBean.BuyerBean buyerBean = this.Y;
            if (buyerBean == null) {
                return;
            }
            if (buyerBean.getTemplate() == 1) {
                this.G = true;
            } else {
                this.G = false;
            }
            com.beizi.ad.internal.d.a aVarM = this.f9883a.m();
            this.f9888b = aVarM;
            if (aVarM == null) {
                return;
            }
            this.X = aVarM.c();
            boolean z10 = this.f9888b.z();
            this.M = z10;
            if (z10) {
                this.W = this.f9888b.y();
            }
            this.aq = this.f9888b.K();
            this.T = this.f9888b.A();
            this.Q = this.f9888b.f();
            this.R = this.f9888b.h();
            this.U = this.f9888b.v();
            this.V = this.f9888b.w();
            this.I = this.f9888b.e() ? false : true;
            this.ap = this.f9888b.J();
            f fVarL = this.f9888b.L();
            this.aw = fVarL;
            if (fVarL == null) {
                f fVar = new f();
                this.aw = fVar;
                fVar.f(30);
            }
            int iF = this.aw.f();
            this.J = iF;
            if (iF <= 0) {
                int iG = this.f9888b.g();
                if (iG > 0) {
                    this.J = iG;
                } else {
                    this.J = 30;
                }
            }
            int i10 = this.aq;
            if (i10 > 0 && this.J > i10) {
                this.J = i10;
            }
            this.ax = this.aw.e();
            this.K = this.J;
            this.aE = this.f9888b.ab();
            this.aJ = this.aw.l();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            int iA = t.a(this, 15.0f);
            int iA2 = t.a(this, 30.0f);
            ImageView imageView = this.f9902l;
            if (imageView != null && this.M) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams.width = iA2;
                layoutParams.height = iA2;
                this.f9902l.setLayoutParams(layoutParams);
            }
            View view = this.f9901k;
            if (view != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view.getLayoutParams();
                layoutParams2.width = iA2;
                layoutParams2.height = iA2;
                this.f9901k.setLayoutParams(layoutParams2);
                m.a(this.f9901k, (String) null, 1, "#66FFFFFF", iA2 / 2);
            }
            LinearLayout linearLayout = this.f9895e;
            if (linearLayout != null) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.height = iA2;
                this.f9895e.setLayoutParams(layoutParams3);
                m.a(this.f9895e, "#66000000", 1, "#66FFFFFF", iA);
            }
            LinearLayout linearLayout2 = this.f9896f;
            if (linearLayout2 != null) {
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) linearLayout2.getLayoutParams();
                layoutParams4.width = -1;
                layoutParams4.height = t.a(this, 44.0f);
                this.f9896f.setLayoutParams(layoutParams4);
            }
            LinearLayout linearLayout3 = this.f9898h;
            if (linearLayout3 != null) {
                m.a(linearLayout3, "#FFFFFF", 0, (String) null, iA);
            }
            LinearLayout linearLayout4 = this.f9899i;
            if (linearLayout4 != null) {
                m.a(linearLayout4, "#EBF1FF", 0, (String) null, iA2 / 3);
            }
            LinearLayout linearLayout5 = this.f9900j;
            if (linearLayout5 != null) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) linearLayout5.getLayoutParams();
                layoutParams5.width = -1;
                layoutParams5.height = t.a(this, 50.0f);
                this.f9900j.setLayoutParams(layoutParams5);
            }
            TextView textView = this.f9913w;
            if (textView != null) {
                LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                int iA3 = t.a(this, 120.0f);
                int iA4 = t.a(this, 35.0f);
                layoutParams6.width = iA3;
                layoutParams6.height = iA4;
                this.f9913w.setLayoutParams(layoutParams6);
                m.a(this.f9913w, "#4DFFFFFF", 0, (String) null, iA4 / 2);
            }
            LinearLayout linearLayout6 = this.aY;
            if (linearLayout6 != null) {
                m.a(linearLayout6, "#FFFFFF", 0, (String) null, iA);
            }
            TextView textView2 = this.f9891bc;
            if (textView2 != null) {
                LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
                layoutParams7.width = -1;
                int iA5 = t.a(this, 44.0f);
                layoutParams7.height = iA5;
                m.a(this.f9891bc, "#3976FF", 0, (String) null, iA5 / 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            TextView textView = (TextView) findViewById(R.id.beizi_reward_video_complaint_tv);
            textView.setVisibility(0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BeiZiNewRewardVideoActivity.this.e();
                }
            });
            float fA = t.a(this, 5.0f);
            m.a(textView, "#66000000", 1, "#66FFFFFF", new float[]{0.0f, 0.0f, fA, fA, fA, fA, 0.0f, 0.0f});
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            D();
            com.beizi.ad.internal.view.a.a.C0222a c0222a = new com.beizi.ad.internal.view.a.a.C0222a(this);
            c0222a.a(new com.beizi.ad.internal.view.a.a.b() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.23
                @Override // com.beizi.ad.internal.view.a.a.b
                public void a(String str) {
                    try {
                        if (BeiZiNewRewardVideoActivity.this.f9883a == null) {
                            return;
                        }
                        BeiZiNewRewardVideoActivity.this.f9883a.g(str);
                        BeiZiNewRewardVideoActivity.this.f9883a.F();
                        BeiZiNewRewardVideoActivity.this.finish();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }

                @Override // com.beizi.ad.internal.view.a.a.b
                public void a() {
                    BeiZiNewRewardVideoActivity.this.aD = false;
                    BeiZiNewRewardVideoActivity.this.x();
                    BeiZiNewRewardVideoActivity.this.m();
                }
            });
            c0222a.a().show();
            this.aD = true;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.aD = false;
        }
    }

    private void f() {
        try {
            if (!this.M && !TextUtils.isEmpty(this.ap)) {
                d(this.J);
                ProgressBar progressBar = this.F;
                if (progressBar != null) {
                    progressBar.setVisibility(8);
                }
                final ImageView imageView = (ImageView) findViewById(R.id.beizi_reward_video_ad_image_iv);
                imageView.setVisibility(0);
                h.a(this).a(this.ap, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.29
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        try {
                            BeiZiNewRewardVideoActivity.this.a(bitmap, imageView);
                            BeiZiNewRewardVideoActivity.this.p();
                            BeiZiNewRewardVideoActivity.this.y();
                            BeiZiNewRewardVideoActivity.this.s();
                            if (BeiZiNewRewardVideoActivity.this.aK != null) {
                                BeiZiNewRewardVideoActivity.this.aK.sendEmptyMessageDelayed(10010, 1000L);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                        BeiZiNewRewardVideoActivity.this.s();
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        com.beizi.ad.internal.d.a aVar;
        List<com.beizi.ad.model.c.d> listAc;
        List<com.beizi.ad.model.c.a> listE;
        e eVarA;
        try {
            if (this.aE != this.aF && (aVar = this.f9888b) != null && (listAc = aVar.ac()) != null && !listAc.isEmpty()) {
                for (com.beizi.ad.model.c.d dVar : listAc) {
                    if (dVar.t() == 1) {
                        if (this.aM == null) {
                            this.aM = new ArrayList();
                        }
                        this.aM.add(dVar);
                    }
                }
                List<com.beizi.ad.model.c.d> list = this.aM;
                if (list != null && !list.isEmpty()) {
                    ArrayList arrayList = null;
                    for (com.beizi.ad.model.c.d dVar2 : this.aM) {
                        if (dVar2 != null && (listE = dVar2.e()) != null && listE.size() > 0 && (eVarA = a(listE.get(0).b())) != null) {
                            String strD = eVarA.d();
                            if (!TextUtils.isEmpty(strD)) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(strD);
                                if (this.aN == null) {
                                    this.aN = new ArrayList();
                                }
                                com.beizi.ad.model.c.b bVarB = dVar2.b();
                                if (bVarB != null) {
                                    eVarA.e(bVarB.d());
                                    eVarA.a(bVarB.c());
                                    eVarA.f(bVarB.l());
                                    eVarA.g(bVarB.k());
                                    eVarA.i(bVarB.m());
                                    eVarA.h(bVarB.n());
                                    eVarA.j(bVarB.o());
                                    eVarA.k(bVarB.q());
                                    eVarA.m(bVarB.b());
                                    eVarA.l(bVarB.g());
                                }
                                this.aN.add(eVarA);
                            }
                        }
                    }
                    if (arrayList != null && !arrayList.isEmpty()) {
                        d(this.J);
                        ProgressBar progressBar = this.F;
                        if (progressBar != null) {
                            progressBar.setVisibility(8);
                        }
                        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.beizi_reward_video_group_image_container_fl);
                        BZCarouselView bZCarouselView = new BZCarouselView(this);
                        this.aP = bZCarouselView;
                        bZCarouselView.setOnContentChangeListener(new BZCarouselView.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.30
                            @Override // com.beizi.fusion.widget.BZCarouselView.a
                            public void a(int i10) {
                                com.beizi.ad.model.c.d dVarA;
                                List<com.beizi.ad.model.c.a> listE2;
                                e eVarA2;
                                try {
                                    BeiZiNewRewardVideoActivity.this.aO = i10;
                                    BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                                    beiZiNewRewardVideoActivity.a(beiZiNewRewardVideoActivity.aE, (com.beizi.ad.model.c.d) BeiZiNewRewardVideoActivity.this.aM.get(i10));
                                    if (BeiZiNewRewardVideoActivity.this.aN == null || BeiZiNewRewardVideoActivity.this.aN.size() <= 0 || BeiZiNewRewardVideoActivity.this.aN.size() < i10) {
                                        return;
                                    }
                                    e eVar = (e) BeiZiNewRewardVideoActivity.this.aN.get(i10);
                                    if (!BeiZiNewRewardVideoActivity.this.aL) {
                                        BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity2 = BeiZiNewRewardVideoActivity.this;
                                        beiZiNewRewardVideoActivity2.a(beiZiNewRewardVideoActivity2.C, 55, eVar.a());
                                        BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity3 = BeiZiNewRewardVideoActivity.this;
                                        beiZiNewRewardVideoActivity3.a(beiZiNewRewardVideoActivity3.f9906p, BeiZiNewRewardVideoActivity.this.f9907q, eVar.b(), eVar.c());
                                    }
                                    if (BeiZiNewRewardVideoActivity.this.am) {
                                        if (BeiZiNewRewardVideoActivity.this.aJ == 0) {
                                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity4 = BeiZiNewRewardVideoActivity.this;
                                            beiZiNewRewardVideoActivity4.a(beiZiNewRewardVideoActivity4.D, 47, eVar.a());
                                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity5 = BeiZiNewRewardVideoActivity.this;
                                            beiZiNewRewardVideoActivity5.a(beiZiNewRewardVideoActivity5.f9914x, BeiZiNewRewardVideoActivity.this.f9915y, eVar.b(), eVar.c());
                                        } else if (BeiZiNewRewardVideoActivity.this.f9888b != null) {
                                            List<com.beizi.ad.model.c.d> listAc2 = BeiZiNewRewardVideoActivity.this.f9888b.ac();
                                            if (listAc2 != null && listAc2.size() > 0) {
                                                Iterator<com.beizi.ad.model.c.d> it2 = listAc2.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        dVarA = null;
                                                        break;
                                                    }
                                                    dVarA = it2.next();
                                                    if (dVarA.u() && !dVarA.v()) {
                                                        break;
                                                    }
                                                }
                                            } else {
                                                dVarA = null;
                                                break;
                                            }
                                            if (dVarA == null) {
                                                dVarA = BeiZiNewRewardVideoActivity.this.f9888b.a(BeiZiNewRewardVideoActivity.this.aE);
                                            }
                                            if (dVarA != null && (listE2 = dVarA.e()) != null && listE2.size() > 0 && (eVarA2 = BeiZiNewRewardVideoActivity.this.a(listE2.get(0).b())) != null) {
                                                BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity6 = BeiZiNewRewardVideoActivity.this;
                                                beiZiNewRewardVideoActivity6.a(beiZiNewRewardVideoActivity6.D, 47, eVarA2.a());
                                                BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity7 = BeiZiNewRewardVideoActivity.this;
                                                beiZiNewRewardVideoActivity7.a(beiZiNewRewardVideoActivity7.f9914x, BeiZiNewRewardVideoActivity.this.f9915y, eVarA2.b(), eVarA2.c());
                                            }
                                        }
                                    }
                                    BeiZiNewRewardVideoActivity.this.w();
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        });
                        this.aP.setImageUrls(arrayList);
                        f fVar = this.aw;
                        if (fVar != null) {
                            this.aP.setScrollInterval(fVar.m());
                        }
                        frameLayout.setVisibility(0);
                        frameLayout.addView(this.aP);
                        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.31

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            float f9964a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            float f9965b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            float f9966c;

                            /* JADX INFO: renamed from: d, reason: collision with root package name */
                            float f9967d;

                            @Override // android.view.View.OnTouchListener
                            public boolean onTouch(View view, MotionEvent motionEvent) {
                                int action = motionEvent.getAction();
                                if (action == 0) {
                                    this.f9964a = motionEvent.getX();
                                    this.f9965b = motionEvent.getY();
                                    this.f9966c = motionEvent.getX();
                                    this.f9967d = motionEvent.getY();
                                } else if (action == 1) {
                                    if (this.f9966c - this.f9964a < 0.0f) {
                                        BeiZiNewRewardVideoActivity.this.j();
                                        BeiZiNewRewardVideoActivity.this.h();
                                    }
                                    if (this.f9966c - this.f9964a > 0.0f && BeiZiNewRewardVideoActivity.this.aO > 0) {
                                        BeiZiNewRewardVideoActivity.this.k();
                                        BeiZiNewRewardVideoActivity.this.h();
                                    }
                                } else if (action == 2) {
                                    this.f9966c = motionEvent.getX();
                                    this.f9967d = motionEvent.getY();
                                }
                                return true;
                            }
                        });
                        h();
                        p();
                        y();
                        s();
                        Handler handler = this.aK;
                        if (handler != null) {
                            handler.sendEmptyMessageDelayed(10010, 1000L);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i10) {
        try {
            TextView textView = this.f9905o;
            if (textView == null) {
                return;
            }
            String strReplace = null;
            if (this.J > 0 && i10 <= 0) {
                if (textView != null) {
                    g gVar = this.aU;
                    String strC = gVar != null ? gVar.c() : null;
                    g gVar2 = this.aV;
                    strReplace = gVar2 != null ? gVar2.c() : null;
                    if (this.aS == 0 && this.aT == 0) {
                        strC = strC + " ｜ " + strReplace;
                    }
                    this.f9905o.setText(strC);
                }
                t();
                return;
            }
            if (this.ao) {
                return;
            }
            g gVar3 = this.aU;
            String strA = gVar3 != null ? gVar3.a() : null;
            g gVar4 = this.aV;
            String strA2 = gVar4 != null ? gVar4.a() : null;
            if (!TextUtils.isEmpty(strA)) {
                strReplace = strA.replace("__TIME__", i10 + "");
            }
            if (this.aS != 0 || this.aT != 0) {
                strA2 = strReplace;
            } else if (!TextUtils.isEmpty(strReplace)) {
                strA2 = strReplace + " ｜ " + strA2;
            }
            if (this.f9905o != null && !TextUtils.isEmpty(strA2)) {
                this.f9905o.setText(strA2);
            }
            if (i10 <= 0) {
                t();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a() {
        this.f9893c = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_container_rl);
        this.E = (VideoView) findViewById(R.id.beizi_reward_video_ad_video_vv);
        this.F = (ProgressBar) findViewById(R.id.beizi_reward_video_progress_bar);
        this.f9894d = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_voice_close_container_rl);
        this.f9902l = (ImageView) findViewById(R.id.beizi_reward_video_ad_voice_iv);
        this.f9901k = findViewById(R.id.beizi_reward_video_ad_voice_outline_view);
        this.f9895e = (LinearLayout) findViewById(R.id.beizi_reward_video_ad_get_rewards_container_ll);
        this.f9905o = (TextView) findViewById(R.id.beizi_reward_video_ad_get_rewards_close_tv);
        this.C = (CustomRoundImageView) findViewById(R.id.beizi_reward_video_ad_app_icon_iv);
        this.f9906p = (TextView) findViewById(R.id.beizi_reward_video_ad_app_title_tv);
        this.f9907q = (TextView) findViewById(R.id.beizi_reward_video_ad_app_subtitle_tv);
        this.B = (FrameLayout) findViewById(R.id.beizi_reward_video_ad_logo_container_fl);
        this.f9896f = (LinearLayout) findViewById(R.id.beizi_reward_video_ad_interaction_container_ll);
        this.f9903m = (ImageView) findViewById(R.id.beizi_reward_video_ad_interaction_iv);
        this.f9908r = (TextView) findViewById(R.id.beizi_reward_video_ad_interaction_title_tv);
        this.A = (TextView) findViewById(R.id.beizi_reward_video_ad_app_download_info_tv);
        this.f9897g = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_container_ll);
        this.f9898h = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_content_container_ll);
        this.f9909s = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_title_tv);
        this.f9910t = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_sub_title_tv);
        this.f9899i = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_app_info_ll);
        this.D = (CustomRoundImageView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_icon_iv);
        this.f9914x = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_title_tv);
        this.f9915y = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_subtitle_tv);
        this.f9911u = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_detail_tv);
        this.f9900j = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_container_ll);
        this.f9916z = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_title_tv);
        this.f9904n = (ImageView) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_iv);
        this.f9912v = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_countdown_tv);
        this.f9913w = (TextView) findViewById(R.id.beizi_reward_video_cancel_privilege_dialog_tv);
        this.aZ = (RelativeLayout) findViewById(R.id.beizi_reward_video_quit_dialog_container_rl);
        this.aY = (LinearLayout) findViewById(R.id.beizi_reward_video_quit_dialog_content_container_ll);
        this.f9889ba = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_get_reward_tv);
        this.f9890bb = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_quit_tv);
        this.f9891bc = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_continue_play_tv);
        this.f9892bd = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_close_ad_tv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i10) {
        try {
            int[] iArr = new int[2];
            int width = this.f9896f.getWidth();
            int height = this.f9896f.getHeight();
            this.f9896f.getLocationOnScreen(iArr);
            int[] iArrA = ai.a(width / 2, height / 2);
            a(i10, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i10) {
        try {
            ProgressBar progressBar = this.F;
            if (progressBar == null) {
                return;
            }
            progressBar.setProgress(i10 / 1000);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(TextView textView, g gVar) {
        if (textView == null || gVar == null) {
            return;
        }
        try {
            String strA = gVar.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            textView.setText(strA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c(int i10) {
        com.beizi.ad.internal.d.a aVarM;
        b bVar = this.f9883a;
        if (bVar == null || (aVarM = bVar.m()) == null) {
            return;
        }
        String strE = this.f9883a.e();
        if (i10 == 25) {
            aVarM.c(this.f9893c, strE);
        } else if (i10 == 50) {
            aVarM.d(this.f9893c, strE);
        } else if (i10 == 75) {
            aVarM.e(this.f9893c, strE);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    private void a(com.beizi.ad.model.c.d dVar, int i10, boolean z10, CustomRoundImageView customRoundImageView, int i11, TextView textView, TextView textView2) {
        e eVarA;
        String strB;
        String strC;
        String strA;
        if (dVar != null) {
            try {
                List<com.beizi.ad.model.c.a> listE = dVar.e();
                if (listE == null || listE.size() <= 0 || (eVarA = a(listE.get(0).b())) == null) {
                    strB = null;
                    strA = null;
                    strC = null;
                } else {
                    strB = eVarA.b();
                    strC = eVarA.c();
                    if (z10) {
                        strA = eVarA.d();
                    } else {
                        strA = eVarA.a();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        } else {
            strB = null;
            strA = null;
            strC = null;
        }
        a(customRoundImageView, i11, strA);
        a(textView, textView2, strB, strC);
        a(i10, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                String strC = jSONObject.has("title") ? j.c(jSONObject, "title") : null;
                String strC2 = jSONObject.has("desc") ? j.c(jSONObject, "desc") : null;
                String strC3 = jSONObject.has("appIcon") ? j.c(jSONObject, "appIcon") : null;
                String strC4 = jSONObject.has("lauchImageUrl") ? j.c(jSONObject, "lauchImageUrl") : null;
                e eVar = new e();
                eVar.b(strC);
                eVar.c(strC2);
                eVar.a(strC3);
                eVar.d(strC4);
                return eVar;
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final CustomRoundImageView customRoundImageView, int i10, String str) {
        try {
            if (this.f9888b == null || customRoundImageView == null) {
                return;
            }
            if (TextUtils.isEmpty(str)) {
                customRoundImageView.setVisibility(8);
                return;
            }
            final int iA = t.a(this, i10);
            customRoundImageView.setVisibility(0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) customRoundImageView.getLayoutParams();
            layoutParams.width = iA;
            layoutParams.height = iA;
            customRoundImageView.setLayoutParams(layoutParams);
            h.a(this).a(str, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.28
                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    try {
                        CustomRoundImageView customRoundImageView2 = customRoundImageView;
                        if (customRoundImageView2 != null) {
                            customRoundImageView2.setImageBitmap(bitmap);
                            customRoundImageView.setRectRadius(iA / 2);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TextView textView, TextView textView2, String str, String str2) {
        if (textView != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    textView.setVisibility(0);
                    textView.setText(str);
                } else {
                    textView.setVisibility(8);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (textView2 != null) {
            if (!TextUtils.isEmpty(str2)) {
                textView2.setVisibility(0);
                textView2.setText(str2);
            } else {
                textView2.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        try {
            String strO = o();
            if (TextUtils.isEmpty(strO)) {
                return;
            }
            this.E.setVideoPath(strO);
            if (i10 == 0) {
                this.E.requestFocus();
            } else {
                this.E.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:72:0x0103  */
    public void a(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11) {
        com.beizi.ad.internal.d.a aVarM;
        com.beizi.ad.model.c.d dVarA;
        try {
            if (this.f9883a == null || this.as || !hasWindowFocus() || (aVarM = this.f9883a.m()) == null) {
                return;
            }
            if (this.bm == this.bn && this.an && this.br > 0 && !this.ao) {
                W();
            }
            String strE = this.f9883a.e();
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
            i();
            if (this.aJ != 0) {
                List<com.beizi.ad.model.c.d> listAc = aVarM.ac();
                if (listAc != null && listAc.size() > 0) {
                    Iterator<com.beizi.ad.model.c.d> it2 = listAc.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            dVarA = null;
                            break;
                        }
                        com.beizi.ad.model.c.d next = it2.next();
                        if (next.u() && !next.v()) {
                            dVarA = next;
                            break;
                        }
                    }
                } else {
                    dVarA = null;
                    break;
                }
            } else if (i10 != 2 && i10 != 7) {
                if (this.aE == this.aF) {
                    if (!this.bg) {
                        dVarA = null;
                        break;
                    }
                    dVarA = aVarM.a(5);
                } else {
                    List<com.beizi.ad.model.c.d> list = this.aM;
                    if (list == null || list.size() <= 0) {
                        dVarA = null;
                        break;
                    } else if (!this.bg) {
                        dVarA = this.aM.get(this.aO);
                    } else {
                        dVarA = aVarM.a(5);
                        if (dVarA == null) {
                            dVarA = this.aM.get(0);
                        }
                    }
                }
            } else {
                com.beizi.ad.model.c.d dVarA2 = aVarM.a(i10);
                if (dVarA2 != null) {
                    dVarA = dVarA2;
                } else if (this.aE == this.aF) {
                    if (this.bg) {
                        dVarA = aVarM.a(5);
                    } else {
                        dVarA = dVarA2;
                    }
                } else {
                    List<com.beizi.ad.model.c.d> list2 = this.aM;
                    if (list2 == null || list2.size() <= 0) {
                        dVarA = dVarA2;
                    } else if (i10 == 2) {
                        dVarA = this.aM.get(this.aO);
                    } else if (i10 == 7) {
                        dVarA = this.aM.get(0);
                    } else {
                        dVarA = dVarA2;
                    }
                }
            }
            if (dVarA == null) {
                dVarA = aVarM.a(this.aE);
            }
            aVarM.a(dVarA, this.f9893c, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.O, strE, i11);
            this.O = true;
            if (this.am && this.ax == 3) {
                this.aH++;
            }
            this.f9883a.G();
            if (this.am) {
                j();
            }
            ae aeVar = this.bv;
            if (aeVar != null) {
                aeVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(final ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            if ("shake".equals(this.ai)) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.beizi_interaction_icon_shake);
                if (!TextUtils.isEmpty(this.ah)) {
                    h.a(this).b(this.ah, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.10
                        @Override // com.beizi.ad.internal.e.h.a
                        public void a() {
                        }

                        @Override // com.beizi.ad.internal.e.h.a
                        public void a(Bitmap bitmap) {
                            try {
                                ImageView imageView2 = imageView;
                                if (imageView2 == null || bitmap == null) {
                                    return;
                                }
                                imageView2.setVisibility(0);
                                imageView.setImageBitmap(bitmap);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                }
                com.beizi.ad.a.a.e eVar = this.f9884aa;
                if (eVar != null) {
                    eVar.a(imageView);
                    return;
                }
                return;
            }
            if ("eulerAngle".equals(this.ai)) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.beizi_interaction_icon_euler_angle);
                if (!TextUtils.isEmpty(this.ah)) {
                    h.a(this).b(this.ah, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.11
                        @Override // com.beizi.ad.internal.e.h.a
                        public void a() {
                        }

                        @Override // com.beizi.ad.internal.e.h.a
                        public void a(Bitmap bitmap) {
                            try {
                                ImageView imageView2 = imageView;
                                if (imageView2 == null || bitmap == null) {
                                    return;
                                }
                                imageView2.setVisibility(0);
                                imageView.setImageBitmap(bitmap);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                }
                a aVar = this.f9886ac;
                if (aVar != null) {
                    aVar.a(imageView);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.13

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float f9923a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f9924b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f9925c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            float f9926d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float f9927e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            float f9928f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f9923a = motionEvent.getX();
                    this.f9924b = motionEvent.getY();
                    this.f9925c = motionEvent.getRawX();
                    this.f9926d = motionEvent.getRawY();
                    this.f9927e = motionEvent.getX();
                    this.f9928f = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        this.f9927e = motionEvent.getX();
                        this.f9928f = motionEvent.getY();
                    }
                } else if (Math.abs(this.f9927e - this.f9923a) <= 15.0f && Math.abs(this.f9928f - this.f9924b) <= 15.0f) {
                    BeiZiNewRewardVideoActivity.this.a(0, String.valueOf(this.f9923a), String.valueOf(this.f9924b), String.valueOf(this.f9925c), String.valueOf(this.f9926d), String.valueOf(this.f9923a), String.valueOf(this.f9924b), String.valueOf(this.f9925c), String.valueOf(this.f9926d), 0);
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11) {
        double d10 = i11;
        double d11 = i10;
        if (d10 >= 0.25d * d11 && !this.at) {
            this.at = true;
            c(25);
        }
        if (d10 >= 0.5d * d11 && !this.au) {
            this.au = true;
            c(50);
        }
        if (d10 < d11 * 0.75d || this.av) {
            return;
        }
        this.av = true;
        c(75);
    }

    private void a(FrameLayout frameLayout) {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(this, this.f9888b.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(this, this.f9888b.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            if (frameLayout != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                layoutParams2.setMargins(0, 0, t.a(this, 12.0f), t.a(this, 30.0f));
                frameLayout.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(TextView textView, g gVar) {
        if (textView == null || gVar == null) {
            return;
        }
        try {
            String strB = gVar.b();
            if (this.ao) {
                strB = gVar.c();
            }
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            textView.setText(strB);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(final com.beizi.ad.model.c.d dVar, final int i10) {
        l lVarY;
        List<com.beizi.ad.model.c.a> listE;
        e eVarA;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9888b;
            if (aVar != null && this.f9893c != null) {
                if (i10 == 7) {
                    lVarY = aVar.Z();
                } else {
                    lVarY = aVar.Y();
                }
                l lVar = lVarY;
                if (lVar == null) {
                    return;
                }
                if (dVar != null && (listE = dVar.e()) != null && listE.size() > 0 && (eVarA = a(listE.get(0).b())) != null) {
                    String strD = eVarA.d();
                    if (!TextUtils.isEmpty(strD)) {
                        lVar.a(strD);
                    }
                    String strB = eVarA.b();
                    if (!TextUtils.isEmpty(strB)) {
                        lVar.b(strB);
                    }
                    String strC = eVarA.c();
                    if (!TextUtils.isEmpty(strC)) {
                        lVar.c(strC);
                    }
                }
                ae aeVar = this.bv;
                if (aeVar != null) {
                    aeVar.b();
                    this.bv = null;
                }
                this.bv = new ae();
                this.bv.a(this.f9893c, q.f(this), q.g(this), lVar, new ae.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.25
                    @Override // com.beizi.fusion.tool.ae.a
                    public void a() {
                        BeiZiNewRewardVideoActivity.this.a(i10, dVar);
                    }

                    @Override // com.beizi.fusion.tool.ae.a
                    public void b() {
                        if (BeiZiNewRewardVideoActivity.this.ak) {
                            BeiZiNewRewardVideoActivity.this.e(i10);
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, com.beizi.ad.model.c.d dVar) {
        if (i10 == 0 || dVar == null) {
            return;
        }
        try {
            b bVar = this.f9883a;
            if (bVar == null) {
                return;
            }
            String strE = bVar.e();
            com.beizi.ad.internal.d.a aVar = this.f9888b;
            if (aVar == null) {
                return;
            }
            aVar.a(dVar, this.f9893c, strE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Bitmap bitmap, final ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((((double) q.f(this)) * 1.0d) / ((double) q.g(this)))) - ((float) ((((double) bitmap.getWidth()) * 1.0d) / ((double) bitmap.getHeight()))));
            if (fAbs > 0.1f) {
                com.beizi.ad.lance.a.c.b().e().execute(new Runnable() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.26
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Bitmap bitmap2 = bitmap;
                            if (bitmap2 != null) {
                                final BitmapDrawable bitmapDrawable = new BitmapDrawable(i.a(BeiZiNewRewardVideoActivity.this, bitmap2, 20.0f));
                                if (BeiZiNewRewardVideoActivity.this.aK != null) {
                                    BeiZiNewRewardVideoActivity.this.aK.post(new Runnable() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.26.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            ImageView imageView2;
                                            try {
                                                BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                                if (bitmapDrawable2 == null || (imageView2 = imageView) == null) {
                                                    return;
                                                }
                                                imageView2.setBackground(bitmapDrawable2);
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }
                                    });
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            } else if (fAbs > 0.07d) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            imageView.setImageBitmap(bitmap);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(com.beizi.ad.model.c.d dVar, ImageView imageView) {
        o oVarW;
        try {
            if (com.beizi.fusion.c.b.a().p() || dVar == null || (oVarW = dVar.w()) == null) {
                return;
            }
            com.beizi.ad.a.a.e eVar = this.f9884aa;
            if (eVar != null) {
                eVar.d();
                this.f9884aa = null;
            }
            int iD = oVarW.d();
            double dB = oVarW.b();
            double dC = oVarW.c();
            int iE = oVarW.e();
            final int iJ = oVarW.j();
            final double dH = oVarW.h();
            final double dI = oVarW.i();
            final int iK = oVarW.k();
            boolean z10 = true;
            if (oVarW.g() != 1 || iJ <= 0 || dH <= 0.0d || dI <= 0.0d) {
                z10 = false;
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = new AdSpacesBean.BuyerBean.ShakeViewBean();
            if (this.bw && z10) {
                shakeViewBean.setShakeCount(iJ);
                shakeViewBean.setShakeStartAmplitude(dH);
                shakeViewBean.setShakeEndAmplitude(dI);
                shakeViewBean.setRegulatoryAngle(iK);
            } else {
                shakeViewBean.setShakeCount(iD);
                shakeViewBean.setShakeStartAmplitude(dB);
                shakeViewBean.setShakeEndAmplitude(dC);
                shakeViewBean.setRegulatoryAngle(iE);
            }
            com.beizi.ad.a.a.e eVar2 = new com.beizi.ad.a.a.e(this, shakeViewBean, null, null);
            this.f9884aa = eVar2;
            final boolean z11 = z10;
            eVar2.a(new com.beizi.ad.a.a.e.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.27
                @Override // com.beizi.ad.a.a.e.a
                public void a() {
                    try {
                        BeiZiNewRewardVideoActivity.this.bw = true;
                        if (z11) {
                            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = new AdSpacesBean.BuyerBean.ShakeViewBean();
                            shakeViewBean2.setShakeCount(iJ);
                            shakeViewBean2.setShakeStartAmplitude(dH);
                            shakeViewBean2.setShakeEndAmplitude(dI);
                            shakeViewBean2.setRegulatoryAngle(iK);
                            if (BeiZiNewRewardVideoActivity.this.f9884aa != null) {
                                BeiZiNewRewardVideoActivity.this.f9884aa.a(shakeViewBean2);
                            }
                        }
                        n.a("BeiZisAd", "handleShakeViewContent click");
                        BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            this.ai = "shake";
            this.ah = this.f9884aa.c();
            a(imageView);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
