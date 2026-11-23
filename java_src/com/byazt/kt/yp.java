package com.byazt.kt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 215})
public class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.kpm.c<RecyclerView.gu, c> f16474c = new com.byazt.kpm.c<>();
    public final com.byazt.kpm.ve<RecyclerView.gu> tt = new com.byazt.kpm.ve<>();

    interface tt {
        void c(RecyclerView.gu guVar);

        void c(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2);

        void tt(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2);

        void ve(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2);
    }

    public void a(RecyclerView.gu guVar) {
        c cVar = this.f16474c.get(guVar);
        if (cVar != null) {
            cVar.f16475c &= -2;
        }
    }

    public void c() {
        this.f16474c.clear();
        this.tt.ve();
    }

    public void n(RecyclerView.gu guVar) {
        c cVarC = this.f16474c.get(guVar);
        if (cVarC == null) {
            cVarC = c.c();
            this.f16474c.put(guVar, cVarC);
        }
        cVarC.f16475c |= 1;
    }

    public void sp(RecyclerView.gu guVar) {
        for (int iTt = this.tt.tt() - 1; iTt >= 0; iTt--) {
            if (guVar == this.tt.ve(iTt)) {
                this.tt.c(iTt);
                break;
            }
        }
        c cVarRemove = this.f16474c.remove(guVar);
        if (cVarRemove != null) {
            c.c(cVarRemove);
        }
    }

    public RecyclerView.a.tt tt(RecyclerView.gu guVar) {
        return c(guVar, 4);
    }

    public boolean uj(RecyclerView.gu guVar) {
        c cVar = this.f16474c.get(guVar);
        return (cVar == null || (cVar.f16475c & 4) == 0) ? false : true;
    }

    public RecyclerView.a.tt ve(RecyclerView.gu guVar) {
        return c(guVar, 8);
    }

    public void x(RecyclerView.gu guVar) {
        a(guVar);
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 435})
    static class c {
        public static com.byazt.kpm.uj.c<c> uj = new com.byazt.kpm.uj.tt(20);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16475c;
        public RecyclerView.a.tt tt;
        public RecyclerView.a.tt ve;

        private c() {
        }

        public static c c() {
            c cVarC = uj.c();
            return cVarC == null ? new c() : cVarC;
        }

        public static void tt() {
            while (uj.c() != null) {
            }
        }

        public static void c(c cVar) {
            cVar.f16475c = 0;
            cVar.tt = null;
            cVar.ve = null;
            uj.c(cVar);
        }
    }

    public void tt(RecyclerView.gu guVar, RecyclerView.a.tt ttVar) {
        c cVarC = this.f16474c.get(guVar);
        if (cVarC == null) {
            cVarC = c.c();
            this.f16474c.put(guVar, cVarC);
        }
        cVarC.f16475c |= 2;
        cVarC.tt = ttVar;
    }

    public void ve(RecyclerView.gu guVar, RecyclerView.a.tt ttVar) {
        c cVarC = this.f16474c.get(guVar);
        if (cVarC == null) {
            cVarC = c.c();
            this.f16474c.put(guVar, cVarC);
        }
        cVarC.ve = ttVar;
        cVarC.f16475c |= 8;
    }

    public void c(RecyclerView.gu guVar, RecyclerView.a.tt ttVar) {
        c cVarC = this.f16474c.get(guVar);
        if (cVarC == null) {
            cVarC = c.c();
            this.f16474c.put(guVar, cVarC);
        }
        cVarC.tt = ttVar;
        cVarC.f16475c |= 4;
    }

    public void tt() {
        c.tt();
    }

    public boolean c(RecyclerView.gu guVar) {
        c cVar = this.f16474c.get(guVar);
        return (cVar == null || (cVar.f16475c & 1) == 0) ? false : true;
    }

    private RecyclerView.a.tt c(RecyclerView.gu guVar, int i10) {
        c cVarTt;
        RecyclerView.a.tt ttVar;
        int iC = this.f16474c.c(guVar);
        if (iC >= 0 && (cVarTt = this.f16474c.tt(iC)) != null) {
            int i11 = cVarTt.f16475c;
            if ((i11 & i10) != 0) {
                int i12 = (~i10) & i11;
                cVarTt.f16475c = i12;
                if (i10 == 4) {
                    ttVar = cVarTt.tt;
                } else if (i10 == 8) {
                    ttVar = cVarTt.ve;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i12 & 12) == 0) {
                    this.f16474c.ve(iC);
                    c.c(cVarTt);
                }
                return ttVar;
            }
        }
        return null;
    }

    public void c(long j10, RecyclerView.gu guVar) {
        this.tt.tt(j10, guVar);
    }

    public RecyclerView.gu c(long j10) {
        return this.tt.c(j10);
    }

    public void c(tt ttVar) {
        for (int size = this.f16474c.size() - 1; size >= 0; size--) {
            RecyclerView.gu guVarC = this.f16474c.c(size);
            c cVarVe = this.f16474c.ve(size);
            int i10 = cVarVe.f16475c;
            if ((i10 & 3) == 3) {
                ttVar.c(guVarC);
            } else if ((i10 & 1) != 0) {
                RecyclerView.a.tt ttVar2 = cVarVe.tt;
                if (ttVar2 == null) {
                    ttVar.c(guVarC);
                } else {
                    ttVar.c(guVarC, ttVar2, cVarVe.ve);
                }
            } else if ((i10 & 14) == 14) {
                ttVar.tt(guVarC, cVarVe.tt, cVarVe.ve);
            } else if ((i10 & 12) == 12) {
                ttVar.ve(guVarC, cVarVe.tt, cVarVe.ve);
            } else if ((i10 & 4) != 0) {
                ttVar.c(guVarC, cVarVe.tt, null);
            } else if ((i10 & 8) != 0) {
                ttVar.tt(guVarC, cVarVe.tt, cVarVe.ve);
            }
            c.c(cVarVe);
        }
    }
}
