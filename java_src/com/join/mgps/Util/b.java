package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.db.tables.TokenTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.UserInfo;
import external.org.apache.commons.lang3.ObjectUtils;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EBean(scope = EBean.Scope.Singleton)
public class b {
    private static final String TAG = "b";

    @Pref
    PrefDef_ prefDef;

    public static boolean piv(UserInfo userInfo) {
        if (userInfo == null || t2.h(userInfo.getSecretKey())) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(a.b(userInfo.getSecretKey()));
            int iOptInt = jSONObject.optInt("uid");
            String strOptString = jSONObject.optString(Constants.TOKEN);
            String strB = a.b(jSONObject.optString(bm.aM));
            String[] strArrSplit = t2.i(strB) ? strB.split(com.haima.hmcp.Constants.TIPS_SPECIAL_TAG) : null;
            return strArrSplit != null && iOptInt == userInfo.getUid() && strOptString.equals(userInfo.getToken()) && strArrSplit.length > 1 && t2.i(strArrSplit[1]) && Integer.valueOf(strArrSplit[1]).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String[] pivCld(String sKey) {
        if (t2.h(sKey)) {
            return new String[0];
        }
        try {
            String strB = a.b(sKey);
            if (t2.i(strB)) {
                return strB.split(com.haima.hmcp.Constants.TIPS_SPECIAL_TAG);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new String[0];
    }

    public static boolean pivc(UserInfo userInfo) {
        if (userInfo == null || t2.h(userInfo.getSecretKey()) || userInfo.getAccountType() == 2) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(a.b(userInfo.getSecretKey()));
            int iOptInt = jSONObject.optInt("uid");
            String strOptString = jSONObject.optString(Constants.TOKEN);
            String strB = a.b(jSONObject.optString("c"));
            String[] strArrSplit = t2.i(strB) ? strB.split(com.haima.hmcp.Constants.TIPS_SPECIAL_TAG) : null;
            return strArrSplit != null && iOptInt == userInfo.getUid() && strOptString.equals(userInfo.getToken()) && strArrSplit.length > 1 && "true".equals(strArrSplit[1]);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static String vl(String sec) {
        if (t2.h(sec)) {
            return "0";
        }
        String[] strArrSplit = new String[2];
        if (t2.i(sec)) {
            strArrSplit = sec.split(com.haima.hmcp.Constants.TIPS_SPECIAL_TAG);
        }
        return (strArrSplit == null || strArrSplit.length <= 1) ? "0" : strArrSplit[1];
    }

    public void accountLoginOut(Context context) {
        com.join.mgps.rpc.h.f72329d0 = null;
        this.prefDef.accountDataV3().g("");
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        if (platform.isAuthValid()) {
            platform.removeAccount(true);
        }
        Platform platform2 = ShareSDK.getPlatform(QQ.NAME);
        if (platform2.isAuthValid()) {
            platform2.removeAccount(true);
        }
        Platform platform3 = ShareSDK.getPlatform(SinaWeibo.NAME);
        if (platform3.isAuthValid()) {
            platform3.removeAccount(true);
        }
        Intent intent = new Intent();
        intent.setAction(p5.a.f96217r);
        context.sendBroadcast(intent);
        r0.N();
        r0.g1();
        com.wufan.friend.chat.c.u().M();
        b1.e(context);
    }

    public UserInfo getAccountData() {
        UserInfo userInfoA;
        try {
            UserInfo userInfo = com.join.mgps.rpc.h.f72329d0;
            if (userInfo != null) {
                return (UserInfo) ObjectUtils.b(userInfo);
            }
            if (this.prefDef == null && MApplication.n() != null) {
                this.prefDef = new PrefDef_(MApplication.n());
            }
            PrefDef_ prefDef_ = this.prefDef;
            if (prefDef_ == null) {
                return UserInfo.newBuilder().build();
            }
            String strD = prefDef_.accountDataV3().d();
            if (t2.i(strD)) {
                UserInfo from = UserInfo.parseFrom(AESUtils.decryptBuf(strD));
                com.join.mgps.rpc.h.f72329d0 = from;
                return from;
            }
            String strD2 = this.prefDef.accountDataV2().d();
            if (t2.i(strD2)) {
                AccountBean accountBean = (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(strD2), AccountBean.class);
                this.prefDef.accountDataV2().g("");
                if (accountBean != null) {
                    userInfoA = g8.a.a(accountBean);
                    com.join.mgps.rpc.h.f72329d0 = userInfoA;
                } else {
                    userInfoA = null;
                }
                if (userInfoA != null) {
                    this.prefDef.accountDataV3().g(AESUtils.e(userInfoA.toByteArray()));
                }
                return userInfoA;
            }
            String strD3 = this.prefDef.accountData().d();
            if (t2.i(strD3)) {
                AccountBean accountBean2 = (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(strD3), AccountBean.class);
                this.prefDef.accountData().g("");
                if (accountBean2 != null) {
                    UserInfo userInfoA2 = g8.a.a(accountBean2);
                    com.join.mgps.rpc.h.f72329d0 = userInfoA2;
                    if (userInfoA2 != null) {
                        this.prefDef.accountDataV3().g(AESUtils.e(userInfoA2.toByteArray()));
                    }
                    return userInfoA2;
                }
            }
            return UserInfo.newBuilder().build();
        } catch (Exception e10) {
            e10.printStackTrace();
            return UserInfo.newBuilder().build();
        }
    }

    public String getAccountStr() {
        return this.prefDef.accountDataV3().d();
    }

    public String getLocalUserIcon() {
        return this.prefDef.localUserIcon().d();
    }

    public String getToken() {
        UserInfo accountData = getAccountData();
        return accountData == null ? "0" : accountData.getToken();
    }

    public String getUid() {
        UserInfo accountData = getAccountData();
        if (accountData == null) {
            return "0";
        }
        return accountData.getUid() + "";
    }

    public boolean isTourist() {
        UserInfo accountData = getAccountData();
        return accountData != null && accountData.getAccountType() == 2;
    }

    public void reload() {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.b(1));
    }

    public void saveAccountData(UserInfo accountBean, Context context) {
        if (accountBean == null) {
            return;
        }
        UserInfo accountData = getAccountData();
        TokenTable tokenTableO = t6.l0.p().o(accountBean.getUid());
        if (tokenTableO == null) {
            tokenTableO = new TokenTable();
            tokenTableO.setUid(accountBean.getUid());
        }
        tokenTableO.setToken(accountBean.getToken());
        t6.l0.p().m(tokenTableO);
        byte[] byteArray = accountBean.toByteArray();
        if (byteArray == null) {
            return;
        }
        com.join.mgps.rpc.h.f72329d0 = accountBean;
        if (accountBean.getAccountType() == 2) {
            this.prefDef.touriseTUID().g(Long.valueOf(accountBean.getUid()));
        }
        String strE = AESUtils.e(byteArray);
        this.prefDef.accountDataV3().g(strE);
        k6.a.b(context, strE);
        k6.a.a(context);
        if (accountData == null || accountData.getUid() != accountBean.getUid()) {
            k6.a.c(context);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.b(4));
        }
        if (isTourist()) {
            return;
        }
        b1.d(context);
    }

    public void setLocalUserIcon(String FilePath) {
        this.prefDef.localUserIcon().g(FilePath);
    }
}
