package com.kwad.components.core.page.splitLandingPage.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.kwad.components.core.t.d;
import com.kwad.sdk.core.webview.KsAdWebView;

/* JADX INFO: loaded from: classes2.dex */
public class SplitScrollWebView extends KsAdWebView {
    private boolean afO;
    private a afP;
    private float afQ;
    private boolean afR;
    private int afq;

    public interface a {
        void g(float f10);

        boolean uR();
    }

    public SplitScrollWebView(Context context) {
        super(context);
        this.afO = false;
        uL();
    }

    private void uL() {
        this.afq = 0;
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.afq != 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(((getContext() instanceof Activity ? com.kwad.sdk.c.a.a.k((Activity) getContext()) : com.kwad.sdk.c.a.a.getScreenHeight(getContext())) - (d.wJ() ? com.kwad.sdk.c.a.a.getStatusBarHeight(getContext()) : 0)) - this.afq, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (this.afO) {
            return super.onTouchEvent(motionEventObtain);
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        float y10 = motionEvent.getY();
        if (actionMasked == 0) {
            this.afQ = y10;
            this.afR = false;
            return super.onTouchEvent(motionEvent);
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float f10 = this.afQ;
                float f11 = f10 - y10;
                a aVar = this.afP;
                if (aVar != null && y10 <= f10) {
                    this.afR = true;
                    aVar.g(f11);
                }
                return super.onTouchEvent(motionEventObtain);
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        a aVar2 = this.afP;
        if (aVar2 == null) {
            return false;
        }
        if ((this.afQ - y10 < 0.0f && !this.afR) || !aVar2.uR()) {
            return false;
        }
        this.afO = true;
        return false;
    }

    public void setDisableAnimation(boolean z10) {
        this.afO = z10;
    }

    public void setSplitScrollWebViewListener(a aVar) {
        this.afP = aVar;
    }

    public SplitScrollWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.afO = false;
        uL();
    }

    public SplitScrollWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.afO = false;
        uL();
    }
}
