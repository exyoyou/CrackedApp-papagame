package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
public class n extends DatePickerDialog {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @AttrRes
    private static final int f30553d = 16843612;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @StyleRes
    private static final int f30554e = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Drawable f30555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final Rect f30556c;

    public n(@NonNull Context context) {
        this(context, 0);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f30555b);
        getWindow().getDecorView().setOnTouchListener(new w4.a(this, this.f30556c));
    }

    public n(@NonNull Context context, int i10) {
        this(context, i10, null, -1, -1, -1);
    }

    public n(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i10, int i11, int i12) {
        this(context, 0, onDateSetListener, i10, i11, i12);
    }

    public n(@NonNull Context context, int i10, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i11, int i12, int i13) {
        super(context, i10, onDateSetListener, i11, i12, i13);
        Context context2 = getContext();
        int iG = com.google.android.material.resources.b.g(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i14 = f30554e;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, 16843612, i14);
        materialShapeDrawable.p0(ColorStateList.valueOf(iG));
        Rect rectA = w4.c.a(context2, 16843612, i14);
        this.f30556c = rectA;
        this.f30555b = w4.c.b(materialShapeDrawable, rectA);
    }
}
