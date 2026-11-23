package com.join.mgps.va.overmind;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.TipBean;
import com.papa.sim.statistic.t;
import com.papa.sim.statistic.u;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class VExtDbHelperProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f73242b = new Handler();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f73243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f73244c;

        a(final DownloadTask val$finalGameTask, final int val$finalGameFlag) {
            this.f73243b = val$finalGameTask;
            this.f73244c = val$finalGameFlag;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.l(VExtDbHelperProvider.this.getContext()).p2(this.f73243b.getCrc_link_type_val(), AccountUtil_.getInstance_(VExtDbHelperProvider.this.getContext()).getUid(), this.f73244c, this.f73243b.get_from(), this.f73243b.get_from_type(), this.f73243b.getExt());
        }
    }

    public boolean a(Context context, String path) {
        PackageInfo packageArchiveInfo;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            if (t2.h(path) || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(path, 128)) == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(com.join.mgps.mod.utils.d.f71910l)) {
                return false;
            }
            return packageArchiveInfo.applicationInfo.metaData.getBoolean(com.join.mgps.mod.utils.d.f71910l);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0288  */
    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        List<DownloadTask> listI;
        boolean z10 = true;
        DownloadTask next = null;
        boolean z11 = false;
        if ("miniGameInfo".equals(str)) {
            Bundle bundle2 = new Bundle();
            if (bundle == null) {
                bundle2.putBoolean("isMiniGame", false);
                return bundle2;
            }
            String string = bundle.getString("packageName");
            bundle.getInt("userId");
            if (t2.h(string)) {
                bundle2.putBoolean("isMiniGame", false);
                return bundle2;
            }
            List<DownloadTask> listI2 = q5.f.M().I(string);
            if (listI2 != null) {
                Iterator<DownloadTask> it2 = listI2.iterator();
                boolean z12 = false;
                while (it2.hasNext()) {
                    next = it2.next();
                    z12 = next.isMiniGame() && next.isSingleGame();
                    if (APKUtils.P(next) || APKUtils.K(next)) {
                        break;
                    }
                }
                z11 = z12;
            }
            if (next != null) {
                bundle2.putInt("vm_device_switch", next.getVm_device_switch());
                bundle2.putString("packageName", next.getPackageName());
                bundle2.putString("showName", next.getShowName());
            }
            bundle2.putBoolean("isMiniGame", z11);
            return bundle2;
        }
        if ("statPoint".equals(str)) {
            String string2 = bundle.getString("packageName");
            if (t2.i(string2)) {
                List<DownloadTask> listI3 = q5.f.M().I(string2);
                if (listI3 != null) {
                    for (DownloadTask downloadTask : listI3) {
                        if (APKUtils.P(downloadTask) || APKUtils.K(downloadTask)) {
                            next = downloadTask;
                            break;
                        }
                    }
                }
                if (next != null) {
                    int i10 = APKUtils.K(next) ? 1 : APKUtils.P(next) ? 2 : 0;
                    t.l(getContext()).o2(next.getCrc_link_type_val(), AccountUtil_.getInstance_(getContext()).getUid(), i10, next.get_from(), next.get_from_type(), next.getExt());
                    this.f73242b.postDelayed(new a(next, i10), 5000L);
                }
            }
        } else {
            if ("isUseNativeLib".equals(str)) {
                Bundle bundle3 = new Bundle();
                if (bundle == null) {
                    bundle3.putBoolean("isUseNativeLib", false);
                    return bundle3;
                }
                String string3 = bundle.getString("packageName");
                if (t2.h(string3)) {
                    bundle3.putBoolean("isUseNativeLib", false);
                    return bundle3;
                }
                List<DownloadTask> listI4 = q5.f.M().I(string3);
                if (listI4 != null) {
                    for (DownloadTask downloadTask2 : listI4) {
                        if (APKUtils.P(downloadTask2) || APKUtils.K(downloadTask2)) {
                            next = downloadTask2;
                            break;
                        }
                    }
                }
                if (next != null) {
                    bundle3.putBoolean("isUseNativeLib", a(getContext(), next.getResource_path()));
                }
                return bundle3;
            }
            if ("getWfPlatInfo".equals(str)) {
                Bundle bundle4 = new Bundle();
                String strA = com.papa.sim.statistic.m.a(getContext());
                if (t2.h(strA)) {
                    strA = "0";
                }
                String strA2 = u.f(getContext()).a(getContext());
                bundle4.putString(n5.a.f94477a, strA);
                bundle4.putString("wf_android_id", strA2);
                bundle4.putString("wf_oaid", u.f(getContext()).j());
                bundle4.putString("wf_uuid", u.f(getContext()).k());
                bundle4.putString("wf_imei", u.f(getContext()).d());
                bundle4.putString("wf_gdev_id", u.f(getContext()).c());
                bundle4.putString("wf_umeng_id", u.f(getContext()).n(getContext()));
                bundle4.putString("wf_mac", u.f(getContext()).g());
                bundle4.putString("wf_version_code", "517");
                bundle4.putString("wf_version_name", com.join.android.app.mgsim.wufun.b.f35535h);
                if (t2.h(strA2)) {
                    bundle4.putString("wf_device_id", u.f(getContext()).b());
                } else {
                    bundle4.putString("wf_device_id", strA2);
                }
                return bundle4;
            }
            if ("utilsConfigState".equals(str)) {
                Bundle bundle5 = new Bundle();
                String string4 = bundle.getString("packageName");
                if (!t2.i(string4) || (listI = q5.f.M().I(string4)) == null || listI.size() <= 0) {
                    z10 = false;
                } else {
                    DownloadTask downloadTask3 = listI.get(0);
                    if (downloadTask3.getTipBeans() == null || downloadTask3.getTipBeans().size() <= 0) {
                        z10 = false;
                    } else {
                        Iterator<TipBean> it3 = downloadTask3.getTipBeans().iterator();
                        while (it3.hasNext()) {
                            if (Objects.equals(it3.next().getId(), "276")) {
                            }
                        }
                        z10 = false;
                    }
                }
                bundle5.putBoolean("utilsConfigState", z10);
                return bundle5;
            }
        }
        return super.call(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }
}
