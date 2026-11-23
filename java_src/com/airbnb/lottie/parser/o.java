package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class o implements n0<com.airbnb.lottie.model.content.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6046a;

    public o(int i10) {
        this.f6046a = i10;
    }

    private com.airbnb.lottie.model.content.d b(com.airbnb.lottie.model.content.d dVar, List<Float> list) {
        int i10 = this.f6046a * 4;
        if (list.size() <= i10) {
            return dVar;
        }
        float[] fArrD = dVar.d();
        int[] iArrC = dVar.c();
        int size = (list.size() - i10) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i11 = 0;
        while (i10 < list.size()) {
            if (i10 % 2 == 0) {
                fArr[i11] = list.get(i10).floatValue();
            } else {
                fArr2[i11] = list.get(i10).floatValue();
                i11++;
            }
            i10++;
        }
        float[] fArrE = e(dVar.d(), fArr);
        int length = fArrE.length;
        int[] iArr = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            float f10 = fArrE[i12];
            int iBinarySearch = Arrays.binarySearch(fArrD, f10);
            int iBinarySearch2 = Arrays.binarySearch(fArr, f10);
            if (iBinarySearch < 0 || iBinarySearch2 > 0) {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                iArr[i12] = c(f10, fArr2[iBinarySearch2], fArrD, iArrC);
            } else {
                iArr[i12] = d(f10, iArrC[iBinarySearch], fArr, fArr2);
            }
        }
        return new com.airbnb.lottie.model.content.d(fArrE, iArr);
    }

    private int d(float f10, int i10, float[] fArr, float[] fArr2) {
        float fK;
        if (fArr2.length < 2 || f10 <= fArr[0]) {
            return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10));
        }
        for (int i11 = 1; i11 < fArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 >= f10 || i11 == fArr.length - 1) {
                if (f11 <= f10) {
                    fK = fArr2[i11];
                } else {
                    int i12 = i11 - 1;
                    float f12 = fArr[i12];
                    fK = com.airbnb.lottie.utils.k.k(fArr2[i12], fArr2[i11], (f10 - f12) / (f11 - f12));
                }
                return Color.argb((int) (fK * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    protected static float[] e(float[] fArr, float[] fArr2) {
        if (fArr.length == 0) {
            return fArr2;
        }
        if (fArr2.length == 0) {
            return fArr;
        }
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            float f10 = i11 < fArr.length ? fArr[i11] : Float.NaN;
            float f11 = i12 < fArr2.length ? fArr2[i12] : Float.NaN;
            if (Float.isNaN(f11) || f10 < f11) {
                fArr3[i13] = f10;
                i11++;
            } else if (Float.isNaN(f10) || f11 < f10) {
                fArr3[i13] = f11;
                i12++;
            } else {
                fArr3[i13] = f10;
                i11++;
                i12++;
                i10++;
            }
        }
        return i10 == 0 ? fArr3 : Arrays.copyOf(fArr3, length - i10);
    }

    int c(float f10, float f11, float[] fArr, int[] iArr) {
        if (iArr.length < 2 || f10 == fArr[0]) {
            return iArr[0];
        }
        for (int i10 = 1; i10 < fArr.length; i10++) {
            float f12 = fArr[i10];
            if (f12 >= f10 || i10 == fArr.length - 1) {
                if (i10 == fArr.length - 1 && f10 >= f12) {
                    return Color.argb((int) (f11 * 255.0f), Color.red(iArr[i10]), Color.green(iArr[i10]), Color.blue(iArr[i10]));
                }
                int i11 = i10 - 1;
                float f13 = fArr[i11];
                float f14 = (f10 - f13) / (f12 - f13);
                int i12 = iArr[i10];
                int i13 = iArr[i11];
                return Color.argb((int) (f11 * 255.0f), com.airbnb.lottie.utils.d.c(f14, Color.red(i13), Color.red(i12)), com.airbnb.lottie.utils.d.c(f14, Color.green(i13), Color.green(i12)), com.airbnb.lottie.utils.d.c(f14, Color.blue(i13), Color.blue(i12)));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
    @Override // com.airbnb.lottie.parser.n0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.model.content.d a(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z10 = jsonReader.q() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.b();
        }
        while (jsonReader.g()) {
            arrayList.add(Float.valueOf((float) jsonReader.j()));
        }
        if (arrayList.size() == 4 && arrayList.get(0).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add(arrayList.get(1));
            arrayList.add(arrayList.get(2));
            arrayList.add(arrayList.get(3));
            this.f6046a = 2;
        }
        if (z10) {
            jsonReader.e();
        }
        if (this.f6046a == -1) {
            this.f6046a = arrayList.size() / 4;
        }
        int i10 = this.f6046a;
        float[] fArr = new float[i10];
        int[] iArr = new int[i10];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f6046a * 4; i13++) {
            int i14 = i13 / 4;
            double dFloatValue = arrayList.get(i13).floatValue();
            int i15 = i13 % 4;
            if (i15 != 0) {
                if (i15 == 1) {
                    i11 = (int) (dFloatValue * 255.0d);
                } else if (i15 == 2) {
                    i12 = (int) (dFloatValue * 255.0d);
                } else if (i15 == 3) {
                    iArr[i14] = Color.argb(255, i11, i12, (int) (dFloatValue * 255.0d));
                }
            } else if (i14 > 0) {
                float f11 = (float) dFloatValue;
                if (fArr[i14 - 1] >= f11) {
                    fArr[i14] = f11 + 0.01f;
                } else {
                    fArr[i14] = (float) dFloatValue;
                }
            } else {
                fArr[i14] = (float) dFloatValue;
            }
        }
        return b(new com.airbnb.lottie.model.content.d(fArr, iArr), arrayList);
    }
}
