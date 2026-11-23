package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.R;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.g0;
import com.google.android.material.resources.d;
import com.google.android.material.resources.e;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class BadgeState {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f29426l = "badge";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final State f29427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final State f29428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float f29429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f29430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final float f29431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final float f29432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final float f29433g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f29434h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int f29435i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f29436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f29437k;

    BadgeState(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12, @Nullable State state) {
        State state2 = new State();
        this.f29428b = state2;
        state = state == null ? new State() : state;
        if (i10 != 0) {
            state.f29438b = i10;
        }
        TypedArray typedArrayC = c(context, state.f29438b, i11, i12);
        Resources resources = context.getResources();
        this.f29429c = typedArrayC.getDimensionPixelSize(R.styleable.Badge_badgeRadius, -1);
        this.f29435i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f29436j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f29430d = typedArrayC.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, -1);
        int i13 = R.styleable.Badge_badgeWidth;
        int i14 = R.dimen.m3_badge_size;
        this.f29431e = typedArrayC.getDimension(i13, resources.getDimension(i14));
        int i15 = R.styleable.Badge_badgeWithTextWidth;
        int i16 = R.dimen.m3_badge_with_text_size;
        this.f29433g = typedArrayC.getDimension(i15, resources.getDimension(i16));
        this.f29432f = typedArrayC.getDimension(R.styleable.Badge_badgeHeight, resources.getDimension(i14));
        this.f29434h = typedArrayC.getDimension(R.styleable.Badge_badgeWithTextHeight, resources.getDimension(i16));
        boolean z10 = true;
        this.f29437k = typedArrayC.getInt(R.styleable.Badge_offsetAlignmentMode, 1);
        state2.f29446j = state.f29446j == -2 ? 255 : state.f29446j;
        if (state.f29448l != -2) {
            state2.f29448l = state.f29448l;
        } else {
            int i17 = R.styleable.Badge_number;
            if (typedArrayC.hasValue(i17)) {
                state2.f29448l = typedArrayC.getInt(i17, 0);
            } else {
                state2.f29448l = -1;
            }
        }
        if (state.f29447k != null) {
            state2.f29447k = state.f29447k;
        } else {
            int i18 = R.styleable.Badge_badgeText;
            if (typedArrayC.hasValue(i18)) {
                state2.f29447k = typedArrayC.getString(i18);
            }
        }
        state2.f29452p = state.f29452p;
        state2.f29453q = state.f29453q == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : state.f29453q;
        state2.f29454r = state.f29454r == 0 ? R.plurals.mtrl_badge_content_description : state.f29454r;
        state2.f29455s = state.f29455s == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : state.f29455s;
        if (state.f29457u != null && !state.f29457u.booleanValue()) {
            z10 = false;
        }
        state2.f29457u = Boolean.valueOf(z10);
        state2.f29449m = state.f29449m == -2 ? typedArrayC.getInt(R.styleable.Badge_maxCharacterCount, -2) : state.f29449m;
        state2.f29450n = state.f29450n == -2 ? typedArrayC.getInt(R.styleable.Badge_maxNumber, -2) : state.f29450n;
        state2.f29442f = Integer.valueOf(state.f29442f == null ? typedArrayC.getResourceId(R.styleable.Badge_badgeShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.f29442f.intValue());
        state2.f29443g = Integer.valueOf(state.f29443g == null ? typedArrayC.getResourceId(R.styleable.Badge_badgeShapeAppearanceOverlay, 0) : state.f29443g.intValue());
        state2.f29444h = Integer.valueOf(state.f29444h == null ? typedArrayC.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.f29444h.intValue());
        state2.f29445i = Integer.valueOf(state.f29445i == null ? typedArrayC.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0) : state.f29445i.intValue());
        state2.f29439c = Integer.valueOf(state.f29439c == null ? J(context, typedArrayC, R.styleable.Badge_backgroundColor) : state.f29439c.intValue());
        state2.f29441e = Integer.valueOf(state.f29441e == null ? typedArrayC.getResourceId(R.styleable.Badge_badgeTextAppearance, R.style.TextAppearance_MaterialComponents_Badge) : state.f29441e.intValue());
        if (state.f29440d != null) {
            state2.f29440d = state.f29440d;
        } else {
            int i19 = R.styleable.Badge_badgeTextColor;
            if (typedArrayC.hasValue(i19)) {
                state2.f29440d = Integer.valueOf(J(context, typedArrayC, i19));
            } else {
                state2.f29440d = Integer.valueOf(new e(context, state2.f29441e.intValue()).i().getDefaultColor());
            }
        }
        state2.f29456t = Integer.valueOf(state.f29456t == null ? typedArrayC.getInt(R.styleable.Badge_badgeGravity, 8388661) : state.f29456t.intValue());
        state2.f29458v = Integer.valueOf(state.f29458v == null ? typedArrayC.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : state.f29458v.intValue());
        state2.f29459w = Integer.valueOf(state.f29459w == null ? typedArrayC.getDimensionPixelSize(R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : state.f29459w.intValue());
        state2.f29460x = Integer.valueOf(state.f29460x == null ? typedArrayC.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0) : state.f29460x.intValue());
        state2.f29461y = Integer.valueOf(state.f29461y == null ? typedArrayC.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0) : state.f29461y.intValue());
        state2.f29462z = Integer.valueOf(state.f29462z == null ? typedArrayC.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state2.f29460x.intValue()) : state.f29462z.intValue());
        state2.A = Integer.valueOf(state.A == null ? typedArrayC.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state2.f29461y.intValue()) : state.A.intValue());
        state2.D = Integer.valueOf(state.D == null ? typedArrayC.getDimensionPixelOffset(R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0) : state.D.intValue());
        state2.B = Integer.valueOf(state.B == null ? 0 : state.B.intValue());
        state2.C = Integer.valueOf(state.C == null ? 0 : state.C.intValue());
        state2.E = Boolean.valueOf(state.E == null ? typedArrayC.getBoolean(R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false) : state.E.booleanValue());
        typedArrayC.recycle();
        if (state.f29451o == null) {
            state2.f29451o = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            state2.f29451o = state.f29451o;
        }
        this.f29427a = state;
    }

    private static int J(Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        return d.a(context, typedArray, i10).getDefaultColor();
    }

    private TypedArray c(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12) {
        AttributeSet attributeSet;
        int styleAttribute;
        if (i10 != 0) {
            AttributeSet attributeSetK = g.k(context, i10, f29426l);
            styleAttribute = attributeSetK.getStyleAttribute();
            attributeSet = attributeSetK;
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        return g0.k(context, attributeSet, R.styleable.Badge, i11, styleAttribute == 0 ? i12 : styleAttribute, new int[0]);
    }

    State A() {
        return this.f29427a;
    }

    String B() {
        return this.f29428b.f29447k;
    }

    @StyleRes
    int C() {
        return this.f29428b.f29441e.intValue();
    }

    @Dimension(unit = 1)
    int D() {
        return this.f29428b.A.intValue();
    }

    @Dimension(unit = 1)
    int E() {
        return this.f29428b.f29461y.intValue();
    }

    boolean F() {
        return this.f29428b.f29448l != -1;
    }

    boolean G() {
        return this.f29428b.f29447k != null;
    }

    boolean H() {
        return this.f29428b.E.booleanValue();
    }

    boolean I() {
        return this.f29428b.f29457u.booleanValue();
    }

    void K(@Dimension(unit = 1) int i10) {
        this.f29427a.B = Integer.valueOf(i10);
        this.f29428b.B = Integer.valueOf(i10);
    }

    void L(@Dimension(unit = 1) int i10) {
        this.f29427a.C = Integer.valueOf(i10);
        this.f29428b.C = Integer.valueOf(i10);
    }

    void M(int i10) {
        this.f29427a.f29446j = i10;
        this.f29428b.f29446j = i10;
    }

    void N(boolean z10) {
        this.f29427a.E = Boolean.valueOf(z10);
        this.f29428b.E = Boolean.valueOf(z10);
    }

    void O(@ColorInt int i10) {
        this.f29427a.f29439c = Integer.valueOf(i10);
        this.f29428b.f29439c = Integer.valueOf(i10);
    }

    void P(int i10) {
        this.f29427a.f29456t = Integer.valueOf(i10);
        this.f29428b.f29456t = Integer.valueOf(i10);
    }

    void Q(@Px int i10) {
        this.f29427a.f29458v = Integer.valueOf(i10);
        this.f29428b.f29458v = Integer.valueOf(i10);
    }

    void R(int i10) {
        this.f29427a.f29443g = Integer.valueOf(i10);
        this.f29428b.f29443g = Integer.valueOf(i10);
    }

    void S(int i10) {
        this.f29427a.f29442f = Integer.valueOf(i10);
        this.f29428b.f29442f = Integer.valueOf(i10);
    }

    void T(@ColorInt int i10) {
        this.f29427a.f29440d = Integer.valueOf(i10);
        this.f29428b.f29440d = Integer.valueOf(i10);
    }

    void U(@Px int i10) {
        this.f29427a.f29459w = Integer.valueOf(i10);
        this.f29428b.f29459w = Integer.valueOf(i10);
    }

    void V(int i10) {
        this.f29427a.f29445i = Integer.valueOf(i10);
        this.f29428b.f29445i = Integer.valueOf(i10);
    }

    void W(int i10) {
        this.f29427a.f29444h = Integer.valueOf(i10);
        this.f29428b.f29444h = Integer.valueOf(i10);
    }

    void X(@StringRes int i10) {
        this.f29427a.f29455s = i10;
        this.f29428b.f29455s = i10;
    }

    void Y(CharSequence charSequence) {
        this.f29427a.f29452p = charSequence;
        this.f29428b.f29452p = charSequence;
    }

    void Z(CharSequence charSequence) {
        this.f29427a.f29453q = charSequence;
        this.f29428b.f29453q = charSequence;
    }

    void a() {
        g0(-1);
    }

    void a0(@PluralsRes int i10) {
        this.f29427a.f29454r = i10;
        this.f29428b.f29454r = i10;
    }

    void b() {
        i0(null);
    }

    void b0(@Dimension(unit = 1) int i10) {
        this.f29427a.f29462z = Integer.valueOf(i10);
        this.f29428b.f29462z = Integer.valueOf(i10);
    }

    void c0(@Dimension(unit = 1) int i10) {
        this.f29427a.f29460x = Integer.valueOf(i10);
        this.f29428b.f29460x = Integer.valueOf(i10);
    }

    @Dimension(unit = 1)
    int d() {
        return this.f29428b.B.intValue();
    }

    void d0(@Dimension(unit = 1) int i10) {
        this.f29427a.D = Integer.valueOf(i10);
        this.f29428b.D = Integer.valueOf(i10);
    }

    @Dimension(unit = 1)
    int e() {
        return this.f29428b.C.intValue();
    }

    void e0(int i10) {
        this.f29427a.f29449m = i10;
        this.f29428b.f29449m = i10;
    }

    int f() {
        return this.f29428b.f29446j;
    }

    void f0(int i10) {
        this.f29427a.f29450n = i10;
        this.f29428b.f29450n = i10;
    }

    @ColorInt
    int g() {
        return this.f29428b.f29439c.intValue();
    }

    void g0(int i10) {
        this.f29427a.f29448l = i10;
        this.f29428b.f29448l = i10;
    }

    int h() {
        return this.f29428b.f29456t.intValue();
    }

    void h0(Locale locale) {
        this.f29427a.f29451o = locale;
        this.f29428b.f29451o = locale;
    }

    @Px
    int i() {
        return this.f29428b.f29458v.intValue();
    }

    void i0(String str) {
        this.f29427a.f29447k = str;
        this.f29428b.f29447k = str;
    }

    int j() {
        return this.f29428b.f29443g.intValue();
    }

    void j0(@StyleRes int i10) {
        this.f29427a.f29441e = Integer.valueOf(i10);
        this.f29428b.f29441e = Integer.valueOf(i10);
    }

    int k() {
        return this.f29428b.f29442f.intValue();
    }

    void k0(@Dimension(unit = 1) int i10) {
        this.f29427a.A = Integer.valueOf(i10);
        this.f29428b.A = Integer.valueOf(i10);
    }

    @ColorInt
    int l() {
        return this.f29428b.f29440d.intValue();
    }

    void l0(@Dimension(unit = 1) int i10) {
        this.f29427a.f29461y = Integer.valueOf(i10);
        this.f29428b.f29461y = Integer.valueOf(i10);
    }

    @Px
    int m() {
        return this.f29428b.f29459w.intValue();
    }

    void m0(boolean z10) {
        this.f29427a.f29457u = Boolean.valueOf(z10);
        this.f29428b.f29457u = Boolean.valueOf(z10);
    }

    int n() {
        return this.f29428b.f29445i.intValue();
    }

    int o() {
        return this.f29428b.f29444h.intValue();
    }

    @StringRes
    int p() {
        return this.f29428b.f29455s;
    }

    CharSequence q() {
        return this.f29428b.f29452p;
    }

    CharSequence r() {
        return this.f29428b.f29453q;
    }

    @PluralsRes
    int s() {
        return this.f29428b.f29454r;
    }

    @Dimension(unit = 1)
    int t() {
        return this.f29428b.f29462z.intValue();
    }

    @Dimension(unit = 1)
    int u() {
        return this.f29428b.f29460x.intValue();
    }

    @Dimension(unit = 1)
    int v() {
        return this.f29428b.D.intValue();
    }

    int w() {
        return this.f29428b.f29449m;
    }

    int x() {
        return this.f29428b.f29450n;
    }

    int y() {
        return this.f29428b.f29448l;
    }

    Locale z() {
        return this.f29428b.f29451o;
    }

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new a();
        private static final int F = -1;
        private static final int G = -2;

        @Dimension(unit = 1)
        private Integer A;

        @Dimension(unit = 1)
        private Integer B;

        @Dimension(unit = 1)
        private Integer C;

        @Dimension(unit = 1)
        private Integer D;
        private Boolean E;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @XmlRes
        private int f29438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ColorInt
        private Integer f29439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ColorInt
        private Integer f29440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @StyleRes
        private Integer f29441e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @StyleRes
        private Integer f29442f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @StyleRes
        private Integer f29443g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @StyleRes
        private Integer f29444h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @StyleRes
        private Integer f29445i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f29446j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Nullable
        private String f29447k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f29448l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f29449m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f29450n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Locale f29451o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @Nullable
        private CharSequence f29452p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        @Nullable
        private CharSequence f29453q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @PluralsRes
        private int f29454r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        @StringRes
        private int f29455s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private Integer f29456t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private Boolean f29457u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        @Px
        private Integer f29458v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        @Px
        private Integer f29459w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        @Dimension(unit = 1)
        private Integer f29460x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        @Dimension(unit = 1)
        private Integer f29461y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        @Dimension(unit = 1)
        private Integer f29462z;

        class a implements Parcelable.Creator<State> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i10) {
                return new State[i10];
            }
        }

        public State() {
            this.f29446j = 255;
            this.f29448l = -2;
            this.f29449m = -2;
            this.f29450n = -2;
            this.f29457u = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.f29438b);
            parcel.writeSerializable(this.f29439c);
            parcel.writeSerializable(this.f29440d);
            parcel.writeSerializable(this.f29441e);
            parcel.writeSerializable(this.f29442f);
            parcel.writeSerializable(this.f29443g);
            parcel.writeSerializable(this.f29444h);
            parcel.writeSerializable(this.f29445i);
            parcel.writeInt(this.f29446j);
            parcel.writeString(this.f29447k);
            parcel.writeInt(this.f29448l);
            parcel.writeInt(this.f29449m);
            parcel.writeInt(this.f29450n);
            CharSequence charSequence = this.f29452p;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.f29453q;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.f29454r);
            parcel.writeSerializable(this.f29456t);
            parcel.writeSerializable(this.f29458v);
            parcel.writeSerializable(this.f29459w);
            parcel.writeSerializable(this.f29460x);
            parcel.writeSerializable(this.f29461y);
            parcel.writeSerializable(this.f29462z);
            parcel.writeSerializable(this.A);
            parcel.writeSerializable(this.D);
            parcel.writeSerializable(this.B);
            parcel.writeSerializable(this.C);
            parcel.writeSerializable(this.f29457u);
            parcel.writeSerializable(this.f29451o);
            parcel.writeSerializable(this.E);
        }

        State(@NonNull Parcel parcel) {
            this.f29446j = 255;
            this.f29448l = -2;
            this.f29449m = -2;
            this.f29450n = -2;
            this.f29457u = Boolean.TRUE;
            this.f29438b = parcel.readInt();
            this.f29439c = (Integer) parcel.readSerializable();
            this.f29440d = (Integer) parcel.readSerializable();
            this.f29441e = (Integer) parcel.readSerializable();
            this.f29442f = (Integer) parcel.readSerializable();
            this.f29443g = (Integer) parcel.readSerializable();
            this.f29444h = (Integer) parcel.readSerializable();
            this.f29445i = (Integer) parcel.readSerializable();
            this.f29446j = parcel.readInt();
            this.f29447k = parcel.readString();
            this.f29448l = parcel.readInt();
            this.f29449m = parcel.readInt();
            this.f29450n = parcel.readInt();
            this.f29452p = parcel.readString();
            this.f29453q = parcel.readString();
            this.f29454r = parcel.readInt();
            this.f29456t = (Integer) parcel.readSerializable();
            this.f29458v = (Integer) parcel.readSerializable();
            this.f29459w = (Integer) parcel.readSerializable();
            this.f29460x = (Integer) parcel.readSerializable();
            this.f29461y = (Integer) parcel.readSerializable();
            this.f29462z = (Integer) parcel.readSerializable();
            this.A = (Integer) parcel.readSerializable();
            this.D = (Integer) parcel.readSerializable();
            this.B = (Integer) parcel.readSerializable();
            this.C = (Integer) parcel.readSerializable();
            this.f29457u = (Boolean) parcel.readSerializable();
            this.f29451o = (Locale) parcel.readSerializable();
            this.E = (Boolean) parcel.readSerializable();
        }
    }
}
