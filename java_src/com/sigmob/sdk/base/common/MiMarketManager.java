package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class MiMarketManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f78859a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f78860b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f78861c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f78862d = 3;

    public static class DirectMailStatusReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f78863a = "com.xiaomi.market.DIRECT_MAIL_CHECK_RESULT";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f78864b = "com.xiaomi.market.DIRECT_MAIL_STATUS";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f78865c = "com.xiaomi.market.DIRECT_MAIL_DOWNLOAD_PROGRESS";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BaseAdUnit f78866d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }

        public void a(Context context, BaseAdUnit adUnit) {
            if (context == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f78863a);
            intentFilter.addAction(f78864b);
            intentFilter.addAction(f78865c);
            this.f78866d = adUnit;
            com.sigmob.sdk.base.utils.g.a(context, this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i10;
            final String string;
            StringBuilder sb2;
            String str;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) action) || extras == null) {
                return;
            }
            action.hashCode();
            switch (action) {
                case "com.xiaomi.market.DIRECT_MAIL_STATUS":
                    int i11 = extras.getInt("statusCode");
                    final String string2 = extras.getString("packageName");
                    SigmobLog.d("MiMarketManager: statusCode:" + i11 + " packageName:" + string2);
                    ad.a("mimarket_status", String.valueOf(i11), this.f78866d, new ad.a() { // from class: com.sigmob.sdk.base.common.f0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.b(string2, obj);
                        }
                    });
                    return;
                case "com.xiaomi.market.DIRECT_MAIL_DOWNLOAD_PROGRESS":
                    i10 = extras.getInt("downloadProgress");
                    string = extras.getString("packageName");
                    ad.a("mimarket_download_progress", String.valueOf(i10), this.f78866d, new ad.a() { // from class: com.sigmob.sdk.base.common.g0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.a(string, obj);
                        }
                    });
                    sb2 = new StringBuilder();
                    str = "MiMarketManager: downloadProgress:";
                    break;
                case "com.xiaomi.market.DIRECT_MAIL_CHECK_RESULT":
                    i10 = extras.getInt("styleCheckResult");
                    string = extras.getString("packageName");
                    ad.a("mimarket_check_result", i10 == 0 ? "1" : "0", this.f78866d, new ad.a() { // from class: com.sigmob.sdk.base.common.e0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.c(string, obj);
                        }
                    });
                    sb2 = new StringBuilder();
                    str = "MiMarketManager: styleResult:";
                    break;
                default:
                    return;
            }
            sb2.append(str);
            sb2.append(i10);
            sb2.append(" packageName:");
            sb2.append(string);
            SigmobLog.d(sb2.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }
    }

    public static void a(Context context, ArrayList<String> packageList) {
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.xiaomi.market.provider.DirectMailProvider/referrer"), null, null, null, null);
        while (cursorQuery != null) {
            try {
                if (!cursorQuery.moveToFirst()) {
                    break;
                }
                cursorQuery.getString(0);
                cursorQuery.getString(1);
                cursorQuery.getString(2);
                cursorQuery.getString(3);
            } catch (Throwable th) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }

    public static void b(Context context, ArrayList<String> packageList) {
        ArrayList parcelableArrayList;
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("packageNames", packageList);
        Bundle bundleCall = context.getContentResolver().call(Uri.parse("content://com.xiaomi.market.provider.DirectMailProvider/status"), "queryDownloadStatus", (String) null, bundle);
        if (bundleCall == null || (parcelableArrayList = bundleCall.getParcelableArrayList("packageNames")) == null || parcelableArrayList.isEmpty()) {
            return;
        }
        for (Object obj : parcelableArrayList) {
            if (obj != null && (obj instanceof Bundle)) {
                Bundle bundle2 = (Bundle) obj;
                SigmobLog.d("packageName = " + bundle2.getString("packageName") + ", status = " + bundle2.getInt("status") + ", progress = " + bundle2.getInt("progress"));
            }
        }
    }
}
