package android.os;

import android.annotation.TargetApi;

/* JADX INFO: loaded from: classes7.dex */
@TargetApi(26)
public final class ParcelableException extends RuntimeException implements Parcelable {
    public static final Parcelable.Creator<ParcelableException> CREATOR = new Parcelable.Creator<ParcelableException>() { // from class: android.os.ParcelableException.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableException createFromParcel(Parcel parcel) {
            return new ParcelableException(ParcelableException.readFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableException[] newArray(int i10) {
            return new ParcelableException[i10];
        }
    };

    public ParcelableException(Throwable th) {
        super(th);
    }

    public static Throwable readFromParcel(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }

    public static void writeToParcel(Parcel parcel, Throwable th) {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends Throwable> void maybeRethrow(Class<T> cls) throws Throwable {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        throw new RuntimeException("Stub!");
    }
}
