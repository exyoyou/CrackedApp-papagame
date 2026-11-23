package com.zxing.android.decoding;

import android.content.Intent;
import android.net.Uri;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f90476a = Pattern.compile(",");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Vector<BarcodeFormat> f90477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Vector<BarcodeFormat> f90478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Vector<BarcodeFormat> f90479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Vector<BarcodeFormat> f90480e;

    static {
        Vector<BarcodeFormat> vector = new Vector<>(5);
        f90477b = vector;
        vector.add(BarcodeFormat.UPC_A);
        vector.add(BarcodeFormat.UPC_E);
        vector.add(BarcodeFormat.EAN_13);
        vector.add(BarcodeFormat.EAN_8);
        Vector<BarcodeFormat> vector2 = new Vector<>(vector.size() + 4);
        f90478c = vector2;
        vector2.addAll(vector);
        vector2.add(BarcodeFormat.CODE_39);
        vector2.add(BarcodeFormat.CODE_93);
        vector2.add(BarcodeFormat.CODE_128);
        vector2.add(BarcodeFormat.ITF);
        Vector<BarcodeFormat> vector3 = new Vector<>(1);
        f90479d = vector3;
        vector3.add(BarcodeFormat.QR_CODE);
        Vector<BarcodeFormat> vector4 = new Vector<>(1);
        f90480e = vector4;
        vector4.add(BarcodeFormat.DATA_MATRIX);
    }

    private b() {
    }

    static Vector<BarcodeFormat> a(Intent intent) {
        String stringExtra = intent.getStringExtra("SCAN_FORMATS");
        return c(stringExtra != null ? Arrays.asList(f90476a.split(stringExtra)) : null, intent.getStringExtra("SCAN_MODE"));
    }

    static Vector<BarcodeFormat> b(Uri inputUri) {
        List<String> queryParameters = inputUri.getQueryParameters("SCAN_FORMATS");
        if (queryParameters != null && queryParameters.size() == 1 && queryParameters.get(0) != null) {
            queryParameters = Arrays.asList(f90476a.split(queryParameters.get(0)));
        }
        return c(queryParameters, inputUri.getQueryParameter("SCAN_MODE"));
    }

    private static Vector<BarcodeFormat> c(Iterable<String> scanFormats, String decodeMode) {
        if (scanFormats != null) {
            Vector<BarcodeFormat> vector = new Vector<>();
            try {
                Iterator<String> it2 = scanFormats.iterator();
                while (it2.hasNext()) {
                    vector.add(BarcodeFormat.valueOf(it2.next()));
                }
                return vector;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (decodeMode == null) {
            return null;
        }
        if ("PRODUCT_MODE".equals(decodeMode)) {
            return f90477b;
        }
        if ("QR_CODE_MODE".equals(decodeMode)) {
            return f90479d;
        }
        if ("DATA_MATRIX_MODE".equals(decodeMode)) {
            return f90480e;
        }
        if ("ONE_D_MODE".equals(decodeMode)) {
            return f90478c;
        }
        return null;
    }
}
