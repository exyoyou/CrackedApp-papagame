package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.kuaishou.weapon.p0.t;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import com.xinzhu.overmind.server.os.f;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class SinaWeibo extends Platform {
    public static final String NAME = "SinaWeibo";
    public static volatile boolean initFlag;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2744d;

    @Override // cn.sharesdk.framework.Platform
    protected boolean checkAuthorize(int i10, Object obj) {
        a aVarA = a.a(this);
        aVarA.c(this.f2398db.getToken());
        aVarA.a(this.f2741a, this.f2742b);
        aVarA.a(this.f2743c);
        aVarA.c();
        if (i10 == 9 || isAuthValid() || c()) {
            return true;
        }
        innerAuthorize(i10, obj);
        return false;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
        final a aVarA = a.a(this);
        aVarA.a(this.f2741a, this.f2742b);
        aVarA.a(this.f2743c);
        aVarA.a(strArr);
        aVarA.a(new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.SinaWeibo.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) SinaWeibo.this).listener != null) {
                    ((Platform) SinaWeibo.this).listener.onCancel(SinaWeibo.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                long j10;
                String string = bundle.getString("uid");
                String string2 = bundle.getString("access_token");
                String string3 = bundle.getString("expires_in");
                String string4 = bundle.getString("refresh_token");
                if (bundle.containsKey("username")) {
                    ((Platform) SinaWeibo.this).f2398db.put("nickname", bundle.getString("userName"));
                }
                ((Platform) SinaWeibo.this).f2398db.putToken(string2);
                try {
                    j10 = ResHelper.parseLong(string3);
                } catch (Throwable unused) {
                    j10 = 0;
                }
                ((Platform) SinaWeibo.this).f2398db.putExpiresIn(j10);
                ((Platform) SinaWeibo.this).f2398db.put("refresh_token", string4);
                ((Platform) SinaWeibo.this).f2398db.putUserId(string);
                aVarA.c(string2);
                SinaWeibo.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) SinaWeibo.this).listener != null) {
                    ((Platform) SinaWeibo.this).listener.onError(SinaWeibo.this, 1, th);
                }
            }
        }, isSSODisable());
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2) {
        try {
            HashMap<String, Object> mapA = a.a(this).a(str, str2, map, map2);
            if (mapA != null && mapA.size() > 0) {
                if (!mapA.containsKey("error_code") || ((Integer) mapA.get("error_code")).intValue() == 0) {
                    PlatformActionListener platformActionListener = this.listener;
                    if (platformActionListener != null) {
                        platformActionListener.onComplete(this, i10, mapA);
                        return;
                    }
                    return;
                }
                if (this.listener != null) {
                    this.listener.onError(this, i10, new Throwable(new Hashon().fromHashMap(mapA)));
                    return;
                }
                return;
            }
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, i10, new Throwable());
            }
        } catch (Throwable th) {
            this.listener.onError(this, i10, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doShare(Platform.ShareParams shareParams) {
        SSDKLog.b().a("Weibo start Share with Appkey:" + this.f2741a + ",appSecret:" + this.f2742b + ",redirectUrl:" + this.f2743c, new Object[0]);
        SSDKLog sSDKLogB = SSDKLog.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Weibo ShareParams:");
        sb2.append(shareParams.toString());
        sSDKLogB.a(sb2.toString(), new Object[0]);
        a aVarA = a.a(this);
        aVarA.a(this.f2741a, this.f2742b);
        if (this.f2744d && this.isClientValid) {
            try {
                aVarA.a(shareParams, this.listener);
                return;
            } catch (Throwable th) {
                this.listener.onError(this, 9, th);
                return;
            }
        }
        try {
            aVarA.b(shareParams, this.listener);
        } catch (Throwable th2) {
            this.listener.onError(this, 9, th2);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map) {
        Object obj;
        StringBuilder sb2;
        StringBuilder sb3;
        HashMap<String, Object> map2 = new HashMap<>();
        if (i10 == 2) {
            map2.put("type", "FOLLOWING");
        } else if (i10 == 10) {
            map2.put("type", "FRIENDS");
        } else {
            if (i10 != 11) {
                return null;
            }
            map2.put("type", "FOLLOWERS");
        }
        map2.put("snsplat", Integer.valueOf(getPlatformId()));
        map2.put("snsuid", this.f2398db.getUserId());
        int i11 = Integer.parseInt(String.valueOf(map.get("current_cursor")));
        int i12 = Integer.parseInt(String.valueOf(map.get("total_number")));
        if (i12 == 0 || (obj = map.get("users")) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<HashMap> arrayList2 = (ArrayList) obj;
        if (arrayList2.size() <= 0) {
            return null;
        }
        for (HashMap map3 : arrayList2) {
            if (map3 != null) {
                HashMap map4 = new HashMap();
                map4.put("snsuid", String.valueOf(map3.get("id")));
                map4.put("nickname", String.valueOf(map3.get("screen_name")));
                map4.put("icon", String.valueOf(map3.get("avatar_hd")));
                if (String.valueOf(map3.get("verified")).equals("true")) {
                    map4.put("secretType", "1");
                } else {
                    map4.put("secretType", "0");
                }
                map4.put("secret", String.valueOf(map3.get("verified_reason")));
                String strValueOf = String.valueOf(map3.get("gender"));
                if (strValueOf.equals(t.f74888m)) {
                    map4.put("gender", "0");
                } else if (strValueOf.equals(f.TAG)) {
                    map4.put("gender", "1");
                } else {
                    map4.put("gender", "2");
                }
                map4.put("snsUserUrl", "http://weibo.com/" + String.valueOf(map3.get("profile_url")));
                map4.put("resume", String.valueOf(map3.get(b.f89370k)));
                map4.put("followerCount", String.valueOf(map3.get("followers_count")));
                map4.put("favouriteCount", String.valueOf(map3.get("friends_count")));
                map4.put("shareCount", String.valueOf(map3.get("statuses_count")));
                map4.put("snsregat", String.valueOf(ResHelper.dateToLong(String.valueOf(map3.get("created_at")))));
                arrayList.add(map4);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        if (10 == i10) {
            int i13 = i11 + 1;
            if (((Integer) map.get("page_count")).intValue() * i13 >= i12) {
                sb3 = new StringBuilder();
                sb3.append(i11);
                sb3.append("_true");
            } else {
                sb3 = new StringBuilder();
                sb3.append(i13);
                sb3.append("_false");
            }
            map2.put("nextCursor", sb3.toString());
        } else {
            int size = i11 + arrayList.size();
            if (size >= i12) {
                sb2 = new StringBuilder();
                sb2.append(i12);
                sb2.append("_true");
            } else {
                sb2 = new StringBuilder();
                sb2.append(size);
                sb2.append("_false");
            }
            map2.put("nextCursor", sb2.toString());
        }
        map2.put("list", arrayList);
        return map2;
    }

    @Override // cn.sharesdk.framework.Platform
    protected j.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> map) {
        j.a aVar = new j.a();
        aVar.f2563b = shareParams.getText();
        if (map != null) {
            aVar.f2562a = String.valueOf(map.get("id"));
            aVar.f2565d.add(String.valueOf(map.get("original_pic")));
            aVar.f2568g = map;
        }
        return aVar;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void follow(String str) {
        try {
            HashMap<String, Object> mapE = a.a(this).e(str);
            if (mapE == null) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 6, new Throwable());
                    return;
                }
                return;
            }
            if (!mapE.containsKey("error_code") || ((Integer) mapE.get("error_code")).intValue() == 0) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onComplete(this, 6, mapE);
                    return;
                }
                return;
            }
            if (this.listener != null) {
                this.listener.onError(this, 6, new Throwable(new Hashon().fromHashMap(mapE)));
            }
        } catch (Throwable th) {
            this.listener.onError(this, 6, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getBilaterals(int i10, int i11, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> mapC = a.a(this).c(i10, i11, str);
            if (mapC == null || mapC.containsKey("error_code")) {
                return null;
            }
            mapC.put("page_count", Integer.valueOf(i10));
            mapC.put("current_cursor", Integer.valueOf(i11));
            return filterFriendshipInfo(10, mapC);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowers(int i10, int i11, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> mapD = a.a(this).d(i10, i11, str);
            if (mapD == null || mapD.containsKey("error_code")) {
                return null;
            }
            mapD.put("current_cursor", Integer.valueOf(i11));
            return filterFriendshipInfo(11, mapD);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowings(int i10, int i11, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> mapB = a.a(this).b(i10, i11, str);
            if (mapB == null || mapB.containsKey("error_code")) {
                return null;
            }
            mapB.put("current_cursor", Integer.valueOf(i11));
            return filterFriendshipInfo(2, mapB);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void getFriendList(int i10, int i11, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 2, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> mapB = a.a(this).b(i10, i11, str);
            if (mapB == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 2, new Throwable());
                    return;
                }
                return;
            }
            if (!mapB.containsKey("error_code") || ((Integer) mapB.get("error_code")).intValue() == 0) {
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onComplete(this, 2, mapB);
                    return;
                }
                return;
            }
            if (this.listener != null) {
                this.listener.onError(this, 2, new Throwable(new Hashon().fromHashMap(mapB)));
            }
        } catch (Throwable th) {
            this.listener.onError(this, 2, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public String getName() {
        return NAME;
    }

    @Override // cn.sharesdk.framework.Platform
    protected int getPlatformId() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return true;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void initDevInfo(String str) {
        this.f2741a = getDevinfo("AppKey");
        this.f2742b = getDevinfo("AppSecret");
        this.f2743c = getDevinfo("RedirectUrl");
        this.f2744d = !"false".equals(getDevinfo("ShareByAppClient"));
    }

    @Override // cn.sharesdk.framework.Platform
    public void isClientValid(ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            a.a(this).a(shareSDKCallback);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(Boolean.FALSE);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void setNetworkDevinfo() {
        this.f2741a = getNetworkDevinfo(u.b.f97422h, "AppKey");
        this.f2742b = getNetworkDevinfo("app_secret", "AppSecret");
        this.f2743c = getNetworkDevinfo("redirect_uri", "RedirectUrl");
    }

    @Override // cn.sharesdk.framework.Platform
    protected void timeline(int i10, int i11, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 7, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> mapA = a.a(this).a(i10, i11, str);
            if (mapA == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 7, new Throwable());
                    return;
                }
                return;
            }
            if (!mapA.containsKey("error_code") || ((Integer) mapA.get("error_code")).intValue() == 0) {
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onComplete(this, 7, mapA);
                    return;
                }
                return;
            }
            if (this.listener != null) {
                this.listener.onError(this, 7, new Throwable(new Hashon().fromHashMap(mapA)));
            }
        } catch (Throwable th) {
            this.listener.onError(this, 7, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void userInfor(String str) {
        boolean z10;
        boolean z11 = true;
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.getUserId();
            z10 = true;
        } else {
            z10 = false;
        }
        if (TextUtils.isEmpty(str)) {
            str = this.f2398db.get("nickname");
        } else {
            z11 = z10;
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> mapD = a.a(this).d(str);
            if (mapD == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 8, new Throwable());
                    return;
                }
                return;
            }
            if (mapD.containsKey("error_code") && ((Integer) mapD.get("error_code")).intValue() != 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 8, new Throwable(new Hashon().fromHashMap(mapD)));
                    return;
                }
                return;
            }
            if (z11) {
                this.f2398db.putUserId(String.valueOf(mapD.get("id")));
                this.f2398db.put("nickname", String.valueOf(mapD.get("screen_name")));
                this.f2398db.put("icon", String.valueOf(mapD.get("avatar_hd")));
                if (String.valueOf(mapD.get("verified")).equals("true")) {
                    this.f2398db.put("secretType", "1");
                } else {
                    this.f2398db.put("secretType", "0");
                }
                this.f2398db.put("secret", String.valueOf(mapD.get("verified_reason")));
                String strValueOf = String.valueOf(mapD.get("gender"));
                if (strValueOf.equals(t.f74888m)) {
                    this.f2398db.put("gender", "0");
                } else if (strValueOf.equals(f.TAG)) {
                    this.f2398db.put("gender", "1");
                } else {
                    this.f2398db.put("gender", "2");
                }
                this.f2398db.put("snsUserUrl", "http://weibo.com/" + String.valueOf(mapD.get("profile_url")));
                this.f2398db.put("resume", String.valueOf(mapD.get(b.f89370k)));
                this.f2398db.put("followerCount", String.valueOf(mapD.get("followers_count")));
                this.f2398db.put("favouriteCount", String.valueOf(mapD.get("friends_count")));
                this.f2398db.put("shareCount", String.valueOf(mapD.get("statuses_count")));
                this.f2398db.put("snsregat", String.valueOf(ResHelper.dateToLong(String.valueOf(mapD.get("created_at")))));
            }
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onComplete(this, 8, mapD);
            }
        } catch (Throwable th) {
            this.listener.onError(this, 8, th);
        }
    }

    private boolean c() {
        if (TextUtils.isEmpty(getDb().get("refresh_token"))) {
            return false;
        }
        a aVarA = a.a(this);
        aVarA.a(this.f2741a, this.f2742b);
        aVarA.a(this.f2743c);
        return aVarA.a();
    }
}
