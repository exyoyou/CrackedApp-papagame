package com.facebook.common.callercontext;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.internal.h;
import com.facebook.common.internal.i;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class ContextChain implements Parcelable {
    public static final Parcelable.Creator<ContextChain> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f26843h = "p";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f26844i = "i";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f26845j = "pi";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final char f26846k = '/';

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f26847l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f26850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final ContextChain f26851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Map<String, Object> f26852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private String f26853g;

    static class a implements Parcelable.Creator<ContextChain> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ContextChain createFromParcel(Parcel in2) {
            return new ContextChain(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ContextChain[] newArray(int size) {
            return new ContextChain[size];
        }
    }

    public ContextChain(final String tag, final String name, @Nullable final Map<String, String> extraData, @Nullable final ContextChain parent) {
        this.f26848b = tag;
        this.f26849c = name;
        this.f26850d = parent != null ? parent.f26850d + 1 : 0;
        this.f26851e = parent;
        Map<String, Object> mapB = parent != null ? parent.b() : null;
        if (mapB != null) {
            this.f26852f = new HashMap(mapB);
        }
        if (extraData != null) {
            if (this.f26852f == null) {
                this.f26852f = new HashMap();
            }
            this.f26852f.putAll(extraData);
        }
    }

    public static void A(boolean useDeepEquals) {
        f26847l = useDeepEquals;
    }

    public String[] B() {
        int i10 = this.f26850d;
        String[] strArr = new String[i10 + 1];
        ContextChain contextChain = this;
        while (i10 >= 0) {
            i.j(contextChain, "ContextChain level mismatch, this should not happen.");
            strArr[i10] = contextChain.f26848b + ":" + contextChain.f26849c;
            contextChain = contextChain.f26851e;
            i10 += -1;
        }
        return strArr;
    }

    @Nullable
    public Map<String, Object> b() {
        return this.f26852f;
    }

    public String d() {
        return this.f26849c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!f26847l) {
            return super.equals(obj);
        }
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ContextChain contextChain = (ContextChain) obj;
        if (h.a(this.f26848b, contextChain.f26848b) && h.a(this.f26849c, contextChain.f26849c) && this.f26850d == contextChain.f26850d) {
            ContextChain contextChain2 = this.f26851e;
            ContextChain contextChain3 = contextChain.f26851e;
            if (contextChain2 == contextChain3) {
                return true;
            }
            if (contextChain2 != null && contextChain2.equals(contextChain3)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public ContextChain f() {
        return this.f26851e;
    }

    public int hashCode() {
        if (!f26847l) {
            return super.hashCode();
        }
        int iHashCode = super.hashCode() * 31;
        String str = this.f26848b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f26849c;
        int iHashCode3 = (((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f26850d) * 31;
        ContextChain contextChain = this.f26851e;
        return iHashCode3 + (contextChain != null ? contextChain.hashCode() : 0);
    }

    public String toString() {
        if (this.f26853g == null) {
            this.f26853g = this.f26848b + ":" + this.f26849c;
            if (this.f26851e != null) {
                this.f26853g = this.f26851e.toString() + '/' + this.f26853g;
            }
        }
        return this.f26853g;
    }

    public ContextChain w() {
        ContextChain contextChain = this.f26851e;
        return contextChain == null ? this : contextChain.w();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f26848b);
        dest.writeString(this.f26849c);
        dest.writeInt(this.f26850d);
        dest.writeParcelable(this.f26851e, flags);
    }

    @Nullable
    public String x(String key) {
        Object obj;
        Map<String, Object> map = this.f26852f;
        if (map == null || (obj = map.get(key)) == null) {
            return null;
        }
        return String.valueOf(obj);
    }

    public String y() {
        return this.f26848b;
    }

    public void z(String key, Object value) {
        if (this.f26852f == null) {
            this.f26852f = new HashMap();
        }
        this.f26852f.put(key, value);
    }

    public ContextChain(final String tag, final String name, @Nullable final ContextChain parent) {
        this(tag, name, null, parent);
    }

    protected ContextChain(Parcel in2) {
        this.f26848b = in2.readString();
        this.f26849c = in2.readString();
        this.f26850d = in2.readInt();
        this.f26851e = (ContextChain) in2.readParcelable(ContextChain.class.getClassLoader());
    }
}
