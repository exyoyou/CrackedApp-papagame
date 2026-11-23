package com.baidu.oauth.sdkbqt.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.oauth.sdkbqt.callback.BdOauthCallback;
import com.baidu.oauth.sdkbqt.dto.BdOauthDTO;
import com.baidu.oauth.sdkbqt.result.BdOauthResult;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.baidu.oauth.sdkbqt.view.WebViewActivity;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class BdSsoHandler implements com.baidu.oauth.sdkbqt.a.e {
    public static final String EXTRA_DEGRADE_EXEMPT_AUTH_PAGE = "extra_degrade_exempt_auth_page";
    public static final String EXTRA_DEGRADE_H5_AUTH = "extra_degrade_h5_auth";
    public static final String EXTRA_GUID_TYPE = "extra_guid_type";
    public static final String EXTRA_OAUTH_RESULT_JSON = "extra_oauth_result_json";
    public static final String EXTRA_OAUTH_STATE = "extra_oauth_state";
    public static final String EXTRA_QR_CODE_URL = "extra_qr_code_url";
    public static final String EXTRA_REDIRECT_URL = "extra_redirect_url";
    public static final String EXTRA_SCOPE = "extra_scope";
    public static final String EXTRA_USE_SHA1_AUTH = "extra_use_sha1_auth";
    public static final int GUID_TYPE_BAIDUAPP_AND_WEB = 1;
    public static final int GUID_TYPE_ONLY_BAIDUAPP = 0;
    public static final int GUID_TYPE_ONLY_WEB = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8161a = "BdSsoHandler";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f8162b = 1001;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f8163c = 1002;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f8164d = 1003;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f8165e = "extra_calling_app_id";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f8166f = "extra_oauth_type";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f8167g = "extra_oauth_sdk_version";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f8168h = "extra_pass_sdk_version";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Activity f8169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BdOauthCallback f8170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BdOauthDTO f8171k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BdOauthResult f8172l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f8173m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8174n;

    public BdSsoHandler(Activity activity) {
        com.baidu.oauth.sdkbqt.a.h.a((Object) activity, "activity is null");
        this.f8169i = activity;
    }

    private HashMap<String, String> a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return com.baidu.oauth.sdkbqt.a.b.f8124d;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(com.baidu.oauth.sdkbqt.a.b.f8124d.size());
        Object[] array = com.baidu.oauth.sdkbqt.a.b.f8124d.keySet().toArray();
        if (!"0".equals(com.baidu.oauth.sdkbqt.a.h.b(list.get(0)))) {
            linkedHashMap.put(array[0].toString(), com.baidu.oauth.sdkbqt.a.b.f8124d.get(array[0]));
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            String strB = com.baidu.oauth.sdkbqt.a.h.b(it2.next());
            for (String str : com.baidu.oauth.sdkbqt.a.b.f8124d.keySet()) {
                if (str.equals(strB)) {
                    linkedHashMap.put(str, com.baidu.oauth.sdkbqt.a.b.f8124d.get(str));
                    break;
                }
            }
        }
        return linkedHashMap;
    }

    public void authorize(BdOauthDTO bdOauthDTO, BdOauthCallback bdOauthCallback) {
        com.baidu.oauth.sdkbqt.a.h.a(bdOauthDTO, "please set auth dto params");
        if (a(bdOauthCallback)) {
            this.f8171k = bdOauthDTO;
            HashMap<String, String> mapA = a(bdOauthDTO.authorizedPkgs);
            String str = f8161a;
            com.baidu.oauth.sdkbqt.a.d.a(str, "authorize isSlient:" + bdOauthDTO.isSilent);
            if (mapA.size() > 0) {
                Object[] array = mapA.keySet().toArray();
                Object[] objArr = new Object[1];
                StringBuilder sb2 = new StringBuilder();
                sb2.append("authorize first package=");
                sb2.append(array.length > 0 ? array[0] : "null");
                sb2.append(", dto.authorizedPkgs.size=");
                List<String> list = bdOauthDTO.authorizedPkgs;
                sb2.append(list == null ? 0 : list.size());
                sb2.append(", final authorizedPkgs.size=");
                sb2.append(mapA.size());
                objArr[0] = sb2.toString();
                com.baidu.oauth.sdkbqt.a.d.a(str, objArr);
            } else {
                Object[] objArr2 = new Object[1];
                StringBuilder sb3 = new StringBuilder();
                sb3.append("authorize  to.authorizedPkgs.size=");
                List<String> list2 = bdOauthDTO.authorizedPkgs;
                sb3.append(list2 == null ? 0 : list2.size());
                sb3.append(", final authorizedPkgs.size=");
                sb3.append(mapA.size());
                objArr2[0] = sb3.toString();
                com.baidu.oauth.sdkbqt.a.d.a(str, objArr2);
            }
            Intent intentA = new h().a(this.f8169i, mapA, bdOauthDTO.isSilent);
            if (intentA != null) {
                this.f8174n = true;
            }
            char c10 = bdOauthDTO.oauthType;
            if (c10 != 0) {
                if (c10 == 1) {
                    if (intentA != null) {
                        com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=OAUTH_TYPE_SSO, intent not null");
                        a(intentA, bdOauthDTO.state);
                        return;
                    } else {
                        com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=OAUTH_TYPE_SSO, ERROR_CODE_NOT_INSTALL_BAIDU_APP");
                        BdOauthResult bdOauthResult = new BdOauthResult();
                        bdOauthResult.setResultCode(OauthResult.ERROR_CODE_NOT_INSTALL_BAIDU_APP);
                        bdOauthCallback.onFailure(bdOauthResult);
                        return;
                    }
                }
                if (c10 == 2) {
                    com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=OAUTH_TYPE_WEB");
                    a(bdOauthDTO.state);
                    return;
                } else if (c10 != 3) {
                    return;
                }
            }
            String str2 = c10 == 3 ? "OAUTH_TYPE_BOTH_V2" : "OAUTH_TYPE_BOTH";
            if (intentA != null) {
                com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=" + str2 + ", intent not null");
                a(intentA, bdOauthDTO.state);
                return;
            }
            Intent intentA2 = new h().a(this.f8169i, mapA, false);
            if (intentA2 != null) {
                com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=" + str2 + ", intent is null, but intent2 not null");
                this.f8174n = true;
                a(intentA2, bdOauthDTO.state);
                return;
            }
            com.baidu.oauth.sdkbqt.a.d.a(str, "authorize oauthType=" + str2 + ", intent is null, then OAUTH_TYPE_WEB");
            if (bdOauthDTO.isSilent) {
                a(bdOauthDTO.state, true, true);
            } else {
                a(bdOauthDTO.state);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x01c8 A[Catch: Exception -> 0x020c, TryCatch #3 {Exception -> 0x020c, blocks: (B:67:0x01a7, B:69:0x01c8, B:70:0x01d4, B:74:0x01e2), top: B:141:0x01a7 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:80:0x0249  */
    /* JADX WARN: Code duplicated, block: B:81:0x024d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0251  */
    /* JADX WARN: Code duplicated, block: B:84:0x0255  */
    public void authorizeCallBack(int i10, int i11, Intent intent) {
        String str;
        HashMap map;
        JSONObject jSONObject;
        String str2;
        String str3 = "0";
        String stringExtra = intent == null ? "" : intent.getStringExtra(EXTRA_OAUTH_RESULT_JSON);
        String str4 = f8161a;
        com.baidu.oauth.sdkbqt.a.d.a(str4, "authorizeCallBack, requestCode is " + i10 + " code is " + i11 + " and result is " + stringExtra + ", isInstallBDApp: " + this.f8174n);
        if (i10 != 1001 && i10 != 1002 && i10 != 1003) {
            return;
        }
        if (!this.f8173m) {
            BdOauthResult bdOauthResult = new BdOauthResult();
            this.f8172l = bdOauthResult;
            bdOauthResult.isVisibleAuth = !this.f8171k.isSilent;
        }
        BdOauthResult bdOauthResult2 = this.f8172l;
        bdOauthResult2.isInstallBdApp = this.f8174n;
        String str5 = "code";
        if (i11 == 0 || intent == null) {
            String str6 = stringExtra;
            if (TextUtils.isEmpty(str6)) {
                com.baidu.oauth.sdkbqt.a.d.a(str4, "isInstallBDApp: " + this.f8174n + ", ERROR_CODE_USER_REJECT_OPEN_APP");
                BdOauthResult bdOauthResult3 = this.f8172l;
                bdOauthResult3.resultSubCode = OauthResult.ERROR_CODE_USER_REJECT_OPEN_APP;
                bdOauthResult3.resultSubMsg = OauthResult.ERROR_MSG_USER_REJECT_OPEN_APP;
                bdOauthResult3.allowLaunchAuthApp = false;
                bdOauthResult3.setResultMsg("");
                this.f8172l.isDegrade = true;
                this.f8173m = true;
                a(this.f8171k.state, true);
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(str6);
                this.f8172l.setResultCode(jSONObject2.optInt("code"));
                if (jSONObject2.has("msg")) {
                    this.f8172l.setResultMsg(jSONObject2.optString("msg"));
                }
            } catch (JSONException e10) {
                com.baidu.oauth.sdkbqt.a.d.d(f8161a, "isInstallBDApp: " + this.f8174n + ", RESULT_CANCELED || json == null, " + e10);
                this.f8172l.setResultCode(!this.f8174n ? OauthResult.ERROR_CODE_NOT_INSTALL_BAIDU_APP : OauthResult.ERROR_CODE_USER_REJECT_OPEN_APP);
            }
            if (this.f8173m || i10 != 1001 || this.f8171k.oauthType != 3 || this.f8172l.getResultCode() == -205) {
                this.f8170j.onFailure(this.f8172l);
                this.f8173m = false;
                HashMap map2 = new HashMap();
                if (i10 == 1001) {
                    map2.put("oauth_type", "sso");
                } else if (i10 == 1002) {
                    map2.put("oauth_type", "web");
                } else {
                    map2.put("oauth_type", "qr_code");
                }
                map2.put("code", this.f8172l.getResultCode() + "");
                map2.put("msg", this.f8172l.getResultMsg());
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8146d, map2);
                com.baidu.oauth.sdkbqt.a.d.a(f8161a, "authorizeCallBack, Activity.RESULT_CANCELED, onFailure, result " + this.f8172l.toString());
                return;
            }
            try {
                JSONObject jSONObject3 = new JSONObject(str6);
                this.f8172l.resultSubCode = jSONObject3.optInt("code");
                if (jSONObject3.has("msg")) {
                    this.f8172l.resultSubMsg = jSONObject3.optString("msg");
                }
                if (jSONObject3.has("showLogin")) {
                    this.f8172l.isVisibleAuth = "1".equals(jSONObject3.optString("showLogin"));
                }
                this.f8172l.setResultMsg("");
            } catch (JSONException e11) {
                com.baidu.oauth.sdkbqt.a.d.d(f8161a, "first InProgress," + e11);
                BdOauthResult bdOauthResult4 = this.f8172l;
                boolean z10 = this.f8174n;
                bdOauthResult4.resultSubCode = !z10 ? OauthResult.ERROR_CODE_NOT_INSTALL_BAIDU_APP : OauthResult.ERROR_CODE_USER_REJECT_OPEN_APP;
                bdOauthResult4.resultSubMsg = !z10 ? OauthResult.ERROR_MSG_NOT_INSTALL_BAIDU_APP : OauthResult.ERROR_MSG_USER_REJECT_OPEN_APP;
            }
            this.f8172l.isDegrade = true;
            a(this.f8171k.state, true);
            this.f8173m = true;
            return;
        }
        if (i11 != -1) {
            return;
        }
        if (i10 == 1001 && this.f8171k.oauthType == 3) {
            bdOauthResult2.isVisibleAuth = true;
        }
        try {
            JSONObject jSONObject4 = new JSONObject(stringExtra);
            String strOptString = jSONObject4.optString("accessToken");
            String strOptString2 = jSONObject4.optString("code");
            str = stringExtra;
            if (i10 == 1001) {
                try {
                    str2 = "code";
                    if (this.f8171k.oauthType == 3) {
                        try {
                            this.f8172l.isPassNewVersion = jSONObject4.has("showLogin");
                        } catch (JSONException e12) {
                            e = e12;
                            str5 = str2;
                            com.baidu.oauth.sdkbqt.a.d.a(e);
                            try {
                                jSONObject = new JSONObject(str);
                                this.f8172l.setCode(jSONObject.optString(str5));
                                this.f8172l.setState(jSONObject.optString(NoticeTopAnimActivityDialog_.STATE_EXTRA));
                                if (jSONObject.has("showLogin")) {
                                    this.f8172l.isVisibleAuth = "1".equals(jSONObject.optString("showLogin"));
                                }
                                BdOauthResult bdOauthResult5 = this.f8172l;
                                if ("1".equals(jSONObject.optString("showLogin"))) {
                                    str3 = "1";
                                }
                                bdOauthResult5.loginStateBeforeAuth = str3;
                                this.f8172l.loginStateAfterAuth = jSONObject.optString("finishLogin");
                                this.f8172l.appVersion = jSONObject.optString("app_version");
                                this.f8172l.passSdkVersion = jSONObject.optString("pass_sdk_version");
                                this.f8172l.setResultCode(0);
                                this.f8170j.onSuccess(this.f8172l);
                            } catch (Exception e13) {
                                com.baidu.oauth.sdkbqt.a.d.a(e13);
                                this.f8172l.setResultCode(OauthResult.ERROR_CODE_UNKNOW_ERROR);
                                this.f8170j.onFailure(this.f8172l);
                            }
                            com.baidu.oauth.sdkbqt.a.d.a(f8161a, "authorizeCallBack, Activity.RESULT_OK, code = " + this.f8172l.toString());
                            map = new HashMap();
                            if (i10 == 1001) {
                                map.put("oauth_type", "sso");
                            } else if (i10 == 1002) {
                                map.put("oauth_type", "web");
                            } else {
                                map.put("oauth_type", "qr_code");
                            }
                            com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8145c, map);
                        }
                    }
                } catch (JSONException e14) {
                    e = e14;
                    com.baidu.oauth.sdkbqt.a.d.a(e);
                    jSONObject = new JSONObject(str);
                    this.f8172l.setCode(jSONObject.optString(str5));
                    this.f8172l.setState(jSONObject.optString(NoticeTopAnimActivityDialog_.STATE_EXTRA));
                    if (jSONObject.has("showLogin")) {
                        this.f8172l.isVisibleAuth = "1".equals(jSONObject.optString("showLogin"));
                    }
                    BdOauthResult bdOauthResult6 = this.f8172l;
                    if ("1".equals(jSONObject.optString("showLogin"))) {
                        str3 = "1";
                    }
                    bdOauthResult6.loginStateBeforeAuth = str3;
                    this.f8172l.loginStateAfterAuth = jSONObject.optString("finishLogin");
                    this.f8172l.appVersion = jSONObject.optString("app_version");
                    this.f8172l.passSdkVersion = jSONObject.optString("pass_sdk_version");
                    this.f8172l.setResultCode(0);
                    this.f8170j.onSuccess(this.f8172l);
                    com.baidu.oauth.sdkbqt.a.d.a(f8161a, "authorizeCallBack, Activity.RESULT_OK, code = " + this.f8172l.toString());
                    map = new HashMap();
                    if (i10 == 1001) {
                        map.put("oauth_type", "sso");
                    } else if (i10 == 1002) {
                        map.put("oauth_type", "web");
                    } else {
                        map.put("oauth_type", "qr_code");
                    }
                    com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8145c, map);
                }
            } else {
                str2 = "code";
            }
            if (jSONObject4.has("showLogin")) {
                this.f8172l.isVisibleAuth = "1".equals(jSONObject4.optString("showLogin"));
            }
            if ("1".equals(jSONObject4.optString("showLogin"))) {
                this.f8172l.loginStateBeforeAuth = "0";
            } else {
                this.f8172l.loginStateBeforeAuth = "1";
            }
            this.f8172l.loginStateAfterAuth = jSONObject4.optString("finishLogin");
            this.f8172l.appVersion = jSONObject4.optString("app_version");
            this.f8172l.passSdkVersion = jSONObject4.optString("pass_sdk_version");
            if (TextUtils.isEmpty(strOptString) || !TextUtils.isEmpty(strOptString2)) {
                str5 = str2;
                jSONObject = new JSONObject(str);
                this.f8172l.setCode(jSONObject.optString(str5));
                this.f8172l.setState(jSONObject.optString(NoticeTopAnimActivityDialog_.STATE_EXTRA));
                if (jSONObject.has("showLogin")) {
                    this.f8172l.isVisibleAuth = "1".equals(jSONObject.optString("showLogin"));
                }
                BdOauthResult bdOauthResult7 = this.f8172l;
                if ("1".equals(jSONObject.optString("showLogin"))) {
                    str3 = "1";
                }
                bdOauthResult7.loginStateBeforeAuth = str3;
                this.f8172l.loginStateAfterAuth = jSONObject.optString("finishLogin");
                this.f8172l.appVersion = jSONObject.optString("app_version");
                this.f8172l.passSdkVersion = jSONObject.optString("pass_sdk_version");
                this.f8172l.setResultCode(0);
                this.f8170j.onSuccess(this.f8172l);
                com.baidu.oauth.sdkbqt.a.d.a(f8161a, "authorizeCallBack, Activity.RESULT_OK, code = " + this.f8172l.toString());
                map = new HashMap();
                if (i10 == 1001) {
                    map.put("oauth_type", "sso");
                } else if (i10 == 1002) {
                    map.put("oauth_type", "web");
                } else {
                    map.put("oauth_type", "qr_code");
                }
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8145c, map);
            }
            this.f8172l.setResultCode(-208);
            this.f8170j.onFailure(this.f8172l);
            HashMap map3 = new HashMap();
            if (i10 == 1001) {
                map3.put("oauth_type", "sso");
            } else if (i10 == 1002) {
                map3.put("oauth_type", "web");
            } else {
                map3.put("oauth_type", "qr_code");
            }
            str5 = str2;
            try {
                map3.put(str5, this.f8172l.getResultCode() + "");
                map3.put("msg", this.f8172l.getResultMsg());
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8146d, map3);
                com.baidu.oauth.sdkbqt.a.d.a(str4, "authorizeCallBack, Activity.RESULT_OK, onFailure lowPass, result " + this.f8172l.toString());
            } catch (JSONException e15) {
                e = e15;
                com.baidu.oauth.sdkbqt.a.d.a(e);
                jSONObject = new JSONObject(str);
                this.f8172l.setCode(jSONObject.optString(str5));
                this.f8172l.setState(jSONObject.optString(NoticeTopAnimActivityDialog_.STATE_EXTRA));
                if (jSONObject.has("showLogin")) {
                    this.f8172l.isVisibleAuth = "1".equals(jSONObject.optString("showLogin"));
                }
                BdOauthResult bdOauthResult8 = this.f8172l;
                if ("1".equals(jSONObject.optString("showLogin"))) {
                    str3 = "1";
                }
                bdOauthResult8.loginStateBeforeAuth = str3;
                this.f8172l.loginStateAfterAuth = jSONObject.optString("finishLogin");
                this.f8172l.appVersion = jSONObject.optString("app_version");
                this.f8172l.passSdkVersion = jSONObject.optString("pass_sdk_version");
                this.f8172l.setResultCode(0);
                this.f8170j.onSuccess(this.f8172l);
                com.baidu.oauth.sdkbqt.a.d.a(f8161a, "authorizeCallBack, Activity.RESULT_OK, code = " + this.f8172l.toString());
                map = new HashMap();
                if (i10 == 1001) {
                    map.put("oauth_type", "sso");
                } else if (i10 == 1002) {
                    map.put("oauth_type", "web");
                } else {
                    map.put("oauth_type", "qr_code");
                }
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8145c, map);
            }
        } catch (JSONException e16) {
            e = e16;
            str = stringExtra;
        }
    }

    private boolean a(BdOauthCallback bdOauthCallback) {
        com.baidu.oauth.sdkbqt.a.h.a(bdOauthCallback, "please set auth listener");
        this.f8170j = bdOauthCallback;
        if (com.baidu.oauth.sdkbqt.a.h.a(com.kuaishou.weapon.p0.g.f74777a, this.f8169i)) {
            if (BdOauthSdk.getAuthInfo() != null) {
                return true;
            }
            BdOauthResult bdOauthResult = new BdOauthResult();
            bdOauthResult.setResultCode(OauthResult.ERROR_CODE_SDK_NOT_INIT);
            bdOauthCallback.onFailure(bdOauthResult);
            return false;
        }
        throw new IllegalArgumentException("Application requires permission to access the Internet");
    }

    private void a(Intent intent, String str) {
        AuthInfo authInfo = BdOauthSdk.getAuthInfo();
        intent.putExtra(f8165e, authInfo.getAppKey());
        intent.putExtra(EXTRA_REDIRECT_URL, authInfo.getRedirectUrl());
        intent.putExtra(EXTRA_SCOPE, authInfo.getScope());
        intent.putExtra(EXTRA_OAUTH_STATE, str);
        intent.putExtra(f8167g, "2.0.6.10");
        intent.putExtra(EXTRA_USE_SHA1_AUTH, authInfo.isUseSha1());
        intent.putExtra(f8168h, "8.8.8");
        this.f8169i.startActivityForResult(intent, 1001);
        HashMap map = new HashMap();
        map.put("oauth_type", "sso");
        com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8144b, map);
    }

    private void a(String str) {
        a(str, false);
    }

    private void a(String str, boolean z10) {
        a(str, z10, false);
    }

    private void a(String str, boolean z10, boolean z11) {
        new a().a(this.f8169i, BdOauthSdk.getAuthInfo().getDeviceId());
        Intent intent = new Intent(this.f8169i, (Class<?>) WebViewActivity.class);
        intent.putExtra(EXTRA_OAUTH_STATE, str);
        intent.putExtra(EXTRA_DEGRADE_H5_AUTH, z10);
        intent.putExtra(EXTRA_DEGRADE_EXEMPT_AUTH_PAGE, z11);
        this.f8169i.startActivityForResult(intent, 1002);
        HashMap map = new HashMap();
        map.put("oauth_type", "web");
        map.put("isDegrade", z10 ? "1" : "0");
        com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8144b, map);
    }

    public void authorize(BdOauthCallback bdOauthCallback) {
        authorize(new BdOauthDTO(), bdOauthCallback);
    }

    public void authorize(String str, BdOauthCallback bdOauthCallback) {
        authorize(str, bdOauthCallback, 0);
    }

    public void authorize(String str, BdOauthCallback bdOauthCallback, int i10) {
        if (a(bdOauthCallback)) {
            BdOauthResult bdOauthResult = new BdOauthResult();
            HashMap map = new HashMap();
            map.put("oauth_type", "qr_code");
            com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8144b, map);
            AuthInfo authInfo = BdOauthSdk.getAuthInfo();
            if (i10 == 2) {
                a(authInfo.getRedirectUrl(), str);
                HashMap map2 = new HashMap();
                map2.put("oauth_type", "qr_web");
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8144b, map2);
                return;
            }
            Intent intentA = new h().a(this.f8169i, com.baidu.oauth.sdkbqt.a.b.f8125e, false);
            if (intentA != null) {
                intentA.putExtra(f8165e, authInfo.getAppKey());
                intentA.putExtra(EXTRA_REDIRECT_URL, authInfo.getRedirectUrl());
                intentA.putExtra(EXTRA_SCOPE, authInfo.getScope());
                intentA.putExtra(EXTRA_QR_CODE_URL, str);
                intentA.putExtra(f8166f, 1);
                intentA.putExtra(f8167g, "2.0.6.10");
                intentA.putExtra(f8168h, "8.8.8");
                this.f8169i.startActivityForResult(intentA, 1003);
                return;
            }
            if (i10 == 1) {
                a(authInfo.getRedirectUrl(), str);
                HashMap map3 = new HashMap();
                map3.put("oauth_type", "qr_web");
                com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8144b, map3);
                return;
            }
            bdOauthResult.setResultCode(OauthResult.ERROR_CODE_NOT_INSTALL_BAIDU_APP);
            bdOauthCallback.onFailure(bdOauthResult);
            HashMap map4 = new HashMap();
            map4.put("oauth_type", "qr_code");
            map.put("code", bdOauthResult.getResultCode() + "");
            map.put("msg", bdOauthResult.getResultMsg());
            map.put(EXTRA_SCOPE, authInfo.getScope());
            com.baidu.oauth.sdkbqt.a.f.a(com.baidu.oauth.sdkbqt.a.f.f8146d, map4);
        }
    }

    private void a(String str, String str2) {
        new a().a(this.f8169i, BdOauthSdk.getAuthInfo().getDeviceId());
        Intent intent = new Intent(this.f8169i, (Class<?>) WebViewActivity.class);
        intent.putExtra(EXTRA_GUID_TYPE, 1);
        intent.putExtra(EXTRA_REDIRECT_URL, str);
        intent.putExtra(EXTRA_QR_CODE_URL, str2);
        this.f8169i.startActivityForResult(intent, 1002);
    }
}
