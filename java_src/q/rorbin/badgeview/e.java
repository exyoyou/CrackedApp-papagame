package q.rorbin.badgeview;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f96459a = 6.283185307179586d;

    public static void a(PointF pointF, float f10, Double d10, List<PointF> list) {
        float fSin;
        if (d10 != null) {
            double dAtan = (float) Math.atan(d10.doubleValue());
            double d11 = f10;
            float fCos = (float) (Math.cos(dAtan) * d11);
            fSin = (float) (Math.sin(dAtan) * d11);
            f10 = fCos;
        } else {
            fSin = 0.0f;
        }
        list.add(new PointF(pointF.x + f10, pointF.y + fSin));
        list.add(new PointF(pointF.x - f10, pointF.y - fSin));
    }

    public static float b(PointF pointF, PointF pointF2) {
        return (float) Math.sqrt(Math.pow(pointF.x - pointF2.x, 2.0d) + Math.pow(pointF.y - pointF2.y, 2.0d));
    }

    public static int c(PointF pointF, PointF pointF2) {
        float f10 = pointF.x;
        float f11 = pointF2.x;
        if (f10 > f11) {
            float f12 = pointF.y;
            float f13 = pointF2.y;
            if (f12 > f13) {
                return 4;
            }
            return f12 < f13 ? 1 : -1;
        }
        if (f10 >= f11) {
            return -1;
        }
        float f14 = pointF.y;
        float f15 = pointF2.y;
        if (f14 > f15) {
            return 3;
        }
        return f14 < f15 ? 2 : -1;
    }

    public static double d(double d10, int i10) {
        if (d10 < 0.0d) {
            d10 += 1.5707963267948966d;
        }
        return d10 + (((double) (i10 - 1)) * 1.5707963267948966d);
    }

    public static double e(double d10) {
        return (d10 / 6.283185307179586d) * 360.0d;
    }
}
