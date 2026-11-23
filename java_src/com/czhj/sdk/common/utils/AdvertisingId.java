package com.czhj.sdk.common.utils;

import java.io.Serializable;
import java.util.Calendar;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
public class AdvertisingId implements Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f25583c = 86400000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Calendar f25584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f25585b;
    public final String mAdvertisingId;
    public final boolean mDoNotTrack;

    AdvertisingId(String str, String str2, boolean z10, long j10) {
        this.mAdvertisingId = str;
        this.f25585b = str2;
        this.mDoNotTrack = z10;
        Calendar calendar = Calendar.getInstance();
        this.f25584a = calendar;
        calendar.setTimeInMillis(j10);
    }

    static String a() {
        return UUID.randomUUID().toString();
    }

    public static AdvertisingId generateExpiredAdvertisingId() {
        return new AdvertisingId(null, a(), false, (Calendar.getInstance().getTimeInMillis() - 86400000) - 1);
    }

    boolean b() {
        return Calendar.getInstance().getTimeInMillis() - this.f25584a.getTimeInMillis() >= 86400000;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        return this.mDoNotTrack == advertisingId.mDoNotTrack && this.mAdvertisingId.equals(advertisingId.mAdvertisingId) && this.f25585b.equals(advertisingId.f25585b);
    }

    public int hashCode() {
        return (((this.mAdvertisingId.hashCode() * 31) + this.f25585b.hashCode()) * 31) + (this.mDoNotTrack ? 1 : 0);
    }

    public String toString() {
        return "AdvertisingId{mLastRotation=" + this.f25584a + ", mAdvertisingId='" + this.mAdvertisingId + "', mSigmobId='" + this.f25585b + "', mDoNotTrack=" + this.mDoNotTrack + '}';
    }
}
