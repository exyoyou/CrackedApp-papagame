package cn.fly.tools.utils;

import cn.fly.FlySDK;
import cn.fly.commons.ae;
import cn.fly.commons.z;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2272a = cn.fly.commons.m.a("003]jefmhh");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f2273b = cn.fly.commons.m.a("005,ieffffgnYl");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f2274c = cn.fly.commons.m.a("009*ghfffffj]e*fhhkfjjh");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f2275d = cn.fly.commons.m.a("013Rfhfmhhfj<eBfmfhfhfmDg4hkfjjh");

    public static synchronized boolean a() {
        File file = new File(new File(FlySDK.getContext().getFilesDir(), f2272a), f2275d);
        if (!file.exists() || file.length() <= 0) {
            return false;
        }
        File file2 = new File(FlySDK.getContext().getFilesDir(), f2273b);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        FileUtils.copyFile(file, new File(file2, f2274c));
        ae.b().a((ArrayList<String>) null);
        return true;
    }

    public static synchronized boolean b() {
        File file = new File(new File(FlySDK.getContext().getFilesDir(), cn.fly.commons.m.a("0076jefmhhin_hQflhk")), cn.fly.commons.m.a("0085fhfmhhfjfeZj-fjjh"));
        if (!file.exists() || file.length() <= 56320) {
            return false;
        }
        z.a().a(1);
        return true;
    }
}
