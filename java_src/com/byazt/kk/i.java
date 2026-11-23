package com.byazt.kk;

import android.graphics.Path;
import android.graphics.PointF;
import com.byazt.jx.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PointF f16292c = new PointF();

    public static float c(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    private static int tt(int i10, int i11) {
        int i12 = i10 / i11;
        return (((i10 ^ i11) >= 0) || i10 % i11 == 0) ? i12 : i12 - 1;
    }

    public static boolean ve(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    public static int c(int i10, int i11, float f10) {
        return (int) (i10 + (f10 * (i11 - i10)));
    }

    public static PointF c(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float tt(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static void c(yp ypVar, Path path) {
        path.reset();
        PointF pointFC = ypVar.c();
        path.moveTo(pointFC.x, pointFC.y);
        f16292c.set(pointFC.x, pointFC.y);
        for (int i10 = 0; i10 < ypVar.ve().size(); i10++) {
            com.byazt.nb.c cVar = ypVar.ve().get(i10);
            PointF pointFC2 = cVar.c();
            PointF pointFTt = cVar.tt();
            PointF pointFVe = cVar.ve();
            PointF pointF = f16292c;
            if (pointFC2.equals(pointF) && pointFTt.equals(pointFVe)) {
                path.lineTo(pointFVe.x, pointFVe.y);
            } else {
                path.cubicTo(pointFC2.x, pointFC2.y, pointFTt.x, pointFTt.y, pointFVe.x, pointFVe.y);
            }
            pointF.set(pointFVe.x, pointFVe.y);
        }
        if (ypVar.tt()) {
            path.close();
        }
    }

    public static int c(float f10, float f11) {
        return c((int) f10, (int) f11);
    }

    private static int c(int i10, int i11) {
        return i10 - (i11 * tt(i10, i11));
    }

    public static int c(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }
}
