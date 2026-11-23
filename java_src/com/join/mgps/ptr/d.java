package com.join.mgps.ptr;

/* JADX INFO: loaded from: classes3.dex */
class d implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f71987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f71988c;

    private d() {
    }

    public static void f(d head, c handler) {
        if (handler == null || head == null) {
            return;
        }
        if (head.f71987b == null) {
            head.f71987b = handler;
            return;
        }
        while (!head.g(handler)) {
            d dVar = head.f71988c;
            if (dVar == null) {
                d dVar2 = new d();
                dVar2.f71987b = handler;
                head.f71988c = dVar2;
                return;
            }
            head = dVar;
        }
    }

    private boolean g(c handler) {
        c cVar = this.f71987b;
        return cVar != null && cVar == handler;
    }

    public static d h() {
        return new d();
    }

    private c i() {
        return this.f71987b;
    }

    public static d k(d head, c handler) {
        if (head == null || handler == null || head.f71987b == null) {
            return head;
        }
        d dVar = head;
        d dVar2 = null;
        do {
            if (!head.g(handler)) {
                dVar2 = head;
                head = head.f71988c;
            } else if (dVar2 == null) {
                dVar = head.f71988c;
                head.f71988c = null;
                head = dVar;
            } else {
                dVar2.f71988c = head.f71988c;
                head.f71988c = null;
                head = dVar2.f71988c;
            }
        } while (head != null);
        return dVar == null ? new d() : dVar;
    }

    @Override // com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        d dVar = this;
        do {
            c cVarI = dVar.i();
            if (cVarI != null) {
                cVarI.a(frame);
            }
            dVar = dVar.f71988c;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
        if (j()) {
            d dVar = this;
            do {
                c cVarI = dVar.i();
                if (cVarI != null) {
                    cVarI.b(frame);
                }
                dVar = dVar.f71988c;
            } while (dVar != null);
        }
    }

    @Override // com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        d dVar = this;
        do {
            c cVarI = dVar.i();
            if (cVarI != null) {
                cVarI.c(frame, isUnderTouch, status, ptrIndicator);
            }
            dVar = dVar.f71988c;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        d dVar = this;
        do {
            c cVarI = dVar.i();
            if (cVarI != null) {
                cVarI.d(frame);
            }
            dVar = dVar.f71988c;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        d dVar = this;
        do {
            c cVarI = dVar.i();
            if (cVarI != null) {
                cVarI.e(frame);
            }
            dVar = dVar.f71988c;
        } while (dVar != null);
    }

    public boolean j() {
        return this.f71987b != null;
    }
}
