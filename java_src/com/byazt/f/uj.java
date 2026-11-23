package com.byazt.f;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 953, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14059a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f14060c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f14061n;
    public List<String> tt;
    public Long uj;
    public Long ve;

    public uj(ve veVar, long j10, boolean z10) {
        this(veVar, j10, null, z10);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    public void c() {
        if (this.f14059a) {
            return;
        }
        this.f14059a = true;
        if (this.tt == null) {
            this.tt = new ArrayList();
        }
        n nVarT = this.f14060c.t();
        long jTt = nVarT.tt();
        n nVarU = this.f14060c.u();
        long jTt2 = nVarU.tt();
        n nVarSl = this.f14060c.sl();
        long jTt3 = nVarSl.tt();
        long j10 = 0;
        if (nVarT.c() == 0) {
            if (nVarSl.c() == 0) {
                this.tt.add("Error: zero orig time -- cannot compute delay/offset");
                return;
            } else {
                this.uj = Long.valueOf(jTt3 - this.f14061n);
                this.tt.add("Error: zero orig time -- cannot compute delay");
                return;
            }
        }
        if (nVarU.c() == 0 || nVarSl.c() == 0) {
            this.tt.add("Warning: zero rcvNtpTime or xmitNtpTime");
            long j11 = this.f14061n;
            if (jTt > j11) {
                this.tt.add("Error: OrigTime > DestRcvTime");
            } else {
                this.ve = Long.valueOf(j11 - jTt);
            }
            if (nVarU.c() != 0) {
                this.uj = Long.valueOf(jTt2 - jTt);
                return;
            } else {
                if (nVarSl.c() != 0) {
                    this.uj = Long.valueOf(jTt3 - this.f14061n);
                    return;
                }
                return;
            }
        }
        long j12 = this.f14061n - jTt;
        if (jTt3 >= jTt2) {
            long j13 = jTt3 - jTt2;
            if (j13 <= j12) {
                j10 = j12 - j13;
            } else if (j13 - j12 != 1) {
                this.tt.add("Warning: processing time > total network time");
            } else if (j12 != 0) {
                this.tt.add("Info: processing time > total network time by 1 ms -> assume zero delay");
            }
            this.ve = Long.valueOf(j10);
            if (jTt > this.f14061n) {
                this.tt.add("Error: OrigTime > DestRcvTime");
            }
            this.uj = Long.valueOf(((jTt2 - jTt) + (jTt3 - this.f14061n)) / 2);
        }
        this.tt.add("Error: xmitTime < rcvTime");
        j10 = j12;
        this.ve = Long.valueOf(j10);
        if (jTt > this.f14061n) {
            this.tt.add("Error: OrigTime > DestRcvTime");
        }
        this.uj = Long.valueOf(((jTt2 - jTt) + (jTt3 - this.f14061n)) / 2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            uj ujVar = (uj) obj;
            if (this.f14061n == ujVar.f14061n && this.f14060c.equals(ujVar.f14060c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f14061n) * 31) + this.f14060c.hashCode();
    }

    public ve tt() {
        return this.f14060c;
    }

    public uj(ve veVar, long j10, List<String> list, boolean z10) {
        if (veVar == null) {
            throw new IllegalArgumentException("message cannot be null");
        }
        this.f14061n = j10;
        this.f14060c = veVar;
        this.tt = list;
        if (z10) {
            c();
        }
    }
}
