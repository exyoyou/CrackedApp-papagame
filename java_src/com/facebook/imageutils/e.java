package com.facebook.imageutils;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f28770a = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28771b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28772c = 216;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28773d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f28774e = 217;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f28775f = 218;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f28776g = 225;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f28777h = 192;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f28778i = 208;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f28779j = 215;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f28780k = 1165519206;

    private e() {
    }

    public static int a(int orientation) {
        return g.a(orientation);
    }

    public static int b(InputStream is) {
        try {
            int iE = e(is);
            if (iE == 0) {
                return 0;
            }
            return g.d(is, iE);
        } catch (IOException unused) {
            return 0;
        }
    }

    public static int c(byte[] jpeg) {
        return b(new ByteArrayInputStream(jpeg));
    }

    private static boolean d(int marker) {
        switch (marker) {
            case 192:
            case 193:
            case 194:
            case 195:
            case 197:
            case 198:
            case 199:
            case 201:
            case 202:
            case 203:
            case 205:
            case 206:
            case 207:
                return true;
            case 196:
            case 200:
            case 204:
            default:
                return false;
        }
    }

    private static int e(InputStream is) throws IOException {
        int iA;
        if (f(is, 225) && (iA = f.a(is, 2, false) - 2) > 6) {
            int iA2 = f.a(is, 4, false);
            int iA3 = f.a(is, 2, false);
            int i10 = (iA - 4) - 2;
            if (iA2 == 1165519206 && iA3 == 0) {
                return i10;
            }
        }
        return 0;
    }

    public static boolean f(InputStream is, int markerToFind) throws IOException {
        i.i(is);
        while (f.a(is, 1, false) == 255) {
            int iA = 255;
            while (iA == 255) {
                iA = f.a(is, 1, false);
            }
            if ((markerToFind == 192 && d(iA)) || iA == markerToFind) {
                return true;
            }
            if (iA != 216 && iA != 1) {
                if (iA == 217 || iA == 218) {
                    break;
                }
                is.skip(f.a(is, 2, false) - 2);
            }
        }
        return false;
    }
}
