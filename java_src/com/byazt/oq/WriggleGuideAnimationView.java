package com.byazt.oq;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aq.da;
import com.byazt.ga.LottieAnimationView;
import com.byazt.nr.zm;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1743})
public class WriggleGuideAnimationView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinearLayout f18332a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18333c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18334i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f18335n;
    public LottieAnimationView sp;
    public TextView tt;
    public TextView uj;
    public zm ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public da f18336x;

    public interface c {
        void c();
    }

    public WriggleGuideAnimationView(Context context, View view, da daVar, boolean z10, int i10) {
        super(context);
        this.f18336x = daVar;
        this.f18334i = z10;
        this.f18333c = i10;
        c(context, view);
    }

    public TextView getTopTextView() {
        return this.tt;
    }

    public LinearLayout getWriggleLayout() {
        return this.f18332a;
    }

    public View getWriggleProgressIv() {
        return this.sp;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.ve == null) {
                this.ve = new zm(getContext().getApplicationContext(), 2, this.f18334i);
            }
            this.ve.c(new zm.c() { // from class: com.byazt.oq.WriggleGuideAnimationView.2
                @Override // com.byazt.nr.zm.c
                public void c(int i10) {
                    if (i10 == 2 && WriggleGuideAnimationView.this.isShown() && WriggleGuideAnimationView.this.f18335n != null) {
                        WriggleGuideAnimationView.this.f18335n.c();
                    }
                }
            });
            da daVar = this.f18336x;
            if (daVar != null) {
                this.ve.tt(daVar.ve());
                this.ve.a(this.f18336x.n());
                this.ve.c(this.f18336x.a());
                this.ve.tt(this.f18336x.x());
            }
            this.ve.c(this.f18333c);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zm zmVar = this.ve;
        if (zmVar != null) {
            zmVar.tt(this.f18333c);
        }
        try {
            LottieAnimationView lottieAnimationView = this.sp;
            if (lottieAnimationView != null) {
                lottieAnimationView.a();
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        zm zmVar = this.ve;
        if (zmVar != null) {
            if (z10) {
                zmVar.c(this.f18333c);
            } else {
                zmVar.tt(this.f18333c);
            }
        }
    }

    public void setOnShakeViewListener(c cVar) {
        this.f18335n = cVar;
    }

    public void setShakeText(String str) {
        this.uj.setText(str);
    }

    private void c(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.f18332a = (LinearLayout) findViewById(2097610722);
        this.tt = (TextView) findViewById(2097610719);
        this.uj = (TextView) findViewById(2097610718);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(2097610706);
        this.sp = lottieAnimationView;
        lottieAnimationView.setAnimation("lottie_json/twist_multi_angle.json");
        this.sp.setImageAssetsFolder("images/");
        this.sp.c(true);
    }

    public void c() {
        postDelayed(new Runnable() { // from class: com.byazt.oq.WriggleGuideAnimationView.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WriggleGuideAnimationView.this.sp.c();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }
}
