package cn.sharesdk.framework;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.loopshare.MoblinkActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.mob.MobSDK;
import com.mob.commons.ForbThrowable;
import com.mob.commons.dialog.PolicyThrowable;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Platform f2642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PlatformDb f2643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f2644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2647f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2648g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2649h;

    public g(Platform platform) {
        this.f2642a = platform;
        String name = platform.getName();
        this.f2643b = new PlatformDb(name, platform.getVersion());
        a(name);
        this.f2644c = new e();
        c.a();
    }

    private String b(int i10) {
        if (i10 == 1) {
            return "ACTION_AUTHORIZING";
        }
        if (i10 == 2) {
            return "ACTION_GETTING_FRIEND_LIST";
        }
        switch (i10) {
            case 5:
                return "ACTION_SENDING_DIRECT_MESSAGE";
            case 6:
                return "ACTION_FOLLOWING_USER";
            case 7:
                return "ACTION_TIMELINE";
            case 8:
                return "ACTION_USER_INFOR";
            case 9:
                return "ACTION_SHARE";
            case 10:
                return "ACTION_GETTING_BILATERAL_LIST";
            case 11:
                return "ACTION_GETTING_FOLLOWER_LIST";
            default:
                return "ACTION_CUSTOMER";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        if (ShareSDK.b()) {
            this.f2648g = !"false".equals(a(this.f2642a.getPlatformId(), "covert_url", (String) null));
            this.f2642a.setNetworkDevinfo();
            return true;
        }
        try {
            ShareSDK.a(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.g.1
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(Boolean bool) {
                    if (bool.booleanValue()) {
                        g gVar = g.this;
                        String strA = gVar.a(gVar.f2642a.getPlatformId(), "covert_url", (String) null);
                        if (strA != null) {
                            strA = strA.trim();
                        }
                        g.this.f2648g = !"false".equals(strA);
                        g.this.f2642a.setNetworkDevinfo();
                    }
                }
            });
            return false;
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            return false;
        }
    }

    private String k() {
        StringBuilder sb2 = new StringBuilder();
        try {
            if ("TencentWeibo".equals(this.f2642a.getName())) {
                SSDKLog.b().c("user id %s ==>>", g().getUserName());
                sb2.append(Data.urlEncode(g().getUserName(), "utf-8"));
            } else {
                sb2.append(Data.urlEncode(g().getUserId(), "utf-8"));
            }
            sb2.append("|");
            sb2.append(Data.urlEncode(g().get("secretType"), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(g().get("gender"), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(g().get("birthday"), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(g().get("educationJSONArrayStr"), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(g().get("workJSONArrayStr"), "utf-8"));
        } catch (Throwable th) {
            SSDKLog.b().b(th);
        }
        return sb2.toString();
    }

    public boolean d() {
        return this.f2643b.isValid();
    }

    public boolean e() {
        return this.f2647f;
    }

    public boolean f() {
        return this.f2649h;
    }

    public PlatformDb g() {
        return this.f2643b;
    }

    public void h() {
        this.f2643b.removeAccount();
    }

    protected PlatformActionListener i() {
        return this.f2644c;
    }

    public PlatformActionListener c() {
        return this.f2644c.a();
    }

    public String d(String str) {
        return ShareSDK.a(str);
    }

    protected void c(final int i10, final Object obj) {
        new Thread(a(i10)) { // from class: cn.sharesdk.framework.g.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (!MobSDK.isForb() && a.a()) {
                        try {
                            int iIsAuth = MobSDK.isAuth();
                            if (iIsAuth == 1 || iIsAuth == 2) {
                                g.this.j();
                                SSDKLog.b().a("The user is using the privacy version without a popup newThreadJob 001");
                            }
                        } catch (Throwable th) {
                            g.this.j();
                            SSDKLog.b().a("The user is using the version before going to the second pop-up box newThreadJob 001 " + th);
                        }
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("newThreadJob  " + th2);
                }
            }
        }.start();
        new Thread() { // from class: cn.sharesdk.framework.g.6
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb()) {
                        g gVar = g.this;
                        gVar.a(gVar.f2644c, i10);
                        return;
                    }
                    try {
                        try {
                            int iIsAuth = MobSDK.isAuth();
                            if (iIsAuth == 1 || iIsAuth == 2) {
                                if (!a.a()) {
                                    g gVar2 = g.this;
                                    gVar2.b(gVar2.f2644c, i10);
                                } else if (g.this.f2642a.checkAuthorize(i10, obj)) {
                                    g.this.b(i10, obj);
                                    SSDKLog.b().a("The user is using the privacy version without a popup newThreadJob 002");
                                }
                            } else if (g.this.f2644c != null) {
                                g.this.f2644c.onError(g.this.f2642a, i10, new PolicyThrowable());
                            }
                        } catch (Throwable th) {
                            if (!a.a()) {
                                g gVar3 = g.this;
                                gVar3.b(gVar3.f2644c, i10);
                            } else if (g.this.f2642a.checkAuthorize(i10, obj)) {
                                g.this.b(i10, obj);
                            }
                            SSDKLog.b().a("The user is using the non-privacy version newThreadJob 002 " + th);
                        }
                    } catch (Throwable unused) {
                        ProvicyCanContinue.a().a(new ProvicyCanContinue.OnBusinessListener() { // from class: cn.sharesdk.framework.g.6.1
                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onContinue() {
                                if (a.a()) {
                                    Platform platform = g.this.f2642a;
                                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                    if (platform.checkAuthorize(i10, obj)) {
                                        AnonymousClass6 anonymousClass7 = AnonymousClass6.this;
                                        g.this.b(i10, obj);
                                    }
                                } else {
                                    g gVar4 = g.this;
                                    gVar4.b(gVar4.f2644c, i10);
                                }
                                SSDKLog.b().a("The user is using the framed privacy version newThreadJob 002");
                            }

                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onError(Throwable th2) {
                                if (g.this.f2644c != null) {
                                    g.this.f2644c.onError(g.this.f2642a, i10, th2);
                                }
                            }

                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onStop() {
                                if (g.this.f2644c != null) {
                                    g.this.f2644c.onError(g.this.f2642a, i10, new PolicyThrowable());
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("new Thread(getThreadName(action)) " + th2, new Object[0]);
                }
            }
        }.start();
    }

    public int b() {
        return this.f2646e;
    }

    protected void b(int i10, Object obj) {
        if (i10 == 1) {
            e eVar = this.f2644c;
            if (eVar != null) {
                eVar.onComplete(this.f2642a, 1, null);
                return;
            }
            return;
        }
        if (i10 != 2) {
            switch (i10) {
                case 6:
                    this.f2642a.follow((String) obj);
                    break;
                case 7:
                    Object[] objArr = (Object[]) obj;
                    this.f2642a.timeline(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), (String) objArr[2]);
                    break;
                case 8:
                    this.f2642a.userInfor(obj != null ? (String) obj : null);
                    break;
                case 9:
                    final Platform.ShareParams shareParams = (Platform.ShareParams) obj;
                    e eVar2 = this.f2644c;
                    if (eVar2 instanceof e) {
                        eVar2.a(this.f2642a, shareParams);
                    }
                    try {
                        if (shareParams.getLoopshareCustomParams().size() > 0 && shareParams.getLoopshareCustomParams() != null) {
                            if (this.f2642a.getName().equals("QQ")) {
                                if (!TextUtils.isEmpty(shareParams.getTitleUrl())) {
                                    ShareSDK.mobLinkGetMobID(shareParams.getLoopshareCustomParams(), new MoblinkActionListener() { // from class: cn.sharesdk.framework.g.3
                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onError(Throwable th) {
                                            if (g.this.f2644c != null) {
                                                g.this.f2644c.onError(g.this.f2642a, 9, th);
                                            }
                                        }

                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onResult(Object obj2) {
                                            if (TextUtils.isEmpty(Uri.parse(shareParams.getTitleUrl()).getEncodedQuery())) {
                                                shareParams.setTitleUrl(shareParams.getTitleUrl() + "?mobid=" + obj2);
                                            } else {
                                                shareParams.setTitleUrl(shareParams.getTitleUrl() + "&mobid=" + obj2);
                                            }
                                            new Thread() { // from class: cn.sharesdk.framework.g.3.1
                                                @Override // java.lang.Thread, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    g.this.f2642a.doShare(shareParams);
                                                }
                                            }.start();
                                        }
                                    });
                                } else if (this.f2644c != null) {
                                    this.f2644c.onError(this.f2642a, 9, new Throwable("TitleUrl cannot be empty if setLoopshareCustomParams is used in QQ"));
                                }
                            } else if (!TextUtils.isEmpty(shareParams.getUrl())) {
                                if (this.f2644c != null) {
                                    ShareSDK.mobLinkGetMobID(shareParams.getLoopshareCustomParams(), new MoblinkActionListener() { // from class: cn.sharesdk.framework.g.4
                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onError(Throwable th) {
                                            if (g.this.f2644c != null) {
                                                g.this.f2644c.onError(g.this.f2642a, 9, th);
                                            }
                                        }

                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onResult(Object obj2) {
                                            if (TextUtils.isEmpty(Uri.parse(shareParams.getUrl()).getEncodedQuery())) {
                                                shareParams.setUrl(shareParams.getUrl() + "?mobid=" + obj2);
                                            } else {
                                                shareParams.setUrl(shareParams.getUrl() + "&mobid=" + obj2);
                                            }
                                            new Thread() { // from class: cn.sharesdk.framework.g.4.1
                                                @Override // java.lang.Thread, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    g.this.f2642a.doShare(shareParams);
                                                }
                                            }.start();
                                        }
                                    });
                                }
                            } else if (this.f2644c != null) {
                                this.f2644c.onError(this.f2642a, 9, new Throwable("SetUrl cannot be empty if setLoopshareCustomParams is used"));
                            }
                        } else {
                            this.f2642a.doShare(shareParams);
                        }
                    } catch (Throwable th) {
                        SSDKLog.b().a("PlatformImpl platform.doshare() " + th, new Object[0]);
                        return;
                    }
                    break;
                default:
                    Object[] objArr2 = (Object[]) obj;
                    this.f2642a.doCustomerProtocol(String.valueOf(objArr2[0]), String.valueOf(objArr2[1]), i10, (HashMap) objArr2[2], (HashMap) objArr2[3]);
                    break;
            }
            return;
        }
        Object[] objArr3 = (Object[]) obj;
        this.f2642a.getFriendList(((Integer) objArr3[0]).intValue(), ((Integer) objArr3[1]).intValue(), (String) objArr3[2]);
    }

    public void a(String str) {
        try {
            this.f2645d = ResHelper.parseInt(String.valueOf(ShareSDK.getDevinfo(str, "Id")).trim());
        } catch (Throwable unused) {
            if (!(this.f2642a instanceof CustomPlatform)) {
                SSDKLog.b().a(this.f2642a.getName() + " failed to parse Id, this will cause method getId() always returens 0", new Object[0]);
            }
        }
        try {
            this.f2646e = ResHelper.parseInt(String.valueOf(ShareSDK.getDevinfo(str, "SortId")).trim());
        } catch (Throwable unused2) {
            if (!(this.f2642a instanceof CustomPlatform)) {
                SSDKLog.b().a(this.f2642a.getName() + " failed to parse SortId, this won't cause any problem, don't worry", new Object[0]);
            }
        }
        String devinfo = ShareSDK.getDevinfo(str, "Enable");
        if (devinfo == null) {
            this.f2649h = true;
            if (!(this.f2642a instanceof CustomPlatform)) {
                SSDKLog.b().a(this.f2642a.getName() + " failed to parse Enable, this will cause platform always be enable", new Object[0]);
            }
        } else {
            this.f2649h = "true".equals(devinfo.trim());
        }
        this.f2642a.initDevInfo(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Platform.ShareParams shareParams) {
        try {
            if (shareParams == null) {
                e eVar = this.f2644c;
                if (eVar != null) {
                    eVar.onError(this.f2642a, 9, new NullPointerException());
                    return;
                }
                return;
            }
            try {
                if (!shareParams.getOpenCustomEven()) {
                    ShareSDK.logDemoEvent(3, this.f2642a);
                }
            } catch (Throwable unused) {
            }
            c(9, shareParams);
        } catch (Throwable th) {
            SSDKLog.b().d(th);
        }
    }

    public void c(String str) {
        c(8, str);
    }

    public int a() {
        return this.f2645d;
    }

    public void a(PlatformActionListener platformActionListener) {
        this.f2644c.a(platformActionListener);
    }

    public void a(boolean z10) {
        this.f2647f = z10;
    }

    private String a(int i10) {
        return "ShareSDK_" + this.f2642a.getName() + "_" + b(i10);
    }

    public String a(int i10, String str, String str2) {
        String strA = ShareSDK.a(i10, str);
        if (!TextUtils.isEmpty(strA) && !"null".equals(strA)) {
            return strA;
        }
        Platform platform = this.f2642a;
        return platform.getDevinfo(platform.getName(), str2);
    }

    public void a(int i10, Object obj) {
        this.f2644c.a(this.f2642a, i10, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e eVar, int i10) {
        if (eVar != null) {
            eVar.onError(this.f2642a, i10, new ForbThrowable());
        }
    }

    public void a(final Platform.ShareParams shareParams) {
        if (shareParams == null) {
            e eVar = this.f2644c;
            if (eVar != null) {
                eVar.onError(this.f2642a, 9, new NullPointerException());
                return;
            }
            return;
        }
        new Thread(a(1)) { // from class: cn.sharesdk.framework.g.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    g.this.f2642a.subscribeAuth(shareParams);
                    SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "subscribeAuth start on PlatformImpl");
                } catch (Throwable th) {
                    SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " subscribeAuth catch " + th);
                }
            }
        }.start();
    }

    public void a(final String[] strArr) {
        try {
            if (MobSDK.isGppVer() && !cn.sharesdk.framework.a.a.e.a().i("no_use_gpp") && !cn.sharesdk.framework.a.a.e.a().i("gpp_ver_sent")) {
                AgreementDialog agreementDialog = new AgreementDialog();
                agreementDialog.setShareParam(new AgreementDialog.OnDialogDismiss() { // from class: cn.sharesdk.framework.g.8
                    @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                    public void consent() {
                        cn.sharesdk.framework.a.a.e.a().a(true);
                        g.this.b(strArr);
                    }

                    @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                    public void refuse() {
                        if (g.this.f2644c != null) {
                            g.this.f2644c.onError(g.this.f2642a, 21, null);
                        }
                    }
                });
                agreementDialog.show(MobSDK.getContext(), null);
            } else {
                b(strArr);
            }
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            b(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(e eVar, int i10) {
        if (eVar != null) {
            eVar.onError(this.f2642a, i10, new Throwable("'appkey' is illegal"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final String[] strArr) {
        new Thread(a(1)) { // from class: cn.sharesdk.framework.g.9
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (!MobSDK.isForb() && a.a()) {
                        try {
                            int iIsAuth = MobSDK.isAuth();
                            if (iIsAuth == 1 || iIsAuth == 2) {
                                g.this.j();
                                SSDKLog.b().a("The user is using the privacy version without a popup authorize 001");
                            }
                        } catch (Throwable th) {
                            g.this.j();
                            SSDKLog.b().a("The user is using the version before going to the second pop-up box authorize 001 " + th);
                        }
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("authorize(final String[] permissions) " + th2, new Object[0]);
                }
            }
        }.start();
        new Thread() { // from class: cn.sharesdk.framework.g.10
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb()) {
                        g gVar = g.this;
                        gVar.a(gVar.f2644c, 1);
                        return;
                    }
                    try {
                        try {
                            int iIsAuth = MobSDK.isAuth();
                            if (iIsAuth == 1 || iIsAuth == 2) {
                                if (a.a()) {
                                    g.this.f2642a.doAuthorize(strArr);
                                } else {
                                    g gVar2 = g.this;
                                    gVar2.b(gVar2.f2644c, 1);
                                }
                            } else if (g.this.f2644c != null) {
                                g.this.f2644c.onError(g.this.f2642a, 1, new PolicyThrowable());
                            }
                        } catch (Throwable th) {
                            if (a.a()) {
                                g.this.f2642a.doAuthorize(strArr);
                            } else {
                                g gVar3 = g.this;
                                gVar3.b(gVar3.f2644c, 1);
                            }
                            SSDKLog.b().a("The user is using the non-privacy version authorize 002 " + th);
                        }
                    } catch (Throwable unused) {
                        ProvicyCanContinue.a().a(new ProvicyCanContinue.OnBusinessListener() { // from class: cn.sharesdk.framework.g.10.1
                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onContinue() {
                                if (a.a()) {
                                    g.this.f2642a.doAuthorize(strArr);
                                } else {
                                    g gVar4 = g.this;
                                    gVar4.b(gVar4.f2644c, 1);
                                }
                                SSDKLog.b().a("The user is using the privacy version with a pop-up box authorize 002");
                            }

                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onError(Throwable th2) {
                                if (g.this.f2644c != null) {
                                    g.this.f2644c.onError(g.this.f2642a, 1, new PolicyThrowable());
                                }
                            }

                            @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                            public void onStop() {
                                if (g.this.f2644c != null) {
                                    g.this.f2644c.onError(g.this.f2642a, 1, new PolicyThrowable());
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("new Thread Platform.ACTION_AUTHORIZING " + th2, new Object[0]);
                }
            }
        }.start();
    }

    public void a(String str, int i10, int i11) {
        c(7, new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), str});
    }

    public void b(final Platform.ShareParams shareParams) {
        try {
            if (MobSDK.isGppVer() && !cn.sharesdk.framework.a.a.e.a().i("no_use_gpp")) {
                if (!cn.sharesdk.framework.a.a.e.a().i("gpp_ver_sent")) {
                    AgreementDialog agreementDialog = new AgreementDialog();
                    agreementDialog.setShareParam(new AgreementDialog.OnDialogDismiss() { // from class: cn.sharesdk.framework.g.2
                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void consent() {
                            cn.sharesdk.framework.a.a.e.a().a(true);
                            g.this.c(shareParams);
                        }

                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void refuse() {
                            if (g.this.f2644c != null) {
                                g.this.f2644c.onError(g.this.f2642a, 21, new Throwable("The user rejected the request to read the applist"));
                            }
                        }
                    });
                    agreementDialog.show(MobSDK.getContext(), null);
                    return;
                }
                c(shareParams);
                return;
            }
            c(shareParams);
        } catch (Throwable unused) {
            c(shareParams);
        }
    }

    public void a(int i10, int i11, String str) {
        c(2, new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), str});
    }

    public void a(String str, String str2, short s10, HashMap<String, Object> map, HashMap<String, String> map2) {
        c(s10 | 655360, new Object[]{str, str2, map, map2});
    }

    public void a(String str, boolean z10, ShareSDKCallback<String> shareSDKCallback) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!this.f2648g) {
            SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(str);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(str);
                return;
            }
            return;
        }
        ShareSDK.a(str, z10, this.f2642a.getPlatformId(), k(), shareSDKCallback);
        SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public void b(String str) {
        c(6, str);
    }

    public String a(Bitmap bitmap) {
        return ShareSDK.a(bitmap);
    }

    public String a(String str, boolean z10, HashMap<String, String> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!this.f2648g) {
            SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            return str;
        }
        String strA = cn.sharesdk.framework.a.a.a().a(str, this.f2642a.getPlatformId(), z10, k(), map);
        SSDKLog.b().b("getShortLintk use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return strA;
    }
}
