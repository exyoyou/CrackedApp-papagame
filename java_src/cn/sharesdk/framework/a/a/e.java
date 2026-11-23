package cn.sharesdk.framework.a.a;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.utils.SharePrefrenceHelper;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f2521b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharePrefrenceHelper f2522a;

    private e() {
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.f2522a = sharePrefrenceHelper;
        sharePrefrenceHelper.open("share_sdk", 1);
    }

    public static e a() {
        if (f2521b == null) {
            f2521b = new e();
        }
        return f2521b;
    }

    public long b() {
        return this.f2522a.getLong("service_time");
    }

    public boolean c() {
        String string = this.f2522a.getString("upload_device_info");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        return Boolean.parseBoolean(string);
    }

    public boolean d() {
        String string = this.f2522a.getString("upload_user_info");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        return Boolean.parseBoolean(string);
    }

    public boolean e() {
        String string = this.f2522a.getString("trans_short_link");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return Boolean.parseBoolean(string);
    }

    public int f() {
        String string = this.f2522a.getString("upload_share_content");
        if ("true".equals(string)) {
            return 1;
        }
        return "false".equals(string) ? -1 : 0;
    }

    public void g(String str) {
        this.f2522a.putString("buffered_snsconf_" + MobSDK.getAppkey(), str);
    }

    public Long h() {
        return Long.valueOf(this.f2522a.getLong("device_time"));
    }

    public boolean i() {
        return this.f2522a.getBoolean("connect_server");
    }

    public Long j() {
        return Long.valueOf(this.f2522a.getLong("connect_server_time"));
    }

    public boolean k() {
        return this.f2522a.getBoolean("sns_info_buffered");
    }

    public Object l(String str) {
        return this.f2522a.get(str);
    }

    public void b(String str) {
        this.f2522a.putString("upload_device_info", str);
    }

    public String g() {
        return this.f2522a.getString("buffered_snsconf_" + MobSDK.getAppkey());
    }

    public String h(String str) {
        return this.f2522a.getString(str);
    }

    public boolean i(String str) {
        return this.f2522a.getBoolean(str);
    }

    public long j(String str) {
        return this.f2522a.getLong(str);
    }

    public int k(String str) {
        return this.f2522a.getInt(str);
    }

    public void b(boolean z10) {
        this.f2522a.putBoolean("no_use_gpp", Boolean.valueOf(z10));
    }

    public void a(String str) {
        this.f2522a.putString("trans_short_link", str);
    }

    public void b(long j10) {
        this.f2522a.putLong("connect_server_time", Long.valueOf(j10));
    }

    public void c(String str) {
        this.f2522a.putString("upload_user_info", str);
    }

    public void d(String str) {
        this.f2522a.putString("upload_share_content", str);
    }

    public void e(String str) {
        this.f2522a.putString("open_login_plus", str);
    }

    public void f(String str) {
        this.f2522a.putString("open_sina_link_card", str);
    }

    public void a(boolean z10) {
        this.f2522a.putBoolean("gpp_ver_sent", Boolean.valueOf(z10));
    }

    public void c(boolean z10) {
        this.f2522a.putBoolean("connect_server", Boolean.valueOf(z10));
    }

    public void d(boolean z10) {
        this.f2522a.putBoolean("sns_info_buffered", Boolean.valueOf(z10));
    }

    public void a(long j10) {
        this.f2522a.putLong("device_time", Long.valueOf(j10));
    }

    public void a(String str, String str2) {
        this.f2522a.putString(str, str2);
    }

    public void a(String str, Long l10) {
        this.f2522a.putLong(str, l10);
    }

    public void a(String str, int i10) {
        this.f2522a.putInt(str, Integer.valueOf(i10));
    }

    public void a(String str, Object obj) {
        this.f2522a.put(str, obj);
    }
}
