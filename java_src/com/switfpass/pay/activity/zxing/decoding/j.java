package com.switfpass.pay.activity.zxing.decoding;

import com.google.zxing.BarcodeFormat;
import java.util.Vector;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Vector f82634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Vector f82635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Vector f82636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Vector f82637d;

    static {
        Pattern.compile(",");
        Vector vector = new Vector(5);
        f82634a = vector;
        vector.add(BarcodeFormat.UPC_A);
        f82634a.add(BarcodeFormat.UPC_E);
        f82634a.add(BarcodeFormat.EAN_13);
        f82634a.add(BarcodeFormat.EAN_8);
        f82634a.add(BarcodeFormat.RSS_14);
        Vector vector2 = new Vector(f82634a.size() + 4);
        f82635b = vector2;
        vector2.addAll(f82634a);
        vector2.add(BarcodeFormat.CODE_39);
        vector2.add(BarcodeFormat.CODE_93);
        vector2.add(BarcodeFormat.CODE_128);
        vector2.add(BarcodeFormat.ITF);
        Vector vector3 = new Vector(1);
        f82636c = vector3;
        vector3.add(BarcodeFormat.QR_CODE);
        Vector vector4 = new Vector(1);
        f82637d = vector4;
        vector4.add(BarcodeFormat.DATA_MATRIX);
    }
}
