package com.byazt.oq;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.xc.tt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1640})
public class ClickSlideUpView2 extends SlideUpView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AnimatorSet f18205a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f18206c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18207n;
    public ImageView tt;
    public ImageView uj;
    public ImageView ve;

    public ClickSlideUpView2(Context context) {
        super(context);
        this.f18205a = new AnimatorSet();
        tt(context);
    }

    private void tt(Context context) {
        addView(tt.tt(context));
        this.tt = (ImageView) findViewById(2097610751);
        this.ve = (ImageView) findViewById(2097610750);
        this.uj = (ImageView) findViewById(2097610749);
        this.f18206c = (TextView) findViewById(2097610748);
    }

    private void uj() {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(2000L);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.start();
    }

    @Override // com.byazt.oq.SlideUpView
    public void c(Context context) {
    }

    public float getAlphaColor() {
        return this.f18207n;
    }

    public void setAlphaColor(int i10) {
        if (i10 < 0 || i10 > 60) {
            return;
        }
        int i11 = i10 + 195;
        this.uj.setColorFilter(Color.rgb(i11, i11, i11), PorterDuff.Mode.SRC_IN);
        int i12 = ((i10 + 20) % 60) + 195;
        this.ve.setColorFilter(Color.rgb(i12, i12, i12), PorterDuff.Mode.SRC_IN);
        int i13 = ((i10 + 40) % 60) + 195;
        this.tt.setColorFilter(Color.rgb(i13, i13, i13), PorterDuff.Mode.SRC_IN);
    }

    public void setButtonText(String str) {
        if (this.f18206c == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f18206c.setText(str);
    }

    @Override // com.byazt.oq.SlideUpView
    public void c() {
        uj();
    }

    @Override // com.byazt.oq.SlideUpView
    public void tt() {
        this.f18205a.cancel();
    }
}
