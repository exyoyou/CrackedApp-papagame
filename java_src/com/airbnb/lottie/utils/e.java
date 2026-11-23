package com.airbnb.lottie.utils;

import com.airbnb.lottie.z0;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class e implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<String> f6094a = new HashSet();

    @Override // com.airbnb.lottie.z0
    public void a(String str) {
        b(str, null);
    }

    @Override // com.airbnb.lottie.z0
    public void b(String str, Throwable th) {
        Set<String> set = f6094a;
        if (set.contains(str)) {
            return;
        }
        set.add(str);
    }

    @Override // com.airbnb.lottie.z0
    public void debug(String str) {
        debug(str, null);
    }

    @Override // com.airbnb.lottie.z0
    public void error(String str, Throwable th) {
        boolean z10 = com.airbnb.lottie.e.f5612a;
    }

    @Override // com.airbnb.lottie.z0
    public void debug(String str, Throwable th) {
        boolean z10 = com.airbnb.lottie.e.f5612a;
    }
}
