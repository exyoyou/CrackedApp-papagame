package com.byazt.oz;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.nr.m;
import com.byazt.ut.ATSKeep;
import com.byazt.yj.my;
import com.byazt.yj.qy;
import com.byazt.yj.yp;
import com.byazt.yj.z;
import com.byazt.yj.zb;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 213, 13})
public class tt implements qy, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile a f18566c;

    public tt(Context context, my myVar) {
        if (this.f18566c != null) {
            m.tt("ImageLoader", "already init!");
        }
        this.f18566c = new a(context, myVar == null ? n.da() : myVar);
    }

    private void c() {
        m.tt("ImageLoader", "release");
        clearMemoryCache(0.0d);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -1:
                c();
                return null;
            case 0:
            default:
                return null;
            case 1:
                yp ypVarFrom = from((String) sparseArray.get(1));
                return ypVarFrom != null ? new z(ypVarFrom) : ypVarFrom;
            case 2:
                clearCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 3:
                clearMemoryCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 4:
                clearDiskCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 5:
                clearAllCache();
                return null;
            case 6:
                return getCacheStream((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 7:
                return getDiskCacheStream((String) sparseArray.get(1), (String) sparseArray.get(2), (String) sparseArray.get(3));
            case 8:
                return Boolean.valueOf(hasDiskCache((String) sparseArray.get(1), (String) sparseArray.get(2), (String) sparseArray.get(3)));
        }
    }

    @Override // com.byazt.yj.qy
    public void clearAllCache() {
        clearDiskCache(0.0d);
        clearMemoryCache(0.0d);
    }

    @Override // com.byazt.yj.qy
    public void clearCache(double d10) {
        clearMemoryCache(d10);
        clearDiskCache(d10);
    }

    @Override // com.byazt.yj.qy
    public void clearDiskCache(double d10) {
        if (this.f18566c != null) {
            c(this.f18566c.ve(), d10);
        }
    }

    @Override // com.byazt.yj.qy
    public void clearMemoryCache(double d10) {
        if (this.f18566c != null) {
            c(this.f18566c.c(), d10);
            c(this.f18566c.tt(), d10);
        }
    }

    @Override // com.byazt.yj.qy
    public yp from(String str) {
        return new ve.tt(this.f18566c).from(str);
    }

    @Override // com.byazt.yj.qy
    public InputStream getCacheStream(String str, String str2) {
        if (this.f18566c != null) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                str2 = com.byazt.as.ve.c(str);
            }
            Collection<zb> collectionTt = this.f18566c.tt();
            if (collectionTt != null) {
                Iterator<zb> it2 = collectionTt.iterator();
                while (it2.hasNext()) {
                    byte[] bArrC = it2.next().c(str2);
                    if (bArrC != null) {
                        return new ByteArrayInputStream(bArrC);
                    }
                }
            }
            Collection<com.byazt.yj.uj> collectionVe = this.f18566c.ve();
            if (collectionVe != null) {
                Iterator<com.byazt.yj.uj> it3 = collectionVe.iterator();
                while (it3.hasNext()) {
                    InputStream inputStreamC = it3.next().c(str2);
                    if (inputStreamC != null) {
                        return inputStreamC;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.byazt.yj.qy
    public InputStream getDiskCacheStream(String str, String str2, String str3) {
        if (this.f18566c == null || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            str2 = com.byazt.as.ve.c(str);
        }
        com.byazt.yj.uj ujVarC = this.f18566c.c(str3);
        if (ujVarC != null) {
            return ujVarC.c(str2);
        }
        return null;
    }

    @Override // com.byazt.yj.qy
    public boolean hasDiskCache(String str, String str2, String str3) {
        if (this.f18566c == null || TextUtils.isEmpty(str3)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            str2 = com.byazt.as.ve.c(str);
        }
        com.byazt.yj.uj ujVarC = this.f18566c.c(str3);
        if (ujVarC != null) {
            return ujVarC.tt(str2);
        }
        return false;
    }

    public boolean isInit() {
        return this.f18566c != null;
    }

    private void c(Collection<? extends com.byazt.yj.c> collection, double d10) {
        if (collection == null) {
            return;
        }
        Iterator<? extends com.byazt.yj.c> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().c(d10);
        }
    }
}
