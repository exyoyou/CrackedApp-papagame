package com.windmill.sdk.common;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet<Integer> f86653a;

    public void a(Set<Integer> channelIds) {
        synchronized (this) {
            this.f86653a = new HashSet<>(channelIds);
        }
    }

    @Override // com.windmill.sdk.common.d
    public boolean a(int channelId) {
        boolean z10;
        synchronized (this) {
            HashSet<Integer> hashSet = this.f86653a;
            z10 = hashSet != null && hashSet.contains(Integer.valueOf(channelId));
        }
        return z10;
    }
}
