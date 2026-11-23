package com.kwad.framework.filedownloader.message;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends MessageSnapshot {

    public static class a extends b implements com.kwad.framework.filedownloader.message.b {
        a(int i10, boolean z10, int i11) {
            super(i10, true, i11);
        }
    }

    public static class e extends f {
        e(int i10, int i11, int i12) {
            super(i10, i11, i12);
        }

        @Override // com.kwad.framework.filedownloader.message.h.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -2;
        }
    }

    public static class f extends h {
        private final int aCH;
        private final int aCI;

        f(f fVar) {
            this(fVar.getId(), fVar.CK(), fVar.CL());
        }

        public byte AH() {
            return (byte) 1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CL() {
            return this.aCH;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.aCI);
            parcel.writeInt(this.aCH);
        }

        f(int i10, int i11, int i12) {
            super(i10);
            this.aCI = i11;
            this.aCH = i12;
        }

        f(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
            this.aCH = parcel.readInt();
        }
    }

    public static class i extends j implements com.kwad.framework.filedownloader.message.b {
        i(int i10, int i11, int i12) {
            super(i10, i11, i12);
        }
    }

    public static class j extends f implements MessageSnapshot.a {
        j(int i10, int i11, int i12) {
            super(i10, i11, i12);
        }

        @Override // com.kwad.framework.filedownloader.message.h.f, com.kwad.framework.filedownloader.message.c
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

    h(int i10) {
        super(i10);
        this.aCx = false;
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final long CM() {
        return CL();
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final long CO() {
        return CK();
    }

    public static class g extends h {
        private final int aCI;

        g(int i10, int i11) {
            super(i10);
            this.aCI = i11;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.aCI);
        }

        g(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
        }
    }

    /* JADX INFO: renamed from: com.kwad.framework.filedownloader.message.h$h, reason: collision with other inner class name */
    public static class C0912h extends d {
        private final int aCc;

        C0912h(int i10, int i11, Throwable th, int i12) {
            super(i10, i11, th);
            this.aCc = i12;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 5;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int AL() {
            return this.aCc;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.aCc);
        }

        C0912h(Parcel parcel) {
            super(parcel);
            this.aCc = parcel.readInt();
        }
    }

    public static class b extends h {
        private final int aCH;
        private final boolean aCt;

        b(int i10, boolean z10, int i11) {
            super(i10);
            this.aCt = z10;
            this.aCH = i11;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CL() {
            return this.aCH;
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
            parcel.writeInt(this.aCH);
        }

        b(Parcel parcel) {
            super(parcel);
            this.aCt = parcel.readByte() != 0;
            this.aCH = parcel.readInt();
        }
    }

    public static class d extends h {
        private final int aCI;
        private final Throwable aCw;

        d(int i10, int i11, Throwable th) {
            super(i10);
            this.aCI = i11;
            this.aCw = th;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public byte AH() {
            return (byte) -1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
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
            parcel.writeInt(this.aCI);
            parcel.writeSerializable(this.aCw);
        }

        d(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
            this.aCw = (Throwable) parcel.readSerializable();
        }
    }

    h(Parcel parcel) {
        super(parcel);
    }

    public static class c extends h {
        private final String aAR;
        private final int aCH;
        private final boolean aCu;
        private final String fileName;

        c(int i10, boolean z10, int i11, String str, String str2) {
            super(i10);
            this.aCu = z10;
            this.aCH = i11;
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
        public final int CL() {
            return this.aCH;
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
            parcel.writeInt(this.aCH);
            parcel.writeString(this.aAR);
            parcel.writeString(this.fileName);
        }

        c(Parcel parcel) {
            super(parcel);
            this.aCu = parcel.readByte() != 0;
            this.aCH = parcel.readInt();
            this.aAR = parcel.readString();
            this.fileName = parcel.readString();
        }
    }
}
