package com.byazt.ouz;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ff.RoundImageView;
import com.byazt.ff.TTRatingBar;
import com.byazt.ui.UpieImageView;
import com.byazt.un.NativeDrawVideoTsView;
import com.byazt.un.NativeVideoTsView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 67})
public class u extends BackupView {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static rh[] f18517u = {new rh(2, 3.0241935f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 124), new rh(3, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new rh(4, 1.4044944f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME), new rh(16, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new rh(5, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new rh(15, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300)};
    public ImageView gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public NativeExpressView f18518m;
    public TextView my;
    public com.byazt.pop.ve nu;
    public TextView rh;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f18519z;

    public u(Context context) {
        super(context);
        this.f18362c = context;
    }

    private void a() {
        View viewLo = com.byazt.vfu.a.lo(this.f18362c);
        this.f18519z = viewLo;
        addView(viewLo);
        this.f18519z.findViewById(2114387734).setVisibility(8);
        this.f18519z.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387936);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView = (TextView) this.f18519z.findViewById(2114387633);
        pf.c((TextView) this.f18519z.findViewById(2114387658), this.tt);
        imageView.setAdjustViewBounds(true);
        imageView.setMaxHeight(this.sp);
        c(imageView);
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView.setText(this.tt.tj());
        }
        c(this, false);
        c(textView, true);
    }

