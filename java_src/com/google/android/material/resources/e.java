package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f31338r = "TextAppearance";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f31339s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f31340t = 2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f31341u = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final ColorStateList f31342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final ColorStateList f31343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final ColorStateList f31344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f31345d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31347f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f31348g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f31349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f31350i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f31351j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f31352k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f31353l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private ColorStateList f31354m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f31355n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @FontRes
    private final int f31356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f31357p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Typeface f31358q;

    class a extends ResourcesCompat.FontCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f31359a;

        a(g gVar) {
            this.f31359a = gVar;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: onFontRetrievalFailed */
        public void lambda$callbackFailAsync$1(int i10) {
            e.this.f31357p = true;
            this.f31359a.a(i10);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: onFontRetrieved */
        public void lambda$callbackSuccessAsync$0(@NonNull Typeface typeface) {
            e eVar = e.this;
            eVar.f31358q = Typeface.create(typeface, eVar.f31346e);
            e.this.f31357p = true;
            this.f31359a.b(e.this.f31358q, false);
        }
    }

    class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f31361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextPaint f31362b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g f31363c;

        b(Context context, TextPaint textPaint, g gVar) {
            this.f31361a = context;
            this.f31362b = textPaint;
            this.f31363c = gVar;
        }

        @Override // com.google.android.material.resources.g
        public void a(int i10) {
            this.f31363c.a(i10);
        }

        @Override // com.google.android.material.resources.g
        public void b(@NonNull Typeface typeface, boolean z10) {
            e.this.p(this.f31361a, this.f31362b, typeface);
            this.f31363c.b(typeface, z10);
        }
    }

    public e(@NonNull Context context, @StyleRes int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R.styleable.TextAppearance);
        l(typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f));
        k(d.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor));
        this.f31342a = d.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        this.f31343b = d.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.f31346e = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.f31347f = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int iG = d.g(typedArrayObtainStyledAttributes, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
        this.f31356o = typedArrayObtainStyledAttributes.getResourceId(iG, 0);
        this.f31345d = typedArrayObtainStyledAttributes.getString(iG);
        this.f31348g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f31344c = d.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f31349h = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f31350i = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f31351j = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, R.styleable.MaterialTextAppearance);
        int i11 = R.styleable.MaterialTextAppearance_android_letterSpacing;
        this.f31352k = typedArrayObtainStyledAttributes2.hasValue(i11);
        this.f31353l = typedArrayObtainStyledAttributes2.getFloat(i11, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.f31358q == null && (str = this.f31345d) != null) {
            this.f31358q = Typeface.create(str, this.f31346e);
        }
        if (this.f31358q == null) {
            int i10 = this.f31347f;
            if (i10 == 1) {
                this.f31358q = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f31358q = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f31358q = Typeface.DEFAULT;
            } else {
                this.f31358q = Typeface.MONOSPACE;
            }
            this.f31358q = Typeface.create(this.f31358q, this.f31346e);
        }
    }

    private boolean m(Context context) {
        if (f.b()) {
            return true;
        }
        int i10 = this.f31356o;
        return (i10 != 0 ? ResourcesCompat.getCachedFont(context, i10) : null) != null;
    }

    public Typeface e() {
        d();
        return this.f31358q;
    }

    @NonNull
    @VisibleForTesting
    public Typeface f(@NonNull Context context) {
        if (this.f31357p) {
            return this.f31358q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f31356o);
                this.f31358q = font;
                if (font != null) {
                    this.f31358q = Typeface.create(font, this.f31346e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error loading font ");
                sb2.append(this.f31345d);
            }
        }
        d();
        this.f31357p = true;
        return this.f31358q;
    }

    public void g(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull g gVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, gVar));
    }

    public void h(@NonNull Context context, @NonNull g gVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.f31356o;
        if (i10 == 0) {
            this.f31357p = true;
        }
        if (this.f31357p) {
            gVar.b(this.f31358q, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i10, new a(gVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f31357p = true;
            gVar.a(1);
        } catch (Exception unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error loading font ");
            sb2.append(this.f31345d);
            this.f31357p = true;
            gVar.a(-3);
        }
    }

    @Nullable
    public ColorStateList i() {
        return this.f31354m;
    }

    public float j() {
        return this.f31355n;
    }

    public void k(@Nullable ColorStateList colorStateList) {
        this.f31354m = colorStateList;
    }

    public void l(float f10) {
        this.f31355n = f10;
    }

    public void n(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull g gVar) {
        o(context, textPaint, gVar);
        ColorStateList colorStateList = this.f31354m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f10 = this.f31351j;
        float f11 = this.f31349h;
        float f12 = this.f31350i;
        ColorStateList colorStateList2 = this.f31344c;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull g gVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, gVar);
        }
    }

    public void p(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        Typeface typefaceA = j.a(context, typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i10 = this.f31346e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f31355n);
        if (this.f31352k) {
            textPaint.setLetterSpacing(this.f31353l);
        }
    }
}
