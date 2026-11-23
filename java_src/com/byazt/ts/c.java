package com.byazt.ts;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 357, 20})
public abstract class c implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ve.sp f20381a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20382c = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve.a f20383n;
    public ve.InterfaceC0443ve sp;
    public ve.n tt;
    public ve.c uj;
    public ve.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ve.uj f20384x;

    @Override // com.byazt.ts.ve
    public final void c(ve.n nVar) {
        this.tt = nVar;
    }

    public final void tt() {
        try {
            ve.n nVar = this.tt;
            if (nVar != null) {
                nVar.tt(this);
            }
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    public final void uj() {
        try {
            ve.a aVar = this.f20383n;
            if (aVar != null) {
                aVar.ve(this);
            }
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }

    public final void ve() {
        try {
            ve.tt ttVar = this.ve;
            if (ttVar != null) {
                ttVar.c(this);
            }
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.tt ttVar) {
        this.ve = ttVar;
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.c cVar) {
        this.uj = cVar;
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.a aVar) {
        this.f20383n = aVar;
    }

    public final boolean tt(int i10, int i11) {
        try {
            ve.uj ujVar = this.f20384x;
            return ujVar != null && ujVar.tt(this, i10, i11);
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.InterfaceC0443ve interfaceC0443ve) {
        this.sp = interfaceC0443ve;
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.uj ujVar) {
        this.f20384x = ujVar;
    }

    @Override // com.byazt.ts.ve
    public final void c(ve.sp spVar) {
        this.f20381a = spVar;
    }

    public void c() {
        this.tt = null;
        this.uj = null;
        this.ve = null;
        this.f20383n = null;
        this.f20381a = null;
        this.sp = null;
        this.f20384x = null;
    }

    public final void c(int i10) {
        try {
            ve.c cVar = this.uj;
            if (cVar != null) {
                cVar.c(this, i10);
            }
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    public final void c(int i10, int i11, int i12, int i13) {
        try {
            ve.sp spVar = this.f20381a;
            if (spVar != null) {
                spVar.c(this, i10, i11, i12, i13);
            }
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    public final boolean c(int i10, int i11) {
        try {
            ve.InterfaceC0443ve interfaceC0443ve = this.sp;
            return interfaceC0443ve != null && interfaceC0443ve.c(this, i10, i11);
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    @Override // com.byazt.ts.ve
    public void c(boolean z10) {
        this.f20382c = z10;
    }
}
