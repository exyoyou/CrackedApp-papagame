package com.join.mgps.ad;

import android.content.Context;
import android.content.Intent;
import com.join.mgps.service.CommonService_;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c<T> extends o<T> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected static boolean f58351l;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Context f58352g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f58353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f58354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f58355j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected a<T> f58356k;

    public interface a<T> {
        void a(T adView);

        void onADLoaded(List<T> ads);

        void onAdClick();

        void onAdShow();
    }

    static {
        f58351l = com.join.android.app.common.http.c.f34547c;
    }

    public c(String type, Context ctx, String appId, String posId) {
        this.f58355j = type + "InfoStreamVideo";
        this.f58352g = ctx;
        this.f58353h = appId;
        this.f58354i = posId;
    }

    public abstract void a();

    public abstract void b(int count, int width, int height);

    public abstract void c();

    public void d(String eventName) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        this.f58352g.sendBroadcast(intent);
    }

    public void e(a<T> mLoadListener) {
        this.f58356k = mLoadListener;
    }
}
