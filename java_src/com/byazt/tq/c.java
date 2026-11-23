package com.byazt.tq;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.fk.u;
import com.byazt.jzl.a;
import com.byazt.nr.m;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1134, 20})
public class c implements com.byazt.fk.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20368c = "video_reward_full";
    public String tt = "video_brand";
    public String ve = "video_splash";
    public String uj = "video_default";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f20370n = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20367a = null;
    public String sp = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f20371x = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f20369i = null;

    private static void c(File[] fileArr, int i10, Set<String> set) {
        if (i10 >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i10) {
                    List listAsList = Arrays.asList(fileArr);
                    Collections.sort(listAsList, new Comparator<File>() { // from class: com.byazt.tq.c.1
                        @Override // java.util.Comparator
                        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                        public int compare(File file, File file2) {
                            long jLastModified = file2.lastModified() - file.lastModified();
                            if (jLastModified == 0) {
                                return 0;
                            }
                            return jLastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i10 < listAsList.size()) {
                        File file = (File) listAsList.get(i10);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) listAsList.get(i10)).delete();
                        }
                        i10++;
                    }
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    private Set<String> tt() {
        HashSet hashSet = new HashSet();
        for (com.byazt.gn.c cVar : com.byazt.gn.c.f14601c.values()) {
            if (cVar != null && cVar.c() != null) {
                a aVarC = cVar.c();
                hashSet.add(com.byazt.vv.ve.tt(aVarC.getCacheParentDir(), aVarC.getFileNameKey()).getAbsolutePath());
                hashSet.add(com.byazt.vv.ve.ve(aVarC.getCacheParentDir(), aVarC.getFileNameKey()).getAbsolutePath());
            }
        }
        for (com.byazt.yqr.tt ttVar : com.byazt.yqr.ve.f22403c.values()) {
            if (ttVar != null && ttVar.c() != null) {
                u uVarC = ttVar.c();
                hashSet.add(com.byazt.vv.ve.tt(uVarC.getCacheParentDir(), uVarC.getFileNameKey()).getAbsolutePath());
                hashSet.add(com.byazt.vv.ve.ve(uVarC.getCacheParentDir(), uVarC.getFileNameKey()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    @Override // com.byazt.fk.c
    public synchronized void clearCache() {
        com.byazt.lt.tt.c("Exec clear video cache ");
        com.byazt.lt.tt.c(this.f20370n);
        List<com.byazt.vg.c> listC = c();
        if (Build.VERSION.SDK_INT >= 23) {
            Set<String> setTt = null;
            for (com.byazt.vg.c cVar : listC) {
                File[] fileArrC = cVar.c();
                if (fileArrC != null && fileArrC.length >= cVar.tt()) {
                    if (setTt == null) {
                        setTt = tt();
                    }
                    int iTt = cVar.tt() - 2;
                    if (iTt < 0) {
                        iTt = 0;
                    }
                    c(cVar.c(), iTt, setTt);
                }
            }
        }
    }

    @Override // com.byazt.fk.c
    public String getBrandCacheDir() {
        if (this.sp == null) {
            this.sp = this.f20370n + File.separator + this.tt;
            File file = new File(this.sp);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.sp;
    }

    @Override // com.byazt.fk.c
    public long getCachedSize(u uVar) {
        if (TextUtils.isEmpty(uVar.getCacheParentDir()) || TextUtils.isEmpty(uVar.getFileNameKey())) {
            return 0L;
        }
        return com.byazt.vv.ve.c(uVar.getCacheParentDir(), uVar.getFileNameKey());
    }

    @Override // com.byazt.fk.c
    public String getOtherCacheDir() {
        if (this.f20369i == null) {
            this.f20369i = this.f20370n + File.separator + this.uj;
            File file = new File(this.f20369i);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20369i;
    }

    @Override // com.byazt.fk.c
    public String getRewardFullCacheDir() {
        if (this.f20367a == null) {
            this.f20367a = this.f20370n + File.separator + this.f20368c;
            File file = new File(this.f20367a);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20367a;
    }

    @Override // com.byazt.fk.c
    public String getSplashCacheDir() {
        if (this.f20371x == null) {
            this.f20371x = this.f20370n + File.separator + this.ve;
            File file = new File(this.f20371x);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20371x;
    }

    @Override // com.byazt.fk.c
    public boolean isVideoCached(u uVar) {
        if (TextUtils.isEmpty(uVar.getCacheParentDir()) || TextUtils.isEmpty(uVar.getFileNameKey())) {
            return false;
        }
        return new File(uVar.getCacheParentDir(), uVar.getFileNameKey()).exists();
    }

    @Override // com.byazt.fk.c
    public void setRootDir(String str) {
        this.f20370n = str;
    }

    private List<com.byazt.vg.c> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.byazt.vg.c(new File(getRewardFullCacheDir()).listFiles(), com.byazt.ri.c.ve()));
        arrayList.add(new com.byazt.vg.c(new File(getSplashCacheDir()).listFiles(), com.byazt.ri.c.tt()));
        arrayList.add(new com.byazt.vg.c(new File(getBrandCacheDir()).listFiles(), com.byazt.ri.c.uj()));
        arrayList.add(new com.byazt.vg.c(new File(getOtherCacheDir()).listFiles(), com.byazt.ri.c.n()));
        return arrayList;
    }
}
