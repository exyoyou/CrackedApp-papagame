package com.facebook.drawee.backends.pipeline.info.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import b4.h;
import com.facebook.common.internal.l;
import com.facebook.imagepipeline.image.g;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import javax.annotation.Nullable;
import q3.i;
import q3.j;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends b4.a<g> implements h<g>, Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f27028h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f27029i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static Handler f27030j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l3.c f27031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f27032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f27033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l<Boolean> f27034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l<Boolean> f27035g;

    /* JADX INFO: renamed from: com.facebook.drawee.backends.pipeline.info.internal.a$a, reason: collision with other inner class name */
    static class HandlerC0562a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f27036a;

        public HandlerC0562a(@NonNull Looper looper, @NonNull i notifier) {
            super(looper);
            this.f27036a = notifier;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            j jVar = (j) com.facebook.common.internal.i.i(msg.obj);
            int i10 = msg.what;
            if (i10 == 1) {
                this.f27036a.b(jVar, msg.arg1);
            } else {
                if (i10 != 2) {
                    return;
                }
                this.f27036a.a(jVar, msg.arg1);
            }
        }
    }

    public a(l3.c clock, j imagePerfState, i imagePerfNotifier, l<Boolean> asyncLogging, l<Boolean> useNewState) {
        this.f27031c = clock;
        this.f27032d = imagePerfState;
        this.f27033e = imagePerfNotifier;
        this.f27034f = asyncLogging;
        this.f27035g = useNewState;
    }

    private synchronized void h() {
        if (f27030j != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("ImagePerfControllerListener2Thread");
        handlerThread.start();
        f27030j = new HandlerC0562a((Looper) com.facebook.common.internal.i.i(handlerThread.getLooper()), this.f27033e);
    }

    private j j() {
        return this.f27035g.get().booleanValue() ? new j() : this.f27032d;
    }

    @VisibleForTesting
    private void n(j state, long time) {
        state.G(false);
        state.z(time);
        t(state, 2);
    }

    private boolean q() {
        boolean zBooleanValue = this.f27034f.get().booleanValue();
        if (zBooleanValue && f27030j == null) {
            h();
        }
        return zBooleanValue;
    }

    private void s(j state, int imageLoadStatus) {
        if (!q()) {
            this.f27033e.b(state, imageLoadStatus);
            return;
        }
        Message messageObtainMessage = ((Handler) com.facebook.common.internal.i.i(f27030j)).obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.arg1 = imageLoadStatus;
        messageObtainMessage.obj = state;
        f27030j.sendMessage(messageObtainMessage);
    }

    private void t(j state, int visibilityState) {
        if (!q()) {
            this.f27033e.a(state, visibilityState);
            return;
        }
        Message messageObtainMessage = ((Handler) com.facebook.common.internal.i.i(f27030j)).obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.arg1 = visibilityState;
        messageObtainMessage.obj = state;
        f27030j.sendMessage(messageObtainMessage);
    }

    @Override // b4.a, b4.c
    public void b(String id2, @Nullable Object callerContext, @Nullable b4.c.a extraData) {
        long jNow = this.f27031c.now();
        j jVarJ = j();
        jVarJ.f();
        jVarJ.o(jNow);
        jVarJ.l(id2);
        jVarJ.g(callerContext);
        jVarJ.r(extraData);
        s(jVarJ, 0);
        o(jVarJ, jNow);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        p();
    }

    @Override // b4.a, b4.c
    public void d(String id2, @Nullable b4.c.a extras) {
        long jNow = this.f27031c.now();
        j jVarJ = j();
        jVarJ.r(extras);
        jVarJ.l(id2);
        int iD = jVarJ.d();
        if (iD != 3 && iD != 5 && iD != 6) {
            jVarJ.i(jNow);
            s(jVarJ, 4);
        }
        n(jVarJ, jNow);
    }

    @Override // b4.a, b4.c
    public void f(String id2, @Nullable Throwable throwable, @Nullable b4.c.a extras) {
        long jNow = this.f27031c.now();
        j jVarJ = j();
        jVarJ.r(extras);
        jVarJ.j(jNow);
        jVarJ.l(id2);
        jVarJ.q(throwable);
        s(jVarJ, 5);
        n(jVarJ, jNow);
    }

    @Override // b4.a, b4.c
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void c(String id2, @Nullable g imageInfo, @Nullable b4.c.a extraData) {
        long jNow = this.f27031c.now();
        j jVarJ = j();
        jVarJ.r(extraData);
        jVarJ.k(jNow);
        jVarJ.x(jNow);
        jVarJ.l(id2);
        jVarJ.t(imageInfo);
        s(jVarJ, 3);
    }

    @Override // b4.h
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void e(String id2, g info, b4.d dimensionsInfo) {
        j jVarJ = j();
        jVarJ.l(id2);
        jVarJ.s(this.f27031c.now());
        jVarJ.p(dimensionsInfo);
        s(jVarJ, 6);
    }

    @Override // b4.a, b4.c
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onIntermediateImageSet(String id2, @Nullable g imageInfo) {
        long jNow = this.f27031c.now();
        j jVarJ = j();
        jVarJ.n(jNow);
        jVarJ.l(id2);
        jVarJ.t(imageInfo);
        s(jVarJ, 2);
    }

    @VisibleForTesting
    public void o(j state, long now) {
        state.G(true);
        state.F(now);
        t(state, 1);
    }

    public void p() {
        j().e();
    }
}
