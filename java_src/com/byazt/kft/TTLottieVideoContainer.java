package com.byazt.kft;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 1476})
public class TTLottieVideoContainer extends FrameLayout implements com.byazt.jr.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.jr.tt.c f16187c;

    public TTLottieVideoContainer(Context context) {
        super(context);
    }

    @Override // com.byazt.jr.tt
    public void c(com.byazt.jr.c cVar) {
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.byazt.jr.tt
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setWindowVisibilityChangedListener(com.byazt.jr.tt.c cVar) {
        this.f16187c = cVar;
    }

    @Override // com.byazt.jr.tt
    public void c(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }
}
