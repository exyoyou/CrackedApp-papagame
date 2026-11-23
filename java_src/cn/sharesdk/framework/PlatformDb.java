package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.czhj.sdk.common.Constants;
import com.kuaishou.weapon.p0.t;
import com.mob.MobSDK;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.SharePrefrenceHelper;
import com.papa91.common.BaseAppConfig;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class PlatformDb {
    private static final String DB_NAME = "cn_sharesdk_weibodb";
    private String platformNname;
    private int platformVersion;
    private SharePrefrenceHelper sp;

    public PlatformDb(String str, int i10) {
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.sp = sharePrefrenceHelper;
        sharePrefrenceHelper.open("cn_sharesdk_weibodb_" + str, i10);
        this.platformNname = str;
        this.platformVersion = i10;
    }

    public String exportData() {
        try {
            HashMap map = new HashMap();
            map.putAll(this.sp.getAll());
            return new Hashon().fromHashMap(map);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    public String get(String str) {
        return this.sp.getString(str);
    }

    public String getAuthCode() {
        return this.sp.getString("authCode");
    }

    public long getExpiresIn() {
        try {
            try {
                return this.sp.getLong("expiresIn");
            } catch (Throwable unused) {
                return 0L;
            }
        } catch (Throwable unused2) {
            return this.sp.getInt("expiresIn");
        }
    }

    public long getExpiresTime() {
        return this.sp.getLong("expiresTime") + (getExpiresIn() * 1000);
    }

    public String getPlatformNname() {
        return this.platformNname;
    }

    public int getPlatformVersion() {
        return this.platformVersion;
    }

    public String getToken() {
        return this.sp.getString(Constants.TOKEN);
    }

    public String getTokenSecret() {
        return this.sp.getString("secret");
    }

    public String getUserGender() {
        String string = this.sp.getString("gender");
        if ("0".equals(string)) {
            return t.f74888m;
        }
        if ("1".equals(string)) {
            return com.xinzhu.overmind.server.os.f.TAG;
        }
        return null;
    }

    public String getUserIcon() {
        return this.sp.getString("icon");
    }

    public String getUserId() {
        String string = this.sp.getString(BaseAppConfig.KEY_START_USERID);
        return TextUtils.isEmpty(string) ? this.sp.getString("weibo") : string;
    }

    public String getUserName() {
        return this.sp.getString("nickname");
    }

    public void importData(String str) {
        try {
            HashMap<String, Object> mapFromJson = new Hashon().fromJson(str);
            if (mapFromJson != null) {
                this.sp.putAll(mapFromJson);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public boolean isValid() {
        String token = getToken();
        if (token == null || token.length() <= 0) {
            return false;
        }
        return getExpiresIn() == 0 || getExpiresTime() > System.currentTimeMillis();
    }

    public void put(String str, String str2) {
        this.sp.putString(str, str2);
    }

    public void putAuthCode(String str) {
        this.sp.putString("authCode", str);
    }

    public void putExpiresIn(long j10) {
        this.sp.putLong("expiresIn", Long.valueOf(j10));
        this.sp.putLong("expiresTime", Long.valueOf(System.currentTimeMillis()));
    }

    public void putToken(String str) {
        this.sp.putString(Constants.TOKEN, str);
    }

    public void putTokenSecret(String str) {
        this.sp.putString("secret", str);
    }

    public void putUserId(String str) {
        this.sp.putString(BaseAppConfig.KEY_START_USERID, str);
    }

    public void removeAccount() {
        this.sp.clear();
    }
}
