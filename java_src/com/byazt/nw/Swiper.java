package com.byazt.nw;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import com.byazt.sa.uj;
import com.byazt.xj.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 1547})
public class Swiper extends BaseSwiper<ve> {
    public uj uj;

    public Swiper(Context context) {
        super(context);
    }

    public void c(uj ujVar) {
        this.uj = ujVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.uj;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.uj;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.uj;
        if (ujVar != null) {
            ujVar.uj();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        uj ujVar2 = this.uj;
        if (ujVar2 != null) {
            ujVar2.c(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.uj;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        uj ujVar2 = this.uj;
        if (ujVar2 != null) {
            ujVar2.ve();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.uj;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.uj;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    @Override // com.byazt.nw.BaseSwiper
    public View sl(int i10) {
        return ((ve) this.f17647c.get(i10)).i();
    }
}
