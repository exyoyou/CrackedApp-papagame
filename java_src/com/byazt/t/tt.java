package com.byazt.t;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 66, 13})
public class tt implements Parcelable {
    public static final Parcelable.Creator<tt> CREATOR = new Parcelable.Creator<tt>() { // from class: com.byazt.t.tt.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public tt createFromParcel(Parcel parcel) {
            return new tt(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public tt[] newArray(int i10) {
            return new tt[i10];
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f20102c = "tt";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f20103a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public List<tt> f20104da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f20105i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20106n;
    public tt sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f20107t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f20108u;
    public AtomicLong uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicInteger f20109x;
    public AtomicBoolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.u.tt f20110z;

    @com.byazt.zqa.c(c = {0, 1, 66, 194})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f20111a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f20112c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f20113n;
        public long sp;
        public long tt;
        public long uj;
        public long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public tt f20114x;

        public c(int i10) {
            this.f20112c = i10;
        }

        public c c(long j10) {
            this.tt = j10;
            return this;
        }

        public c n(long j10) {
            this.sp = j10;
            return this;
        }

        public c tt(long j10) {
            this.ve = j10;
            return this;
        }

        public c uj(long j10) {
            this.f20113n = j10;
            return this;
        }

        public c ve(long j10) {
            this.uj = j10;
            return this;
        }

        public c c(int i10) {
            this.f20111a = i10;
            return this;
        }

        public c c(tt ttVar) {
            this.f20114x = ttVar;
            return this;
        }

        public tt c() {
            return new tt(this);
        }
    }

    public boolean a() {
        List<tt> list = this.f20104da;
        return list != null && list.size() > 0;
    }

    public ContentValues c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(this.tt));
        contentValues.put("chunkIndex", Integer.valueOf(this.sp));
        contentValues.put("startOffset", Long.valueOf(this.ve));
        contentValues.put("curOffset", Long.valueOf(yp()));
        contentValues.put("endOffset", Long.valueOf(this.f20106n));
        contentValues.put("chunkContentLen", Long.valueOf(this.f20103a));
        contentValues.put("hostChunkIndex", Integer.valueOf(tt()));
        return contentValues;
    }

    public long da() {
        tt ttVar = this.sl;
        if (ttVar != null && ttVar.sp() != null) {
            int iIndexOf = this.sl.sp().indexOf(this);
            boolean z10 = false;
            for (int i10 = 0; i10 < this.sl.sp().size(); i10++) {
                tt ttVar2 = this.sl.sp().get(i10);
                if (ttVar2 != null) {
                    if (z10) {
                        return ttVar2.yp();
                    }
                    if (iIndexOf == i10) {
                        z10 = true;
                    }
                }
            }
        }
        return -1L;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean i() {
        long j10 = this.ve;
        if (uj()) {
            long j11 = this.f20105i;
            if (j11 > this.ve) {
                j10 = j11;
            }
        }
        return yp() - j10 >= this.f20103a;
    }

    public long m() {
        return this.f20106n;
    }

    public int my() {
        return this.sp;
    }

    public tt n() {
        tt ttVar = !uj() ? this.sl : this;
        if (ttVar == null || !ttVar.a()) {
            return null;
        }
        return ttVar.sp().get(0);
    }

    public long nu() {
        return this.f20103a;
    }

    public void rh() {
        this.f20105i = yp();
    }

    public int sl() {
        return this.tt;
    }

    public List<tt> sp() {
        return this.f20104da;
    }

    public long t() {
        return this.ve;
    }

    public int tt() {
        AtomicInteger atomicInteger = this.f20109x;
        if (atomicInteger == null) {
            return -1;
        }
        return atomicInteger.get();
    }

    public long u() {
        AtomicLong atomicLong = this.uj;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return 0L;
    }

    public boolean uj() {
        return tt() == -1;
    }

    public boolean ve() {
        AtomicBoolean atomicBoolean = this.yp;
        if (atomicBoolean == null) {
            return false;
        }
        return atomicBoolean.get();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.tt);
        parcel.writeLong(this.ve);
        AtomicLong atomicLong = this.uj;
        parcel.writeLong(atomicLong != null ? atomicLong.get() : 0L);
        parcel.writeLong(this.f20106n);
        parcel.writeLong(this.f20103a);
        parcel.writeInt(this.sp);
        AtomicInteger atomicInteger = this.f20109x;
        parcel.writeInt(atomicInteger != null ? atomicInteger.get() : -1);
    }

