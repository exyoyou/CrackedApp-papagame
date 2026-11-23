package com.sigmob.sdk.mraid;

import android.content.Context;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class v extends com.sigmob.sdk.base.views.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f81117a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f81118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f81119c;

    public interface a {
        void onVisibilityChanged(boolean isVisible);
    }

    public v(Context context) {
        super(context);
        if (Build.VERSION.SDK_INT <= 22) {
            this.f81119c = getVisibility() == 0;
        }
    }

    private void setMraidViewable(final boolean viewable) {
        if (this.f81119c == viewable) {
            return;
        }
        this.f81119c = viewable;
        a aVar = this.f81118b;
        if (aVar == null) {
            return;
        }
        aVar.onVisibilityChanged(viewable);
    }

    @Override // com.sigmob.sdk.base.views.f, android.webkit.WebView
    public void destroy() {
        super.destroy();
        this.f81118b = null;
    }

    public boolean j() {
        return this.f81119c;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0) {
            return;
        }
        setMraidViewable(false);
    }

    public void setVisibilityChangedListener(a listener) {
        this.f81118b = listener;
    }
}
