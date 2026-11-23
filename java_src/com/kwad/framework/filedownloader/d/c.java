package com.kwad.framework.filedownloader.d;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.kwad.framework.filedownloader.d.c.1
        private static c[] cW(int i10) {
            return new c[i10];
        }

        private static c e(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ c createFromParcel(Parcel parcel) {
            return e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ c[] newArray(int i10) {
            return cW(i10);
        }
    };
    private boolean aCK;
    private final AtomicInteger aCL;
    private final AtomicLong aCM;
    private long aCN;
    private String aCO;
    private String aCP;
    private int aCQ;
    private boolean aCx;
    private String apn;
    private String filename;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f75303id;
    private String url;

    public c() {
        this.aCM = new AtomicLong();
        this.aCL = new AtomicInteger();
    }

    private String CZ() {
        return this.aCO;
    }

    public final boolean AB() {
        return this.aCK;
    }

    public final byte AH() {
        return (byte) this.aCL.get();
    }

    public final boolean AN() {
        return this.aCx;
    }

    public final ContentValues CV() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(getId()));
        contentValues.put("url", getUrl());
        contentValues.put("path", getPath());
        contentValues.put("status", Byte.valueOf(AH()));
        contentValues.put("sofar", Long.valueOf(CX()));
        contentValues.put("total", Long.valueOf(getTotal()));
        contentValues.put("errMsg", CZ());
        contentValues.put(f.f80400c, CY());
        contentValues.put("connectionCount", Integer.valueOf(Da()));
        contentValues.put("pathAsDirectory", Boolean.valueOf(AB()));
        if (AB() && getFilename() != null) {
            contentValues.put(f.f80402e, getFilename());
        }
        return contentValues;
    }

    public final long CX() {
        return this.aCM.get();
    }

    public final String CY() {
        return this.aCP;
    }

    public final String Cp() {
        if (getTargetFilePath() == null) {
            return null;
        }
        return com.kwad.framework.filedownloader.f.f.cm(getTargetFilePath());
    }

    public final int Da() {
        return this.aCQ;
    }

    public final void Db() {
        this.aCQ = 1;
    }

    public final void af(long j10) {
        this.aCM.set(j10);
    }

    public final void ag(long j10) {
        this.aCM.addAndGet(j10);
    }

    public final void ah(long j10) {
        this.aCx = j10 > 2147483647L;
        this.aCN = j10;
    }

    public final void cV(int i10) {
        this.aCQ = i10;
    }

    public final void cg(String str) {
        this.aCP = str;
    }

    public final void ch(String str) {
        this.aCO = str;
    }

    public final void ci(String str) {
        this.filename = str;
    }

    public final void d(String str, boolean z10) {
        this.apn = str;
        this.aCK = z10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final int getId() {
        return this.f75303id;
    }

    public final String getPath() {
        return this.apn;
    }

    public final String getTargetFilePath() {
        return com.kwad.framework.filedownloader.f.f.a(getPath(), AB(), getFilename());
    }

    public final long getTotal() {
        return this.aCN;
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean isChunked() {
        return this.aCN == -1;
    }

    public final void setId(int i10) {
        this.f75303id = i10;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final String toString() {
        return com.kwad.framework.filedownloader.f.f.c("id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s", Integer.valueOf(this.f75303id), this.url, this.apn, Integer.valueOf(this.aCL.get()), this.aCM, Long.valueOf(this.aCN), this.aCP, super.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f75303id);
        parcel.writeString(this.url);
        parcel.writeString(this.apn);
        parcel.writeByte(this.aCK ? (byte) 1 : (byte) 0);
        parcel.writeString(this.filename);
        parcel.writeByte((byte) this.aCL.get());
        parcel.writeLong(this.aCM.get());
        parcel.writeLong(this.aCN);
        parcel.writeString(this.aCO);
        parcel.writeString(this.aCP);
        parcel.writeInt(this.aCQ);
        parcel.writeByte(this.aCx ? (byte) 1 : (byte) 0);
    }

    public final void d(byte b10) {
        this.aCL.set(b10);
    }

    protected c(Parcel parcel) {
        this.f75303id = parcel.readInt();
        this.url = parcel.readString();
        this.apn = parcel.readString();
        this.aCK = parcel.readByte() != 0;
        this.filename = parcel.readString();
        this.aCL = new AtomicInteger(parcel.readByte());
        this.aCM = new AtomicLong(parcel.readLong());
        this.aCN = parcel.readLong();
        this.aCO = parcel.readString();
        this.aCP = parcel.readString();
        this.aCQ = parcel.readInt();
        this.aCx = parcel.readByte() != 0;
    }
}
