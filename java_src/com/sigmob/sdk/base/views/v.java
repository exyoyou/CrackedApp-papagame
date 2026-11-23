package com.sigmob.sdk.base.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.windad.WindAdError;
import java.net.URI;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class v extends Dialog implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.sigmob.sdk.base.common.v f80244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f80245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Window f80246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f80247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f80248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.sigmob.sdk.videoAd.a f80249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BaseAdUnit f80250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.sigmob.sdk.mraid.h f80251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f80252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f80253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f80254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f80255l;

    public interface a {
        void onCloseClick();
    }

    public v(Context context, BaseAdUnit adUnit, com.sigmob.sdk.videoAd.a videoConfig) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f80246c = null;
        this.f80253j = 0;
        this.f80254k = 0;
        this.f80255l = false;
        this.f80252i = context.getApplicationContext();
        this.f80250g = adUnit;
        this.f80249f = videoConfig;
        this.f80245b = b();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f80248e = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f80248e.setBackgroundColor(0);
        setContentView(this.f80248e);
        setOnShowListener(this);
        SigmobLog.i("RecommendDialog onCreate:" + this.f80254k + ":" + this.f80253j);
        View view = this.f80245b;
        if (view != null) {
            this.f80248e.addView(view);
        }
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        d();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
        SigmobLog.i("RecommendDialog  onShow");
        a(com.sigmob.sdk.base.common.a.f78870d);
        this.f80251h.a(0);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        Window window = getWindow();
        this.f80246c = window;
        com.sigmob.sdk.videoplayer.c.a(window);
    }

    private void d() {
        Window window = getWindow();
        this.f80246c = window;
        if (window == null) {
            return;
        }
        window.setGravity(80);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG != 0) {
            this.f80246c.setWindowAnimations(iG);
        }
        this.f80246c.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = this.f80246c.getAttributes();
        int i10 = this.f80252i.getResources().getDisplayMetrics().widthPixels;
        int i11 = this.f80252i.getResources().getDisplayMetrics().heightPixels;
        int i12 = this.f80254k;
        if (i12 - 1 <= i10) {
            attributes.width = -1;
        } else {
            attributes.width = i12;
        }
        int i13 = this.f80253j;
        if (i13 - 1 <= i11) {
            attributes.height = -1;
        } else {
            attributes.height = i13;
        }
        SigmobLog.i("RecommendDialog windowDeploy: " + i10 + "====" + i11 + "====" + attributes.width + "====" + attributes.height);
        this.f80246c.setAttributes(attributes);
    }

    public View b() {
        if (this.f80251h == null) {
            this.f80251h = new com.sigmob.sdk.mraid.h(this.f80252i, this.f80250g, PlacementType.INTERSTITIAL);
        }
        this.f80251h.a(new com.sigmob.sdk.mraid.h.f() { // from class: com.sigmob.sdk.base.views.v.1
            @Override // com.sigmob.sdk.mraid.h.f
            public void a() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void b() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void c() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void d() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void e() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void f() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void g() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void h() {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void a(Integer duration) {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void b(Map<String, String> params) {
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void a(Map<String, String> params) {
            }
        });
        this.f80251h.a(new com.sigmob.sdk.mraid.h.a() { // from class: com.sigmob.sdk.base.views.v.2
            private int i() {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT < 28 || (rootWindowInsets = v.this.getWindow().getDecorView().getRootWindowInsets()) == null || rootWindowInsets.getDisplayCutout() == null) {
                    return 0;
                }
                return rootWindowInsets.getDisplayCutout().getSafeInsetTop();
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a() {
                SigmobLog.d("RecommendDialog onEndCardShow()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void b() {
                SigmobLog.d("RecommendDialog onShowSkipTime()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void c() {
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void d() {
                SigmobLog.d("RecommendDialog onExpand()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void e() {
                SigmobLog.i("RecommendDialog onFailedToLoad()");
                v.this.f80255l = true;
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void f() {
                SigmobLog.i("RecommendDialog onUnload()");
                v.this.dismiss();
                v.this.a(com.sigmob.sdk.base.common.a.f78871e);
                v.this.c();
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void g() {
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void h() {
                SigmobLog.i("RecommendDialog onClose()");
                if (v.this.f80247d != null) {
                    v.this.f80247d.onCloseClick();
                }
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(float cvTime) {
                SigmobLog.d("RecommendDialog onReward()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void b(float progress) {
                SigmobLog.d("RecommendDialog onSkip()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(int width, int height, int offsetX, int offsetY, com.sigmob.sdk.mraid.b.a closePosition, boolean allowOffscreen) {
                int i10 = v.this.f80252i.getResources().getDisplayMetrics().widthPixels;
                int i11 = v.this.f80252i.getResources().getDisplayMetrics().heightPixels;
                int iM = com.sigmob.sdk.videoplayer.c.m(v.this.getContext());
                int i12 = i();
                SigmobLog.i("RecommendDialog Origin onResize :" + width + "==" + height + "==" + offsetX + "==" + offsetY + "==" + allowOffscreen);
                v vVar = v.this;
                vVar.f80254k = Dips.dipsToIntPixels((float) width, vVar.f80252i);
                v vVar2 = v.this;
                vVar2.f80253j = Dips.dipsToIntPixels((float) height, vVar2.f80252i);
                int iDipsToIntPixels = Dips.dipsToIntPixels((float) offsetX, v.this.f80252i);
                int iDipsToIntPixels2 = Dips.dipsToIntPixels((float) offsetY, v.this.f80252i) - Math.max(iM, i12);
                if (v.this.f80245b == null) {
                    return;
                }
                if (!allowOffscreen) {
                    iDipsToIntPixels = Math.min(Math.max(iDipsToIntPixels, 0), i10);
                    iDipsToIntPixels2 = Math.min(Math.max(iDipsToIntPixels2, 0), i11);
                    if (v.this.f80254k + iDipsToIntPixels > i10) {
                        v.this.f80254k = i10 - iDipsToIntPixels;
                    }
                    if (v.this.f80253j + iDipsToIntPixels2 > i11) {
                        v.this.f80253j = i11 - iDipsToIntPixels2;
                    }
                }
                SigmobLog.i("RecommendDialog onResize: " + v.this.f80254k + "==" + v.this.f80253j + "==" + iDipsToIntPixels + "==" + iDipsToIntPixels2);
                if (v.this.f80254k <= 0 || v.this.f80253j <= 0) {
                    v.this.f80255l = true;
                }
                v.this.f80245b.setX(iDipsToIntPixels);
                v.this.f80245b.setY(iDipsToIntPixels2);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(v.this.f80254k, v.this.f80253j);
                layoutParams.addRule(12);
                v.this.f80245b.setLayoutParams(layoutParams);
                v.this.f80245b.requestLayout();
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(View view) {
                SigmobLog.d("RecommendDialog onLoaded()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(final WindAdError error) {
                SigmobLog.i("RecommendDialog onRenderProcessGone:" + error.toString());
                v.this.f80255l = true;
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(String ext) {
                SigmobLog.i("RecommendDialog onCompanionClick:" + ext);
                boolean z10 = true;
                if (com.sigmob.sdk.base.utils.t.b(ext)) {
                    try {
                        JSONObject jSONObject = new JSONObject(ext);
                        int iOptInt = jSONObject.optInt("type");
                        v.this.f80251h.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                        if (iOptInt == 1) {
                            z10 = false;
                        } else {
                            v.this.a(com.sigmob.sdk.base.common.a.f78885s);
                        }
                    } catch (Exception unused) {
                        v.this.f80251h.a("0", "0");
                        v.this.a(com.sigmob.sdk.base.common.a.f78885s);
                    }
                }
                v.this.f80249f.a(com.sigmob.sdk.base.a.ENDCARD, v.this.f80251h.a(), z10);
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(URI uri, int type, String ext) {
                boolean z10;
                JSONObject jSONObject;
                boolean z11;
                boolean z12;
                SigmobLog.i("RecommendDialog  onOpen:" + uri + "======" + type + "=====" + ext);
                boolean z13 = false;
                JSONObject jSONObject2 = null;
                if (com.sigmob.sdk.base.utils.t.b(ext)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(ext);
                        try {
                            int iOptInt = jSONObject3.optInt("type");
                            int iOptInt2 = jSONObject3.optInt("x");
                            int iOptInt3 = jSONObject3.optInt("y");
                            boolean zOptBoolean = jSONObject3.optBoolean("disable_landing");
                            try {
                                z10 = !jSONObject3.optBoolean("feDisable");
                                try {
                                    v.this.f80251h.a(String.valueOf(iOptInt2), String.valueOf(iOptInt3));
                                    if (iOptInt != 1) {
                                        v.this.a("click");
                                        z13 = true;
                                    }
                                    jSONObject = jSONObject3;
                                    z11 = z10;
                                    z12 = z13;
                                    z13 = zOptBoolean;
                                } catch (Exception unused) {
                                    jSONObject2 = jSONObject3;
                                    z13 = zOptBoolean;
                                    v.this.f80251h.a("0", "0");
                                    v.this.a("click");
                                    jSONObject = jSONObject2;
                                    z11 = z10;
                                    z12 = true;
                                }
                            } catch (Exception unused2) {
                                jSONObject2 = jSONObject3;
                                z13 = zOptBoolean;
                                z10 = true;
                                v.this.f80251h.a("0", "0");
                                v.this.a("click");
                                jSONObject = jSONObject2;
                                z11 = z10;
                                z12 = true;
                                if (!z13) {
                                }
                                v.this.f80249f.a(com.sigmob.sdk.base.a.ENDCARD, uri.toString(), v.this.f80251h.a(), z12, z11, jSONObject);
                            }
                        } catch (Exception unused3) {
                            jSONObject2 = jSONObject3;
                        }
                    } catch (Exception unused4) {
                    }
                } else {
                    v.this.f80251h.a("0", "0");
                    v.this.a("click");
                    jSONObject = null;
                    z12 = true;
                    z11 = true;
                }
                if (!z13 || com.sigmob.sdk.base.utils.t.a((CharSequence) v.this.f80250g.getLanding_page())) {
                    v.this.f80249f.a(com.sigmob.sdk.base.a.ENDCARD, uri.toString(), v.this.f80251h.a(), z12, z11, jSONObject);
                } else {
                    v.this.f80249f.a(com.sigmob.sdk.base.a.ENDCARD, (String) null, v.this.f80251h.a(), z12, z11);
                }
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(boolean isMute) {
                SigmobLog.d("RecommendDialog onMute()");
            }
        });
        String closeCardHtmlData = this.f80250g.getCloseCardHtmlData();
        if (com.sigmob.sdk.base.utils.t.b(closeCardHtmlData)) {
            this.f80251h.a(closeCardHtmlData, new com.sigmob.sdk.mraid.h.b() { // from class: com.sigmob.sdk.base.views.o0
                @Override // com.sigmob.sdk.mraid.h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
                    this.f80207a.a(vVar, vVar2);
                }
            });
        }
        return this.f80251h.q();
    }

    public void c() {
        com.sigmob.sdk.mraid.h hVar = this.f80251h;
        if (hVar == null) {
            return;
        }
        this.f80247d = null;
        hVar.m();
        this.f80251h = null;
    }

    public void a(a closeClickListener) {
        this.f80247d = closeClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
        if (vVar2 != null) {
            this.f80244a = vVar2;
            return;
        }
        com.sigmob.sdk.base.common.v vVar3 = new com.sigmob.sdk.base.common.v();
        this.f80244a = vVar3;
        vVar3.a(this.f80250g);
    }

    public void a(String event) {
        com.sigmob.sdk.base.common.v vVar = this.f80244a;
        if (vVar == null) {
            return;
        }
        vVar.a(event, 0);
    }

    public boolean a() {
        if (this.f80254k <= 0 || this.f80253j <= 0) {
            this.f80255l = true;
        }
        return this.f80255l;
    }
}
