package com.byazt.sd;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.byazt.hu.sl;
import com.byazt.s.t;
import com.byazt.s.u;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 470, 91})
public class sp extends com.byazt.s.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f19606c = "sp";

    @com.byazt.zqa.c(c = {0, 1, 470, 180})
    private static class c implements t {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Dialog f19611c;

        public c(Dialog dialog) {
            if (dialog != null) {
                this.f19611c = dialog;
                c();
            }
        }

        @Override // com.byazt.s.t
        public void c() {
            Dialog dialog = this.f19611c;
            if (dialog != null) {
                dialog.show();
            }
        }

        @Override // com.byazt.s.t
        public boolean tt() {
            Dialog dialog = this.f19611c;
            if (dialog != null) {
                return dialog.isShowing();
            }
            return false;
        }
    }

    @Override // com.byazt.s.c, com.byazt.s.uj
    public u c(Context context) {
        return new u(context) { // from class: com.byazt.sd.sp.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public DialogInterface.OnCancelListener f19607a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Context f19608c;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public DialogInterface.OnClickListener f19609n;
            public DialogInterface.OnClickListener uj;
            public com.byazt.e.tt.c ve;

            {
                this.f19608c = context;
                this.ve = new com.byazt.e.tt.c(context);
            }

            @Override // com.byazt.s.u
            public u c(CharSequence charSequence) {
                this.ve.c((String) charSequence);
                return this;
            }

            @Override // com.byazt.s.u
            public u tt(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
                this.ve.uj((String) charSequence);
                this.f19609n = onClickListener;
                return this;
            }

            @Override // com.byazt.s.u
            public u c(String str) {
                this.ve.tt(str);
                return this;
            }

            @Override // com.byazt.s.u
            public u c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
                this.ve.ve((String) charSequence);
                this.uj = onClickListener;
                return this;
            }

            @Override // com.byazt.s.u
            public u c(DialogInterface.OnCancelListener onCancelListener) {
                this.f19607a = onCancelListener;
                return this;
            }

            @Override // com.byazt.s.u
            public u c(boolean z10) {
                this.ve.c(z10);
                return this;
            }

            @Override // com.byazt.s.u
            public t c() {
                this.ve.c(new com.byazt.e.tt.InterfaceC0300tt() { // from class: com.byazt.sd.sp.1.1
                    @Override // com.byazt.e.tt.InterfaceC0300tt
                    public void c(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.uj != null) {
                            AnonymousClass1.this.uj.onClick(dialogInterface, -1);
                        }
                    }

                    @Override // com.byazt.e.tt.InterfaceC0300tt
                    public void tt(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f19609n != null) {
                            AnonymousClass1.this.f19609n.onClick(dialogInterface, -2);
                        }
                    }

                    @Override // com.byazt.e.tt.InterfaceC0300tt
                    public void ve(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f19607a == null || dialogInterface == null) {
                            return;
                        }
                        AnonymousClass1.this.f19607a.onCancel(dialogInterface);
                    }
                });
                sl.c(sp.f19606c, "getThemedAlertDlgBuilder", null);
                this.ve.c(3);
                return new c(com.byazt.gq.t.ve().tt(this.ve.c()));
            }
        };
    }
}
