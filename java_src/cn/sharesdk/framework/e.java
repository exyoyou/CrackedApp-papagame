package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.HashonHelper;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e implements PlatformActionListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PlatformActionListener f2628c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2630e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Pattern f2626a = Pattern.compile("(?:errorCode|code|errCode|error_code)\\s*[=:]\\s*(\\d+)", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Pattern f2627b = Pattern.compile("(?:errorMsg|msg|errorMessage|errMsg|errStr|errorDesc|message)\\s*[=:]\\s*([^,\\n]+)", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<Platform, Platform.ShareParams> f2629d = new HashMap<>();

    e() {
    }

    private void b(Platform platform, int i10, HashMap<String, Object> map) {
        HashMap<String, Object> map2;
        Platform platform2;
        Platform.ShareParams shareParamsRemove = this.f2629d.remove(platform);
        if (map != null) {
            shareParamsRemove = (Platform.ShareParams) map.remove("ShareParams");
        }
        try {
            map2 = (HashMap) map.clone();
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            map2 = map;
        }
        if (shareParamsRemove != null) {
            cn.sharesdk.framework.a.b.j jVar = new cn.sharesdk.framework.a.b.j();
            jVar.f2561p = shareParamsRemove.getCustomFlag();
            String userId = platform.getDb().getUserId();
            if (("WechatMoments".equals(platform.getName()) || "WechatFavorite".equals(platform.getName())) && TextUtils.isEmpty(userId)) {
                try {
                    platform2 = ShareSDK.getPlatform("Wechat");
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2, "InnerPlatformActionListener wechat is null", new Object[0]);
                    platform2 = null;
                }
                if (platform2 != null) {
                    userId = platform2.getDb().getUserId();
                }
            } else if ("TencentWeibo".equals(platform.getName())) {
                userId = platform.getDb().get("name");
            }
            jVar.f2557b = userId;
            jVar.f2556a = platform.getPlatformId();
            String strFilterShareContent = platform.filterShareContent(shareParamsRemove);
            if (TextUtils.isEmpty(strFilterShareContent)) {
                cn.sharesdk.framework.a.b.j.a aVarFilterShareContent = platform.filterShareContent(shareParamsRemove, map2);
                if (aVarFilterShareContent != null) {
                    jVar.f2558c = aVarFilterShareContent.f2562a;
                    jVar.f2559d = aVarFilterShareContent;
                }
            } else {
                try {
                    jVar.f2559d = (cn.sharesdk.framework.a.b.j.a) HashonHelper.fromJson(strFilterShareContent, cn.sharesdk.framework.a.b.j.a.class);
                } catch (Throwable th3) {
                    SSDKLog.b().a(th3);
                }
            }
            jVar.f2560o = b(platform);
            cn.sharesdk.framework.a.d dVarA = cn.sharesdk.framework.a.d.a();
            if (dVarA != null) {
                dVarA.a(jVar);
            }
        }
        PlatformActionListener platformActionListener = this.f2628c;
        if (platformActionListener != null) {
            try {
                platformActionListener.onComplete(platform, i10, map);
                this.f2628c = null;
                this.f2630e = 0;
            } catch (Throwable th4) {
                SSDKLog.b().a(th4);
            }
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i10) {
        try {
            a(2, i10, platform, null);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        PlatformActionListener platformActionListener = this.f2628c;
        if (platformActionListener != null) {
            platformActionListener.onCancel(platform, i10);
            this.f2628c = null;
            this.f2630e = 0;
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i10, HashMap<String, Object> map) {
        if (platform instanceof CustomPlatform) {
            PlatformActionListener platformActionListener = this.f2628c;
            if (platformActionListener != null) {
                platformActionListener.onComplete(platform, i10, map);
                this.f2628c = null;
                this.f2630e = 0;
                return;
            }
            return;
        }
        if (i10 == 1) {
            a(platform, i10, map);
            return;
        }
        if (i10 == 9) {
            b(platform, i10, map);
            return;
        }
        PlatformActionListener platformActionListener2 = this.f2628c;
        if (platformActionListener2 != null) {
            platformActionListener2.onComplete(platform, i10, map);
            if ("Wechat".equals(platform.getName())) {
                return;
            }
            int i11 = this.f2630e;
            if (i11 == 0 || i11 == i10) {
                this.f2628c = null;
                this.f2630e = 0;
            }
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i10, Throwable th) {
        try {
            a(1, i10, platform, th);
        } catch (Throwable th2) {
            SSDKLog.b().a(th2);
        }
        PlatformActionListener platformActionListener = this.f2628c;
        if (platformActionListener != null) {
            platformActionListener.onError(platform, i10, th);
            this.f2628c = null;
            this.f2630e = 0;
        }
    }

    void a(PlatformActionListener platformActionListener) {
        this.f2628c = platformActionListener;
    }

    PlatformActionListener a() {
        return this.f2628c;
    }

    public void a(Platform platform, Platform.ShareParams shareParams) {
        this.f2629d.put(platform, shareParams);
    }

    private void a(int i10, int i11, Platform platform, Throwable th) {
        cn.sharesdk.framework.a.b.j hVar;
        cn.sharesdk.framework.a.b.d bVar = null;
        cn.sharesdk.framework.a.b.j jVar = null;
        cn.sharesdk.framework.a.b.j jVar2 = null;
        if (i11 == 1) {
            if (i10 == 1) {
                bVar = new cn.sharesdk.framework.a.b.c();
            } else if (i10 == 2) {
                bVar = new cn.sharesdk.framework.a.b.b();
            }
            a(bVar, platform);
            jVar2 = bVar;
        } else if (i11 == 9) {
            if (i10 == 1) {
                hVar = new cn.sharesdk.framework.a.b.i();
            } else {
                if (i10 == 2) {
                    hVar = new cn.sharesdk.framework.a.b.h();
                }
                a(jVar, platform);
                jVar2 = jVar;
            }
            jVar = hVar;
            a(jVar, platform);
            jVar2 = jVar;
        }
        if (jVar2 == null || cn.sharesdk.framework.a.d.a() == null) {
            return;
        }
        if (th != null) {
            String string = TextUtils.isEmpty(th.getMessage()) ? th.toString() : th.getMessage();
            jVar2.f2544m = a(string);
            jVar2.f2545n = b(string);
        }
        cn.sharesdk.framework.a.d.a().a(jVar2);
    }

    private void a(cn.sharesdk.framework.a.b.d dVar, Platform platform) {
        try {
            dVar.f2532a = platform.getPlatformId();
            dVar.f2533b = "TencentWeibo".equals(platform.getName()) ? platform.getDb().get("name") : platform.getDb().getUserId();
            dVar.f2535d = a(platform);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    private void a(cn.sharesdk.framework.a.b.j jVar, Platform platform) {
        try {
            String userId = platform.getDb().getUserId();
            if (("WechatMoments".equals(platform.getName()) || "WechatFavorite".equals(platform.getName())) && TextUtils.isEmpty(userId)) {
                try {
                    Platform platform2 = ShareSDK.getPlatform("Wechat");
                    if (platform2 != null) {
                        userId = platform2.getDb().getUserId();
                    }
                } catch (Throwable unused) {
                    SSDKLog.b().a("InnerPlatformActionListener wechat is null", new Object[0]);
                }
            } else if ("TencentWeibo".equals(platform.getName())) {
                userId = platform.getDb().get("name");
            }
            jVar.f2556a = platform.getPlatformId();
            jVar.f2557b = userId;
            jVar.f2560o = b(platform);
            Platform.ShareParams shareParamsRemove = this.f2629d.remove(platform);
            if (shareParamsRemove != null) {
                jVar.f2561p = shareParamsRemove.getCustomFlag();
                String strFilterShareContent = platform.filterShareContent(shareParamsRemove);
                if (!TextUtils.isEmpty(strFilterShareContent)) {
                    try {
                        jVar.f2559d = (cn.sharesdk.framework.a.b.j.a) HashonHelper.fromJson(strFilterShareContent, cn.sharesdk.framework.a.b.j.a.class);
                        return;
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        return;
                    }
                }
                cn.sharesdk.framework.a.b.j.a aVarFilterShareContent = platform.filterShareContent(shareParamsRemove, new HashMap<>());
                if (aVarFilterShareContent != null) {
                    jVar.f2558c = aVarFilterShareContent.f2562a;
                    jVar.f2559d = aVarFilterShareContent;
                }
            }
        } catch (Throwable th2) {
            SSDKLog.b().a(th2);
        }
    }

    private String b(Platform platform) {
        Platform platform2;
        PlatformDb db2 = platform.getDb();
        if (("WechatMoments".equals(platform.getName()) || "WechatFavorite".equals(platform.getName())) && TextUtils.isEmpty(db2.getUserGender())) {
            try {
                platform2 = ShareSDK.getPlatform("Wechat");
            } catch (Throwable th) {
                SSDKLog.b().a(th, "InnerPlatformActionListener getUserDataBrief catch ", new Object[0]);
                platform2 = null;
            }
            if (platform2 != null) {
                db2 = platform2.getDb();
            }
        }
        try {
            return a(db2, new String[]{"gender", "birthday", "secretType", "educationJSONArrayStr", "workJSONArrayStr"});
        } catch (Throwable th2) {
            SSDKLog.b().b(th2);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
    private String b(String str) {
        String strTrim = "";
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("errorMsg")) {
                    return jSONObject.optString("errorMsg");
                }
                if (jSONObject.has("errorMessage")) {
                    return jSONObject.optString("errorMessage");
                }
                if (jSONObject.has("errMsg")) {
                    return jSONObject.optString("errMsg");
                }
                if (jSONObject.has("errStr")) {
                    return jSONObject.optString("errStr");
                }
                if (jSONObject.has("msg")) {
                    return jSONObject.optString("msg");
                }
                return jSONObject.has("errorDesc") ? jSONObject.optString("errorDesc") : "";
            } catch (Throwable unused) {
                if (TextUtils.isEmpty(strTrim)) {
                    return str;
                }
                return strTrim;
            }
        } catch (Exception unused2) {
            Matcher matcher = this.f2627b.matcher(str);
            if (matcher.find() && !TextUtils.isEmpty(matcher.group(1))) {
                strTrim = matcher.group(1).trim();
            }
            if (TextUtils.isEmpty(strTrim)) {
                return str;
            }
            return strTrim;
        }
    }

    private void a(Platform platform, final int i10, final HashMap<String, Object> map) {
        final PlatformActionListener platformActionListener = this.f2628c;
        this.f2628c = new PlatformActionListener() { // from class: cn.sharesdk.framework.e.1
            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onCancel(Platform platform2, int i11) {
                e.this.f2628c = platformActionListener;
                if (e.this.f2628c != null) {
                    e.this.f2628c.onComplete(platform2, i10, map);
                }
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onComplete(Platform platform2, int i11, HashMap<String, Object> map2) {
                e.this.f2628c = platformActionListener;
                if (e.this.f2628c != null) {
                    e.this.f2628c.onComplete(platform2, i10, map);
                }
                cn.sharesdk.framework.a.b.d dVar = new cn.sharesdk.framework.a.b.d();
                dVar.f2532a = platform2.getPlatformId();
                dVar.f2533b = "TencentWeibo".equals(platform2.getName()) ? platform2.getDb().get("name") : platform2.getDb().getUserId();
                dVar.f2534c = new Hashon().fromHashMap(map2);
                dVar.f2535d = e.this.a(platform2);
                cn.sharesdk.framework.a.d dVarA = cn.sharesdk.framework.a.d.a();
                if (dVarA != null) {
                    dVarA.a(dVar);
                }
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onError(Platform platform2, int i11, Throwable th) {
                SSDKLog.b().b(th);
                e.this.f2628c = platformActionListener;
                if (e.this.f2628c != null) {
                    e.this.f2628c.onComplete(platform2, i10, map);
                }
            }
        };
        platform.innerShowUser(null);
    }

    void a(Platform platform, final int i10, final Object obj) {
        this.f2630e = i10;
        final PlatformActionListener platformActionListener = this.f2628c;
        this.f2628c = new PlatformActionListener() { // from class: cn.sharesdk.framework.e.2
            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onCancel(Platform platform2, int i11) {
                e.this.f2628c = platformActionListener;
                if (e.this.f2628c != null) {
                    e.this.f2628c.onCancel(platform2, i10);
                }
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onComplete(Platform platform2, int i11, HashMap<String, Object> map) {
                e.this.f2628c = platformActionListener;
                platform2.afterRegister(i10, obj);
            }

            @Override // cn.sharesdk.framework.PlatformActionListener
            public void onError(Platform platform2, int i11, Throwable th) {
                e.this.f2628c = platformActionListener;
                if (e.this.f2628c != null) {
                    e.this.f2628c.onError(platform2, i11, th);
                }
            }
        };
        platform.doAuthorize(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Platform platform) {
        try {
            return a(platform.getDb(), new String[]{"nickname", "icon", "gender", "snsUserUrl", "resume", "secretType", "secret", "birthday", "followerCount", "favouriteCount", "shareCount", "snsregat", "snsUserLevel", "educationJSONArrayStr", "workJSONArrayStr"});
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            return null;
        }
    }

    private String a(PlatformDb platformDb, String[] strArr) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int i10 = 0;
        for (String str : strArr) {
            if (i10 > 0) {
                sb3.append('|');
                sb2.append('|');
            }
            i10++;
            String str2 = platformDb.get(str);
            if (!TextUtils.isEmpty(str2)) {
                sb2.append(str2);
                sb3.append(Data.urlEncode(str2, "utf-8"));
            }
        }
        SSDKLog.b().b("======UserData: " + sb2.toString());
        return sb3.toString();
    }

    private String a(String str) {
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("errorCode")) {
                    return jSONObject.optString("errorCode");
                }
                if (jSONObject.has("errCode")) {
                    return jSONObject.optString("errCode");
                }
                if (jSONObject.has("code")) {
                    return jSONObject.optString("code");
                }
                return jSONObject.has("error_code") ? jSONObject.optString("error_code") : "";
            } catch (Exception unused) {
                Matcher matcher = this.f2626a.matcher(str);
                return (!matcher.find() || TextUtils.isEmpty(matcher.group(1))) ? "" : matcher.group(1).trim();
            }
        } catch (Throwable unused2) {
            return "";
        }
    }
}
