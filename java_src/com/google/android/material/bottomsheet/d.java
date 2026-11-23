package com.google.android.material.bottomsheet;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;

/* JADX INFO: loaded from: classes5.dex */
public class d extends AppCompatDialogFragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29686c;

    private class b extends BottomSheetBehavior.g {
        private b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void b(@NonNull View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void c(@NonNull View view, int i10) {
            if (i10 == 5) {
                d.this.N();
            }
        }
    }

    public d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.f29686c) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    private void O(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z10) {
        this.f29686c = z10;
        if (bottomSheetBehavior.getState() == 5) {
            N();
            return;
        }
        if (getDialog() instanceof c) {
            ((c) getDialog()).j();
        }
        bottomSheetBehavior.B(new b());
        bottomSheetBehavior.g(5);
    }

    private boolean P(boolean z10) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof c)) {
            return false;
        }
        c cVar = (c) dialog;
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorG = cVar.g();
        if (!bottomSheetBehaviorG.n0() || !cVar.h()) {
            return false;
        }
        O(bottomSheetBehaviorG, z10);
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (P(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (P(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new c(getContext(), getTheme());
    }

    @SuppressLint({"ValidFragment"})
    public d(@LayoutRes int i10) {
        super(i10);
    }
}
