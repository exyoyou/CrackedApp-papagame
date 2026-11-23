package com.sigmob.sdk.base.views;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.beans.ClipBoardItemData;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class m extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80165a = "m";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.base.views.a f80166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f80167c;

    public interface a {
        void onWebViewClick(MotionEvent downEvent, MotionEvent upEvent);
    }

    class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        MotionEvent f80168a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f80170c;

        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            int action = event.getAction();
            if (action == 0) {
                this.f80170c = true;
                this.f80168a = MotionEvent.obtain(event);
            } else {
                if (action != 1 || !this.f80170c) {
                    return false;
                }
                this.f80170c = false;
                if (m.this.f80167c != null) {
                    m.this.f80167c.onWebViewClick(this.f80168a, event);
                }
            }
            return false;
        }
    }

    private m(Context context, String adLogoUrl, boolean showAdLogo, boolean invisibleAdLabel) {
        super(context);
        j();
        com.sigmob.sdk.base.utils.j.a(f80165a, getSettings());
        a(true);
        setBackgroundColor(0);
        if (showAdLogo) {
            ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            com.sigmob.sdk.base.views.a aVar = new com.sigmob.sdk.base.views.a(getContext().getApplicationContext(), 1);
            this.f80166b = aVar;
            aVar.a(adLogoUrl);
            aVar.b(com.sigmob.sdk.base.k.h());
            addView(aVar, layoutParams);
        } else {
            this.f80166b = null;
        }
        setOnTouchListener(new b());
    }

    private void j() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @Override // com.sigmob.sdk.base.views.f, android.webkit.WebView
    public void destroy() {
        SigmobLog.d("CreativeWebView destroy() callSigmobLog.d( \"CreativeWebView destroy() called\");ed");
        super.destroy();
        removeAllViews();
    }

    public void setLogoClickListener(View.OnClickListener listener) {
        com.sigmob.sdk.base.views.a aVar = this.f80166b;
        if (aVar == null) {
            return;
        }
        aVar.setOnClickListener(listener);
    }

    public void setWebViewClickListener(a webViewClickListener) {
        this.f80167c = webViewClickListener;
    }

    public static m a(Context context, String adLogoUrl, boolean showAdLogo, boolean invisibleAdLabel) {
        Preconditions.NoThrow.checkNotNull(context);
        return new m(context, adLogoUrl, showAdLogo, invisibleAdLabel);
    }

    void a(String data) {
        File fileB = com.sigmob.sdk.base.utils.o.b(data, Md5Util.md5(data) + ".html");
        if (fileB == null || TextUtils.isEmpty(fileB.getAbsolutePath())) {
            loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://localhost/", data, ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            return;
        }
        loadUrl("file://" + fileB.getAbsolutePath());
    }
}