    private void da() {
        View viewTk = com.byazt.vfu.a.tk(this.f18362c);
        this.f18519z = viewTk;
        addView(viewTk);
        this.f18519z.findViewById(2114387734).setVisibility(8);
        this.f18519z.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387936);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView = (TextView) this.f18519z.findViewById(2114387633);
        pf.c((TextView) this.f18519z.findViewById(2114387658), this.tt);
        c(imageView);
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView.setText(this.tt.tj());
        }
        c(this, false);
        c(textView, true);
    }

    private void i() {
        View viewLo = com.byazt.vfu.a.lo(this.f18362c);
        this.f18519z = viewLo;
        addView(viewLo);
        FrameLayout frameLayout = (FrameLayout) this.f18519z.findViewById(2114387734);
        frameLayout.setVisibility(0);
        this.f18519z.findViewById(2114387955).setVisibility(8);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView = (TextView) this.f18519z.findViewById(2114387633);
        pf.c((TextView) this.f18519z.findViewById(2114387658), this.tt);
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView.setText(this.tt.tj());
        }
        View viewC = c(this.f18518m);
        if (viewC != null) {
            frameLayout.removeAllViews();
            int i10 = this.f18361a;
            frameLayout.addView(viewC, new ViewGroup.LayoutParams(i10, (i10 * 9) / 16));
        }
        c(this, false);
        c(textView, true);
    }

    private void n() {
        View viewLt = com.byazt.vfu.a.lt(this.f18362c);
        this.f18519z = viewLt;
        addView(viewLt);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387695);
        ImageView imageView2 = (ImageView) this.f18519z.findViewById(2114387692);
        ImageView imageView3 = (ImageView) this.f18519z.findViewById(2114387690);
        ImageView imageView4 = (ImageView) this.f18519z.findViewById(2114387931);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView = (TextView) this.f18519z.findViewById(2114387633);
        pf.c((TextView) this.f18519z.findViewById(2114387658), this.tt);
        com.byazt.xky.tt.c(this.tt.pa().get(0)).to(imageView);
        com.byazt.xky.tt.c(this.tt.pa().get(1)).to(imageView2);
        com.byazt.xky.tt.c(this.tt.pa().get(2)).to(imageView3);
        com.byazt.xky.tt.c(this.tt.te()).to(imageView4);
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView.setText(this.tt.tj());
        }
        c(this, false);
        c(textView, true);
    }

    private void sl() {
        String strValueOf;
        String strValueOf2;
        if (this.tt == null) {
            return;
        }
        View viewL = com.byazt.vfu.a.l(this.f18362c);
        this.f18519z = viewL;
        addView(viewL);
        FrameLayout frameLayout = (FrameLayout) this.f18519z.findViewById(2114387765);
        TextView textView = (TextView) this.f18519z.findViewById(2114387899);
        View view = (RelativeLayout) this.f18519z.findViewById(2114387650);
        RoundImageView roundImageView = (RoundImageView) this.f18519z.findViewById(2114387818);
        RelativeLayout relativeLayout = (RelativeLayout) this.f18519z.findViewById(2114387777);
        TextView textView2 = (TextView) this.f18519z.findViewById(2114387768);
        TextView textView3 = (TextView) this.f18519z.findViewById(2114387619);
        TextView textView4 = (TextView) this.f18519z.findViewById(2114387895);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387881);
        if (com.byazt.ex.c.c(this.tt)) {
            String strI = bx.i(this.tt);
            if (TextUtils.isEmpty(strI) || roundImageView == null) {
                pf.c((View) relativeLayout, 8);
            } else {
                pf.c((View) relativeLayout, 0);
                com.byazt.xky.tt.c(strI).to(roundImageView);
            }
            if (textView != null) {
                textView.setText(bx.ve(this.tt));
            }
            if (textView2 != null) {
                int iUj = bx.uj(this.tt);
                if (iUj < 0) {
                    textView2.setVisibility(4);
                    pf.c((View) imageView, 4);
                } else {
                    if (iUj > 10000) {
                        strValueOf2 = (iUj / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf2 = String.valueOf(iUj);
                    }
                    textView2.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (textView3 != null) {
                int iN = bx.n(this.tt);
                if (iN < 0) {
                    pf.c((View) imageView, 4);
                    textView3.setVisibility(4);
                } else {
                    if (iN > 10000) {
                        strValueOf = (iN / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf = String.valueOf(iN);
                    }
                    textView3.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (textView4 != null) {
                textView4.setText(bx.a(this.tt));
            }
            View viewC = c(this.f18518m);
            if (viewC != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewC, new ViewGroup.LayoutParams(-1, -1));
            }
            com.byazt.hkv.c cVarU = u();
            c(roundImageView, cVarU, "click_live_avata");
            c(textView, cVarU, "click_live_author_nickname");
            c(textView2, cVarU, "click_live_author_follower_count");
            c(textView3, cVarU, "click_live_author_following_count");
            c(textView4, cVarU, "click_live_author_description");
            c(frameLayout, cVarU, "click_live_feed");
            c(view, cVarU, "click_live_button");
        }
    }

    private void sp() {
        View viewTk = com.byazt.vfu.a.tk(this.f18362c);
        this.f18519z = viewTk;
        addView(viewTk);
        this.f18519z.findViewById(2114387734).setVisibility(0);
        this.f18519z.findViewById(2114387955).setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) this.f18519z.findViewById(2114387965);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387913);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView = (TextView) this.f18519z.findViewById(2114387855);
        TextView textView2 = (TextView) this.f18519z.findViewById(2114387856);
        TextView textView3 = (TextView) this.f18519z.findViewById(2114387633);
        TextView textView4 = (TextView) this.f18519z.findViewById(2114387908);
        TTRatingBar tTRatingBar = (TTRatingBar) this.f18519z.findViewById(2114387874);
        pf.c((TextView) this.f18519z.findViewById(2114387617), this.tt);
        com.byazt.xky.tt.c(this.tt.te()).to(imageView);
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        int iN = this.tt.z() != null ? this.tt.z().n() : 4;
        textView4.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(iN)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(iN);
        tTRatingBar.setStarImageWidth(pf.ve(this.f18362c, 15.0f));
        tTRatingBar.setStarImageHeight(pf.ve(this.f18362c, 14.0f));
        tTRatingBar.setStarImagePadding(pf.ve(this.f18362c, 4.0f));
        tTRatingBar.c();
        textView.setText(getNameOrSource());
        textView2.setText(getTitle());
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView3.setText(this.tt.tj());
        }
        View viewC = c(this.f18518m);
        if (viewC != null) {
            int i10 = (this.f18361a * 123) / MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS;
            frameLayout.removeAllViews();
            frameLayout.addView(viewC, new ViewGroup.LayoutParams(i10, (i10 * 16) / 9));
        }
        c(this, false);
        c(textView3, true);
    }

    private void t() {
        String strValueOf;
        String strValueOf2;
        if (this.tt == null) {
            return;
        }
        View viewPu = com.byazt.vfu.a.pu(this.f18362c);
        this.f18519z = viewPu;
        addView(viewPu);
        FrameLayout frameLayout = (FrameLayout) this.f18519z.findViewById(2114387621);
        TextView textView = (TextView) this.f18519z.findViewById(2114387827);
        TextView textView2 = (TextView) this.f18519z.findViewById(2114387937);
        View view = (TextView) this.f18519z.findViewById(2114387861);
        RoundImageView roundImageView = (RoundImageView) this.f18519z.findViewById(2114387902);
        RelativeLayout relativeLayout = (RelativeLayout) this.f18519z.findViewById(2114387851);
        TextView textView3 = (TextView) this.f18519z.findViewById(2114387622);
        TextView textView4 = (TextView) this.f18519z.findViewById(2114387672);
        TextView textView5 = (TextView) this.f18519z.findViewById(2114387703);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387881);
        if (com.byazt.ex.c.c(this.tt)) {
            String strI = bx.i(this.tt);
            if (TextUtils.isEmpty(strI) || roundImageView == null) {
                pf.c((View) relativeLayout, 8);
            } else {
                pf.c((View) relativeLayout, 0);
                com.byazt.xky.tt.c(strI).to(roundImageView);
            }
            if (textView2 != null) {
                textView2.setText(bx.ve(this.tt));
            }
            if (textView3 != null) {
                int iUj = bx.uj(this.tt);
                if (iUj < 0) {
                    textView3.setVisibility(4);
                    pf.c((View) imageView, 4);
                } else {
                    if (iUj > 10000) {
                        strValueOf2 = (iUj / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf2 = String.valueOf(iUj);
                    }
                    textView3.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (textView4 != null) {
                int iN = bx.n(this.tt);
                if (iN < 0) {
                    textView4.setVisibility(4);
                    pf.c((View) imageView, 4);
                } else {
                    if (iN > 10000) {
                        strValueOf = (iN / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf = String.valueOf(iN);
                    }
                    textView4.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (textView != null) {
                textView.setText(bx.a(this.tt));
            }
            View viewC = c(this.f18518m);
            if (viewC != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewC, new ViewGroup.LayoutParams(-1, -1));
            }
            com.byazt.hkv.c cVarU = u();
            c(roundImageView, cVarU, "click_live_avata");
            c(textView2, cVarU, "click_live_author_nickname");
            c(textView3, cVarU, "click_live_author_follower_count");
            c(textView4, cVarU, "click_live_author_following_count");
            c(textView, cVarU, "click_live_author_description");
            c(frameLayout, cVarU, "click_live_feed");
            c(view, cVarU, "click_live_button");
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    u.this.c();
                }
            });
        }
    }

    private com.byazt.hkv.c u() {
        Context context = this.f18362c;
        ic icVar = this.tt;
        String str = this.f18365n;
        final com.byazt.hkv.c cVar = new com.byazt.hkv.c(context, icVar, str, nb.uj(str)) { // from class: com.byazt.ouz.u.8
            @Override // com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, com.byazt.ete.da daVar) {
                if (view == null) {
                    super.c(view, daVar);
                    return;
                }
                HashMap map = new HashMap();
                map.put("click_live_element", view.getTag());
                ((com.byazt.vis.c) c(com.byazt.vis.c.class)).c(map);
                super.c(view, daVar);
            }
        };
        ve veVar = new ve() { // from class: com.byazt.ouz.u.9
            @Override // com.byazt.ouz.ve
            public void c(View view, int i10, com.byazt.ete.gr grVar) {
                try {
                    grVar.c().put("click_extra_map", ((com.byazt.vis.c) cVar.c(com.byazt.vis.c.class)).n());
                } catch (JSONException unused) {
                }
                u.this.c(view, i10, grVar);
            }
        };
        com.byazt.wdw.c cVar2 = (com.byazt.wdw.c) cVar.c(com.byazt.wdw.c.class);
        if (cVar2 != null) {
            cVar2.c(veVar);
            cVar2.c(2);
        }
        return cVar;
    }

    private rh uj(int i10) {
        rh[] rhVarArr = f18517u;
        rh rhVar = rhVarArr[0];
        try {
            for (rh rhVar2 : rhVarArr) {
                if (rhVar2.f18482c == i10) {
                    return rhVar2;
                }
            }
            return rhVar;
        } catch (Throwable unused) {
            return rhVar;
        }
    }

    private void ve(int i10) {
        rh rhVarUj = uj(this.tt.id());
        this.f18361a = pf.ve(this.f18362c, this.f18518m.getExpectExpressWidth());
        this.sp = pf.ve(this.f18362c, this.f18518m.getExpectExpressHeight());
        if (this.f18361a <= 0) {
            this.f18361a = pf.uj(this.f18362c);
        }
        if (this.sp <= 0) {
            this.sp = Float.valueOf(this.f18361a / rhVarUj.ve).intValue();
        }
        int i11 = this.f18361a;
        if (i11 > 0 && i11 > pf.uj(this.f18362c)) {
            float fUj = pf.uj(this.f18362c) / this.f18361a;
            this.f18361a = pf.uj(this.f18362c);
            this.sp = Float.valueOf(this.sp * fUj).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f18361a, this.sp);
        }
        layoutParams.width = this.f18361a;
        layoutParams.height = this.sp;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        if (i10 == 9) {
            this.f18365n = "draw_ad";
            if (com.byazt.ex.c.c(this.tt)) {
                sl();
                return;
            } else {
                x();
                return;
            }
        }
        this.f18365n = com.byazt.dyf.tt.AD_TAG_FEED;
        int iId = this.tt.id();
        if (iId == 2) {
            uj();
            return;
        }
        if (iId == 3) {
            a();
            return;
        }
        if (iId == 4) {
            n();
            return;
        }
        if (iId == 5) {
            i();
            return;
        }
        if (iId == 15) {
            sp();
            return;
        }
        if (iId == 16) {
            da();
            return;
        }
        if (iId == 131) {
            da();
        } else if (iId != 166) {
            da();
        } else {
            t();
        }
    }

    private void x() {
        View viewLr = com.byazt.vfu.a.lr(this.f18362c);
        this.f18519z = viewLr;
        addView(viewLr);
        FrameLayout frameLayout = (FrameLayout) this.f18519z.findViewById(2114387734);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387936);
        TextView textView = (TextView) this.f18519z.findViewById(2114387920);
        TextView textView2 = (TextView) this.f18519z.findViewById(2114387940);
        TextView textView3 = (TextView) this.f18519z.findViewById(2114387633);
        TextView textView4 = (TextView) this.f18519z.findViewById(2114387658);
        textView.setText(getDescription());
        textView2.setText(getTitle());
        pf.c(textView4, this.tt);
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView3.setText(this.tt.tj());
        }
        if (ic.ve(this.tt)) {
            imageView.setVisibility(8);
        } else {
            c(imageView);
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }
        View viewC = c(this.f18518m);
        NativeExpressView nativeExpressView = this.f18518m;
        if ((nativeExpressView instanceof NativeExpressVideoView) && (viewC instanceof NativeVideoTsView)) {
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) nativeExpressView;
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) viewC;
            nativeVideoTsView.setVideoAdLoadListener(nativeExpressVideoView);
            nativeVideoTsView.setVideoAdInteractionListener(nativeExpressVideoView);
        }
        if (viewC != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(viewC, new ViewGroup.LayoutParams(-1, -1));
        } else {
            this.f18519z.setBackgroundColor(-16777216);
        }
        c(textView2, false);
        c(textView, false);
        c(textView3, true);
    }

    @Override // com.byazt.ouz.BackupView, com.byazt.xv.c
    public void b_(int i10) {
        super.b_(i10);
        n(i10);
    }

    public void c(ic icVar, NativeExpressView nativeExpressView, com.byazt.pop.ve veVar) {
        setBackgroundColor(-1);
        this.tt = icVar;
        this.f18518m = nativeExpressView;
        this.nu = veVar;
        int iT = nb.t(icVar);
        this.yp = iT;
        tt(iT);
        int iSl = nb.sl(this.tt);
        ve(iSl);
        n(com.byazt.omf.x.m().pu());
        int i10 = iSl != 9 ? -2 : -1;
        this.f18518m.addView(this, new ViewGroup.LayoutParams(i10, i10));
    }

    public void tt() {
        if (this.rh == null || this.my == null) {
            return;
        }
        int iId = this.tt.id();
        if (iId == 2) {
            this.rh.setTextColor(Color.parseColor("#FFBCBCBC"));
            this.my.setTextColor(Color.parseColor("#FF999999"));
            return;
        }
        if (iId != 3) {
            if (iId == 4) {
                this.rh.setTextColor(Color.parseColor("#FF3E3E3E"));
                this.my.setTextColor(Color.parseColor("#FF3E3E3E"));
                return;
            } else if (iId != 5 && iId != 15 && iId != 16) {
                return;
            }
        }
        this.rh.setTextColor(Color.parseColor("#FF222222"));
        this.my.setTextColor(Color.parseColor("#FF505050"));
    }

    private void uj() {
        View viewAw = com.byazt.vfu.a.aw(this.f18362c);
        this.f18519z = viewAw;
        addView(viewAw);
        ImageView imageView = (ImageView) this.f18519z.findViewById(2114387936);
        this.gt = (ImageView) this.f18519z.findViewById(2114387854);
        this.my = (TextView) this.f18519z.findViewById(2114387920);
        this.rh = (TextView) this.f18519z.findViewById(2114387940);
        c((LinearLayout) this.f18519z.findViewById(2114387660), (TextView) this.f18519z.findViewById(2114387658), this.tt);
        c(imageView);
        this.my.setText(getDescription());
        this.rh.setText(getTitle());
        this.gt.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ouz.u.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                u.this.c();
            }
        });
        c(this, true);
    }

    private void c(ImageView imageView) {
        com.byazt.xky.tt.c(this.tt.pa().get(0)).to(imageView);
        if (com.byazt.ic.c.uj(this.tt)) {
            UpieImageView upieImageView = new UpieImageView(imageView.getContext(), com.byazt.ic.c.i(this.tt), com.byazt.nj.c.c(this.tt), com.byazt.ic.c.da(this.tt));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.ic.c.c(imageView, upieImageView);
        }
    }

    private void c(View view, TextView textView, ic icVar) {
        if (view == null || textView == null) {
            return;
        }
        if (icVar == null) {
            view.setVisibility(0);
            return;
        }
        if (TextUtils.isEmpty(icVar.dn())) {
            view.setVisibility(0);
            textView.setVisibility(8);
            pf.c(view, icVar);
        } else {
            view.setVisibility(8);
            textView.setVisibility(0);
            pf.c(textView, icVar);
        }
    }

    private void n(int i10) {
        if (i10 == 1) {
            ve();
            this.f18519z.setBackgroundColor(0);
            if (this.gt != null) {
                com.byazt.nr.z.c(getContext(), "tt_dislike_icon_night", this.gt, 320);
                return;
            }
            return;
        }
        tt();
        this.f18519z.setBackgroundColor(-1);
        if (this.gt != null) {
            com.byazt.nr.z.c(getContext(), "tt_dislike_icon2", this.gt, 320);
        }
    }

    private void c(View view, com.byazt.hkv.tt ttVar, String str) {
        if (view == null || ttVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        view.setTag(str);
        view.setOnClickListener(ttVar);
    }

    @Override // com.byazt.ouz.BackupView
    public void c(View view, int i10, com.byazt.ete.gr grVar) {
        NativeExpressView nativeExpressView = this.f18518m;
        if (nativeExpressView != null) {
            if (i10 == 1 && nativeExpressView.getClickListener() != null) {
                this.f18518m.getClickListener().tt(this.gt);
            }
            if (i10 == 2 && this.f18518m.getClickCreativeListener() != null) {
                this.f18518m.getClickCreativeListener().tt(this.gt);
            }
            this.f18518m.c(view, i10, grVar, -1);
        }
    }

    public void ve() {
        TextView textView = this.rh;
        if (textView == null || this.my == null) {
            return;
        }
        textView.setTextColor(-1);
        this.my.setTextColor(-1);
    }

    @Override // com.byazt.ouz.BackupView
    public NativeVideoTsView c(Context context, ic icVar, String str, boolean z10, boolean z11) {
        if ("draw_ad".equals(str)) {
            return new NativeDrawVideoTsView(context, icVar, str, z10, z11);
        }
        return new NativeVideoTsView(context, icVar, str, z10, z11);
    }
}
