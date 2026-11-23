package com.xinzhu.overmind.server.os;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.Overmind;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class MindDeviceInfo implements Parcelable {
    public static final Parcelable.Creator<MindDeviceInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f89705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f89707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f89708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f89709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f89710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f89711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f89712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map<String, String> f89713j = new HashMap();

    class a implements Parcelable.Creator<MindDeviceInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindDeviceInfo createFromParcel(Parcel parcel) {
            return new MindDeviceInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindDeviceInfo[] newArray(int i10) {
            return new MindDeviceInfo[i10];
        }
    }

    public MindDeviceInfo() {
    }

    public static MindDeviceInfo b() {
        MindDeviceInfo mindDeviceInfo = new MindDeviceInfo();
        mindDeviceInfo.f89705b = true;
        if (Overmind.get().useRandomGeneratedVirtualDevice()) {
            mindDeviceInfo.f89706c = d(16);
            mindDeviceInfo.f89707d = f(15);
            mindDeviceInfo.f89708e = f(20);
            mindDeviceInfo.f89709f = w();
            mindDeviceInfo.f89710g = w();
            mindDeviceInfo.f89711h = Build.SERIAL;
        } else {
            mindDeviceInfo.f89706c = "3541065001663722161";
            mindDeviceInfo.f89707d = "976188710578541";
            mindDeviceInfo.f89708e = "97618871057854142254";
            mindDeviceInfo.f89709f = "stub";
            mindDeviceInfo.f89710g = "stub";
            mindDeviceInfo.f89711h = "2134043431";
        }
        mindDeviceInfo.f89713j.put("BRAND", Build.BRAND);
        mindDeviceInfo.f89713j.put("MODEL", Build.MODEL);
        mindDeviceInfo.f89713j.put("PRODUCT", Build.PRODUCT);
        mindDeviceInfo.f89713j.put("DEVICE", Build.DEVICE);
        mindDeviceInfo.f89713j.put("BOARD", Build.BOARD);
        mindDeviceInfo.f89713j.put("DISPLAY", Build.DISPLAY);
        mindDeviceInfo.f89713j.put("ID", Build.ID);
        mindDeviceInfo.f89713j.put("MANUFACTURER", Build.MANUFACTURER);
        mindDeviceInfo.f89713j.put("FINGERPRINT", Build.FINGERPRINT);
        return mindDeviceInfo;
    }

    private static String d(int i10) {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        while (sb2.length() < i10) {
            sb2.append(Integer.toHexString(random.nextInt()));
        }
        return sb2.toString().substring(0, i10);
    }

    private static String f(int i10) {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        while (sb2.length() < i10) {
            sb2.append(random.nextInt(10));
        }
        return sb2.toString().substring(0, i10);
    }

    private static String w() {
        Random random = new Random();
        String str = "";
        for (int i10 = 0; i10 < 6; i10++) {
            str = str + String.format("%02x", Integer.valueOf(random.nextInt(255)));
            if (i10 != 5) {
                str = str + ":";
            }
        }
        return str.toUpperCase();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f89705b ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f89706c);
        parcel.writeString(this.f89707d);
        parcel.writeString(this.f89708e);
        parcel.writeString(this.f89709f);
        parcel.writeString(this.f89710g);
        parcel.writeString(this.f89711h);
        parcel.writeString(this.f89712i);
        parcel.writeInt(this.f89713j.size());
        for (Map.Entry<String, String> entry : this.f89713j.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    protected MindDeviceInfo(Parcel parcel) {
        this.f89705b = parcel.readByte() != 0;
        this.f89706c = parcel.readString();
        this.f89707d = parcel.readString();
        this.f89708e = parcel.readString();
        this.f89709f = parcel.readString();
        this.f89710g = parcel.readString();
        this.f89711h = parcel.readString();
        this.f89712i = parcel.readString();
        int i10 = parcel.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            this.f89713j.put(parcel.readString(), parcel.readString());
        }
    }
}
