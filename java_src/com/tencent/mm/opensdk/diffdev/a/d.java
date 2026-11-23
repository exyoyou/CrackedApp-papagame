package com.tencent.mm.opensdk.diffdev.a;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes2.dex */
public enum d {
    UUID_EXPIRED(402),
    UUID_CANCELED(403),
    UUID_SCANED(404),
    UUID_CONFIRM(405),
    UUID_KEEP_CONNECT(TTAdConstant.INTERACTION_TYPE_CODE),
    UUID_ERROR(500);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f83740a;

    d(int i10) {
        this.f83740a = i10;
    }

    public int a() {
        return this.f83740a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "UUIDStatusCode:" + this.f83740a;
    }
}
