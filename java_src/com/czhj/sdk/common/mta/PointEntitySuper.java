package com.czhj.sdk.common.mta;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.alipay.sdk.packet.d;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.webrtc.haima.HmRtcEnvironment;
import x.a;

/* JADX INFO: loaded from: classes9.dex */
public abstract class PointEntitySuper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25509a = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicLong f25510b = new AtomicLong(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f25511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f25512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f25513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f25514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f25515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f25516h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f25517i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, String> f25518j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f25519k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f25520l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f25521m;
    protected Object mPointEntityClass;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f25522n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f25523o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25524p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f25525q = f25510b.getAndIncrement();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f25526r = System.currentTimeMillis();

    private boolean a(String str) {
        return Arrays.asList("motion_before", "motion_after", PointParamKey.FREQUENCY_CONTROL_LIST).contains(str);
    }

    public static String captureName(String str) {
        char[] charArray = str.toCharArray();
        char c10 = charArray[0];
        if (c10 <= '`' || c10 >= '{') {
            return str;
        }
        charArray[0] = (char) (c10 - ' ');
        return String.valueOf(charArray);
    }

    public static String getSessionId() {
        return f25509a;
    }

    public static String lowFirstChar(String str) {
        char[] charArray = str.toCharArray();
        char c10 = charArray[0];
        if (c10 <= '@' || c10 >= '[') {
            return str;
        }
        charArray[0] = (char) (c10 + ' ');
        return String.valueOf(charArray);
    }

    public static String toURLEncoded(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(new String(str.getBytes(), "UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            SigmobLog.e(e10.getMessage());
            return "";
        }
    }

    public abstract String appId();

    public void commit() {
        this.mPointEntityClass = this;
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.PointEntitySuper.1
            @Override // java.lang.Runnable
            public void run() {
                PointEntitySuper.this.insertToDB(null);
            }
        });
    }

    public String getAc_type() {
        return this.f25511c;
    }

    public String getAndroid_id() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getAndroidId() : deviceContext.getAndroidId();
    }

    public String getAppinfo_switch() {
        return this.f25513e;
    }

    public String getCarrier() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getNetworkOperatorForUrl() : deviceContext.getCarrier();
    }

    public String getCategory() {
        return this.f25515g;
    }

    public String getClientversion() {
        return ClientMetadata.getDeviceOsVersion();
    }

    public int getCompatible() {
        return this.f25524p;
    }

    public abstract DeviceContext getDeviceContext();

    public String getExt() {
        return this.f25517i;
    }

    public String getGameversion() {
        return ClientMetadata.getInstance().getAppVersion();
    }

    public String getGoogle_aid() {
        return ClientMetadata.getInstance().getAdvertisingId();
    }

    public String getImei() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getDeviceId() : deviceContext.getImei();
    }

    public String getImei1() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getDeviceId(0) : deviceContext.getImei1();
    }

    public String getImei2() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getDeviceId(1) : deviceContext.getImei2();
    }

    public int getIntegration() {
        return this.f25522n;
    }

    public String getIs_mediation() {
        return this.f25512d;
    }

    public String getLocation_switch() {
        return this.f25514f;
    }

    public String getMd5() {
        return this.f25520l;
    }

    public String getName() {
        return this.f25521m;
    }

    public String getNetworktype() {
        return String.valueOf(ClientMetadata.getInstance().getActiveNetworkType());
    }

    public String getOaid() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getOAID() : deviceContext.getOaid();
    }

    public String getOaid_api() {
        return ClientMetadata.getInstance().getOAID_API();
    }

    public Map<String, String> getOptions() {
        if (this.f25518j == null) {
            this.f25518j = new HashMap();
        }
        return this.f25518j;
    }

    public String getOs() {
        return "2";
    }

    public abstract String getSdkversion();

    public String getSeconds_from_GMT() {
        return String.valueOf(((TimeZone.getDefault().getRawOffset() / 1000) / 60) / 60);
    }

    public String getSeq_id() {
        return String.valueOf(this.f25525q);
    }

    public String getSha1() {
        return this.f25519k;
    }

    public String getSub_category() {
        return this.f25516h;
    }

    public String getTime_zone() {
        return TimeZone.getDefault().getID();
    }

    public String getTimestamp() {
        return String.valueOf(this.f25526r);
    }

    public String getUdid() {
        return ClientMetadata.getInstance().getUDID();
    }

    public String getUid() {
        return ClientMetadata.getUid();
    }

    public String getUser_id() {
        return ClientMetadata.getUserId();
    }

    public String getVersion() {
        return this.f25523o;
    }

    public String getWmsession_id() {
        return f25509a;
    }

    public void insertToDB(final SQLiteMTAHelper.ExecCallBack execCallBack) {
        try {
            if (!isAcTypeBlock() && !TextUtils.isEmpty(appId())) {
                Map<String, Object> map = toMap();
                Map<String, String> options = getOptions();
                if (options != null) {
                    map.remove("options");
                    map.putAll(options);
                }
                map.put("_uniq_key", "sigandroid_" + appId());
                String jsonString = toJsonString(map);
                if (TextUtils.isEmpty(jsonString)) {
                    return;
                }
                SigmobLog.d("dcdebug:" + jsonString);
                SQLiteMTAHelper sQLiteMTAHelper = SQLiteMTAHelper.getInstance();
                if (sQLiteMTAHelper == null) {
                    return;
                }
                SQLiteDatabase writableDatabase = sQLiteMTAHelper.getWritableDatabase();
                SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
                builder.setTableName(SQLiteMTAHelper.TABLE_POINT);
                HashMap map2 = new HashMap();
                map2.put("item", AESUtil.EncryptString(jsonString, Constants.AESKEY));
                map2.put("encryption", 1);
                builder.setColumnValues(map2);
                SQLiteMTAHelper.insert(writableDatabase, builder.build(), new SQLiteMTAHelper.ExecCallBack() { // from class: com.czhj.sdk.common.mta.PointEntitySuper.2
                    @Override // com.czhj.sdk.common.Database.SQLiteMTAHelper.ExecCallBack
                    public void onFailed(Throwable th) {
                        SQLiteMTAHelper.ExecCallBack execCallBack2 = execCallBack;
                        if (execCallBack2 != null) {
                            execCallBack2.onFailed(th);
                        }
                        SigmobLog.e(th.getMessage());
                    }

                    @Override // com.czhj.sdk.common.Database.SQLiteMTAHelper.ExecCallBack
                    public void onSuccess() {
                        SigmobLog.d("insert success!");
                        SQLiteMTAHelper.ExecCallBack execCallBack2 = execCallBack;
                        if (execCallBack2 != null) {
                            execCallBack2.onSuccess();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public abstract boolean isAcTypeBlock();

    public void sendServe() {
        sendServe(null);
    }

    public void setAc_type(String str) {
        this.f25511c = str;
    }

    public void setAppinfo_switch(String str) {
        this.f25513e = str;
    }

    public void setCategory(String str) {
        this.f25515g = str;
    }

    public void setCompatible(int i10) {
        this.f25524p = i10;
    }

    public void setExt(String str) {
        this.f25517i = str;
    }

    public void setIntegration(int i10) {
        this.f25522n = i10;
    }

    public void setIs_mediation(String str) {
        this.f25512d = str;
    }

    public void setLocation_switch(String str) {
        this.f25514f = str;
    }

    public void setMd5(String str) {
        this.f25520l = str;
    }

    public void setName(String str) {
        this.f25521m = str;
    }

    public void setOptions(Map<String, String> map) {
        Map<String, String> options = getOptions();
        this.f25518j = options;
        options.putAll(map);
    }

    public void setSha1(String str) {
        this.f25519k = str;
    }

    public void setSub_category(String str) {
        this.f25516h = str;
    }

    public void setTimestamp(String str) {
    }

    public void setVersion(String str) {
        this.f25523o = str;
    }

    public String testJsonString() {
        Map<String, Object> map = toMap();
        if (getOptions() != null) {
            map.remove("options");
            map.putAll(getOptions());
        }
        return toJsonString(map);
    }

    public String toJsonString(Map<String, Object> map) {
        String string;
        if (map.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        boolean z10 = false;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                if (z10) {
                    sb2.append(",");
                }
                sb2.append(a.f97579g + key + "\":");
                if (value instanceof String) {
                    string = (String) value;
                    if (!a(key)) {
                        string = toURLEncoded(string);
                    }
                } else {
                    string = value.toString();
                }
                if (string.startsWith("{") || string.startsWith("[")) {
                    sb2.append(string);
                } else {
                    sb2.append(a.f97579g + string + a.f97579g);
                }
                z10 = true;
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    public Map<String, Object> toMap() {
        List<Method> methodWithTraversal = ReflectionUtil.getMethodWithTraversal(this.mPointEntityClass.getClass());
        if (methodWithTraversal == null || methodWithTraversal.isEmpty()) {
            return new HashMap();
        }
        HashMap map = new HashMap(methodWithTraversal.size());
        for (Method method : methodWithTraversal) {
            String name = method.getName();
            if (name.startsWith("get") && !name.equals("getLogs") && !name.equals("getDeviceContext")) {
                try {
                    Object objInvoke = method.invoke(this.mPointEntityClass, new Object[0]);
                    String strLowFirstChar = lowFirstChar(name.substring(3));
                    if (objInvoke != null && (!(objInvoke instanceof String) || !TextUtils.isEmpty((String) objInvoke))) {
                        if (strLowFirstChar.equalsIgnoreCase(f.f80408k)) {
                            strLowFirstChar = "content-length";
                        } else if (strLowFirstChar.equalsIgnoreCase("content_type")) {
                            strLowFirstChar = d.f7182f;
                        } else if (strLowFirstChar.equalsIgnoreCase("ac_type")) {
                            strLowFirstChar = PointParamKey._AC_TYPE;
                        } else if (strLowFirstChar.equalsIgnoreCase(HmRtcEnvironment.kUserId)) {
                            strLowFirstChar = "_user_id";
                        } else if (!strLowFirstChar.equalsIgnoreCase("class")) {
                        }
                        map.put(strLowFirstChar, objInvoke);
                    }
                } catch (Throwable th) {
                    SigmobLog.e("name " + name + th.getMessage());
                }
            }
        }
        return map;
    }

    public void sendServe(BuriedPointRequest.RequestListener requestListener) {
        this.mPointEntityClass = this;
        String jsonString = toJsonString(toMap());
        if (TextUtils.isEmpty(jsonString)) {
            return;
        }
        try {
            String str = "sigandroid_" + appId();
            BuriedPointRequest.BuriedPointSend(toURLEncoded(BuriedPointManager.deflateAndBase64("_uniq_key=" + str + "&_batch_value=" + ("[" + jsonString + "]"))), requestListener);
        } catch (Exception e10) {
            SigmobLog.e(e10.getMessage());
        }
    }
}
