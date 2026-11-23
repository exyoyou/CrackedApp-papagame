package com.byazt.z;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.t.DownloadInfo;
import com.byazt.y.JumpUnknownSourceActivity;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f22542a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Queue<Integer> f22543c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SoftReference<JumpUnknownSourceActivity> f22544n;
    public Runnable sp;
    public boolean tt;
    public long uj;
    public long ve;

    @com.byazt.zqa.c(c = {0, 1, 133, 180})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final sp f22549c = new sp();
    }

    private sp() {
        this.f22543c = new ArrayDeque();
        this.tt = false;
        this.f22542a = new Handler(Looper.getMainLooper());
        this.sp = new Runnable() { // from class: com.byazt.z.sp.1
            @Override // java.lang.Runnable
            public void run() {
                sp.this.ve();
            }
        };
        com.byazt.g.c.c().c(new com.byazt.g.c.InterfaceC0315c() { // from class: com.byazt.z.sp.2
            @Override // com.byazt.g.c.InterfaceC0315c
            public void tt() {
                if (sp.this.f22543c.isEmpty()) {
                    return;
                }
                long jC = com.byazt.k.c.ve().c("install_on_resume_install_interval", BaseCloudFileManager.STOKEN_VALID_TIME);
                long jCurrentTimeMillis = System.currentTimeMillis() - sp.this.uj;
                if (jCurrentTimeMillis < jC) {
                    if (sp.this.f22542a.hasCallbacks(sp.this.sp)) {
                        return;
                    }
                    sp.this.f22542a.postDelayed(sp.this.sp, jC - jCurrentTimeMillis);
                } else {
                    sp.this.uj = System.currentTimeMillis();
                    sp.this.ve();
                }
            }

            @Override // com.byazt.g.c.InterfaceC0315c
            public void ve() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int tt(Context context, int i10, boolean z10) {
        int iTt = ve.tt(context, i10, z10);
        if (iTt == 1) {
            this.tt = true;
        }
        this.ve = System.currentTimeMillis();
        return iTt;
    }

    private boolean uj() {
        return System.currentTimeMillis() - this.ve < 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        final Integer numPoll;
        if (Build.VERSION.SDK_INT < 29 || com.byazt.g.c.c().tt()) {
            synchronized (this.f22543c) {
                numPoll = this.f22543c.poll();
            }
            this.f22542a.removeCallbacks(this.sp);
            if (numPoll == null) {
                this.tt = false;
                return;
            }
            final Context contextIc = com.byazt.zz.ve.ic();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f22542a.post(new Runnable() { // from class: com.byazt.z.sp.3
                    @Override // java.lang.Runnable
                    public void run() {
                        sp.this.tt(contextIc, numPoll.intValue(), false);
                    }
                });
            } else {
                tt(contextIc, numPoll.intValue(), false);
            }
            this.f22542a.postDelayed(this.sp, 20000L);
        }
    }

    public void c(DownloadInfo downloadInfo, String str) {
        if (downloadInfo == null || TextUtils.isEmpty(str)) {
            return;
        }
        ve();
    }

    public JumpUnknownSourceActivity tt() {
        SoftReference<JumpUnknownSourceActivity> softReference = this.f22544n;
        JumpUnknownSourceActivity jumpUnknownSourceActivity = softReference == null ? null : softReference.get();
        this.f22544n = null;
        return jumpUnknownSourceActivity;
    }

    public static sp c() {
        return c.f22549c;
    }

    public int c(final Context context, final int i10, final boolean z10) {
        if (z10) {
            return tt(context, i10, z10);
        }
        if (uj()) {
            this.f22542a.postDelayed(new Runnable() { // from class: com.byazt.z.sp.4
                @Override // java.lang.Runnable
                public void run() {
                    sp.this.c(context, i10, z10);
                }
            }, 1000L);
            return 1;
        }
        if (com.byazt.g.c.c().tt()) {
            com.byazt.x.c.ve("leaves", "on Foreground");
            return tt(context, i10, z10);
        }
        if (tt.c()) {
            return 1;
        }
        boolean z11 = Build.VERSION.SDK_INT < 29;
        if (this.f22543c.isEmpty() && !this.tt && z11) {
            return tt(context, i10, z10);
        }
        int iC = com.byazt.k.c.ve().c("install_queue_size", 3);
        synchronized (this.f22543c) {
            while (this.f22543c.size() > iC) {
                this.f22543c.poll();
            }
        }
        if (z11) {
            this.f22542a.removeCallbacks(this.sp);
            this.f22542a.postDelayed(this.sp, com.byazt.k.c.c(i10).c("install_queue_timeout", 20000L));
        }
        synchronized (this.f22543c) {
            if (!this.f22543c.contains(Integer.valueOf(i10))) {
                this.f22543c.offer(Integer.valueOf(i10));
            }
        }
        return 1;
    }

    public void c(JumpUnknownSourceActivity jumpUnknownSourceActivity) {
        this.f22544n = new SoftReference<>(jumpUnknownSourceActivity);
    }
}
