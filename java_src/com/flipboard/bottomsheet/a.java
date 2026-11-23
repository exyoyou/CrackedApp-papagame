package com.flipboard.bottomsheet;

import android.view.View;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f29132a = 0.7f;

    @Override // com.flipboard.bottomsheet.c
    public float a(float translation, float maxTranslation, float peekedTranslation, BottomSheetLayout parent, View view) {
        return (translation / maxTranslation) * 0.7f;
    }
}