    public boolean x() {
        tt ttVar = this.sl;
        if (ttVar == null) {
            return true;
        }
        if (!ttVar.a()) {
            return false;
        }
        for (int i10 = 0; i10 < this.sl.sp().size(); i10++) {
            tt ttVar2 = this.sl.sp().get(i10);
            if (ttVar2 != null) {
                int iIndexOf = this.sl.sp().indexOf(this);
                if (iIndexOf > i10 && !ttVar2.i()) {
                    return false;
                }
                if (iIndexOf == i10) {
                    return true;
                }
            }
        }
        return false;
    }

    public long yp() {
        if (!uj() || !a()) {
            return u();
        }
        long jU = 0;
        for (int i10 = 0; i10 < this.f20104da.size(); i10++) {
            tt ttVar = this.f20104da.get(i10);
            if (ttVar != null) {
                if (!ttVar.i()) {
                    return ttVar.u();
                }
                if (jU < ttVar.u()) {
                    jU = ttVar.u();
                }
            }
        }
        return jU;
    }

    public long z() {
        long jYp = yp() - this.ve;
        if (a()) {
            jYp = 0;
            for (int i10 = 0; i10 < this.f20104da.size(); i10++) {
                tt ttVar = this.f20104da.get(i10);
                if (ttVar != null) {
                    jYp += ttVar.yp() - ttVar.t();
                }
            }
        }
        return jYp;
    }

    private tt(c cVar) {
        if (cVar == null) {
            return;
        }
        this.tt = cVar.f20112c;
        this.ve = cVar.tt;
        this.uj = new AtomicLong(cVar.ve);
        this.f20106n = cVar.uj;
        this.f20103a = cVar.f20113n;
        this.sp = cVar.f20111a;
        this.f20105i = cVar.sp;
        this.f20109x = new AtomicInteger(-1);
        c(cVar.f20114x);
        this.yp = new AtomicBoolean(false);
    }

    public void tt(boolean z10) {
        this.f20108u = z10;
    }

