package com.wufun.union.ad.bytedance;

import android.os.Bundle;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f88179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f88180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f88181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f88182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f88183e;

    public b(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.f88179a = bundle.getInt("reward_extra_key_error_code");
        this.f88180b = bundle.getString("reward_extra_key_error_msg");
        this.f88181c = bundle.getString("reward_extra_key_reward_name");
        this.f88182d = bundle.getInt("reward_extra_key_reward_amount");
        this.f88183e = bundle.getFloat("reward_extra_key_reward_propose");
    }

    public int a() {
        return this.f88182d;
    }

    public String b() {
        return this.f88181c;
    }

    public float c() {
        return this.f88183e;
    }

    public int d() {
        return this.f88179a;
    }

    public String e() {
        return this.f88180b;
    }
}
