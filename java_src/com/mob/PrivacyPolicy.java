package com.mob;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.UIHandler;
import com.mob.tools.proguard.ClassKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.umeng.umcrash.UMCrash;
import java.io.Serializable;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PrivacyPolicy implements ClassKeeper, PublicMemberKeeper, Serializable {
    public static final int POLICY_TYPE_TXT = 2;
    public static final int POLICY_TYPE_URL = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f75447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f75449d;

    public interface OnPolicyListener extends ClassKeeper, PublicMemberKeeper {
        void onComplete(PrivacyPolicy privacyPolicy);

        void onFailure(Throwable th);
    }

    public PrivacyPolicy() {
    }

    private String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new String(Data.AES128Decode(Data.rawMD5(MobSDK.getAppkey() + ":" + DH.SyncMtd.getPackageName() + ":" + getTimestamp()), Base64.decode(str, 0)), "UTF-8");
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public static PrivacyPolicy getPrivacyPolicy(int i10, Locale locale) throws Throwable {
        return null;
    }

    @Deprecated
    public static void getPrivacyPolicyAsync(int i10, OnPolicyListener onPolicyListener) {
        getPrivacyPolicyAsync(i10, null, onPolicyListener);
    }

    public String getContent() {
        return this.f75447b;
    }

    public int getPpVersion() {
        return this.f75448c;
    }

    public long getTimestamp() {
        return this.f75449d;
    }

    public String getTitle() {
        return this.f75446a;
    }

    public void setContent(String str) {
        this.f75447b = str;
    }

    public void setPpVersion(int i10) {
        this.f75448c = i10;
    }

    public void setTimestamp(long j10) {
        this.f75449d = j10;
    }

    public void setTitle(String str) {
        this.f75446a = str;
    }

    public PrivacyPolicy(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            setTimestamp(jSONObject.optLong(UMCrash.SP_KEY_TIMESTAMP));
            setTitle(a(jSONObject.optString("title")));
            setContent(a(jSONObject.optString("content")));
            String strA = a(jSONObject.optString("ppVersion"));
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            setPpVersion(Integer.parseInt(strA.trim()));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @Deprecated
    public static void getPrivacyPolicyAsync(int i10, Locale locale, final OnPolicyListener onPolicyListener) {
        if (onPolicyListener != null) {
            final Throwable th = new Throwable("This api is Deprecated, please do not call it");
            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.PrivacyPolicy.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    onPolicyListener.onFailure(th);
                    return false;
                }
            });
        }
    }
}
