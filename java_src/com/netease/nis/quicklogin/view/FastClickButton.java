package com.netease.nis.quicklogin.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"AppCompatCustomView"})
public class FastClickButton extends Button {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f76169a;

    public FastClickButton(Context context) {
        super(context);
    }

    public void a(boolean z10) {
        a aVar = this.f76169a;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        a aVar = new a(onClickListener);
        this.f76169a = aVar;
        super.setOnClickListener(aVar);
    }

    public FastClickButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FastClickButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
