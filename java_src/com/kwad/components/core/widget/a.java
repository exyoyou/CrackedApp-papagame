package com.kwad.components.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.utils.cb;
import com.kwad.sdk.utils.cc;
import com.kwad.sdk.widget.KSFrameLayout;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public final class a extends KSFrameLayout implements cc.a {
    private InterfaceC0896a avj;
    private boolean avk;
    private boolean avl;
    private int avm;
    private boolean avn;
    private long avo;
    private boolean avp;
    private final float avq;
    private final int avr;
    private final View bZ;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    private final cc f75298ca;

    /* JADX INFO: renamed from: com.kwad.components.core.widget.a$a, reason: collision with other inner class name */
    public interface InterfaceC0896a {
        void aD();

        void ae();

        void af();

        void b(View view);

        void onWindowFocusChanged(boolean z10);
    }

    public a(Context context, View view) {
        super(context, view);
        this.f75298ca = new cc(this);
        this.avm = 5;
        this.bZ = view;
        setLayoutParams(new ViewGroup.LayoutParams(1, 1));
        float fKd = com.kwad.sdk.core.config.e.Kd();
        this.avq = fKd;
        setVisiblePercent(fKd);
        float fKf = com.kwad.sdk.core.config.e.Kf();
        this.avr = (int) ((fKf < 0.0f ? 1.0f : fKf) * 1000.0f);
    }

    private void zJ() {
        InterfaceC0896a interfaceC0896a;
        if (this.avr == 0 && (interfaceC0896a = this.avj) != null) {
            interfaceC0896a.b(this.bZ);
            return;
        }
        Message messageObtainMessage = this.f75298ca.obtainMessage();
        messageObtainMessage.what = 2;
        this.f75298ca.sendMessageDelayed(messageObtainMessage, this.avr);
    }

    private void zK() {
        this.f75298ca.removeCallbacksAndMessages(null);
        this.avl = false;
    }

    private void zL() {
        if (this.avl) {
            return;
        }
        this.avl = true;
        this.f75298ca.sendEmptyMessage(1);
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, com.kwad.sdk.widget.k
    public final void H(View view) {
        InterfaceC0896a interfaceC0896a;
        InterfaceC0896a interfaceC0896a2;
        super.H(view);
        if (this.avr == 0 && (interfaceC0896a2 = this.avj) != null) {
            interfaceC0896a2.b(view);
            return;
        }
        if (!this.avn) {
            this.avn = true;
            this.avo = System.currentTimeMillis();
            zK();
            zJ();
            return;
        }
        if (System.currentTimeMillis() - this.avo <= this.avr || (interfaceC0896a = this.avj) == null) {
            return;
        }
        interfaceC0896a.b(view);
        zK();
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        if (this.avk) {
            return;
        }
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            if (!cb.a(this.bZ, (int) (this.avq * 100.0f), false)) {
                this.avm = 5;
                this.f75298ca.sendEmptyMessage(1);
                return;
            } else {
                InterfaceC0896a interfaceC0896a = this.avj;
                if (interfaceC0896a != null) {
                    interfaceC0896a.b(this.bZ);
                    return;
                }
                return;
            }
        }
        if (!cb.a(this.bZ, (int) (this.avq * 100.0f), false)) {
            InterfaceC0896a interfaceC0896a2 = this.avj;
            if (interfaceC0896a2 != null && !this.avp) {
                interfaceC0896a2.aD();
            }
            this.avp = true;
            cc ccVar = this.f75298ca;
            int i11 = this.avm;
            this.avm = i11 - 1;
            ccVar.sendEmptyMessageDelayed(1, i11 <= 0 ? 500L : 100L);
            return;
        }
        zK();
        if (this.avn) {
            InterfaceC0896a interfaceC0896a3 = this.avj;
            if (interfaceC0896a3 != null) {
                interfaceC0896a3.b(this.bZ);
            }
        } else {
            this.avn = true;
            this.avo = System.currentTimeMillis();
            zJ();
        }
        this.avp = false;
        cc ccVar2 = this.f75298ca;
        int i12 = this.avm;
        this.avm = i12 - 1;
        ccVar2.sendEmptyMessageDelayed(1, i12 <= 0 ? 500L : 100L);
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void ae() {
        super.ae();
        this.avm = 5;
        this.avk = false;
        this.avn = false;
        zL();
        com.kwad.sdk.core.d.c.d("ceshi", "onViewAttached");
        InterfaceC0896a interfaceC0896a = this.avj;
        if (interfaceC0896a != null) {
            interfaceC0896a.ae();
        }
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void af() {
        super.af();
        zK();
        this.avm = 0;
        this.avo = 0L;
        this.avk = true;
        InterfaceC0896a interfaceC0896a = this.avj;
        if (interfaceC0896a != null) {
            interfaceC0896a.af();
        }
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, android.view.View
    public final void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        com.kwad.sdk.core.d.c.d("AdExposureView", "onWindowFocusChanged hasWindowFocus:" + z10);
        InterfaceC0896a interfaceC0896a = this.avj;
        if (interfaceC0896a != null) {
            interfaceC0896a.onWindowFocusChanged(z10);
        }
    }

    public final void setViewCallback(InterfaceC0896a interfaceC0896a) {
        this.avj = interfaceC0896a;
    }

    public final void zM() {
        zL();
    }
}
