package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 133})
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public z f16939a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f16940c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16941n;
    public z sp;
    public int tt;
    public boolean uj;
    public int ve;

    public z() {
        this.f16940c = new byte[8192];
        this.f16941n = true;
        this.uj = false;
    }

    public final z c() {
        this.uj = true;
        return new z(this.f16940c, this.tt, this.ve, true, false);
    }

    public final z tt() {
        z zVar = this.f16939a;
        z zVar2 = zVar != this ? zVar : null;
        z zVar3 = this.sp;
        if (zVar3 != null) {
            zVar3.f16939a = zVar;
        }
        z zVar4 = this.f16939a;
        if (zVar4 != null) {
            zVar4.sp = zVar3;
        }
        this.f16939a = null;
        this.sp = null;
        return zVar2;
    }

    public final void ve() {
        z zVar = this.sp;
        if (zVar == this) {
            throw new IllegalStateException();
        }
        if (zVar.f16941n) {
            int i10 = this.ve - this.tt;
            if (i10 > (8192 - zVar.ve) + (zVar.uj ? 0 : zVar.tt)) {
                return;
            }
            c(zVar, i10);
            tt();
            m.c(this);
        }
    }

    public final z c(z zVar) {
        zVar.sp = this;
        zVar.f16939a = this.f16939a;
        this.f16939a.sp = zVar;
        this.f16939a = zVar;
        return zVar;
    }

    public z(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f16940c = bArr;
        this.tt = i10;
        this.ve = i11;
        this.uj = z10;
        this.f16941n = z11;
    }

    public final z c(int i10) {
        z zVarC;
        if (i10 > 0 && i10 <= this.ve - this.tt) {
            if (i10 >= 1024) {
                zVarC = c();
            } else {
                zVarC = m.c();
                System.arraycopy(this.f16940c, this.tt, zVarC.f16940c, 0, i10);
            }
            zVarC.ve = zVarC.tt + i10;
            this.tt += i10;
            this.sp.c(zVarC);
            return zVarC;
        }
        throw new IllegalArgumentException();
    }

    public final void c(z zVar, int i10) {
        if (zVar.f16941n) {
            int i11 = zVar.ve;
            if (i11 + i10 > 8192) {
                if (!zVar.uj) {
                    int i12 = zVar.tt;
                    if ((i11 + i10) - i12 <= 8192) {
                        byte[] bArr = zVar.f16940c;
                        System.arraycopy(bArr, i12, bArr, 0, i11 - i12);
                        zVar.ve -= zVar.tt;
                        zVar.tt = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f16940c, this.tt, zVar.f16940c, zVar.ve, i10);
            zVar.ve += i10;
            this.tt += i10;
            return;
        }
        throw new IllegalArgumentException();
    }
}
