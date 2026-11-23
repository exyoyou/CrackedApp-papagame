package com.kwad.framework.filedownloader;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    static int azO = 10;
    static int azP = 5;
    private final Executor azK;
    private final LinkedBlockingQueue<t> azL;
    private final Object azM;
    private final ArrayList<t> azN;
    private final Handler handler;

    static final class a {
        private static final j azS = new j(0);
    }

    static class b implements Handler.Callback {
        private b() {
        }

        private static void a(ArrayList<t> arrayList) {
            for (t tVar : arrayList) {
                if (tVar != null) {
                    tVar.Bt();
                }
            }
            arrayList.clear();
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                ((t) message.obj).Bt();
            } else if (i10 == 2) {
                a((ArrayList) message.obj);
                j.Bp().push();
            }
            return true;
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    /* synthetic */ j(byte b10) {
        this();
    }

    public static j Bp() {
        return a.azS;
    }

    private static boolean Bq() {
        return azO > 0;
    }

    private void b(t tVar) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(1, tVar));
    }

    private void c(t tVar) {
        synchronized (this.azM) {
            this.azL.offer(tVar);
        }
        push();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void push() {
        synchronized (this.azM) {
            if (this.azN.isEmpty()) {
                if (this.azL.isEmpty()) {
                    return;
                }
                int i10 = 0;
                if (Bq()) {
                    int i11 = azO;
                    int iMin = Math.min(this.azL.size(), azP);
                    while (i10 < iMin) {
                        this.azN.add(this.azL.remove());
                        i10++;
                    }
                    i10 = i11;
                } else {
                    this.azL.drainTo(this.azN);
                }
                Handler handler = this.handler;
                handler.sendMessageDelayed(handler.obtainMessage(2, this.azN), i10);
            }
        }
    }

    private j() {
        this.azK = com.kwad.framework.filedownloader.f.b.w(5, "BlockCompleted");
        this.azM = new Object();
        this.azN = new ArrayList<>();
        this.handler = new Handler(Looper.getMainLooper(), new b((byte) 0));
        this.azL = new LinkedBlockingQueue<>();
    }

    final void a(t tVar) {
        a(tVar, false);
    }

    private void a(final t tVar, boolean z10) {
        if (tVar.Bu()) {
            tVar.Bt();
            return;
        }
        if (tVar.Bv()) {
            this.azK.execute(new Runnable() { // from class: com.kwad.framework.filedownloader.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    tVar.Bt();
                }
            });
            return;
        }
        if (!Bq() && !this.azL.isEmpty()) {
            synchronized (this.azM) {
                if (!this.azL.isEmpty()) {
                    Iterator<t> it2 = this.azL.iterator();
                    while (it2.hasNext()) {
                        b(it2.next());
                    }
                }
                this.azL.clear();
            }
        }
        if (!Bq()) {
            b(tVar);
        } else {
            c(tVar);
        }
    }
}
