package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import com.beizi.fusion.tool.ah;
import com.beizi.fusion.tool.z;
import com.kuaishou.weapon.p0.g;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZis {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static BeiZiCustomController f10040a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f10041b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f10042c = "1.0.25";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f10043d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f10044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f10045f;

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str) {
        f10043d = false;
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInitWithDomain(Context context, String str, String str2) {
        f10043d = false;
        if (TextUtils.isEmpty(str2)) {
            com.beizi.fusion.c.b.a().a(context, str, null, null);
        } else {
            com.beizi.fusion.c.b.a().a(str2).a(context, str, null, null);
        }
    }

    public static void closeShakeAd() {
        f10045f = true;
    }

    public static String getBidToken(String str) {
        return com.beizi.fusion.c.b.a().b(str);
    }

    public static BeiZiCustomController getCustomController() {
        return f10040a;
    }

    public static String getOaidVersion() {
        return f10042c;
    }

    public static String getSdkVersion() {
        return "5.3.0.3";
    }

    public static boolean getTransferProtocol() {
        return f10044e;
    }

    @RequiresPermission(g.f74777a)
    public static void init(Context context, String str) {
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void initWithDomain(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            com.beizi.fusion.c.b.a().a(context, str, null, null);
        } else {
            com.beizi.fusion.c.b.a().a(str2).a(context, str, null, null);
        }
    }

    public static boolean isCloseShakeAd() {
        return f10045f;
    }

    public static boolean isIsSyncInit() {
        return f10043d;
    }

    public static boolean isLimitPersonalAds() {
        return f10041b;
    }

    public static void setAnyCustomExt(Map<String, Object> map) {
        com.beizi.fusion.c.b.a().a(map);
    }

    public static void setLimitPersonalAds(boolean z10) {
        f10041b = z10;
    }

    public static void setOaidVersion(String str) {
        f10042c = str;
    }

    public static void setSupportPersonalized(boolean z10) {
        ah.a(z10);
    }

    public static void setTransferProtocol(boolean z10) {
        f10044e = z10;
    }

    public static void setUserAgent(String str) {
        z.a().a(str);
    }

    @RequiresPermission(g.f74777a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController) {
        f10040a = beiZiCustomController;
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiInitCallBack beiZiInitCallBack) {
        f10043d = false;
        com.beizi.fusion.c.b.a().a(beiZiInitCallBack);
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController, String str2) {
        f10040a = beiZiCustomController;
        com.beizi.fusion.c.b.a().a(context, str, str2, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInitWithDomain(Context context, String str, String str2, BeiZiInitCallBack beiZiInitCallBack) {
        f10043d = false;
        com.beizi.fusion.c.b.a().a(beiZiInitCallBack);
        if (!TextUtils.isEmpty(str2)) {
            com.beizi.fusion.c.b.a().a(str2).a(context, str, null, null);
        } else {
            com.beizi.fusion.c.b.a().a(context, str, null, null);
        }
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3) {
        f10040a = beiZiCustomController;
        com.beizi.fusion.c.b.a().a(context, str, str2, str3);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, BeiZiInitCallBack beiZiInitCallBack) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(beiZiInitCallBack);
        com.beizi.fusion.c.b.a().a(context, str, null, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(context, str, str2, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, BeiZiInitCallBack beiZiInitCallBack) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(beiZiInitCallBack);
        com.beizi.fusion.c.b.a().a(context, str, str2, null);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(context, str, str2, str3);
    }

    @RequiresPermission(g.f74777a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3, BeiZiInitCallBack beiZiInitCallBack) {
        f10040a = beiZiCustomController;
        f10043d = false;
        com.beizi.fusion.c.b.a().a(beiZiInitCallBack);
        com.beizi.fusion.c.b.a().a(context, str, str2, str3);
    }
}
