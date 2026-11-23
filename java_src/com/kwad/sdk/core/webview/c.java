package com.kwad.sdk.core.webview;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.cd;
import com.kwad.sdk.wrapper.m;

/* JADX INFO: loaded from: classes2.dex */
public class c extends WebView {
    private boolean bca;
    private com.kwad.sdk.core.webview.a.a bcb;

    public c(Context context) {
        super(co(context));
        this.bca = true;
        init();
    }

    private static Context co(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            context = context.createConfigurationContext(new Configuration());
        }
        Context contextEP = m.eP(context);
        if (m.eS(contextEP)) {
            return contextEP;
        }
        ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(new IllegalArgumentException("KSApiWebView context not except--context:" + contextEP.getClass().getName() + "--classloader:" + contextEP.getClass().getClassLoader() + "--context2:" + m.eP(ServiceProvider.Ud()).getClass().getName()));
        return m.eP(ServiceProvider.Ud());
    }

    private void init() {
        cd.b(this);
        com.kwad.sdk.core.webview.a.a aVar = new com.kwad.sdk.core.webview.a.a();
        this.bcb = aVar;
        setWebViewClient(aVar);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.bca) {
            release();
        }
    }

    public final void release() {
        try {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this);
            }
            removeAllViews();
            super.destroy();
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    public void setEnableDestroy(boolean z10) {
        this.bca = z10;
    }

    public void setNeedHybridLoad(boolean z10) {
        this.bcb.setNeedHybridLoad(z10);
    }

    public c(Context context, AttributeSet attributeSet) {
        super(co(context), attributeSet);
        this.bca = true;
        init();
    }

    public c(Context context, AttributeSet attributeSet, int i10) {
        super(co(context), attributeSet, i10);
        this.bca = true;
        init();
    }

    @RequiresApi(api = 21)
    public c(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(co(context), attributeSet, i10, i11);
        this.bca = true;
        init();
    }

    public c(Context context, AttributeSet attributeSet, int i10, boolean z10) {
        super(co(context), attributeSet, i10, z10);
        this.bca = true;
        init();
    }
}
