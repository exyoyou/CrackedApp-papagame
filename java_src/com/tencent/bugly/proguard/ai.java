package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class ai {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ai f83237b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ah f83238a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f83240d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f83242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f83243g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<Integer, Long> f83241e = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f83244h = new LinkedBlockingQueue<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f83245i = new LinkedBlockingQueue<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f83246j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f83247k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f83248l = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f83239c = w.a();

    private ai(Context context) {
        this.f83240d = context;
    }

    static /* synthetic */ int b(ai aiVar) {
        int i10 = aiVar.f83248l - 1;
        aiVar.f83248l = i10;
        return i10;
    }

    public static synchronized ai a(Context context) {
        if (f83237b == null) {
            f83237b = new ai(context);
        }
        return f83237b;
    }

    public final boolean b(int i10) {
        if (p.f83617c) {
            al.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - a(i10);
        al.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(jCurrentTimeMillis / 1000), Integer.valueOf(i10));
        if (jCurrentTimeMillis >= 30000) {
            return true;
        }
        al.a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
        return false;
    }

    public static synchronized ai a() {
        return f83237b;
    }

    public final void a(int i10, bq bqVar, String str, String str2, ah ahVar, long j10, boolean z10) {
        try {
            try {
                a(new aj(this.f83240d, i10, bqVar.f83516g, ae.a((Object) bqVar), str, str2, ahVar, z10), true, true, j10);
            } catch (Throwable th) {
                th = th;
                if (al.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void b() {
        ak akVarA = ak.a();
        LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
        final LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.f83246j) {
            al.c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            int size = this.f83244h.size();
            final int size2 = this.f83245i.size();
            if (size == 0 && size2 == 0) {
                al.c("[UploadManager] There is no upload task in queue.", new Object[0]);
                return;
            }
            if (akVarA == null || !akVarA.c()) {
                size2 = 0;
            }
            a(this.f83244h, linkedBlockingQueue, size);
            a(this.f83245i, linkedBlockingQueue2, size2);
            a(size, linkedBlockingQueue);
            if (size2 > 0) {
                al.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            ak akVarA2 = ak.a();
            if (akVarA2 != null) {
                akVarA2.a(new Runnable() { // from class: com.tencent.bugly.proguard.ai.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable;
                        for (int i10 = 0; i10 < size2 && (runnable = (Runnable) linkedBlockingQueue2.poll()) != null; i10++) {
                            runnable.run();
                        }
                    }
                });
            }
        }
    }

    private void a(int i10, int i11, byte[] bArr, String str, String str2, ah ahVar, boolean z10) {
        try {
            try {
                a(new aj(this.f83240d, i10, i11, bArr, str, str2, ahVar, 0, 0, false), z10, false, 0L);
            } catch (Throwable th) {
                th = th;
                if (al.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(int i10, bq bqVar, String str, String str2, ah ahVar, boolean z10) {
        a(i10, bqVar.f83516g, ae.a((Object) bqVar), str, str2, ahVar, z10);
    }

    public final long a(boolean z10) {
        long jD;
        long jB = ap.b();
        int i10 = z10 ? 5 : 3;
        List<y> listA = this.f83239c.a(i10);
        if (listA != null && listA.size() > 0) {
            jD = 0;
            try {
                y yVar = listA.get(0);
                if (yVar.f83697e >= jB) {
                    jD = ap.d(yVar.f83699g);
                    if (i10 == 3) {
                        this.f83242f = jD;
                    } else {
                        this.f83243g = jD;
                    }
                    listA.remove(yVar);
                }
            } catch (Throwable th) {
                al.a(th);
            }
            if (listA.size() > 0) {
                this.f83239c.a(listA);
            }
        } else {
            jD = z10 ? this.f83243g : this.f83242f;
        }
        al.c("[UploadManager] Local network consume: %d KB", Long.valueOf(jD / 1024));
        return jD;
    }

    protected final synchronized void a(long j10, boolean z10) {
        int i10 = z10 ? 5 : 3;
        y yVar = new y();
        yVar.f83694b = i10;
        yVar.f83697e = ap.b();
        yVar.f83695c = "";
        yVar.f83696d = "";
        yVar.f83699g = ap.c(j10);
        this.f83239c.b(i10);
        this.f83239c.a(yVar);
        if (z10) {
            this.f83243g = j10;
        } else {
            this.f83242f = j10;
        }
        al.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j10 / 1024));
    }

    public final synchronized void a(int i10, long j10) {
        try {
            if (i10 < 0) {
                al.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i10));
                return;
            }
            this.f83241e.put(Integer.valueOf(i10), Long.valueOf(j10));
            y yVar = new y();
            yVar.f83694b = i10;
            yVar.f83697e = j10;
            yVar.f83695c = "";
            yVar.f83696d = "";
            yVar.f83699g = new byte[0];
            this.f83239c.b(i10);
            this.f83239c.a(yVar);
            al.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i10), ap.a(j10));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long a(int i10) {
        try {
            if (i10 >= 0) {
                Long l10 = this.f83241e.get(Integer.valueOf(i10));
                if (l10 != null) {
                    return l10.longValue();
                }
            } else {
                al.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i10));
            }
            return 0L;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void a(LinkedBlockingQueue<Runnable> linkedBlockingQueue, LinkedBlockingQueue<Runnable> linkedBlockingQueue2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            Runnable runnablePeek = linkedBlockingQueue.peek();
            if (runnablePeek == null) {
                return;
            }
            try {
                linkedBlockingQueue2.put(runnablePeek);
                linkedBlockingQueue.poll();
            } catch (Throwable th) {
                al.e("[UploadManager] Failed to add upload task to temp urgent queue: %s", th.getMessage());
            }
        }
    }

    private void a(int i10, LinkedBlockingQueue<Runnable> linkedBlockingQueue) {
        ak akVarA = ak.a();
        if (i10 > 0) {
            al.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(i10), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        }
        for (int i11 = 0; i11 < i10; i11++) {
            final Runnable runnablePoll = linkedBlockingQueue.poll();
            if (runnablePoll == null) {
                return;
            }
            synchronized (this.f83246j) {
                if (this.f83248l >= 2 && akVarA != null) {
                    akVarA.a(runnablePoll);
                } else {
                    al.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                    if (ap.a(new Runnable() { // from class: com.tencent.bugly.proguard.ai.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            runnablePoll.run();
                            synchronized (ai.this.f83246j) {
                                ai.b(ai.this);
                            }
                        }
                    }, "BUGLY_ASYNC_UPLOAD") != null) {
                        synchronized (this.f83246j) {
                            this.f83248l++;
                        }
                    } else {
                        al.d("[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time.", new Object[0]);
                        a(runnablePoll, true);
                    }
                }
            }
        }
    }

    private boolean a(Runnable runnable, boolean z10) {
        if (runnable == null) {
            al.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            al.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.f83246j) {
                try {
                    if (z10) {
                        this.f83244h.put(runnable);
                    } else {
                        this.f83245i.put(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        } catch (Throwable th2) {
            al.e("[UploadManager] Failed to add upload task to queue: %s", th2.getMessage());
            return false;
        }
    }

    private void a(Runnable runnable, long j10) {
        if (runnable == null) {
            al.d("[UploadManager] Upload task should not be null", new Object[0]);
            return;
        }
        al.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        Thread threadA = ap.a(runnable, "BUGLY_SYNC_UPLOAD");
        if (threadA == null) {
            al.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
            a(runnable, true);
            return;
        }
        try {
            threadA.join(j10);
        } catch (Throwable th) {
            al.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
            a(runnable, true);
            b();
        }
    }

    private void a(Runnable runnable, boolean z10, boolean z11, long j10) {
        al.c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (z11) {
            a(runnable, j10);
        } else {
            a(runnable, z10);
            b();
        }
    }
}
