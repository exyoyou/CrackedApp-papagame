package com.byazt.tlp;

import android.content.Context;
import com.byazt.oq.GifView;
import com.byazt.sa.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.base.BaseQuickAdapter;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_VIDEO_DIFF_THRESHOLD, BaseQuickAdapter.FOOTER_VIEW})
public class UgenGif extends GifView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f20257c;

    public UgenGif(Context context) {
        super(context);
    }

    public void c(uj ujVar) {
        this.f20257c = ujVar;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f20257c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f20257c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // com.byazt.oq.GifView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        uj ujVar = this.f20257c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
    }

    @Override // com.byazt.oq.GifView, android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        uj ujVar = this.f20257c;
        if (ujVar != null) {
            ujVar.ve();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f20257c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }
}
