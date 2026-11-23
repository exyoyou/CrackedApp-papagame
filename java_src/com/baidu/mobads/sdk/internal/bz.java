package com.baidu.mobads.sdk.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.join.mgps.dto.Constant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class bz implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7667a = "MD5";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Parcelable.Creator<bz> f7668b = new ca();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f7669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f7670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7673g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7675i;

    /* synthetic */ bz(Parcel parcel, ca caVar) {
        this(parcel);
    }

    public Boolean a() {
        return Boolean.valueOf(this.f7675i == 1);
    }

    public double b() {
        return this.f7670d;
    }

    public String c() {
        return cs.a().c(this.f7671e);
    }

    public String d() {
        return this.f7672f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f7673g;
    }

    public Boolean f() {
        return Boolean.valueOf(this.f7674h == 1);
    }

    public String toString() {
        return this.f7669c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f7672f);
        parcel.writeInt(this.f7675i);
        parcel.writeString(this.f7671e);
        parcel.writeDouble(this.f7670d);
        parcel.writeString(this.f7673g);
        parcel.writeInt(this.f7674h);
    }

    public bz(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f7669c = jSONObject;
            this.f7670d = jSONObject.getDouble("version");
            this.f7671e = this.f7669c.getString("url");
            this.f7672f = this.f7669c.getString(Constant.MD5);
            this.f7675i = 1;
            this.f7673g = "";
            this.f7674h = 0;
        } catch (JSONException unused) {
            this.f7675i = 0;
        }
        this.f7675i = c() == null ? 0 : 1;
    }

    public bz(bz bzVar, String str, Boolean bool) {
        this.f7670d = bzVar.b();
        this.f7671e = bzVar.c();
        this.f7672f = bzVar.d();
        this.f7675i = bzVar.a().booleanValue() ? 1 : 0;
        this.f7673g = str;
        this.f7674h = bool.booleanValue() ? 1 : 0;
    }

    private bz(Parcel parcel) {
        this.f7672f = parcel.readString();
        this.f7675i = parcel.readInt();
        this.f7671e = parcel.readString();
        this.f7670d = parcel.readDouble();
        this.f7673g = parcel.readString();
        this.f7674h = parcel.readInt();
    }
}
