package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.Hashon;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Platform f3015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Platform.ShareParams f3016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PlatformActionListener f3017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AuthorizeListener f3018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f3019e;

    public k(Platform platform) {
        this.f3015a = platform;
    }

    public void a(AuthorizeListener authorizeListener) {
        this.f3018d = authorizeListener;
    }

    public Platform b() {
        return this.f3015a;
    }

    public PlatformActionListener c() {
        return this.f3017c;
    }

    public void a(Platform.ShareParams shareParams, PlatformActionListener platformActionListener) {
        this.f3016b = shareParams;
        this.f3017c = platformActionListener;
    }

    public void a(h hVar) {
        this.f3019e = hVar;
    }

    public void a(WechatResp wechatResp) {
        AuthorizeListener authorizeListener;
        PlatformActionListener platformActionListener;
        PlatformActionListener platformActionListener2;
        int i10 = wechatResp.f2971g;
        if (i10 == -4) {
            HashMap map = new HashMap();
            map.put("errCode", Integer.valueOf(wechatResp.f2971g));
            map.put("errStr", wechatResp.f2972h);
            map.put("transaction", wechatResp.f2973i);
            Throwable th = new Throwable(new Hashon().fromHashMap(map));
            if (wechatResp.a() == 1 && (authorizeListener = this.f3018d) != null) {
                authorizeListener.onError(th);
                return;
            }
            return;
        }
        if (i10 == -3) {
            HashMap map2 = new HashMap();
            map2.put("errCode", Integer.valueOf(wechatResp.f2971g));
            map2.put("errStr", wechatResp.f2972h);
            map2.put("transaction", wechatResp.f2973i);
            Throwable th2 = new Throwable(new Hashon().fromHashMap(map2));
            int iA = wechatResp.a();
            if (iA != 1) {
                if (iA == 2 && (platformActionListener = this.f3017c) != null) {
                    platformActionListener.onError(this.f3015a, 9, th2);
                    return;
                }
                return;
            }
            AuthorizeListener authorizeListener2 = this.f3018d;
            if (authorizeListener2 != null) {
                authorizeListener2.onError(th2);
                return;
            }
            return;
        }
        if (i10 == -2) {
            int iA2 = wechatResp.a();
            if (iA2 != 1) {
                if (iA2 == 2 && (platformActionListener2 = this.f3017c) != null) {
                    platformActionListener2.onCancel(this.f3015a, 9);
                    return;
                }
                return;
            }
            AuthorizeListener authorizeListener3 = this.f3018d;
            if (authorizeListener3 != null) {
                authorizeListener3.onCancel();
                return;
            }
            return;
        }
        if (i10 != 0) {
            HashMap map3 = new HashMap();
            map3.put("req", wechatResp.getClass().getSimpleName());
            map3.put("errCode", Integer.valueOf(wechatResp.f2971g));
            map3.put("errStr", wechatResp.f2972h);
            map3.put("transaction", wechatResp.f2973i);
            Throwable th3 = new Throwable(new Hashon().fromHashMap(map3));
            PlatformActionListener platformActionListener3 = this.f3017c;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this.f3015a, 9, th3);
            }
            AuthorizeListener authorizeListener4 = this.f3018d;
            if (authorizeListener4 != null) {
                authorizeListener4.onError(th3);
                return;
            }
            return;
        }
        int iA3 = wechatResp.a();
        if (iA3 != 1) {
            if (iA3 == 2 && this.f3017c != null) {
                HashMap<String, Object> map4 = new HashMap<>();
                map4.put("ShareParams", this.f3016b);
                this.f3017c.onComplete(this.f3015a, 9, map4);
                return;
            }
            return;
        }
        if (this.f3018d != null) {
            Bundle bundle = new Bundle();
            wechatResp.b(bundle);
            this.f3019e.a(bundle, this.f3018d);
        }
    }

    public Platform.ShareParams a() {
        return this.f3016b;
    }
}
