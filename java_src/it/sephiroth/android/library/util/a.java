package it.sephiroth.android.library.util;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Random f91812a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f91813b = 0.017453292f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f91814c = 57.295784f;

    private a() {
    }

    public static float A(float a10, float b10) {
        return (float) Math.pow(a10, b10);
    }

    public static float B(float degrees) {
        return degrees * f91813b;
    }

    public static float C(float howbig) {
        return f91812a.nextFloat() * howbig;
    }

    public static float D(float howsmall, float howbig) {
        return howsmall >= howbig ? howsmall : (f91812a.nextFloat() * (howbig - howsmall)) + howsmall;
    }

    public static int E(int howbig) {
        return (int) (f91812a.nextFloat() * howbig);
    }

    public static int F(int howsmall, int howbig) {
        return howsmall >= howbig ? howsmall : (int) ((f91812a.nextFloat() * (howbig - howsmall)) + howsmall);
    }

    public static void G(long seed) {
        f91812a.setSeed(seed);
    }

    public static float H(float v10) {
        return v10 * v10;
    }

    public static float I(float angle) {
        return (float) Math.tan(angle);
    }

    public static float a(float v10) {
        return v10 > 0.0f ? v10 : -v10;
    }

    public static float b(float value) {
        return (float) Math.acos(value);
    }

    public static float c(float value) {
        return (float) Math.asin(value);
    }

    public static float d(float value) {
        return (float) Math.atan(value);
    }

    public static float e(float a10, float b10) {
        return (float) Math.atan2(a10, b10);
    }

    public static float f(float amount, float low, float high) {
        if (amount < low) {
            return low;
        }
        return amount > high ? high : amount;
    }

    public static int g(int amount, int low, int high) {
        if (amount < low) {
            return low;
        }
        return amount > high ? high : amount;
    }

    public static long h(long amount, long low, long high) {
        if (amount < low) {
            return low;
        }
        return amount > high ? high : amount;
    }

    public static float i(float radians) {
        return radians * f91814c;
    }

    public static float j(float x10, float y10, float x11, float y11) {
        float f10 = x11 - x10;
        float f11 = y11 - y10;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public static float k(float x10, float y10, float z10, float x11, float y11, float z11) {
        float f10 = x11 - x10;
        float f11 = y11 - y10;
        float f12 = z11 - z10;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float l(float a10) {
        return (float) Math.exp(a10);
    }

    public static float m(float start, float stop, float amount) {
        return start + ((stop - start) * amount);
    }

    public static float n(float a10) {
        return (float) Math.log(a10);
    }

    public static float o(float a10, float b10) {
        return (float) Math.sqrt((a10 * a10) + (b10 * b10));
    }

    public static float p(float a10, float b10, float c10) {
        return (float) Math.sqrt((a10 * a10) + (b10 * b10) + (c10 * c10));
    }

    public static float q(float minStart, float minStop, float maxStart, float maxStop, float value) {
        return maxStart + ((maxStart - maxStop) * ((value - minStart) / (minStop - minStart)));
    }

    public static float r(float a10, float b10) {
        return a10 > b10 ? a10 : b10;
    }

    public static float s(float a10, float b10, float c10) {
        if (a10 > b10) {
            if (a10 > c10) {
                return a10;
            }
        } else if (b10 > c10) {
            return b10;
        }
        return c10;
    }

    public static float t(int a10, int b10) {
        return a10 > b10 ? a10 : b10;
    }

    public static float u(int a10, int b10, int c10) {
        if (a10 > b10) {
            if (a10 <= c10) {
                a10 = c10;
            }
            return a10;
        }
        if (b10 <= c10) {
            b10 = c10;
        }
        return b10;
    }

    public static float v(float a10, float b10) {
        return a10 < b10 ? a10 : b10;
    }

    public static float w(float a10, float b10, float c10) {
        if (a10 < b10) {
            if (a10 < c10) {
                return a10;
            }
        } else if (b10 < c10) {
            return b10;
        }
        return c10;
    }

    public static float x(int a10, int b10) {
        return a10 < b10 ? a10 : b10;
    }

    public static float y(int a10, int b10, int c10) {
        if (a10 < b10) {
            if (a10 >= c10) {
                a10 = c10;
            }
            return a10;
        }
        if (b10 >= c10) {
            b10 = c10;
        }
        return b10;
    }

    public static float z(float start, float stop, float value) {
        return (value - start) / (stop - start);
    }
}
