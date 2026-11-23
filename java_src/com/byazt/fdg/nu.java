package com.byazt.fdg;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 137})
public class nu extends Exception {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14126c;

    public nu(int i10, String str) {
        super(str);
        this.f14126c = i10;
    }

    public nu(int i10, String str, Throwable th) {
        super(str, th);
        this.f14126c = i10;
    }
}
