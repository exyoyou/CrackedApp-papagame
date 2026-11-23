package com.byazt.oq;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 20})
public class c implements Interpolator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PointF f18348c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public PointF f18349n;
    public PointF tt;
    public PointF uj;
    public PointF ve;

    public c(PointF pointF, PointF pointF2) throws IllegalArgumentException {
        this.ve = new PointF();
        this.uj = new PointF();
        this.f18349n = new PointF();
        float f10 = pointF.x;
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("startX value must be in the range [0, 1]");
        }
        float f11 = pointF2.x;
        if (f11 < 0.0f || f11 > 1.0f) {
            throw new IllegalArgumentException("endX value must be in the range [0, 1]");
        }
        this.f18348c = pointF;
        this.tt = pointF2;
    }

    private float uj(float f10) {
        PointF pointF = this.f18349n;
        PointF pointF2 = this.f18348c;
        float f11 = pointF2.x * 3.0f;
        pointF.x = f11;
        PointF pointF3 = this.uj;
        float f12 = ((this.tt.x - pointF2.x) * 3.0f) - f11;
        pointF3.x = f12;
        PointF pointF4 = this.ve;
        float f13 = (1.0f - pointF.x) - f12;
        pointF4.x = f13;
        return f10 * (pointF.x + ((pointF3.x + (f13 * f10)) * f10));
    }

    private float ve(float f10) {
        return this.f18349n.x + (f10 * ((this.uj.x * 2.0f) + (this.ve.x * 3.0f * f10)));
    }

    public float c(float f10) {
        PointF pointF = this.f18349n;
        PointF pointF2 = this.f18348c;
        float f11 = pointF2.y * 3.0f;
        pointF.y = f11;
        PointF pointF3 = this.uj;
        float f12 = ((this.tt.y - pointF2.y) * 3.0f) - f11;
        pointF3.y = f12;
        PointF pointF4 = this.ve;
        float f13 = (1.0f - pointF.y) - f12;
        pointF4.y = f13;
        return f10 * (pointF.y + ((pointF3.y + (f13 * f10)) * f10));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        return c(tt(f10));
    }

    public float tt(float f10) {
        float fVe = f10;
        for (int i10 = 1; i10 < 14; i10++) {
            float fUj = uj(fVe) - f10;
            if (Math.abs(fUj) < 0.001d) {
                break;
            }
            fVe -= fUj / ve(fVe);
        }
        return fVe;
    }

    public c(float f10, float f11, float f12, float f13) {
        this(new PointF(f10, f11), new PointF(f12, f13));
    }
}
