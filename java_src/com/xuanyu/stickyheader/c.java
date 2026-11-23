package com.xuanyu.stickyheader;

/* JADX INFO: loaded from: classes8.dex */
public class c {
    private c() {
    }

    public static double a(double value, double min, double max) {
        if (value < min) {
            return min;
        }
        return value > max ? max : value;
    }

    public static float b(float value, float min, float max) {
        if (value < min) {
            return min;
        }
        return value > max ? max : value;
    }

    public static int c(int value, int min, int max) {
        if (value < min) {
            return min;
        }
        return value > max ? max : value;
    }

    public static long d(long value, long min, long max) {
        if (value < min) {
            return min;
        }
        return value > max ? max : value;
    }
}
