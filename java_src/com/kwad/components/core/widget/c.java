package com.kwad.components.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.utils.cb;
import com.kwad.sdk.utils.cc;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public final class c extends View implements cc.a {
    private a avE;
    private boolean avF;
    private final int avG;
    private boolean avk;
    private boolean avl;
    private View bZ;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    private final cc f75300ca;

    /* JADX INFO: renamed from: cb, reason: collision with root package name */
    private final AtomicBoolean f75301cb;

    public interface a {
        void fz();
    }

    public c(Context context, View view) {
        super(context);
        this.f75300ca = new cc(this);
        this.f75301cb = new AtomicBoolean(true);
        this.avG = (int) (com.kwad.sdk.core.config.e.Kd() * 100.0f);
        this.bZ = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    private void zK() {
        if (this.avl) {
            this.f75300ca.removeCallbacksAndMessages(null);
            this.avl = false;
        }
    }

    private void zL() {
        if (!this.avF || this.avl) {
            return;
        }
        this.avl = true;
        this.f75300ca.sendEmptyMessage(1);
    }

    private void zP() {
        this.f75301cb.getAndSet(false);
    }

    private void zQ() {
        this.f75301cb.getAndSet(true);
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        a aVar;
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            if (!cb.a(this.bZ, this.avG, false)) {
                if (this.avk) {
                    return;
                }
                setNeedCheckingShow(true);
                return;
            } else {
                if (message.arg1 == 1000 && (aVar = this.avE) != null) {
                    aVar.fz();
                }
                this.f75300ca.sendEmptyMessageDelayed(2, 500L);
                return;
            }
        }
        com.kwad.sdk.core.d.c.d("EmptyView", "handleMsg MSG_CHECKING");
        if (this.avl) {
            if (!cb.a(this.bZ, this.avG, false)) {
                this.f75300ca.sendEmptyMessageDelayed(1, 500L);
                return;
            }
            zK();
            Message messageObtainMessage = this.f75300ca.obtainMessage();
            messageObtainMessage.what = 2;
            messageObtainMessage.arg1 = 1000;
            this.f75300ca.sendMessageDelayed(messageObtainMessage, 1000L);
        }
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.kwad.sdk.core.d.c.d("EmptyView", "onAttachedToWindow:" + this);
        zL();
        this.avk = false;
        zP();
    }

    @Override // android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.kwad.sdk.core.d.c.d("EmptyView", "onDetachedFromWindow" + this);
        zK();
        this.avk = true;
        zQ();
    }

    @Override // android.view.View
    public final void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.kwad.sdk.core.d.c.d("EmptyView", "onFinishTemporaryDetach:" + this.bZ.getParent());
        zP();
    }

    @Override // android.view.View
    public final void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.kwad.sdk.core.d.c.d("EmptyView", "onStartTemporaryDetach:" + this.bZ.getParent());
        zQ();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        com.kwad.sdk.core.d.c.d("EmptyView", "onWindowFocusChanged hasWindowFocus:" + z10);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        com.kwad.sdk.core.d.c.d("EmptyView", "onWindowVisibilityChanged visibility:" + i10);
    }

    public final void setNeedCheckingShow(boolean z10) {
        this.avF = z10;
        if (!z10 && this.avl) {
            zK();
        } else {
            if (!z10 || this.avl) {
                return;
            }
            zL();
        }
    }

    public final void setViewCallback(a aVar) {
        this.avE = aVar;
    }
}
