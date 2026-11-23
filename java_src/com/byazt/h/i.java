package com.byazt.h;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 42})
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14808a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile u f14809c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile long f14810n;
    public int sp;
    public int tt;
    public final AtomicLong uj;
    public final long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public JSONObject f14811x;

    public i(long j10, long j11) {
        AtomicLong atomicLong = new AtomicLong();
        this.uj = atomicLong;
        this.tt = 0;
        this.ve = j10;
        atomicLong.set(j10);
        this.f14810n = j10;
        if (j11 >= j10) {
            this.f14808a = j11;
        } else {
            this.f14808a = -1L;
        }
    }

    public long a() {
        return this.f14808a;
    }

    public long c() {
        return this.uj.get() - this.ve;
    }

    public int da() {
        return this.tt;
    }

    public void i() {
        this.tt--;
    }

    public long n() {
        u uVar = this.f14809c;
        if (uVar != null) {
            long jUj = uVar.uj();
            if (jUj > this.f14810n) {
                return jUj;
            }
        }
        return this.f14810n;
    }

    public JSONObject sl() throws JSONException {
        JSONObject jSONObject = this.f14811x;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            this.f14811x = jSONObject;
        }
        jSONObject.put("st", ve());
        jSONObject.put("cu", uj());
        jSONObject.put("en", a());
        return jSONObject;
    }

    public int sp() {
        return this.sp;
    }

    public String toString() {
        return "Segment{startOffset=" + this.ve + ",\t currentOffset=" + this.uj + ",\t currentOffsetRead=" + n() + ",\t endOffset=" + this.f14808a + '}';
    }

    public long tt() {
        long j10 = this.f14808a;
        if (j10 >= this.ve) {
            return (j10 - n()) + 1;
        }
        return -1L;
    }

    public long uj() {
        long j10 = this.uj.get();
        long j11 = this.f14808a;
        if (j11 > 0) {
            long j12 = j11 + 1;
            if (j10 > j12) {
                return j12;
            }
        }
        return j10;
    }

    public long ve() {
        return this.ve;
    }

    public void x() {
        this.tt++;
    }

    public void c(long j10) {
        long j11 = this.ve;
        if (j10 < j11) {
            j10 = j11;
        }
        long j12 = this.f14808a;
        if (j12 > 0) {
            long j13 = j12 + 1;
            if (j10 > j13) {
                j10 = j13;
            }
        }
        this.uj.set(j10);
    }

    public void ve(long j10) {
        if (j10 >= this.ve) {
            this.f14808a = j10;
            return;
        }
        com.byazt.nr.m.tt("Segment", "setEndOffset: endOffset = " + j10 + ", segment = " + this);
        if (j10 == -1) {
            this.f14808a = j10;
        }
    }

    public void tt(long j10) {
        this.uj.addAndGet(j10);
    }

    public void uj(long j10) {
        if (j10 >= this.uj.get()) {
            this.f14810n = j10;
        }
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public static String c(List<i> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        Collections.sort(list, new Comparator<i>() { // from class: com.byazt.h.i.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int compare(i iVar, i iVar2) {
                return (int) (iVar.ve() - iVar2.ve());
            }
        });
        StringBuilder sb2 = new StringBuilder();
        Iterator<i> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            sb2.append("\r\n");
        }
        return sb2.toString();
    }

    public i(i iVar) {
        AtomicLong atomicLong = new AtomicLong();
        this.uj = atomicLong;
        this.tt = 0;
        this.ve = iVar.ve;
        this.f14808a = iVar.f14808a;
        atomicLong.set(iVar.uj.get());
        this.f14810n = atomicLong.get();
        this.sp = iVar.sp;
    }

    public i(JSONObject jSONObject) {
        this.uj = new AtomicLong();
        this.tt = 0;
        this.ve = jSONObject.optLong("st");
        ve(jSONObject.optLong("en"));
        c(jSONObject.optLong("cu"));
        uj(uj());
    }
}
