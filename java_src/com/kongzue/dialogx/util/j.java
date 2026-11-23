package com.kongzue.dialogx.util;

import android.text.InputFilter;
import androidx.annotation.ColorInt;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f74187a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextInfo f74189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f74192f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f74193g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private InputFilter[] f74194h;

    public j a(InputFilter inputFilter) {
        InputFilter[] inputFilterArr = this.f74194h;
        if (inputFilterArr == null) {
            this.f74194h = new InputFilter[]{inputFilter};
        } else {
            InputFilter[] inputFilterArr2 = (InputFilter[]) Arrays.copyOf(inputFilterArr, inputFilterArr.length + 1);
            this.f74194h = inputFilterArr2;
            inputFilterArr2[inputFilterArr2.length - 1] = inputFilter;
        }
        return this;
    }

    public Integer b() {
        return this.f74193g;
    }

    public Integer c() {
        return this.f74192f;
    }

    public InputFilter[] d() {
        return this.f74194h;
    }

    public int e() {
        return this.f74188b;
    }

    public int f() {
        return this.f74187a;
    }

    public TextInfo g() {
        return this.f74189c;
    }

    public boolean h() {
        return this.f74190d;
    }

    public boolean i() {
        return this.f74191e;
    }

    public j j(InputFilter inputFilter) {
        if (this.f74194h != null) {
            int i10 = 0;
            while (true) {
                InputFilter[] inputFilterArr = this.f74194h;
                if (i10 >= inputFilterArr.length) {
                    break;
                }
                if (inputFilterArr[i10] == inputFilter) {
                    this.f74194h = (InputFilter[]) Arrays.copyOf(inputFilterArr, inputFilterArr.length - 1);
                    return this;
                }
                i10++;
            }
        }
        return this;
    }

    public j k(int i10) {
        this.f74193g = Integer.valueOf(i10);
        return this;
    }

    public j l(@ColorInt int i10) {
        this.f74192f = Integer.valueOf(i10);
        return this;
    }

    public j m(InputFilter[] inputFilterArr) {
        this.f74194h = inputFilterArr;
        return this;
    }

    public j n(int i10) {
        this.f74188b = i10;
        return this;
    }

    public j o(int i10) {
        this.f74187a = i10;
        return this;
    }

    public j p(boolean z10) {
        this.f74190d = z10;
        return this;
    }

    public j q(boolean z10) {
        this.f74191e = z10;
        return this;
    }

    public j r(TextInfo textInfo) {
        this.f74189c = textInfo;
        return this;
    }

    public j s(@ColorInt int i10) {
        this.f74192f = Integer.valueOf(i10);
        this.f74193g = Integer.valueOf(i10);
        return this;
    }
}
