package com.kwad.sdk.core.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ca;
import com.kwad.sdk.utils.n;
import com.kwad.sdk.widget.l;

/* JADX INFO: loaded from: classes2.dex */
public class AdBasePvFrameLayout extends AdBaseFrameLayout {
    private long alC;
    private float baM;
    private boolean baN;
    private boolean baO;
    private ViewTreeObserver.OnScrollChangedListener baP;
    private ca baQ;
    private l eW;
    private int ph;
    private ViewTreeObserver qD;

    public AdBasePvFrameLayout(@NonNull Context context) {
        super(context);
        this.alC = 500L;
        this.baM = 0.1f;
        this.baO = true;
        init();
    }

    private void Po() {
        if (Pq()) {
            Pp();
        } else {
            Pr();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Pq() {
        if (!this.baQ.Xh() || Math.abs(this.baQ.brw.height() - getHeight()) > getHeight() * (1.0f - this.baM) || getHeight() <= 0 || getWidth() <= 0) {
            return false;
        }
        Rect rect = this.baQ.brw;
        return rect.bottom > 0 && rect.top < this.ph;
    }

    private void Pr() {
        if (this.baP == null) {
            this.baP = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.kwad.sdk.core.view.AdBasePvFrameLayout.1
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    if (AdBasePvFrameLayout.this.Pq()) {
                        AdBasePvFrameLayout.this.Pp();
                    }
                }
            };
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            this.qD = viewTreeObserver;
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnScrollChangedListener(this.baP);
            }
        }
    }

    private void Ps() {
        ViewTreeObserver viewTreeObserver;
        try {
            if (this.baP != null && (viewTreeObserver = this.qD) != null && viewTreeObserver.isAlive()) {
                this.qD.removeOnScrollChangedListener(this.baP);
            }
            this.baP = null;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    private void init() {
        this.baQ = new ca(this);
        this.ph = n.getScreenHeight(getContext());
        this.baO = true;
    }

    private void qZ() {
        if (this.baO) {
            Po();
        }
    }

    protected final void Pp() {
        Ps();
        l lVar = this.eW;
        if (lVar != null) {
            lVar.aZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Pr();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Ps();
        this.baN = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        boolean z10;
        if (this.baN || (i12 | i13) != 0 || (i10 | i11) == 0) {
            z10 = false;
        } else {
            z10 = true;
            this.baN = true;
        }
        super.onSizeChanged(i10, i11, i12, i13);
        if (z10) {
            qZ();
        }
    }

    public void setCheckDefaultImpressionLogThreshold(float f10) {
        this.baM = f10;
    }

    public void setVisibleListener(l lVar) {
        this.eW = lVar;
    }

    public AdBasePvFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.alC = 500L;
        this.baM = 0.1f;
        this.baO = true;
        init();
    }

    public AdBasePvFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.alC = 500L;
        this.baM = 0.1f;
        this.baO = true;
        init();
    }
}
