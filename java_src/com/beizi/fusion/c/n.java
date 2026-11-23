package com.beizi.fusion.c;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.ad.model.BeiZiLocation;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.model.AdPlusConfig;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.ah;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.z;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f10143a;

    public static void a(Context context, String str) {
        try {
            b(context.getApplicationContext(), str);
        } catch (Throwable unused) {
        }
    }

    private static void b(final Context context, String str) {
        if (f10143a) {
            return;
        }
        try {
            a(context);
            com.beizi.ad.b.a(context, str, new com.beizi.ad.c() { // from class: com.beizi.fusion.c.n.1
                @Override // com.beizi.ad.c
                public boolean a() {
                    return BeiZis.getCustomController() != null ? BeiZis.getCustomController().isCanUseLocation() : super.a();
                }

                @Override // com.beizi.ad.c
                public BeiZiLocation b() {
                    return BeiZis.getCustomController() != null ? BeiZis.getCustomController().getLocation() : super.b();
                }

                @Override // com.beizi.ad.c
                public boolean c() {
                    if (BeiZis.getCustomController() != null) {
                        return !ah.a() && BeiZis.getCustomController().isCanUseOaid();
                    }
                    return super.c();
                }

                @Override // com.beizi.ad.c
                public String d() {
                    try {
                        if (RequestInfo.getInstance(context).getDevInfo() != null) {
                            String oaid = RequestInfo.getInstance(context).getDevInfo().getOaid();
                            if (!TextUtils.isEmpty(oaid)) {
                                return oaid;
                            }
                            String customOaid = RequestInfo.getInstance(context).getCustomOaid();
                            if (!TextUtils.isEmpty(customOaid)) {
                                return customOaid;
                            }
                        }
                    } catch (Exception unused) {
                    }
                    return super.d();
                }
            });
            com.beizi.ad.b.d(z.a().a(context.getApplicationContext()));
            f10143a = true;
        } catch (Exception unused) {
        }
    }

    public static void a(Context context) {
        String strB;
        try {
            AdPlusConfig adPlusConfig = ResponseInfo.getInstance(context).getAdPlusConfig();
            if (adPlusConfig != null) {
                List<String> h5RedirectBlackList = adPlusConfig.getH5RedirectBlackList();
                if (h5RedirectBlackList == null || h5RedirectBlackList.size() <= 0) {
                    h5RedirectBlackList = new ArrayList<>();
                    h5RedirectBlackList.add("market://");
                }
                com.beizi.ad.b.a(h5RedirectBlackList);
            }
            if (adPlusConfig == null || TextUtils.isEmpty(adPlusConfig.getAdUrl()) || !adPlusConfig.getAdUrl().startsWith("http")) {
                strB = com.beizi.fusion.tool.d.b(BeiZis.getTransferProtocol() ? "aHR0cHM6Ly9hcGktaHRwLmJlaXppLmJpei9tYi9zZGswL2pzb24=" : "aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAwL21iL3NkazAvanNvbg==");
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
            } else {
                strB = adPlusConfig.getAdUrl();
            }
            if (!TextUtils.isEmpty(strB)) {
                com.beizi.ad.b.a(strB);
            }
            if (adPlusConfig != null) {
                String rwReqUrl = adPlusConfig.getRwReqUrl();
                if (!TextUtils.isEmpty(rwReqUrl)) {
                    com.beizi.ad.b.b(rwReqUrl);
                }
                String unReqUrl = adPlusConfig.getUnReqUrl();
                if (TextUtils.isEmpty(unReqUrl)) {
                    return;
                }
                com.beizi.ad.b.c(unReqUrl);
            }
        } catch (Exception unused) {
        }
    }

    public static String a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            a(context, str);
            return com.beizi.ad.b.e(str2);
        }
        com.beizi.ad.internal.c.a().a(context);
        return new com.beizi.ad.v2.e.b().a(at.a(), false);
    }
}
