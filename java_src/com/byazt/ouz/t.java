package com.byazt.ouz;

import com.byazt.ete.ic;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 66})
public class t implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<sl> f18491c;
    public Queue<Runnable> tt = new LinkedList();

    @Override // com.byazt.ouz.sl
    public void a() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.11
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).a();
                }
            });
        } else {
            this.f18491c.get().a();
        }
    }

    @Override // com.byazt.ouz.sl
    public void da() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.16
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).da();
                }
            });
        } else {
            this.f18491c.get().da();
        }
    }

    @Override // com.byazt.ouz.sl
    public void i() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.15
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).i();
                }
            });
        } else {
            this.f18491c.get().i();
        }
    }

    @Override // com.byazt.ouz.sl
    public void n(final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.17
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).n(i10);
                }
            });
        } else {
            this.f18491c.get().n(i10);
        }
    }

    @Override // com.byazt.ouz.sl
    public void setPauseFromExpressView(final boolean z10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.6
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).setPauseFromExpressView(z10);
                }
            });
        } else {
            this.f18491c.get().setPauseFromExpressView(z10);
        }
    }

    public sl sl() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.byazt.ouz.sl
    public void sp() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.12
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).sp();
                }
            });
        } else {
            this.f18491c.get().sp();
        }
    }

    @Override // com.byazt.ouz.sl
    public int tt() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.f18491c.get().tt();
    }

    @Override // com.byazt.ouz.sl
    public void uj() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.2
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).uj();
                }
            });
        } else {
            this.f18491c.get().uj();
        }
    }

    @Override // com.byazt.ouz.sl
    public int ve() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.f18491c.get().ve();
    }

    @Override // com.byazt.ouz.sl
    public void x() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.14
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).x();
                }
            });
        } else {
            this.f18491c.get().x();
        }
    }

    public void c(sl slVar) {
        this.f18491c = new WeakReference<>(slVar);
        while (!this.tt.isEmpty()) {
            try {
                Runnable runnablePoll = this.tt.poll();
                if (runnablePoll != null) {
                    runnablePoll.run();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.byazt.ouz.sl
    public void tt(final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().tt(i10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.3
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).tt(i10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void ve(final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().ve(i10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.8
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).ve(i10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void n() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().n();
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.4
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).n();
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void uj(final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().uj(i10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.9
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).uj(i10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(final boolean z10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(z10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.1
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(z10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(i10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.13
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(i10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public long c() {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference == null || weakReference.get() == null) {
            return 0L;
        }
        return this.f18491c.get().c();
    }

    @Override // com.byazt.ouz.sl
    public void c(final float f10, final float f11, final float f12, final float f13, final int i10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(f10, f11, f12, f13, i10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.18
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(f10, f11, f12, f13, i10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(final int i10, final String str) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(i10, str);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.5
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(i10, str);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(final float f10) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(f10);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.7
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(f10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(final ic icVar) {
        WeakReference<sl> weakReference = this.f18491c;
        if (weakReference != null && weakReference.get() != null) {
            this.f18491c.get().c(icVar);
        } else {
            this.tt.add(new Runnable() { // from class: com.byazt.ouz.t.10
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f18491c == null || t.this.f18491c.get() == null) {
                        return;
                    }
                    ((sl) t.this.f18491c.get()).c(icVar);
                }
            });
        }
    }
}
