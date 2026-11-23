package com.google.android.material.radiobutton;

import a5.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.g0;
import com.google.android.material.resources.d;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f31329d = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[][] f31330e = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private ColorStateList f31331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f31332c;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f31331b == null) {
            int iD = s.d(this, R.attr.colorControlActivated);
            int iD2 = s.d(this, R.attr.colorOnSurface);
            int iD3 = s.d(this, R.attr.colorSurface);
            int[][] iArr = f31330e;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = s.t(iD3, iD, 1.0f);
            iArr2[1] = s.t(iD3, iD2, 0.54f);
            iArr2[2] = s.t(iD3, iD2, 0.38f);
            iArr2[3] = s.t(iD3, iD2, 0.38f);
            this.f31331b = new ColorStateList(iArr, iArr2);
        }
        return this.f31331b;
    }

    public boolean a() {
        return this.f31332c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f31332c && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f31332c = z10;
        if (z10) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f31329d;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.MaterialRadioButton, i10, i11, new int[0]);
        int i12 = R.styleable.MaterialRadioButton_buttonTint;
        if (typedArrayK.hasValue(i12)) {
            CompoundButtonCompat.setButtonTintList(this, d.a(context2, typedArrayK, i12));
        }
        this.f31332c = typedArrayK.getBoolean(R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayK.recycle();
    }
}
