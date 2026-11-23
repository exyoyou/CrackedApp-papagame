package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class i {

    public static final class b extends WechatResp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3009a;

        public b(Bundle bundle) {
            a(bundle);
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final int a() {
            return 19;
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final void b(Bundle bundle) {
            super.b(bundle);
            bundle.putString("_launch_wxminiprogram_ext_msg", this.f3009a);
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final void a(Bundle bundle) {
            super.a(bundle);
            this.f3009a = bundle.getString("_launch_wxminiprogram_ext_msg");
        }
    }

    public static final class a extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3006b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3007c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f3008d = "";

        @Override // cn.sharesdk.wechat.utils.m
        public final int a() {
            return 19;
        }

        @Override // cn.sharesdk.wechat.utils.m
        public final boolean b() {
            String str = this.f3005a;
            if (str == null || str.length() == 0 || this.f3005a.length() > 10240) {
                SSDKLog.b().a("checkArgs fail, userName is invalid", new Object[0]);
                return false;
            }
            int i10 = this.f3007c;
            if (i10 >= 0 && i10 <= 2) {
                return true;
            }
            SSDKLog.b().a("checkArgs fail", "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW");
            return false;
        }

        @Override // cn.sharesdk.wechat.utils.m
        public final void b(Bundle bundle) {
            super.b(bundle);
            bundle.putString("_launch_wxminiprogram_username", this.f3005a);
            bundle.putString("_launch_wxminiprogram_path", this.f3006b);
            bundle.putInt("_launch_wxminiprogram_type", this.f3007c);
            bundle.putString("_launch_wxminiprogram_extData", this.f3008d);
        }
    }
}
