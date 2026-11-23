package com.google.android.material.sidesheet;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public class m extends f<l> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f31785l = R.attr.sideSheetDialogTheme;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f31786m = R.style.Theme_Material3_Light_SideSheetDialog;

    class a extends l {
        a() {
        }

        @Override // com.google.android.material.sidesheet.l, com.google.android.material.sidesheet.c
        public void a(@NonNull View view, int i10) {
            if (i10 == 5) {
                m.this.cancel();
            }
        }

        @Override // com.google.android.material.sidesheet.l, com.google.android.material.sidesheet.c
        public void b(@NonNull View view, float f10) {
        }
    }

    public m(@NonNull Context context) {
        this(context, 0);
    }

    @Override // com.google.android.material.sidesheet.f
    void c(Sheet<l> sheet) {
        sheet.a(new a());
    }

    @Override // com.google.android.material.sidesheet.f, android.app.Dialog, android.content.DialogInterface
    public /* bridge */ /* synthetic */ void cancel() {
        super.cancel();
    }

    @Override // com.google.android.material.sidesheet.f
    @NonNull
    Sheet<l> f(@NonNull FrameLayout frameLayout) {
        return SideSheetBehavior.D(frameLayout);
    }

    @Override // com.google.android.material.sidesheet.f
    @IdRes
    int h() {
        return R.id.m3_side_sheet;
    }

    @Override // com.google.android.material.sidesheet.f
    @LayoutRes
    int i() {
        return R.layout.m3_side_sheet_dialog;
    }

    @Override // com.google.android.material.sidesheet.f
    int k() {
        return 3;
    }

    @Override // com.google.android.material.sidesheet.f
    public /* bridge */ /* synthetic */ boolean m() {
        return super.m();
    }

    @Override // com.google.android.material.sidesheet.f, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.google.android.material.sidesheet.f, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.google.android.material.sidesheet.f
    public /* bridge */ /* synthetic */ void p(boolean z10) {
        super.p(z10);
    }

    @Override // com.google.android.material.sidesheet.f
    public /* bridge */ /* synthetic */ void q(@GravityInt int i10) {
        super.q(i10);
    }

    @Override // com.google.android.material.sidesheet.f, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCancelable(boolean z10) {
        super.setCancelable(z10);
    }

    @Override // com.google.android.material.sidesheet.f, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
    }

    @Override // com.google.android.material.sidesheet.f, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@LayoutRes int i10) {
        super.setContentView(i10);
    }

    @Override // com.google.android.material.sidesheet.f
    @NonNull
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public SideSheetBehavior<? extends View> e() {
        Sheet sheetE = super.e();
        if (sheetE instanceof SideSheetBehavior) {
            return (SideSheetBehavior) sheetE;
        }
        throw new IllegalStateException("The view is not associated with SideSheetBehavior");
    }

    public m(@NonNull Context context, @StyleRes int i10) {
        super(context, i10, f31785l, f31786m);
    }

    @Override // com.google.android.material.sidesheet.f, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@Nullable View view) {
        super.setContentView(view);
    }

    @Override // com.google.android.material.sidesheet.f, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }
}
