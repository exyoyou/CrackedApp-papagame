package com.byazt.omf;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.C;
import com.kuaishou.weapon.p0.g;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 482})
public class zm extends com.byazt.dj.uj implements Serializable, Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.dj.uj f18162c;
    public int tt;

    public zm(com.byazt.dj.uj ujVar) {
        super(null);
        this.tt = 0;
        this.f18162c = ujVar;
    }

    private boolean c(ApplicationInfo applicationInfo) {
        try {
            if (this.tt == 0) {
                Field declaredField = ApplicationInfo.class.getDeclaredField("privateFlags");
                declaredField.setAccessible(true);
                this.tt = ((Integer) declaredField.get(applicationInfo)).intValue();
            }
            return (this.tt & C.ENCODING_PCM_A_LAW) != 0;
        } catch (Throwable th) {
            com.byazt.ukr.yp.c().c("hasLegacyStorage", th);
            return false;
        }
    }

    @Override // com.byazt.dj.uj
    public boolean alist() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.alist() : ujVar.alist();
    }

    @Override // com.byazt.dj.uj
    public String getAndroidId() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.getAndroidId() : ujVar.getAndroidId();
    }

    @Override // com.byazt.dj.uj
    public String getDevImei() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.getDevImei() : ujVar.getDevImei();
    }

    @Override // com.byazt.dj.uj
    public String getDevOaid() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.getDevOaid() : ujVar.getDevOaid();
    }

    @Override // com.byazt.dj.uj
    public String getMacAddress() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.getMacAddress() : ujVar.getMacAddress();
    }

    @Override // com.byazt.dj.uj
    public com.byazt.dj.ve getTTLocation() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.getTTLocation() : ujVar.getTTLocation();
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUseAndroidId() {
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.isCanUseAndroidId() : ujVar.isCanUseAndroidId();
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUseLocation() {
        com.byazt.dj.uj ujVar = this.f18162c;
        if (ujVar == null) {
            if (super.isCanUseLocation() && com.byazt.xgx.n.c().c(gt.getContext(), g.f74784h) && com.byazt.xgx.n.c().c(gt.getContext(), g.f74783g)) {
                return true;
            }
        } else if (ujVar.isCanUseLocation() && com.byazt.xgx.n.c().c(gt.getContext(), g.f74784h) && com.byazt.xgx.n.c().c(gt.getContext(), g.f74783g)) {
            return true;
        }
        return false;
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUseMessage() {
        if (p.uj < 7000) {
            return true;
        }
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.isCanUseMessage() : ujVar.isCanUseMessage();
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUsePermissionRecordAudio() {
        return false;
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUsePhoneState() {
        com.byazt.dj.uj ujVar = this.f18162c;
        if (ujVar == null) {
            return super.isCanUsePhoneState();
        }
        return ujVar.isCanUsePhoneState() && com.byazt.xgx.n.c().c(gt.getContext(), g.f74779c);
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUseWifiState() {
        com.byazt.dj.uj ujVar = this.f18162c;
        if (ujVar == null) {
            return super.isCanUseWifiState();
        }
        return ujVar.isCanUseWifiState() && com.byazt.xgx.n.c().c(gt.getContext(), g.f74780d);
    }

    @Override // com.byazt.dj.uj
    public boolean isCanUseWriteExternal() {
        if (this.f18162c == null) {
            return super.isCanUseWriteExternal();
        }
        Context context = gt.getContext();
        if (context == null) {
            return super.isCanUseWriteExternal();
        }
        boolean zC = com.byazt.xgx.n.c().c(context, g.f74786j);
        boolean zIsCanUseWriteExternal = this.f18162c.isCanUseWriteExternal();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i10 = applicationInfo.targetSdkVersion;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            if (i10 < 30) {
                return zC && zIsCanUseWriteExternal && c(applicationInfo);
            }
            return zIsCanUseWriteExternal;
        }
        if (i11 == 29) {
            return zC && zIsCanUseWriteExternal && c(applicationInfo);
        }
        return zIsCanUseWriteExternal && zC;
    }

    @Override // com.byazt.dj.uj
    public Map<String, Object> userPrivacyConfig() {
        if (p.uj < 6408) {
            return null;
        }
        com.byazt.dj.uj ujVar = this.f18162c;
        return ujVar == null ? super.userPrivacyConfig() : ujVar.userPrivacyConfig();
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
        switch (iIntValue) {
            case 262101:
                return Boolean.valueOf(isCanUseLocation());
            case 262102:
                com.byazt.dj.ve tTLocation = getTTLocation();
                if (tTLocation == null) {
                    return null;
                }
                double dC = tTLocation.c();
                return com.byazt.rl.c.c().c(262001, dC).c(262002, tTLocation.tt()).tt().sparseArray();
            case 262103:
                return Boolean.valueOf(alist());
            case 262104:
                return Boolean.valueOf(isCanUsePhoneState());
            case 262105:
                return getDevImei();
            case 262106:
                return Boolean.valueOf(isCanUseWifiState());
            case 262107:
                return getMacAddress();
            case 262108:
                return Boolean.valueOf(isCanUseWriteExternal());
            case 262109:
                return getDevOaid();
            case 262110:
                return Boolean.valueOf(isCanUseAndroidId());
            case 262111:
                return Boolean.valueOf(isCanUsePermissionRecordAudio());
            case 262112:
                return getAndroidId();
            default:
                switch (iIntValue) {
                    case 262119:
                        return userPrivacyConfig();
                    case 262120:
                        return Boolean.valueOf(isCanUseMessage());
                    default:
                        return null;
                }
        }
    }
}
