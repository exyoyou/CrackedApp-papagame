package com.xinzhu.overmind.client;

import com.xinzhu.overmind.Overmind;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f89278a = 100;

    public static String a() {
        return Overmind.get().getMainAuthorityPrefix() + ".overmind.BindProvider";
    }

    public static String b() {
        return String.format(Locale.CHINA, "%s.overmind.plugin_monitor", Overmind.get().getPluginAuthorityPrefix());
    }

    public static String c(int i10) {
        return String.format(Locale.CHINA, "%s.stub_content_provider_%d", Overmind.get().getPluginAuthorityPrefix(), Integer.valueOf(i10));
    }

    public static String d(int i10, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z10 ? Overmind.getPluginPkg() : Overmind.getMainPkg());
        sb2.append(":p");
        sb2.append(i10);
        return sb2.toString();
    }

    public static String e(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubActivity$P%d", Integer.valueOf(i10));
    }

    public static String f(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubActivityLandscape$P%d", Integer.valueOf(i10));
    }

    public static String g(int i10) {
        return String.format(Locale.CHINA, "%s.stub_content_provider_%d", Overmind.get().getMainAuthorityPrefix(), Integer.valueOf(i10));
    }

    public static String h() {
        return Overmind.get().getMainAuthorityPrefix() + ".overmind.FileProvider";
    }

    public static String i(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubFloatingActivity$P%d", Integer.valueOf(i10));
    }

    public static String j(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubFloatingActivityLandscape$P%d", Integer.valueOf(i10));
    }

    public static String k(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubJobService$P%d", Integer.valueOf(i10));
    }

    public static String l() {
        return Overmind.get().getMainAuthorityPrefix() + ".stub_receiver";
    }

    public static String m(int i10) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubService$P%d", Integer.valueOf(i10));
    }

    public static boolean n(String str) {
        return a().equals(str) || str.contains("stub_content_provider_");
    }
}
