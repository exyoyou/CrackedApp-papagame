package com.byazt.fd;

import android.text.TextUtils;
import com.byazt.fk.u;
import com.bykv.vk.component.ttvideo.DataLoaderHelper;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1032, 20})
public class c implements com.byazt.fk.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14117c;
    public String tt = "tt_video_reward_full";
    public String ve = "tt_video_brand";
    public String uj = "tt_video_splash";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f14120n = "tt_video_default";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f14116a = null;
    public String sp = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f14121x = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f14119i = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f14118da = null;
    public String sl = null;

    @Override // com.byazt.fk.c
    public void clearCache() {
    }

    @Override // com.byazt.fk.c
    public String getBrandCacheDir() {
        if (this.f14121x == null) {
            this.f14121x = this.sl + File.separator + this.ve;
            File file = new File(this.f14121x);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f14121x;
    }

    @Override // com.byazt.fk.c
    public long getCachedSize(u uVar) {
        return this.f14117c;
    }

    @Override // com.byazt.fk.c
    public String getOtherCacheDir() {
        if (this.f14118da == null) {
            this.f14118da = this.sl + File.separator + this.f14120n;
            File file = new File(this.f14118da);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f14118da;
    }

    @Override // com.byazt.fk.c
    public String getRewardFullCacheDir() {
        if (this.sp == null) {
            this.sp = this.sl + File.separator + this.tt;
            File file = new File(this.sp);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.sp;
    }

    @Override // com.byazt.fk.c
    public String getSplashCacheDir() {
        if (this.f14119i == null) {
            this.f14119i = this.sl + File.separator + this.uj;
            File file = new File(this.f14119i);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f14119i;
    }

    @Override // com.byazt.fk.c
    public boolean isVideoCached(u uVar) {
        DataLoaderHelper.DataLoaderCacheInfo cacheInfoByFilePath = TTVideoEngine.getCacheInfoByFilePath(uVar.getFileNameKey(), uVar.getCacheParentDir());
        if (cacheInfoByFilePath != null) {
            boolean zIsPreloadAll = uVar.isPreloadAll();
            this.f14117c = cacheInfoByFilePath.mCacheSizeFromZero;
            int pitayaCacheSize = uVar.getPitayaCacheSize() > 0 ? uVar.getPitayaCacheSize() : uVar.getPreloadSize();
            if (zIsPreloadAll) {
                pitayaCacheSize = (int) uVar.getVideoSize();
            }
            if (cacheInfoByFilePath.mCacheSizeFromZero >= pitayaCacheSize) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.fk.c
    public void setRootDir(String str) {
        if (!TextUtils.isEmpty(this.sl) && !this.sl.equals(str)) {
            this.f14116a = null;
            this.sp = null;
            this.f14121x = null;
            this.f14119i = null;
            this.f14118da = null;
        }
        this.sl = str;
    }
}