    public void ve(int i10) {
        this.sp = i10;
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public long ve(boolean z10) {
        long jYp = yp();
        long j10 = this.f20103a;
        long j11 = this.f20105i;
        long j12 = j10 - (jYp - j11);
        if (!z10 && jYp == j11) {
            j12 = j10 - (jYp - this.ve);
        }
        com.byazt.x.c.tt("DownloadChunk", "contentLength:" + this.f20103a + " curOffset:" + yp() + " oldOffset:" + this.f20105i + " retainLen:" + j12);
        if (j12 < 0) {
            return 0L;
        }
        return j12;
    }

    public void tt(long j10) {
        AtomicLong atomicLong = this.uj;
        if (atomicLong != null) {
            atomicLong.set(j10);
        } else {
            this.uj = new AtomicLong(j10);
        }
    }

    public void c(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        this.f20107t = 0;
        sQLiteStatement.clearBindings();
        int i10 = this.f20107t + 1;
        this.f20107t = i10;
        sQLiteStatement.bindLong(i10, this.tt);
        int i11 = this.f20107t + 1;
        this.f20107t = i11;
        sQLiteStatement.bindLong(i11, this.sp);
        int i12 = this.f20107t + 1;
        this.f20107t = i12;
        sQLiteStatement.bindLong(i12, this.ve);
        int i13 = this.f20107t + 1;
        this.f20107t = i13;
        sQLiteStatement.bindLong(i13, yp());
        int i14 = this.f20107t + 1;
        this.f20107t = i14;
        sQLiteStatement.bindLong(i14, this.f20106n);
        int i15 = this.f20107t + 1;
        this.f20107t = i15;
        sQLiteStatement.bindLong(i15, this.f20103a);
        int i16 = this.f20107t + 1;
        this.f20107t = i16;
        sQLiteStatement.bindLong(i16, tt());
    }

    public tt(Cursor cursor) {
        if (cursor == null) {
            return;
        }
        this.tt = cursor.getInt(cursor.getColumnIndex("_id"));
        this.sp = cursor.getInt(cursor.getColumnIndex("chunkIndex"));
        this.ve = cursor.getLong(cursor.getColumnIndex("startOffset"));
        int columnIndex = cursor.getColumnIndex("curOffset");
        if (columnIndex != -1) {
            this.uj = new AtomicLong(cursor.getLong(columnIndex));
        } else {
            this.uj = new AtomicLong(0L);
        }
        this.f20106n = cursor.getLong(cursor.getColumnIndex("endOffset"));
        int columnIndex2 = cursor.getColumnIndex("hostChunkIndex");
        if (columnIndex2 != -1) {
            this.f20109x = new AtomicInteger(cursor.getInt(columnIndex2));
        } else {
            this.f20109x = new AtomicInteger(-1);
        }
        int columnIndex3 = cursor.getColumnIndex("chunkContentLen");
        if (columnIndex3 != -1) {
            this.f20103a = cursor.getLong(columnIndex3);
        }
        this.yp = new AtomicBoolean(false);
    }

    public void c(int i10) {
        AtomicInteger atomicInteger = this.f20109x;
        if (atomicInteger == null) {
            this.f20109x = new AtomicInteger(i10);
        } else {
            atomicInteger.set(i10);
        }
    }

    public void c(com.byazt.u.tt ttVar) {
        this.f20110z = ttVar;
        rh();
    }

    public void c(boolean z10) {
        AtomicBoolean atomicBoolean = this.yp;
        if (atomicBoolean == null) {
            this.yp = new AtomicBoolean(z10);
        } else {
            atomicBoolean.set(z10);
        }
        this.f20110z = null;
    }

    public tt(Parcel parcel) {
        this.tt = parcel.readInt();
        this.ve = parcel.readLong();
        this.uj = new AtomicLong(parcel.readLong());
        this.f20106n = parcel.readLong();
        this.f20103a = parcel.readLong();
        this.sp = parcel.readInt();
        this.f20109x = new AtomicInteger(parcel.readInt());
    }

    public void c(tt ttVar) {
        this.sl = ttVar;
        if (ttVar != null) {
            c(ttVar.my());
        }
    }

    public void c(List<tt> list) {
        this.f20104da = list;
    }

    public void c(long j10) {
        this.f20103a = j10;
    }

    public List<tt> c(int i10, long j10) {
        tt ttVar;
        long jM;
        long jT;
        long j11;
        long j12;
        tt ttVar2 = this;
        int i11 = i10;
        if (!uj() || a()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long jU = u();
        long jVe = ttVar2.ve(true);
        long j13 = jVe / ((long) i11);
        com.byazt.x.c.tt(f20102c, "retainLen:" + jVe + " divideChunkForReuse chunkSize:" + j13 + " current host downloadChunk index:" + ttVar2.sp);
        int i12 = 0;
        while (i12 < i11) {
            if (i12 == 0) {
                jT = t();
            } else {
                int i13 = i11 - 1;
                if (i12 == i13) {
                    long jM2 = m();
                    j11 = jM2;
                    j12 = jM2 > jU ? (jM2 - jU) + 1 : jVe - (((long) i13) * j13);
                    jT = jU;
                } else {
                    jT = jU;
                }
                long j14 = jVe;
                long j15 = j12;
                tt ttVarC = new c(ttVar2.tt).c((-i12) - 1).c(jT).tt(jU).n(jU).ve(j11).uj(j15).c(ttVar2).c();
                com.byazt.x.c.tt(f20102c, "divide sub chunk : " + i12 + " startOffset:" + jT + " curOffset:" + jU + " endOffset:" + j11 + " contentLen:" + j15);
                arrayList.add(ttVarC);
                jU += j13;
                i12++;
                ttVar2 = this;
                i11 = i10;
                jVe = j14;
            }
            j11 = (jU + j13) - 1;
            j12 = j13;
            long j16 = jVe;
            long j17 = j12;
            tt ttVarC2 = new c(ttVar2.tt).c((-i12) - 1).c(jT).tt(jU).n(jU).ve(j11).uj(j17).c(ttVar2).c();
            com.byazt.x.c.tt(f20102c, "divide sub chunk : " + i12 + " startOffset:" + jT + " curOffset:" + jU + " endOffset:" + j11 + " contentLen:" + j17);
            arrayList.add(ttVarC2);
            jU += j13;
            i12++;
            ttVar2 = this;
            i11 = i10;
            jVe = j16;
        }
        long jNu = 0;
        for (int size = arrayList.size() - 1; size > 0; size--) {
            tt ttVar3 = arrayList.get(size);
            if (ttVar3 != null) {
                jNu += ttVar3.nu();
            }
        }
        com.byazt.x.c.tt(f20102c, "reuseChunkContentLen:".concat(String.valueOf(jNu)));
        tt ttVar4 = arrayList.get(0);
        if (ttVar4 != null) {
            if (m() == 0) {
                jM = j10 - t();
            } else {
                jM = (m() - t()) + 1;
            }
            ttVar4.c(jM - jNu);
            ttVar = this;
            ttVar4.ve(ttVar.sp);
            com.byazt.u.tt ttVar5 = ttVar.f20110z;
            if (ttVar5 != null) {
                ttVar5.c(ttVar4.m(), nu() - jNu);
            }
        } else {
            ttVar = this;
        }
        ttVar.c(arrayList);
        return arrayList;
    }
}
