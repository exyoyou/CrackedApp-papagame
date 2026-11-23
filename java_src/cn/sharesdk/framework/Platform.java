package cn.sharesdk.framework;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.k;
import com.join.mgps.Util.v0;
import com.mob.MobSDK;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Platform {
    public static final int ACTION_AUTHORIZING = 1;
    protected static final int ACTION_CUSTOMER = 655360;
    public static final int ACTION_FOLLOWING_USER = 6;
    protected static final int ACTION_GETTING_BILATERAL_LIST = 10;
    protected static final int ACTION_GETTING_FOLLOWER_LIST = 11;
    public static final int ACTION_GETTING_FRIEND_LIST = 2;
    public static final int ACTION_SENDING_DIRECT_MESSAGE = 5;
    public static final int ACTION_SHARE = 9;
    public static final int ACTION_TIMELINE = 7;
    public static final int ACTION_USER_INFOR = 8;
    public static final int CUSTOMER_ACTION_MASK = 65535;
    public static final int DY_MIXFILE = 23;
    public static final int GGP_REFUSE = 21;
    public static final int INSTAGRAM_FRIEND = 13;
    public static final int KAKAO_COMMERCE_TEMPLATE = 18;
    public static final int KAKAO_CUSTOM_TEMPLATE = 20;
    public static final int KAKAO_FEED_TEMPLATE = 16;
    public static final int KAKAO_TEXT_TEMPLATE = 19;
    public static final int KAKAO_URL_TEMPLATE = 17;
    public static final int OPEN_QQMINIPROGRAM = 22;
    public static final int OPEN_WXMINIPROGRAM = 12;
    public static final int QQ_MINI_PROGRAM = 15;
    public static final int SHARE_APPS = 7;
    public static final int SHARE_DYIM_IMG = 24;
    public static final int SHARE_DYIM_WEBPAGE = 25;
    public static final int SHARE_EMOJI = 9;
    public static final int SHARE_FILE = 8;
    public static final int SHARE_IMAGE = 2;
    public static final int SHARE_LINKCARD = 14;
    public static final int SHARE_MUSIC = 5;
    public static final int SHARE_TEXT = 1;
    public static final int SHARE_VIDEO = 6;
    public static final int SHARE_WEBPAGE = 4;
    public static final int SHARE_WXMINIPROGRAM = 11;
    public static final int SHARE_ZHIFUBAO = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Platform f2395c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f2396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2397b = new Object();

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    protected final PlatformDb f2398db;
    protected volatile boolean isClientValid;
    protected PlatformActionListener listener;
    protected boolean needAuthCode;
    protected String pkgName;
    protected final PlatformActionListener uIListener;

    public static class ShareParams extends InnerShareParams {
        public ShareParams() {
        }

        public ShareParams(HashMap<String, Object> map) {
            super(map);
        }

        public ShareParams(String str) {
            super(str);
        }
    }

    public Platform() {
        g gVar = new g(this);
        this.f2396a = gVar;
        this.f2398db = gVar.g();
        this.listener = this.f2396a.i();
        this.uIListener = new PlatformActionListener() { // from class: cn.sharesdk.framework.Platform.1
            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onCancel(final Platform platform, final int i10) {
                if (Platform.this.listener == null) {
                    return;
                }
                try {
                    if (Looper.getMainLooper() == Looper.myLooper()) {
                        Platform.this.listener.onCancel(platform, i10);
                    } else {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.framework.Platform.1.3
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                Platform.this.listener.onCancel(platform, i10);
                                return false;
                            }
                        });
                    }
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onComplete(final Platform platform, final int i10, final HashMap<String, Object> map) {
                if (Platform.this.listener == null) {
                    return;
                }
                try {
                    if (Looper.getMainLooper() == Looper.myLooper()) {
                        Platform.this.listener.onComplete(platform, i10, map);
                    } else {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.framework.Platform.1.2
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                Platform.this.listener.onComplete(platform, i10, map);
                                return false;
                            }
                        });
                    }
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onError(final Platform platform, final int i10, final Throwable th) {
                if (Platform.this.listener == null) {
                    return;
                }
                try {
                    if (Looper.getMainLooper() == Looper.myLooper()) {
                        Platform.this.listener.onError(platform, i10, th);
                    } else {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.framework.Platform.1.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                Platform.this.listener.onError(platform, i10, th);
                                return false;
                            }
                        });
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        };
    }

    public static Platform getDefaultPlatform() {
        if (f2395c == null) {
            f2395c = new Platform() { // from class: cn.sharesdk.framework.Platform.9

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final Throwable f2425a = new Throwable("Privacy policy is not accepted Use default platform");

                @Override // cn.sharesdk.framework.Platform
                protected boolean checkAuthorize(int i10, Object obj) {
                    return true;
                }

                @Override // cn.sharesdk.framework.Platform
                protected void doAuthorize(String[] strArr) {
                    PlatformActionListener platformActionListener = this.listener;
                    if (platformActionListener != null) {
                        platformActionListener.onError(this, 1, this.f2425a);
                    }
                }

                @Override // cn.sharesdk.framework.Platform
                protected void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2) {
                }

                @Override // cn.sharesdk.framework.Platform
                protected void doShare(ShareParams shareParams) {
                    PlatformActionListener platformActionListener = this.listener;
                    if (platformActionListener != null) {
                        platformActionListener.onError(this, 9, this.f2425a);
                    }
                }

                @Override // cn.sharesdk.framework.Platform
                protected HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map) {
                    return null;
                }

                @Override // cn.sharesdk.framework.Platform
                protected cn.sharesdk.framework.a.b.j.a filterShareContent(ShareParams shareParams, HashMap<String, Object> map) {
                    return null;
                }

                @Override // cn.sharesdk.framework.Platform
                protected void follow(String str) {
                }

                @Override // cn.sharesdk.framework.Platform
                protected HashMap<String, Object> getBilaterals(int i10, int i11, String str) {
                    return null;
                }

                @Override // cn.sharesdk.framework.Platform
                protected HashMap<String, Object> getFollowers(int i10, int i11, String str) {
                    return null;
                }

                @Override // cn.sharesdk.framework.Platform
                protected HashMap<String, Object> getFollowings(int i10, int i11, String str) {
                    return null;
                }

                @Override // cn.sharesdk.framework.Platform
                protected void getFriendList(int i10, int i11, String str) {
                }

                @Override // cn.sharesdk.framework.Platform
                public String getName() {
                    return v0.f50057a;
                }

                @Override // cn.sharesdk.framework.Platform
                protected int getPlatformId() {
                    return -1;
                }

                @Override // cn.sharesdk.framework.Platform
                public int getVersion() {
                    return -1;
                }

                @Override // cn.sharesdk.framework.Platform
                public boolean hasShareCallback() {
                    return false;
                }

                @Override // cn.sharesdk.framework.Platform
                protected void initDevInfo(String str) {
                }

                @Override // cn.sharesdk.framework.Platform
                protected void setNetworkDevinfo() {
                }

                @Override // cn.sharesdk.framework.Platform
                protected void timeline(int i10, int i11, String str) {
                }

                @Override // cn.sharesdk.framework.Platform
                protected void userInfor(String str) {
                    PlatformActionListener platformActionListener = this.listener;
                    if (platformActionListener != null) {
                        platformActionListener.onError(this, 8, this.f2425a);
                    }
                }
            };
        }
        return f2395c;
    }

    public void SSOSetting(boolean z10) {
        this.f2396a.a(z10);
    }

    protected void afterRegister(int i10, Object obj) {
        this.f2396a.b(i10, obj);
    }

    public void authorize() {
        authorize(null);
    }

    protected abstract boolean checkAuthorize(int i10, Object obj);

    protected void copyDevinfo(String str, String str2) {
        ShareSDK.a(str, str2);
    }

    protected void copyNetworkDevinfo(int i10, int i11) {
        ShareSDK.a(i10, i11);
    }

    public void customerProtocol(String str, String str2, short s10, HashMap<String, Object> map, HashMap<String, String> map2) {
        this.f2396a.a(str, str2, s10, map, map2);
    }

    protected abstract void doAuthorize(String[] strArr);

    protected abstract void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2);

    protected abstract void doShare(ShareParams shareParams);

    protected abstract HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map);

    protected abstract cn.sharesdk.framework.a.b.j.a filterShareContent(ShareParams shareParams, HashMap<String, Object> map);

    protected String filterShareContent(ShareParams shareParams) {
        return null;
    }

    protected abstract void follow(String str);

    public void followFriend(String str) {
        this.f2396a.b(str);
    }

    protected abstract HashMap<String, Object> getBilaterals(int i10, int i11, String str);

    public PlatformDb getDb() {
        return this.f2398db;
    }

    public String getDevinfo(String str) {
        return getDevinfo(getName(), str);
    }

    protected abstract HashMap<String, Object> getFollowers(int i10, int i11, String str);

    protected abstract HashMap<String, Object> getFollowings(int i10, int i11, String str);

    protected abstract void getFriendList(int i10, int i11, String str);

    public int getId() {
        return this.f2396a.a();
    }

    public abstract String getName();

    protected String getNetworkDevinfo(String str, String str2) {
        return getNetworkDevinfo(getPlatformId(), str, str2);
    }

    public PlatformActionListener getPlatformActionListener() {
        return this.f2396a.c();
    }

    protected abstract int getPlatformId();

    public void getShortLintk(String str, boolean z10, ShareSDKCallback<String> shareSDKCallback) {
        this.f2396a.a(str, z10, shareSDKCallback);
    }

    public int getSortId() {
        return this.f2396a.b();
    }

    public void getTimeLine(String str, int i10, int i11) {
        this.f2396a.a(str, i10, i11);
    }

    public abstract int getVersion();

    public abstract boolean hasShareCallback();

    protected abstract void initDevInfo(String str);

    protected void innerAuthorize(int i10, Object obj) {
        this.f2396a.a(i10, obj);
    }

    protected void innerShowUser(final String str) {
        isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.8
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                Platform.this.isClientValid = bool.booleanValue();
                Platform.this.f2396a.c(str);
            }
        });
    }

    public boolean isAuthValid() {
        return this.f2396a.d();
    }

    @Deprecated
    public boolean isClientValid() {
        k.a(new k.a() { // from class: cn.sharesdk.framework.Platform.2
            @Override // cn.sharesdk.framework.utils.k.a
            public void a() throws Throwable {
                Platform.this.isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.2.1
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(Boolean bool) {
                        synchronized (Platform.this.f2397b) {
                            Platform.this.isClientValid = bool != null && bool.booleanValue();
                            Platform.this.f2397b.notifyAll();
                        }
                    }
                });
            }
        });
        synchronized (this.f2397b) {
            try {
                this.f2397b.wait(1000L);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        return this.isClientValid;
    }

    public boolean isSSODisable() {
        return this.f2396a.e();
    }

    public void listFriend(int i10, int i11, String str) {
        this.f2396a.a(i10, i11, str);
    }

    public void needAuthCode(boolean z10) {
        this.needAuthCode = z10;
    }

    public void removeAccount(boolean z10) {
        this.f2396a.h();
        ShareSDK.removeCookieOnAuthorize(z10);
    }

    protected abstract void setNetworkDevinfo();

    public void setPlatformActionListener(PlatformActionListener platformActionListener) {
        this.f2396a.a(platformActionListener);
    }

    public void share(final ShareParams shareParams) {
        cn.sharesdk.framework.utils.i.a();
        isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.6
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                Platform.this.isClientValid = bool.booleanValue();
                Platform.this.f2396a.b(shareParams);
            }
        });
    }

    public void showUser(final String str) {
        isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.7
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                Platform.this.isClientValid = bool.booleanValue();
                if ("Wechat".equals(Platform.this.getName())) {
                    Platform platform = Platform.this;
                    if (platform.needAuthCode) {
                        platform.getDb().putAuthCode("");
                    }
                }
                Platform.this.f2396a.c(str);
            }
        });
    }

    public void subscribeAuth(final ShareParams shareParams) {
        isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.5
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                Platform.this.isClientValid = bool.booleanValue();
                Platform.this.f2396a.a(shareParams);
            }
        });
    }

    protected abstract void timeline(int i10, int i11, String str);

    protected String uploadImageToFileServer(String str) {
        return this.f2396a.d(str);
    }

    protected abstract void userInfor(String str);

    void a() {
        this.f2396a.a(false);
        this.f2396a.a(getName());
    }

    public void authorize(final String[] strArr) {
        cn.sharesdk.framework.utils.i.a();
        isClientValid(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.Platform.4
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                Platform.this.isClientValid = bool.booleanValue();
                Platform.this.f2396a.a(strArr);
            }
        });
    }

    boolean b() {
        return this.f2396a.f();
    }

    public String getDevinfo(String str, String str2) {
        return ShareSDK.getDevinfo(str, str2);
    }

    protected String getNetworkDevinfo(int i10, String str, String str2) {
        return this.f2396a.a(i10, str, str2);
    }

    public String getShortLintk(String str, boolean z10, HashMap<String, String> map) {
        return this.f2396a.a(str, z10, map);
    }

    protected String uploadImageToFileServer(Bitmap bitmap) {
        return this.f2396a.a(bitmap);
    }

    public void isClientValid(final ShareSDKCallback<Boolean> shareSDKCallback) {
        if (shareSDKCallback == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(this.pkgName)) {
                shareSDKCallback.onCallback(Boolean.FALSE);
            } else {
                DH.requester(MobSDK.getContext()).getPInfoForce(true, this.pkgName, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.framework.Platform.3
                    @Override // com.mob.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        try {
                            if (dHResponse.getPInfoForce(new int[0]) == null) {
                                shareSDKCallback.onCallback(Boolean.valueOf(cn.sharesdk.framework.utils.i.a(Platform.this.pkgName, 0) != null));
                            } else {
                                shareSDKCallback.onCallback(Boolean.TRUE);
                            }
                        } catch (Throwable th) {
                            SSDKLog.b().a("isClientValid" + th, new Object[0]);
                            shareSDKCallback.onCallback(Boolean.FALSE);
                        }
                    }
                });
            }
        } catch (Throwable unused) {
            shareSDKCallback.onCallback(Boolean.FALSE);
        }
    }
}
