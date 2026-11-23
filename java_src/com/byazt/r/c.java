package com.byazt.r;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.byazt.s.t;
import com.byazt.s.u;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 957, 20})
public class c extends com.byazt.s.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AlertDialog.Builder f19393c;

    /* JADX INFO: renamed from: com.byazt.r.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 957, 44})
    private static class C0419c implements t {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public AlertDialog f19394c;

        public C0419c(AlertDialog.Builder builder) {
            if (builder != null) {
                this.f19394c = builder.show();
            }
        }

        @Override // com.byazt.s.t
        public void c() {
            AlertDialog alertDialog = this.f19394c;
            if (alertDialog != null) {
                alertDialog.show();
            }
        }

        @Override // com.byazt.s.t
        public boolean tt() {
            AlertDialog alertDialog = this.f19394c;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }
    }

    public c(Context context) {
        this.f19393c = new AlertDialog.Builder(context);
    }

    @Override // com.byazt.s.u
    public u c(CharSequence charSequence) {
        AlertDialog.Builder builder = this.f19393c;
        if (builder != null) {
            builder.setTitle(charSequence);
        }
        return this;
    }

    @Override // com.byazt.s.u
    public u tt(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.f19393c;
        if (builder != null) {
            builder.setNegativeButton(charSequence, onClickListener);
        }
        return this;
    }

    @Override // com.byazt.s.u
    public u c(String str) {
        AlertDialog.Builder builder = this.f19393c;
        if (builder != null) {
            builder.setMessage(str);
        }
        return this;
    }

    @Override // com.byazt.s.u
    public u c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.f19393c;
        if (builder != null) {
            builder.setPositiveButton(charSequence, onClickListener);
        }
        return this;
    }

    @Override // com.byazt.s.u
    public u c(DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = this.f19393c;
        if (builder != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        return this;
    }

    @Override // com.byazt.s.u
    public t c() {
        return new C0419c(this.f19393c);
    }
}
