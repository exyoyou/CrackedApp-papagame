package com.windmill.sdk.banner;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.windmill.sdk.utils.ViewUtil;

/* JADX INFO: loaded from: classes8.dex */
public class a extends Handler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f86545e = 87108;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f86546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f86547b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    InterfaceC1078a f86548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f86549d;

    /* JADX INFO: renamed from: com.windmill.sdk.banner.a$a, reason: collision with other inner class name */
    public interface InterfaceC1078a {
        void inVisible();

        boolean isViewAttached();

        void visible();
    }

    public a(View view, InterfaceC1078a listener, long interval) {
        this.f86549d = view;
        this.f86548c = listener;
        this.f86546a = interval;
    }

    public void a() {
        sendEmptyMessageDelayed(f86545e, this.f86546a);
    }

    public boolean b() {
        return this.f86547b;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        if (f86545e != msg.what || this.f86548c == null) {
            return;
        }
        if (ViewUtil.isVisible(this.f86549d) && this.f86548c.isViewAttached()) {
            this.f86548c.visible();
        } else {
            this.f86548c.inVisible();
        }
        a();
    }

    public void a(boolean stopped) {
        this.f86547b = stopped;
    }

    public void a(InterfaceC1078a listener) {
        this.f86548c = listener;
    }
}
