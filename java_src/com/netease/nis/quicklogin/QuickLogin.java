package com.netease.nis.quicklogin;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.bn;
import com.cmic.gen.sdk.auth.GenAuthnHelper;
import com.kuaishou.weapon.p0.t;
import com.netease.nis.basesdk.EncryptUtil;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.entity.PreCheckEntity;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.QuickLoginListener;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.f;
import com.netease.nis.quicklogin.utils.g;
import com.sdk.base.api.ToolUtils;
import com.sdk.base.module.manager.SDKManager;
import com.umeng.umcrash.UMCrash;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class QuickLogin {
    public static boolean DEBUG = false;
    public static final String SDK_VERSION = "3.3.8";
    public static final String TAG = "QuickLogin";
    public static int fetchNumberTimeout = 5;
    public static boolean isAllowedUploadInfo = true;
    public static long prefetchDataStartTime = 0;
    public static int prefetchNumberTimeout = 8;
    public static final String publicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f75917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.netease.nis.quicklogin.a f75918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f75919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f75921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f75922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f75923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f75924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private JSONObject f75925j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75926k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f75927l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LoginUiHelper f75928m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private UnifyUiConfig f75929n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f75930o;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f75931a;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener) {
            this.f75931a = quickLoginPreMobileListener;
        }

        @Override // com.netease.nis.quicklogin.QuickLogin.d
        public void a(com.netease.nis.quicklogin.a aVar) {
            QuickLogin.this.f75918c = aVar;
            QuickLogin.prefetchDataStartTime = System.currentTimeMillis();
            Logger.d("prefetchMobileNumber [startTime] " + QuickLogin.prefetchDataStartTime);
            QuickLogin.this.f75918c.a(QuickLogin.this.f75922g, this.f75931a);
        }
    }

    class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f75933a;

        b(QuickLoginTokenListener quickLoginTokenListener) {
            this.f75933a = quickLoginTokenListener;
        }

        @Override // com.netease.nis.quicklogin.QuickLogin.d
        public void a(com.netease.nis.quicklogin.a aVar) {
            QuickLogin.this.f75918c = aVar;
            QuickLogin.prefetchDataStartTime = System.currentTimeMillis();
            QuickLogin.this.f75918c.a(QuickLogin.this.f75921f, this.f75933a);
        }
    }

    class c implements HttpUtil.ResponseCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f75935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ QuickLoginListener f75936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f75937c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f75938d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ d f75939e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Map f75940f;

        c(long j10, QuickLoginListener quickLoginListener, String str, String str2, d dVar, Map map) {
            this.f75935a = j10;
            this.f75936b = quickLoginListener;
            this.f75937c = str;
            this.f75938d = str2;
            this.f75939e = dVar;
            this.f75940f = map;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            QuickLogin.this.a(this.f75936b, str);
            Logger.e("preCheck [onError]" + str);
            QuickLogin quickLogin = QuickLogin.this;
            quickLogin.a("RETURN_DATA_ERROR", quickLogin.f75916a, i10, str, HttpUtil.map2Form(this.f75940f, "utf-8"), "");
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            QuickLogin.this.f75930o = System.currentTimeMillis();
            Logger.d("preCheck [onSuccess] " + str);
            Logger.d("preCheck [time] " + (QuickLogin.this.f75930o - this.f75935a) + "ms");
            PreCheckEntity preCheckEntity = (PreCheckEntity) com.netease.nis.quicklogin.utils.a.a(str, PreCheckEntity.class);
            if (preCheckEntity == null || preCheckEntity.code != 200) {
                QuickLogin.this.a(this.f75936b, str);
                QuickLogin quickLogin = QuickLogin.this;
                quickLogin.a("RETURN_DATA_ERROR", quickLogin.f75916a, preCheckEntity == null ? -1 : preCheckEntity.code, preCheckEntity == null ? "" : preCheckEntity.msg, HttpUtil.map2Form(this.f75940f, "utf-8"), str);
                return;
            }
            String str2 = preCheckEntity.data;
            JSONObject jSONObject = preCheckEntity.extData;
            if (jSONObject == null || this.f75936b.onExtendMsg(jSONObject)) {
                try {
                    String strA = com.netease.nis.quicklogin.utils.c.a(str2, this.f75937c, this.f75938d);
                    Logger.d("preCheck [real] " + strA);
                    PreCheckEntity.Data data = (PreCheckEntity.Data) com.netease.nis.quicklogin.utils.a.a(strA, PreCheckEntity.Data.class);
                    if (data == null) {
                        QuickLogin.this.a(this.f75936b, str);
                        QuickLogin quickLogin2 = QuickLogin.this;
                        quickLogin2.a("JSON_ENCRYPT_ERROR", quickLogin2.f75916a, -2, "json解析异常", strA);
                        return;
                    }
                    QuickLogin.this.f75922g = data.token;
                    QuickLogin.this.f75923h = data.appId;
                    QuickLogin.this.f75924i = data.appKey;
                    QuickLogin.this.f75921f = data.url;
                    com.netease.nis.quicklogin.b.a.f75955a = data.openCache;
                    int i10 = data.ot;
                    if (i10 >= 1 && i10 <= 3) {
                        QuickLogin.this.f75920e = i10;
                    }
                    if (data.uiElement != null) {
                        int i11 = QuickLogin.this.f75920e;
                        if (i11 == 1) {
                            PreCheckEntity.UiElement uiElement = data.uiElement;
                            com.netease.nis.quicklogin.utils.e.f76145g = uiElement.slogan;
                            com.netease.nis.quicklogin.utils.e.f76146h = uiElement.privacyName;
                            com.netease.nis.quicklogin.utils.e.f76147i = uiElement.privacyUrl;
                        } else if (i11 == 2) {
                            PreCheckEntity.UiElement uiElement2 = data.uiElement;
                            com.netease.nis.quicklogin.utils.e.f76139a = uiElement2.slogan;
                            com.netease.nis.quicklogin.utils.e.f76140b = uiElement2.privacyName;
                            com.netease.nis.quicklogin.utils.e.f76141c = uiElement2.privacyUrl;
                        } else if (i11 == 3) {
                            PreCheckEntity.UiElement uiElement3 = data.uiElement;
                            com.netease.nis.quicklogin.utils.e.f76142d = uiElement3.slogan;
                            com.netease.nis.quicklogin.utils.e.f76143e = uiElement3.privacyName;
                            com.netease.nis.quicklogin.utils.e.f76144f = uiElement3.privacyUrl;
                        }
                    }
                    this.f75939e.a(QuickLogin.this.b());
                } catch (Exception e10) {
                    Logger.e(e10.getMessage());
                    QuickLogin.this.a(this.f75936b, e10.toString());
                    QuickLogin quickLogin3 = QuickLogin.this;
                    quickLogin3.a("AES_DECRYPT_ERROR", quickLogin3.f75916a, -1, "AES解密异常：" + e10.getMessage(), str2);
                }
            }
        }
    }

    private interface d {
        void a(com.netease.nis.quicklogin.a aVar);
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        private static final QuickLogin f75942a = new QuickLogin(null);
    }

    /* synthetic */ QuickLogin(a aVar) {
        this();
    }

    public static QuickLogin getInstance() {
        return e.f75942a;
    }

    public int checkNetWork(Context context) {
        try {
            return com.netease.nis.quicklogin.utils.a.a(context);
        } catch (JSONException e10) {
            Logger.e(e10.getMessage());
            return 5;
        }
    }

    public void clearScripCache(Context context) {
        try {
            GenAuthnHelper.getInstance(context).delScrip();
            ToolUtils.clearCache(context);
            f.a(context, "timeend", 0L);
        } catch (Exception e10) {
            e10.printStackTrace();
            Logger.e("clearScripCache Exception=" + e10);
        }
    }

    public int getOperatorType(Context context) {
        try {
            return com.netease.nis.quicklogin.utils.a.b(context);
        } catch (JSONException e10) {
            Logger.e(e10.getMessage());
            return 5;
        }
    }

    public String getSDKVersion() {
        return SDK_VERSION;
    }

    public void getToken(String str, @NonNull QuickLoginTokenListener quickLoginTokenListener) {
        try {
            if (!this.f75927l) {
                this.f75916a = "https://ye.dun.163yun.com/v1/preCheck";
            }
            this.f75926k = false;
            a(str, quickLoginTokenListener, new b(quickLoginTokenListener));
        } catch (Exception e10) {
            e10.printStackTrace();
            a("JSON_ENCRYPT_ERROR", this.f75916a, -2, "json解析异常：" + e10.getMessage(), "");
        }
    }

    public void init(Context context, String str) {
        a();
        this.f75917b = context.getApplicationContext();
        this.f75919d = str;
        com.netease.nis.quicklogin.utils.b.c().a(this.f75919d, this.f75917b);
        this.f75928m = LoginUiHelper.a();
        g.c().a(this.f75919d);
    }

    public boolean isPreLoginResultValid() {
        return System.currentTimeMillis() - this.f75930o <= 102000;
    }

    public void onePass(@NonNull QuickLoginTokenListener quickLoginTokenListener) {
        try {
            if (this.f75918c == null) {
                Logger.e("预取号异常，请查看预取号对应的错误回调");
                return;
            }
            this.f75928m.a(this.f75929n, this.f75922g);
            this.f75928m.a(quickLoginTokenListener);
            this.f75918c.a(quickLoginTokenListener);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void prefetchMobileNumber(@NonNull QuickLoginPreMobileListener quickLoginPreMobileListener) {
        try {
            if (!this.f75927l) {
                this.f75916a = "https://ye.dun.163yun.com/v1/oneclick/preCheck";
            }
            this.f75926k = true;
            a((String) null, quickLoginPreMobileListener, new a(quickLoginPreMobileListener));
        } catch (Exception e10) {
            e10.printStackTrace();
            a("JSON_ENCRYPT_ERROR", this.f75916a, -2, "json解析异常：" + e10.getMessage(), "");
        }
    }

    public void quitActivity() {
        LoginUiHelper loginUiHelper = this.f75928m;
        if (loginUiHelper != null) {
            loginUiHelper.e();
        }
    }

    public void removeCustomView(int i10, View view) {
        LoginUiHelper loginUiHelper = this.f75928m;
        if (loginUiHelper != null) {
            loginUiHelper.a(i10, view);
        }
    }

    public void setAllowedUploadInfo(boolean z10) {
        isAllowedUploadInfo = z10;
    }

    public void setDebugMode(boolean z10) {
        DEBUG = z10;
        Logger.setTag(TAG);
        Logger.enableLog(z10);
        SDKManager.setDebug(z10);
        com.cmic.gen.sdk.auth.c.setDebugMode(z10);
    }

    public void setExtendData(JSONObject jSONObject) {
        this.f75925j = jSONObject;
    }

    public void setFetchNumberTimeout(int i10) {
        fetchNumberTimeout = i10;
    }

    public void setPreCheckUrl(String str) {
        this.f75927l = true;
        this.f75916a = str;
    }

    public void setPrefetchNumberTimeout(int i10) {
        prefetchNumberTimeout = i10;
    }

    public void setPrivacyState(boolean z10) {
        LoginUiHelper loginUiHelper = this.f75928m;
        if (loginUiHelper != null) {
            loginUiHelper.a(z10);
        }
    }

    public void setUnifyUiConfig(UnifyUiConfig unifyUiConfig) {
        this.f75929n = unifyUiConfig;
    }

    private QuickLogin() {
        this.f75922g = null;
        this.f75925j = null;
        this.f75926k = false;
        this.f75927l = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.netease.nis.quicklogin.a b() {
        boolean z10 = this.f75926k;
        if (z10 && (this.f75924i == null || this.f75923h == null)) {
            throw new RuntimeException("appKey,appId is not allowed to be null");
        }
        if (this.f75922g != null) {
            if (this.f75917b != null) {
                return new com.netease.nis.quicklogin.a.C0978a().a(z10).a(this.f75923h).b(this.f75924i).c(this.f75922g).a(this.f75920e).a(this.f75917b);
            }
            throw new RuntimeException("mContext is not allowed to be null");
        }
        throw new RuntimeException("YDToken is not allowed to be null");
    }

    private void a() {
        try {
            String str = (String) Class.forName("com.netease.nis.alivedetected.AliveDetector").getField("SDK_VERSION").get(null);
            if (str != null && "3.1.7".compareTo(str) > 0) {
                throw new RuntimeException("项目中接入的活体检测sdk版本低于3.1.7，请联系客服并升级版本");
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
        }
        try {
            String str2 = (String) Class.forName("com.netease.nis.ocr.OcrScanner").getField("SDK_VERSION").get(null);
            if (str2 != null && "1.1.3".compareTo(str2) > 0) {
                throw new RuntimeException("项目中接入的身份证检测sdk版本低于1.1.3，请联系客服并升级版本");
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused2) {
        }
    }

    private void a(String str, QuickLoginListener quickLoginListener, d dVar) throws JSONException {
        this.f75920e = com.netease.nis.quicklogin.utils.a.a(this.f75917b);
        Logger.d("networkType:" + this.f75920e);
        int i10 = this.f75920e;
        if (i10 == 5) {
            a(-5, "无法判断网络类型");
            a(quickLoginListener, "无法判断网络类型");
            return;
        }
        if (i10 == 4) {
            a(-4, "当前仅wifi联网");
            a(quickLoginListener, "当前仅wifi联网，请连接数据流量");
            return;
        }
        if (!this.f75926k && (TextUtils.isEmpty(str) || str.length() != 11)) {
            a(quickLoginListener, "输入手机号不合法，请检查后重新输入");
            return;
        }
        String randomString = EncryptUtil.getRandomString(16);
        String randomString2 = EncryptUtil.getRandomString(12);
        Map<String, String> mapA = a(str, randomString, randomString2, quickLoginListener);
        HashMap map = new HashMap();
        map.put("terminal", "1");
        map.put("version", SDK_VERSION);
        map.put(bn.f7597i, Build.MODEL);
        map.put("osVersion", Build.VERSION.RELEASE);
        HttpUtil.doPostRequestByForm(this.f75916a, mapA, map, new c(System.currentTimeMillis(), quickLoginListener, randomString, randomString2, dVar, mapA));
    }

    private Map<String, String> a(String str, String str2, String str3, QuickLoginListener quickLoginListener) throws JSONException {
        String strB;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("businessId", this.f75919d);
        if (this.f75926k) {
            jSONObject.put("operatorType", this.f75920e);
        } else {
            jSONObject.put("phone", str);
        }
        jSONObject.put("envType", 1);
        jSONObject.put("nonce", EncryptUtil.getRandomString(32));
        jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, System.currentTimeMillis());
        jSONObject.put("cacheType", 2);
        try {
            strB = com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), str2, str3);
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            a(quickLoginListener, e10.toString());
            a("AES_ENCRYPT_ERROR", this.f75916a, -1, "AES加密异常：" + e10.getMessage(), jSONObject.toString());
            strB = null;
        }
        String strRSAEncrypt = EncryptUtil.RSAEncrypt(str3 + str2, publicKey);
        HashMap map = new HashMap();
        map.put(t.f74895t, strB);
        map.put("rk", strRSAEncrypt);
        map.put("version", getSDKVersion());
        JSONObject jSONObject2 = this.f75925j;
        if (jSONObject2 != null) {
            map.put("extData", jSONObject2.toString());
        }
        return map;
    }

    private void a(int i10, String str) {
        g.c().a(i10, str);
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, String str3, String str4) {
        g.c().a("parseErr", str, str2, i10, str3, str4, "");
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, String str3, String str4, String str5) {
        g.c().a("apiErr", str, str2, i10, str3, str4, str5);
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(QuickLoginListener quickLoginListener, String str) {
        if (quickLoginListener instanceof QuickLoginPreMobileListener) {
            String str2 = this.f75922g;
            quickLoginListener.onGetMobileNumberError(str2 != null ? str2 : "易盾token为空", str);
        } else if (quickLoginListener instanceof QuickLoginTokenListener) {
            String str3 = this.f75922g;
            quickLoginListener.onGetTokenError(str3 != null ? str3 : "易盾token为空", str);
        }
    }
}
