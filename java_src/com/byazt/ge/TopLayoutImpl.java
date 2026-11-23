package com.byazt.ge;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.h;
import com.byazt.ete.ic;
import com.byazt.ete.lt;
import com.byazt.ete.my;
import com.byazt.nr.z;
import com.byazt.ukr.yp;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 758, 1058})
public class TopLayoutImpl extends FrameLayout implements c<TopLayoutImpl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f14483a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f14484c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public View f14485da;
    public boolean gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f14486i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f14487m;
    public TextView my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f14488n;
    public View nu;
    public ic qy;
    public View rh;
    public tt rl;
    public TextView sl;
    public View sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public View f14489t;
    public ImageView tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f14490u;
    public View uj;
    public View ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public View f14491x;
    public View yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f14492z;

    public TopLayoutImpl(Context context) {
        this(context, null);
    }

    @Override // com.byazt.ge.c
    public View getCloseButton() {
        return this.f14485da;
    }

    @Override // com.byazt.ge.c
    public boolean getSkipOrCloseVisible() {
        return pf.uj(this.f14485da) || (this.f14483a != null && pf.uj(this.sl) && !TextUtils.isEmpty(this.sl.getText()));
    }

    public tt getTopListener() {
        return this.rl;
    }

    @Override // com.byazt.ge.c
    public void setDislikeLeft(boolean z10) {
        if (this.f14484c.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f14484c.getLayoutParams();
            layoutParams.gravity = z10 ? GravityCompat.START : GravityCompat.END;
            this.f14484c.setLayoutParams(layoutParams);
        }
    }

    @Override // com.byazt.ge.c
    public void setListener(tt ttVar) {
        this.rl = ttVar;
    }

    @Override // com.byazt.ge.c
    public void setPlayAgainEntranceText(String str) {
        pf.c(this.f14488n, str);
    }

    @Override // com.byazt.ge.c
    public void setShowAgain(boolean z10) {
        pf.c(this.uj, z10 ? 0 : 8);
    }

    @Override // com.byazt.ge.c
    public void setShowBack(boolean z10) {
        View view = this.ve;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // com.byazt.ge.c
    public void setShowDislike(boolean z10) {
        View view = this.f14484c;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // com.byazt.ge.c
    public void setShowSound(boolean z10) {
        ImageView imageView = this.tt;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // com.byazt.ge.c
    public void setSoundMute(boolean z10) {
        this.gt = z10;
        z.c(getContext(), this.gt ? "tt_mute" : "tt_unmute", this.tt, 320);
    }

    @Override // com.byazt.ge.c
    public void setVisible(boolean z10) {
        setVisibility(z10 ? 0 : 8);
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void uj() {
        pf.c(this.f14484c, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.ve(view);
                }
            }
        }, "top_dislike_button");
        pf.c(this.tt, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TopLayoutImpl topLayoutImpl = TopLayoutImpl.this;
                topLayoutImpl.gt = !topLayoutImpl.gt;
                z.c(TopLayoutImpl.this.getContext(), TopLayoutImpl.this.gt ? "tt_mute" : "tt_unmute", TopLayoutImpl.this.tt, 320);
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.tt(view);
                }
            }
        }, "top_mute_button");
        pf.c(this.sp, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "top_before_button");
        pf.c(this.f14485da, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("topListener", TopLayoutImpl.this.rl);
                    jSONObject.put("topImpl", 1);
                } catch (Throwable unused) {
                }
                if (!h.c(TopLayoutImpl.this.qy) || com.byazt.dl.uj.c(String.valueOf(nb.t(TopLayoutImpl.this.qy)))) {
                    yp.c().c(TopLayoutImpl.this.qy, "stats_reward_full_click_native_close", jSONObject);
                }
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.c(view);
                }
            }
        }, "top_skip_button");
        pf.c(this.ve, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.uj(view);
                }
            }
        }, "top_back_button");
        pf.c(this.uj, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.n(view);
                }
            }
        }, "top_again_button");
        pf.c(this.f14483a, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.a(view);
                }
            }
        }, "top_skip_border");
        pf.c(this.rh, new View.OnClickListener() { // from class: com.byazt.ge.TopLayoutImpl.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.rl != null) {
                    TopLayoutImpl.this.rl.sp(view);
                }
            }
        }, "top_next_video_cancel");
    }

    @Override // com.byazt.ge.c
    public void tt() {
        ImageView imageView = this.tt;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.byazt.ge.c
    public void ve() {
        View view = this.f14484c;
        if (view != null) {
            view.performClick();
        }
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public TopLayoutImpl c(ic icVar) {
        this.qy = icVar;
        if (my.u(icVar)) {
            addView(com.byazt.vfu.a.x(getContext()));
        } else if (lt.x(this.qy)) {
            addView(com.byazt.vfu.a.sp(getContext()));
        } else {
            addView(com.byazt.vfu.a.a(getContext()));
        }
        this.f14484c = findViewById(2114387845);
        this.tt = (ImageView) findViewById(2114387758);
        this.ve = findViewById(2114387819);
        this.uj = findViewById(2114387673);
        this.f14488n = (TextView) findViewById(2114387632);
        this.f14483a = findViewById(2114387713);
        this.sp = findViewById(2114387951);
        this.f14491x = findViewById(2114387725);
        this.f14486i = (TextView) findViewById(2114387606);
        this.f14485da = findViewById(2114387635);
        this.sl = (TextView) findViewById(2114387785);
        this.f14489t = findViewById(2114387738);
        this.f14490u = findViewById(2114387924);
        this.yp = findViewById(2114387950);
        this.f14492z = findViewById(2114387949);
        this.f14487m = (TextView) findViewById(2114387948);
        this.nu = findViewById(2114387947);
        this.rh = findViewById(2114387946);
        this.my = (TextView) findViewById(2114387945);
        View view = this.f14485da;
        if (view != null) {
            view.setEnabled(false);
            this.f14485da.setClickable(false);
        }
        uj();
        return this;
    }

    @Override // com.byazt.ge.c
    public void c(boolean z10, String str, String str2, boolean z11, boolean z12) {
        pf.c(this.f14483a, 0);
        boolean z13 = z10 || !TextUtils.isEmpty(str);
        boolean z14 = z11 || !TextUtils.isEmpty(str2);
        boolean z15 = z13 && z14;
        pf.c(this.f14483a, (z13 || z14) ? 0 : 4);
        pf.c(this.sp, z13 ? 0 : 8);
        pf.c(this.f14485da, z14 ? 0 : 8);
        pf.c(this.f14490u, z15 ? 0 : 8);
        pf.c(this.f14491x, z10 ? 0 : 8);
        pf.c((View) this.f14486i, !TextUtils.isEmpty(str) ? 0 : 8);
        pf.c(this.f14489t, z11 ? 0 : 8);
        pf.c((View) this.sl, TextUtils.isEmpty(str2) ? 8 : 0);
        if (!TextUtils.isEmpty(str)) {
            pf.c(this.f14486i, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            pf.c(this.sl, str2);
        }
        View view = this.f14485da;
        if (view != null) {
            view.setEnabled(z12);
            this.f14485da.setClickable(z12);
        }
    }

    @Override // com.byazt.ge.c
    public void c(String str, String str2, boolean z10) {
        boolean z11 = !TextUtils.isEmpty(str);
        boolean z12 = !TextUtils.isEmpty(str2);
        boolean z13 = z11 && z12;
        pf.c(this.yp, (z11 || z12) ? 0 : 4);
        pf.c(this.f14492z, z11 ? 0 : 8);
        pf.c(this.rh, z12 ? 0 : 8);
        pf.c(this.nu, z13 ? 0 : 8);
        pf.c((View) this.f14487m, !TextUtils.isEmpty(str) ? 0 : 8);
        pf.c((View) this.my, TextUtils.isEmpty(str2) ? 8 : 0);
        if (!TextUtils.isEmpty(str)) {
            pf.c(this.f14487m, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            pf.c(this.my, str2);
        }
        View view = this.f14485da;
        if (view != null) {
            view.setEnabled(z10);
            this.f14485da.setClickable(z10);
        }
    }

    @Override // com.byazt.ge.c
    public void c() {
        View view = this.f14485da;
        if (view != null) {
            view.performClick();
        }
    }
}
