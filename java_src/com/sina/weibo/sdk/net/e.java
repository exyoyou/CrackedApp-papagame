package com.sina.weibo.sdk.net;

import android.os.Bundle;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f82235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Bundle f82236j = new Bundle();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Bundle f82237k = new Bundle();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, Object<File>> f82238l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Map<String, byte[]> f82239m = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f82240n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f82241o;

    public static final class a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f82242i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Bundle f82243j = new Bundle();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Bundle f82244k = new Bundle();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Map<String, Object<File>> f82245l = new HashMap();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        Map<String, byte[]> f82246m = new HashMap();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f82247n = 30000;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f82248o = 60000;

        public final a a(String str, Object obj) {
            a(this.f82243j, str, obj);
            return this;
        }

        public final a b(String str, Object obj) {
            a(this.f82244k, str, obj);
            return this;
        }

        public final e e() {
            return new e(this);
        }

        private void a(Bundle bundle, String str, Object obj) {
            if (obj != null) {
                if (obj instanceof String) {
                    bundle.putString(str, String.valueOf(obj));
                    return;
                }
                if (obj instanceof Integer) {
                    bundle.putInt(str, ((Integer) obj).intValue());
                    return;
                }
                if (obj instanceof Short) {
                    bundle.putShort(str, ((Short) obj).shortValue());
                    return;
                }
                if (obj instanceof Character) {
                    bundle.putChar(str, ((Character) obj).charValue());
                    return;
                }
                if (obj instanceof Byte) {
                    bundle.putByte(str, ((Byte) obj).byteValue());
                    return;
                }
                if (obj instanceof Long) {
                    bundle.putLong(str, ((Long) obj).longValue());
                    return;
                }
                if (obj instanceof Float) {
                    bundle.putFloat(str, ((Float) obj).floatValue());
                    return;
                }
                if (obj instanceof Double) {
                    bundle.putDouble(str, ((Double) obj).doubleValue());
                    return;
                }
                if (obj instanceof Boolean) {
                    bundle.putBoolean(str, ((Boolean) obj).booleanValue());
                } else if (obj instanceof byte[]) {
                    this.f82246m.put(str, (byte[]) obj);
                } else {
                    if (!(obj instanceof Serializable)) {
                        throw new IllegalArgumentException("Unsupported params type!");
                    }
                    bundle.putSerializable(str, (Serializable) obj);
                }
            }
        }
    }

    public e(a aVar) {
        this.f82235i = aVar.f82242i;
        this.f82236j.putAll(aVar.f82243j);
        this.f82237k.putAll(aVar.f82244k);
        this.f82238l.putAll(aVar.f82245l);
        this.f82239m.putAll(aVar.f82246m);
        this.f82240n = aVar.f82247n;
        this.f82241o = aVar.f82248o;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final Bundle d() {
        return this.f82237k;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final int getConnectTimeout() {
        return this.f82240n;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final Bundle getParams() {
        return this.f82236j;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final int getReadTimeout() {
        return this.f82241o;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final String getUrl() {
        return this.f82235i;
    }
}
