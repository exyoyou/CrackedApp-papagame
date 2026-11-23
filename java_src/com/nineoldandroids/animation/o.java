package com.nineoldandroids.animation;

/* JADX INFO: loaded from: classes2.dex */
public class o extends q {
    private a O;
    private long P = -1;

    public interface a {
        void a(o oVar, long j10, long j11);
    }

    @Override // com.nineoldandroids.animation.q
    void E(float f10) {
    }

    @Override // com.nineoldandroids.animation.q
    boolean F(long j10) {
        if (this.f76301j == 0) {
            this.f76301j = 1;
            long j11 = this.f76295d;
            if (j11 < 0) {
                this.f76294c = j10;
            } else {
                this.f76294c = j10 - j11;
                this.f76295d = -1L;
            }
        }
        a aVar = this.O;
        if (aVar == null) {
            return false;
        }
        long j12 = j10 - this.f76294c;
        long j13 = this.P;
        long j14 = j13 >= 0 ? j10 - j13 : 0L;
        this.P = j10;
        aVar.a(this, j12, j14);
        return false;
    }

    @Override // com.nineoldandroids.animation.q
    void U() {
    }

    public void o0(a aVar) {
        this.O = aVar;
    }
}
