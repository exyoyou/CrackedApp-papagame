package com.byazt.eg;

import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 482})
public final class zm implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13448a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final gu f13449c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public m f13450n;
    public final com.byazt.yx.da tt;
    public final boolean uj;
    public final yv ve;

    @com.byazt.zqa.c(c = {0, 1, 16, 21})
    final class c extends com.byazt.kh.tt {
        public final a ve;

        public c(a aVar) {
            super("OkHttp %s", zm.this.x());
            this.ve = aVar;
        }

        public String c() {
            return zm.this.ve.c().sp();
        }

        public void tt() {
            md mdVar;
            yv yvVar = zm.this.ve;
            if (yvVar == null || (mdVar = yvVar.f13438a) == null) {
                return;
            }
            mdVar.sl();
        }

        @Override // com.byazt.kh.tt
        public void ve() {
            md mdVar;
            boolean z10 = false;
            try {
                try {
                    try {
                        yv yvVar = zm.this.ve;
                        if (yvVar != null && (mdVar = yvVar.f13438a) != null) {
                            mdVar.c();
                        }
                        h hVarI = zm.this.i();
                        try {
                            if (zm.this.tt.tt()) {
                                this.ve.c(zm.this, new IOException("Canceled"));
                            } else {
                                this.ve.c(zm.this, hVarI);
                            }
                            if (hVarI.ve == 0) {
                                throw new IOException(hVarI.uj);
                            }
                        } catch (IOException e10) {
                            e = e10;
                            z10 = true;
                            if (z10) {
                                com.byazt.xb.n.tt().c(4, "Callback failure for " + zm.this.sp(), e);
                            } else {
                                zm.this.f13450n.c(zm.this, e);
                                this.ve.c(zm.this, e);
                            }
                        }
                    } catch (Throwable th) {
                        zm.this.f13449c.my().tt(this);
                        throw th;
                    }
                } catch (IOException e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                zm.this.f13450n.c(zm.this, new IOException(e12));
                this.ve.c(zm.this, new IOException(e12));
            }
            zm.this.f13449c.my().tt(this);
        }
    }

    private zm(gu guVar, yv yvVar, boolean z10) {
        this.f13449c = guVar;
        this.ve = yvVar;
        this.uj = z10;
        this.tt = new com.byazt.yx.da(guVar, z10);
    }

    private void da() {
        this.tt.c(com.byazt.xb.n.tt().c("response.body().close()"));
    }

    @Override // com.byazt.eg.n
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public zm n() {
        return c(this.f13449c, this.ve, this.uj);
    }

    public h i() throws IOException {
        ArrayList arrayList = new ArrayList(this.f13449c.qy());
        arrayList.add(this.tt);
        arrayList.add(new com.byazt.yx.c(this.f13449c.a()));
        arrayList.add(new com.byazt.umr.c(this.f13449c.sp()));
        arrayList.add(new com.byazt.iq.c(this.f13449c));
        if (!this.uj) {
            arrayList.addAll(this.f13449c.gu());
        }
        arrayList.add(new com.byazt.yx.tt(this.uj));
        return new com.byazt.yx.sp(arrayList, null, null, null, 0, this.ve, this, this.f13450n, this.f13449c.c(), this.f13449c.tt(), this.f13449c.ve()).c(this.ve);
    }

    public String sp() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(uj() ? "canceled " : "");
        sb2.append(this.uj ? "web socket" : "call");
        sb2.append(" to ");
        sb2.append(x());
        return sb2.toString();
    }

    @Override // com.byazt.eg.n
    public h tt() throws IOException {
        synchronized (this) {
            if (this.f13448a) {
                throw new IllegalStateException("Already Executed");
            }
            this.f13448a = true;
        }
        da();
        try {
            try {
                md mdVar = this.ve.f13438a;
                if (mdVar != null) {
                    mdVar.c();
                }
                this.f13449c.my().c(this);
                h hVarI = i();
                if (hVarI == null) {
                    throw new IOException("Canceled");
                }
                if (hVarI.ve == 0) {
                    throw new IOException(hVarI.uj);
                }
                this.f13449c.my().tt(this);
                return hVarI;
            } catch (IOException e10) {
                this.f13450n.c(this, e10);
                this.f13449c.my().tt(this);
                return null;
            } catch (Exception e11) {
                this.f13450n.c(this, new IOException(e11));
                this.f13449c.my().tt(this);
                return null;
            }
        } catch (Throwable th) {
            this.f13449c.my().tt(this);
            throw th;
        }
    }

    @Override // com.byazt.eg.n
    public boolean uj() {
        return this.tt.tt();
    }

    @Override // com.byazt.eg.n
    public void ve() {
        this.tt.c();
    }

    public String x() {
        return this.ve.c().u();
    }

    public static zm c(gu guVar, yv yvVar, boolean z10) {
        zm zmVar = new zm(guVar, yvVar, z10);
        zmVar.f13450n = guVar.gr().c(zmVar);
        return zmVar;
    }

    @Override // com.byazt.eg.n
    public yv c() {
        return this.ve;
    }

    @Override // com.byazt.eg.n
    public void c(a aVar) {
        try {
            synchronized (this) {
                if (!this.f13448a) {
                    this.f13448a = true;
                } else {
                    throw new IllegalStateException("Already Executed");
                }
            }
            da();
            this.f13449c.my().c(new c(aVar));
        } catch (Throwable th) {
            if (aVar != null) {
                aVar.c(this, new IOException(th.getMessage()));
            }
        }
    }
}
