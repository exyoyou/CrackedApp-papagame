package com.byazt.oq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.byazt.aq.da;
import com.byazt.xc.tt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2168})
public class ClickSlideUpShakeView extends SlideUpView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ShakeClickView f18203c;

    public ClickSlideUpShakeView(Context context, da daVar, boolean z10, int i10) {
        super(context);
        c(context, daVar, z10, i10);
    }

    private void c(Context context, da daVar, boolean z10, int i10) {
        ShakeClickView shakeClickView = new ShakeClickView(context, tt.ve(context), daVar, z10, i10);
        this.f18203c = shakeClickView;
        addView(shakeClickView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        this.f18203c.setLayoutParams(layoutParams);
    }

    public ShakeClickView getShakeView() {
        return this.f18203c;
    }

    public void setShakeText(String str) {
        if (this.f18203c == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.f18203c.setShakeText("");
        } else {
            this.f18203c.setShakeText(str);
        }
    }
}
