package com.kongzue.dialogx.util;

import android.graphics.Typeface;
import androidx.annotation.ColorInt;

/* JADX INFO: loaded from: classes3.dex */
public class TextInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f74128a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FONT_SIZE_UNIT f74129b = FONT_SIZE_UNIT.DP;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74130c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74131d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74132e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74133f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74134g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Typeface f74135h;

    public enum FONT_SIZE_UNIT {
        DP,
        PX,
        SP
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f74136a;

        static {
            int[] iArr = new int[FONT_SIZE_UNIT.values().length];
            f74136a = iArr;
            try {
                iArr[FONT_SIZE_UNIT.PX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74136a[FONT_SIZE_UNIT.SP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public int a() {
        return this.f74131d;
    }

    public int b() {
        return this.f74128a;
    }

    public int c() {
        FONT_SIZE_UNIT font_size_unit = this.f74129b;
        if (font_size_unit == null) {
            return 1;
        }
        int i10 = a.f74136a[font_size_unit.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? 1 : 2;
        }
        return 0;
    }

    public FONT_SIZE_UNIT d() {
        return this.f74129b;
    }

    public int e() {
        return this.f74130c;
    }

    public int f() {
        return this.f74133f;
    }

    public Typeface g() {
        return this.f74135h;
    }

    public boolean h() {
        return this.f74132e;
    }

    public boolean i() {
        return this.f74134g;
    }

    public TextInfo j(boolean z10) {
        this.f74132e = z10;
        return this;
    }

    public TextInfo k(@ColorInt int i10) {
        this.f74131d = i10;
        return this;
    }

    public TextInfo l(int i10) {
        this.f74128a = i10;
        return this;
    }

    public TextInfo m(FONT_SIZE_UNIT font_size_unit) {
        this.f74129b = font_size_unit;
        return this;
    }

    public TextInfo n(int i10) {
        this.f74130c = i10;
        return this;
    }

    public TextInfo o(int i10) {
        this.f74133f = i10;
        return this;
    }

    public TextInfo p(boolean z10) {
        this.f74134g = z10;
        return this;
    }

    public TextInfo q(Typeface typeface) {
        this.f74135h = typeface;
        return this;
    }

    public String toString() {
        return "TextInfo{fontSize=" + this.f74128a + ", gravity=" + this.f74130c + ", fontColor=" + this.f74131d + ", bold=" + this.f74132e + ", maxLines=" + this.f74133f + ", showEllipsis=" + this.f74134g + ", typeface=" + this.f74135h + '}';
    }
}
