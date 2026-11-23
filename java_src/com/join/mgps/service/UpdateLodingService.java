package com.join.mgps.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.join.mgps.Util.z;

/* JADX INFO: loaded from: classes3.dex */
public class UpdateLodingService extends Service {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f72882i = z.f50168g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f72883b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f72884c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f72886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f72887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    d f72888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Context f72889h;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72890b;

        a(final String val$gameId) {
            this.f72890b = val$gameId;
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 13991. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            /*
                Method dump skipped, instruction units count: 1399
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.service.UpdateLodingService.a.run():void");
        }
    }

    class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f72892a;

        public b(Looper looper, Context c10) {
            super(looper);
            this.f72892a = c10;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg != null) {
                int i10 = msg.what;
                if (i10 == 0) {
                    UpdateLodingService.this.f72888g.update(0, msg.obj);
                    return;
                }
                if (i10 == 1) {
                    UpdateLodingService.this.f72888g.update(1, msg.obj);
                    return;
                }
                if (i10 == 2) {
                    UpdateLodingService.this.f72888g.update(2, msg.obj);
                } else if (i10 == 3) {
                    UpdateLodingService.this.f72888g.update(3, msg.obj);
                } else {
                    if (i10 != 4) {
                        return;
                    }
                    UpdateLodingService.this.f72888g.update(4, msg.obj);
                }
            }
        }
    }

    public class c extends Binder {
        public c() {
        }

        public UpdateLodingService getService() {
            return UpdateLodingService.this;
        }

        public void setDownData(String gameId, int dType) {
            UpdateLodingService.this.f72883b = false;
            UpdateLodingService.this.f72885d = dType;
            UpdateLodingService.this.j(gameId);
        }
    }

    public interface d {
        void update(int msgWhat, Object messageObj);
    }

    static /* synthetic */ int a(UpdateLodingService updateLodingService) {
        return updateLodingService.f72885d;
    }

    static /* synthetic */ String c() {
        return f72882i;
    }

    static /* synthetic */ b d(UpdateLodingService updateLodingService) {
        return updateLodingService.f72886e;
    }

    static /* synthetic */ boolean e(UpdateLodingService updateLodingService) {
        return updateLodingService.f72883b;
    }

    static /* synthetic */ long g(UpdateLodingService updateLodingService) {
        return updateLodingService.f72884c;
    }

    static /* synthetic */ long h(UpdateLodingService updateLodingService, long j10) {
        updateLodingService.f72884c = j10;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(final String gameId) {
        new a(gameId).start();
    }

    public void k() {
        this.f72883b = true;
        stopSelf();
    }

    public void l(d lodingMessage) {
        this.f72888g = lodingMessage;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.f72887f == null) {
            this.f72887f = new c();
        }
        this.f72886e = new b(Looper.myLooper(), this);
        return this.f72887f;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f72887f = new c();
        this.f72889h = this;
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f72883b = true;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return super.onStartCommand(intent, flags, startId);
    }
}
