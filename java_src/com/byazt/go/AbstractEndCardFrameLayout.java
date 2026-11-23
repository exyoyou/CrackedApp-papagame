package com.byazt.go;

import android.widget.FrameLayout;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.hkv.tt;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 1225, 2170})
public abstract class AbstractEndCardFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f14603c;
    public final ic tt;

    public AbstractEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity);
        this.f14603c = tTBaseVideoActivity;
        this.tt = icVar;
        c();
    }

    public abstract void c();

    public abstract SSWebView getEndCardWebView();

    public abstract SSWebView getPlayableWebView();

    public abstract FrameLayout getVideoArea();

    public abstract void setClickListener(tt ttVar);

    public void tt() {
    }
}
