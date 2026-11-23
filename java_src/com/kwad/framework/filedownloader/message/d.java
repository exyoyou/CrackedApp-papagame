package com.kwad.framework.filedownloader.message;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends MessageSnapshot {

    public static class a extends b implements com.kwad.framework.filedownloader.message.b {
        a(int i10, boolean z10, long j10) {
            super(i10, true, j10);
        }
    }

    public static class e extends f {
        e(int i10, long j10, long j11) {
            super(i10, j10, j11);
        }

        @Override // com.kwad.framework.filedownloader.message.d.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -2;
        }
    }

    public static class f extends d {
        private final long aCv;
        private final long totalBytes;

        f(f fVar) {
            this(fVar.getId(), fVar.CO(), fVar.CM());
        }

        public byte AH() {
            return (byte) 1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CM() {
            return this.totalBytes;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeLong(this.aCv);
            parcel.writeLong(this.totalBytes);
        }

        f(int i10, long j10, long j11) {
            super(i10);
            this.aCv = j10;
            this.totalBytes = j11;
        }

        f(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
            this.totalBytes = parcel.readLong();
        }
    }

    public static class i extends j implements com.kwad.framework.filedownloader.message.b {
        i(int i10, long j10, long j11) {
            super(i10, j10, j11);
        }
    }

    public static class j extends f implements MessageSnapshot.a {
        j(int i10, long j10, long j11) {
            super(i10, j10, j11);
        }

        @Override // com.kwad.framework.filedownloader.message.d.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -4;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot.a
        public final MessageSnapshot CQ() {
            return new f(this);
        }

        j(Parcel parcel) {
            super(parcel);
        }
    }

    d(int i10) {
        super(i10);
        this.aCx = true;
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final int CK() {
        if (CO() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) CO();
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final int CL() {
        if (CM() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) CM();
    }

    public static class g extends d {
        private final long aCv;

        g(int i10, long j10) {
            super(i10);
            this.aCv = j10;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeLong(this.aCv);
        }

        g(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
        }
    }

    public static class h extends C0911d {
        private final int aCc;

        h(int i10, long j10, Throwable th, int i11) {
            super(i10, j10, th);
            this.aCc = i11;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0911d, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 5;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int AL() {
            return this.aCc;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0911d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0911d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.aCc);
        }

        h(Parcel parcel) {
            super(parcel);
            this.aCc = parcel.readInt();
        }
    }

    public static class b extends d {
        private final boolean aCt;
        private final long totalBytes;

        b(int i10, boolean z10, long j10) {
            super(i10);
            this.aCt = z10;
            this.totalBytes = j10;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CM() {
            return this.totalBytes;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final boolean CN() {
            return this.aCt;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.aCt ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.totalBytes);
        }

        b(Parcel parcel) {
            super(parcel);
            this.aCt = parcel.readByte() != 0;
            this.totalBytes = parcel.readLong();
        }
    }

    /* JADX INFO: renamed from: com.kwad.framework.filedownloader.message.d$d, reason: collision with other inner class name */
    public static class C0911d extends d {
        private final long aCv;
        private final Throwable aCw;

        C0911d(int i10, long j10, Throwable th) {
            super(i10);
            this.aCv = j10;
            this.aCw = th;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public byte AH() {
            return (byte) -1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final Throwable CP() {
            return this.aCw;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeLong(this.aCv);
            parcel.writeSerializable(this.aCw);
        }

        C0911d(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
            this.aCw = (Throwable) parcel.readSerializable();
        }
    }

    d(Parcel parcel) {
        super(parcel);
    }

    public static class c extends d {
        private final String aAR;
        private final boolean aCu;
        private final String fileName;
        private final long totalBytes;

        c(int i10, boolean z10, long j10, String str, String str2) {
            super(i10);
            this.aCu = z10;
            this.totalBytes = j10;
            this.aAR = str;
            this.fileName = str2;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 2;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final boolean CC() {
            return this.aCu;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CM() {
            return this.totalBytes;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final String getEtag() {
            return this.aAR;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final String getFileName() {
            return this.fileName;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.aCu ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.totalBytes);
            parcel.writeString(this.aAR);
            parcel.writeString(this.fileName);
        }

        c(Parcel parcel) {
            super(parcel);
            this.aCu = parcel.readByte() != 0;
            this.totalBytes = parcel.readLong();
            this.aAR = parcel.readString();
            this.fileName = parcel.readString();
        }
    }
}
