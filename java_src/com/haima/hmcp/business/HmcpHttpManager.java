package com.haima.hmcp.business;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.JSONObject;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.BaseResult;
import com.haima.hmcp.beans.ConfigureResult;
import com.haima.hmcp.beans.DeviceIdResult;
import com.haima.hmcp.beans.ExtraConfigureResult;
import com.haima.hmcp.beans.GetCloudServiceResult;
import com.haima.hmcp.beans.GetCloudServiceResult2;
import com.haima.hmcp.beans.GetCloudServiceResult3;
import com.haima.hmcp.beans.GetStartStreamingResult;
import com.haima.hmcp.beans.PostJson;
import com.haima.hmcp.beans.RetryErrorcodeConfig;
import com.haima.hmcp.beans.StopServiceResult;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.listeners.OnVolleyListener;
import com.haima.hmcp.utils.CryptoUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetworkUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.json.JSONException;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpHttpManager implements IHmcpHttp {
    private static final String CLIENT_KEY_PASSWORD = "2342342342344433";
    private static final String IS_REAPPLY = "isReapply";
    private static final String TAG = "HmcpHttpManager";
    private String[] errorRetryPlan;
    private Context mContext;
    private IHttp mHttpImpl;
    private String mPasswdKey;
    private boolean mResponseDirect;
    private HashMap<Serializable, Integer> mRetryRequestMap;
    private List<String> mSaasAuthReconnectUrlList;
    private String mSaasAuthUrl;
    private String mServerKey;
    private boolean isStopPlay = false;
    private Handler mHmcpHandler = new Handler(Looper.getMainLooper());

    public HmcpHttpManager(Context context) {
        String str = TAG;
        LogUtils.d(str, "DownFirstFrame--begin HmcpHttpManager----");
        this.mContext = context;
        this.mHttpImpl = new HttpVolleyImpl(context, 0);
        if (TextUtils.isEmpty(HmcpManager.getInstance().getHmcpSaasAuthUrl())) {
            this.mSaasAuthUrl = Constants.HMCP_SAAS_AUTH_URL;
        } else {
            this.mSaasAuthUrl = HmcpManager.getInstance().getHmcpSaasAuthUrl();
        }
        if (TextUtils.isEmpty(Constants.HMCP_SAAS_AUTH_URLIST)) {
            this.mSaasAuthReconnectUrlList = Arrays.asList(this.mSaasAuthUrl);
            return;
        }
        try {
            this.mSaasAuthReconnectUrlList = Arrays.asList(Constants.HMCP_SAAS_AUTH_URLIST.split(","));
            LogUtils.d(str, "SaasAuthReconnectUrlList:" + this.mSaasAuthReconnectUrlList);
        } catch (Exception unused) {
            LogUtils.e(TAG, "HMCP_SAAS_AUTH_URLIST data is wrong cannot split");
        }
    }

    private void dealDnsIPTypeConfig(BaseResult baseResult) {
        if (baseResult != null) {
            DnsManager.getInstance().setClintIPType(baseResult.clientIPType);
        }
    }

    private SSLSocketFactory initSSLSocketFactory(Context context) {
        Certificate certificate;
        try {
            if (HmcpManager.getInstance().getCertificate() != null) {
                LogUtils.d(TAG, "initSSLSocketFactory HmcpManager Certificate:");
                certificate = HmcpManager.getInstance().getCertificate();
            } else {
                LogUtils.d(TAG, "initSSLSocketFactory asstes certificate");
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                InputStream inputStreamOpen = context.getApplicationContext().getAssets().open("https_certificate.pem");
                try {
                    Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(inputStreamOpen);
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                    certificate = certificateGenerateCertificate;
                } catch (Throwable th) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("ca", certificate);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            char[] charArray = CLIENT_KEY_PASSWORD.toCharArray();
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            try {
                keyManagerFactory.init(keyStore, charArray);
            } catch (UnrecoverableKeyException unused3) {
            }
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(keyManagerFactory.getKeyManagers(), trustManagerFactory.getTrustManagers(), null);
            return sSLContext.getSocketFactory();
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException unused4) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PostJson injectParams(PostJson postJson) {
        if (postJson != null && postJson.action != null && !TextUtils.isEmpty(postJson.passwordKey) && postJson.action.actionId == 211) {
            String strAesDecrypt = CryptoUtils.aesDecrypt(android.util.Base64.decode(postJson.data, 2), postJson.passwordKey.getBytes());
            String str = TAG;
            LogUtils.i(str, "injectParams: decrypt postjson==" + strAesDecrypt);
            JSONObject object = com.alibaba.fastjson.a.parseObject(strAesDecrypt);
            if (object == null) {
                LogUtils.i(str, "injectParams：inject failure, use default postjson==" + strAesDecrypt);
                return postJson;
            }
            object.put(IS_REAPPLY, (Object) Boolean.TRUE);
            postJson.data = CryptoUtils.aesEncrypt(object.toString(), postJson.passwordKey);
        }
        return postJson;
    }

    private boolean isNeedIpCache(Class cls) {
        try {
            return GetCloudServiceResult2.class.equals(cls) || GetCloudServiceResult.class.equals(cls);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedStop(Class cls) {
        boolean z10 = this.isStopPlay;
        try {
            if (StopServiceResult.class.equals(cls)) {
                return false;
            }
            return z10;
        } catch (Exception unused) {
            return z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:62:0x00d2 A[Catch: Exception -> 0x01e0, TRY_ENTER, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00da A[Catch: Exception -> 0x01e0, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00df A[Catch: Exception -> 0x01e0, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00f7 A[Catch: Exception -> 0x01e0, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x011c A[Catch: Exception -> 0x01e0, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0134 A[Catch: Exception -> 0x01e0, TryCatch #0 {Exception -> 0x01e0, blocks: (B:6:0x0009, B:9:0x0018, B:17:0x0028, B:19:0x003f, B:21:0x004b, B:23:0x0053, B:25:0x0057, B:28:0x0064, B:72:0x0147, B:98:0x01c9, B:100:0x01cf, B:101:0x01d5, B:81:0x0180, B:83:0x0187, B:85:0x018b, B:86:0x0192, B:88:0x0199, B:89:0x01a0, B:91:0x01a7, B:92:0x01ae, B:94:0x01b5, B:95:0x01bc, B:97:0x01c3, B:62:0x00d2, B:64:0x00da, B:65:0x00df, B:67:0x00f7, B:69:0x011c, B:71:0x0134, B:103:0x01d9), top: B:108:0x0009 }] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public com.haima.hmcp.beans.BaseResult parseResponse(org.json.JSONObject r12, java.lang.Class r13) {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.haima.hmcp.business.HmcpHttpManager.parseResponse(org.json.JSONObject, java.lang.Class):com.haima.hmcp.beans.BaseResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCashRetryCount(Class cls, Serializable serializable) {
        HashMap<Serializable, Integer> map;
        if (isNeedRetry(cls) && (map = this.mRetryRequestMap) != null && map.containsKey(serializable)) {
            this.mRetryRequestMap.remove(serializable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean retryByErrorCode(final String str, BaseResult baseResult, final Serializable serializable, final Class cls, final OnVolleyListener onVolleyListener) {
        List<RetryErrorcodeConfig.RetryErrorcodeBean> list;
        if (baseResult == null || (list = RetryErrorcodeConfig.requestRetryConfigList) == null || list.size() <= 0) {
            return false;
        }
        for (final RetryErrorcodeConfig.RetryErrorcodeBean retryErrorcodeBean : RetryErrorcodeConfig.requestRetryConfigList) {
            if ((serializable instanceof PostJson) && retryErrorcodeBean.actionId == ((PostJson) serializable).action.actionId && TextUtils.equals(baseResult.errorCode, retryErrorcodeBean.errorCode) && retryErrorcodeBean.currentRetryTimes < retryErrorcodeBean.retryMaxTimes) {
                new Timer().schedule(new TimerTask() { // from class: com.haima.hmcp.business.HmcpHttpManager.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        retryErrorcodeBean.currentRetryTimes++;
                        LogUtils.i(HmcpHttpManager.TAG, "" + retryErrorcodeBean.actionId + "接口第" + retryErrorcodeBean.currentRetryTimes + "次重试");
                        HmcpHttpManager.this.postRequest(str, HmcpHttpManager.this.injectParams((PostJson) serializable), cls, onVolleyListener);
                    }
                }, retryErrorcodeBean.retryDelayTime * 1000);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00e8 A[Catch: Exception -> 0x0120, JSONException -> 0x0140, TryCatch #2 {JSONException -> 0x0140, Exception -> 0x0120, blocks: (B:15:0x0049, B:17:0x0051, B:19:0x0057, B:20:0x005f, B:23:0x0069, B:29:0x008a, B:31:0x0093, B:33:0x00a8, B:34:0x00b1, B:36:0x00e8, B:38:0x00f8, B:37:0x00f0, B:25:0x0074, B:27:0x007c), top: B:50:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00f0 A[Catch: Exception -> 0x0120, JSONException -> 0x0140, TryCatch #2 {JSONException -> 0x0140, Exception -> 0x0120, blocks: (B:15:0x0049, B:17:0x0051, B:19:0x0057, B:20:0x005f, B:23:0x0069, B:29:0x008a, B:31:0x0093, B:33:0x00a8, B:34:0x00b1, B:36:0x00e8, B:38:0x00f8, B:37:0x00f0, B:25:0x0074, B:27:0x007c), top: B:50:0x0049 }] */
    public void retryPostRequest(final Serializable serializable, final Class cls, final OnVolleyListener onVolleyListener) throws Exception {
        List<String> list;
        final int i10;
        int length;
        String str;
        HmRetryPolicy hmRetryPolicy;
        int iFloor;
        if (serializable == null || cls == null || TextUtils.isEmpty(this.mSaasAuthUrl) || isNeedStop(cls) || (list = this.mSaasAuthReconnectUrlList) == null || list.size() == 0) {
            LogUtils.e(TAG, "retryPostRequest error");
            return;
        }
        String jSONString = com.alibaba.fastjson.a.toJSONString(injectParams((PostJson) serializable));
        String str2 = TAG;
        LogUtils.i(str2, "==retryPostRequest== json==> " + jSONString);
        try {
            Integer num = 0;
            HashMap<Serializable, Integer> map = this.mRetryRequestMap;
            if (map != null && map.containsKey(serializable)) {
                num = this.mRetryRequestMap.get(serializable);
            }
            if (TextUtils.isEmpty(Constants.CUSTOM_ERROR_RETRY_CONFIG)) {
                if (TextUtils.isEmpty(Constants.RETRY_CONFIG)) {
                    i10 = 10;
                } else {
                    String[] strArrSplit = Constants.RETRY_CONFIG.split(",");
                    this.errorRetryPlan = strArrSplit;
                    length = strArrSplit.length;
                }
                str = this.mSaasAuthUrl;
                if (num.intValue() > 0 && (iFloor = (int) Math.floor(((double) (num.intValue() - 1)) / ((double) i10))) < this.mSaasAuthReconnectUrlList.size()) {
                    str = this.mSaasAuthReconnectUrlList.get(iFloor);
                }
                LogUtils.i(str2, "==retryPostRequest==saas url ===>" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_CHANGE_RQUEST_URL, "retryPostRequest url:" + str);
                org.json.JSONObject jSONObject = new org.json.JSONObject(jSONString);
                if (isNeedRetry(cls)) {
                    hmRetryPolicy = new HmRetryPolicy(Constants.CUSTOM_RETRY_CONFIG, true);
                } else {
                    hmRetryPolicy = new HmRetryPolicy(Constants.RETRY_CONFIG, false);
                }
                this.mHttpImpl.post(new IHttp.RequestWrapper.Builder().url(str).params(jSONObject).retryPolicy(hmRetryPolicy).build(), new IHttp.OnResponseListener<org.json.JSONObject>() { // from class: com.haima.hmcp.business.HmcpHttpManager.3
                    @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                    public void onError(int i11, final int i12, final String str3) {
                        final Integer numValueOf;
                        if (HmcpHttpManager.this.isNeedStop(cls)) {
                            return;
                        }
                        LogUtils.e(HmcpHttpManager.TAG, "onErrorResponse==>" + str3);
                        if (onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                            return;
                        }
                        if (!HmcpHttpManager.this.isNeedRetry(cls)) {
                            HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.5
                                @Override // java.lang.Runnable
                                public void run() {
                                    onVolleyListener.onError(i12, str3);
                                }
                            });
                            return;
                        }
                        if (HmcpHttpManager.this.mRetryRequestMap == null) {
                            HmcpHttpManager.this.mRetryRequestMap = new HashMap();
                        }
                        int i13 = 1;
                        if (HmcpHttpManager.this.mRetryRequestMap.containsKey(serializable)) {
                            numValueOf = Integer.valueOf(((Integer) HmcpHttpManager.this.mRetryRequestMap.get(serializable)).intValue() + 1);
                            HmcpHttpManager.this.mRetryRequestMap.put(serializable, numValueOf);
                        } else {
                            numValueOf = 1;
                            HmcpHttpManager.this.mRetryRequestMap.put(serializable, 1);
                        }
                        if (numValueOf.intValue() > i10 * HmcpHttpManager.this.mSaasAuthReconnectUrlList.size()) {
                            HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                            HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    onVolleyListener.onError(i12, str3);
                                }
                            });
                            return;
                        }
                        TimerTask timerTask = new TimerTask() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.2
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() throws Exception {
                                LogUtils.i(HmcpHttpManager.TAG, "请求失败重试：postJson:" + serializable + ",第" + numValueOf + "次重试");
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                HmcpHttpManager.this.retryPostRequest(serializable, cls, onVolleyListener);
                            }
                        };
                        Timer timer = new Timer();
                        if (HmcpHttpManager.this.errorRetryPlan != null) {
                            try {
                                i13 = Integer.parseInt(HmcpHttpManager.this.errorRetryPlan[(numValueOf.intValue() - 1) % HmcpHttpManager.this.errorRetryPlan.length]);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                                HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        onVolleyListener.onError(i12, str3);
                                    }
                                });
                            }
                        }
                        timer.schedule(timerTask, i13 * 1000);
                    }

                    @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                    public void onSuccess(org.json.JSONObject jSONObject2) {
                        if (HmcpHttpManager.this.isNeedStop(cls)) {
                            return;
                        }
                        Integer num2 = 0;
                        if (HmcpHttpManager.this.mRetryRequestMap != null && HmcpHttpManager.this.mRetryRequestMap.containsKey(serializable)) {
                            num2 = (Integer) HmcpHttpManager.this.mRetryRequestMap.get(serializable);
                        }
                        HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                        if (onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                            return;
                        }
                        final BaseResult response = HmcpHttpManager.this.parseResponse(jSONObject2, cls);
                        if (response != null) {
                            response.retryRequestCount = num2.intValue();
                        }
                        HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                onVolleyListener.onSuccess(response);
                            }
                        });
                    }
                });
            }
            String[] strArrSplit2 = Constants.CUSTOM_ERROR_RETRY_CONFIG.split(",");
            this.errorRetryPlan = strArrSplit2;
            length = strArrSplit2.length;
            i10 = length;
            str = this.mSaasAuthUrl;
            if (num.intValue() > 0) {
                str = this.mSaasAuthReconnectUrlList.get(iFloor);
            }
            LogUtils.i(str2, "==retryPostRequest==saas url ===>" + str);
            CountlyUtil.recordEvent(Constants.COUNTLY_CHANGE_RQUEST_URL, "retryPostRequest url:" + str);
            org.json.JSONObject jSONObject2 = new org.json.JSONObject(jSONString);
            if (isNeedRetry(cls)) {
                hmRetryPolicy = new HmRetryPolicy(Constants.CUSTOM_RETRY_CONFIG, true);
            } else {
                hmRetryPolicy = new HmRetryPolicy(Constants.RETRY_CONFIG, false);
            }
            this.mHttpImpl.post(new IHttp.RequestWrapper.Builder().url(str).params(jSONObject2).retryPolicy(hmRetryPolicy).build(), new IHttp.OnResponseListener<org.json.JSONObject>() { // from class: com.haima.hmcp.business.HmcpHttpManager.3
                @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                public void onError(int i11, final int i12, final String str3) {
                    final Integer numValueOf;
                    if (HmcpHttpManager.this.isNeedStop(cls)) {
                        return;
                    }
                    LogUtils.e(HmcpHttpManager.TAG, "onErrorResponse==>" + str3);
                    if (onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                        return;
                    }
                    if (!HmcpHttpManager.this.isNeedRetry(cls)) {
                        HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.5
                            @Override // java.lang.Runnable
                            public void run() {
                                onVolleyListener.onError(i12, str3);
                            }
                        });
                        return;
                    }
                    if (HmcpHttpManager.this.mRetryRequestMap == null) {
                        HmcpHttpManager.this.mRetryRequestMap = new HashMap();
                    }
                    int i13 = 1;
                    if (HmcpHttpManager.this.mRetryRequestMap.containsKey(serializable)) {
                        numValueOf = Integer.valueOf(((Integer) HmcpHttpManager.this.mRetryRequestMap.get(serializable)).intValue() + 1);
                        HmcpHttpManager.this.mRetryRequestMap.put(serializable, numValueOf);
                    } else {
                        numValueOf = 1;
                        HmcpHttpManager.this.mRetryRequestMap.put(serializable, 1);
                    }
                    if (numValueOf.intValue() > i10 * HmcpHttpManager.this.mSaasAuthReconnectUrlList.size()) {
                        HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                        HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.4
                            @Override // java.lang.Runnable
                            public void run() {
                                onVolleyListener.onError(i12, str3);
                            }
                        });
                        return;
                    }
                    TimerTask timerTask = new TimerTask() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() throws Exception {
                            LogUtils.i(HmcpHttpManager.TAG, "请求失败重试：postJson:" + serializable + ",第" + numValueOf + "次重试");
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            HmcpHttpManager.this.retryPostRequest(serializable, cls, onVolleyListener);
                        }
                    };
                    Timer timer = new Timer();
                    if (HmcpHttpManager.this.errorRetryPlan != null) {
                        try {
                            i13 = Integer.parseInt(HmcpHttpManager.this.errorRetryPlan[(numValueOf.intValue() - 1) % HmcpHttpManager.this.errorRetryPlan.length]);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                            HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    onVolleyListener.onError(i12, str3);
                                }
                            });
                        }
                    }
                    timer.schedule(timerTask, i13 * 1000);
                }

                @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                public void onSuccess(org.json.JSONObject jSONObject3) {
                    if (HmcpHttpManager.this.isNeedStop(cls)) {
                        return;
                    }
                    Integer num2 = 0;
                    if (HmcpHttpManager.this.mRetryRequestMap != null && HmcpHttpManager.this.mRetryRequestMap.containsKey(serializable)) {
                        num2 = (Integer) HmcpHttpManager.this.mRetryRequestMap.get(serializable);
                    }
                    HmcpHttpManager.this.removeCashRetryCount(cls, serializable);
                    if (onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                        return;
                    }
                    final BaseResult response = HmcpHttpManager.this.parseResponse(jSONObject3, cls);
                    if (response != null) {
                        response.retryRequestCount = num2.intValue();
                    }
                    HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onVolleyListener.onSuccess(response);
                        }
                    });
                }
            });
        } catch (JSONException e10) {
            CountlyUtil.recordErrorEvent("VolleyManager::postRequest::" + jSONString + "; error = " + e10.toString());
            if (onVolleyListener != null) {
                onVolleyListener.onError(-1000, "Json format error");
            }
        } catch (Exception e11) {
            CountlyUtil.recordErrorEvent("VolleyManager::postRequest::" + jSONString + "; Exception error = " + Log.getStackTraceString(e11));
            throw e11;
        }
    }

    @Override // com.haima.hmcp.business.IHmcpHttp
    public void clear() {
        clearCache();
    }

    public void clearCache() {
        IHttp iHttp = this.mHttpImpl;
        if (iHttp != null) {
            iHttp.clear();
        }
        HashMap<Serializable, Integer> map = this.mRetryRequestMap;
        if (map != null) {
            map.clear();
        }
    }

    protected boolean isNeedRetry(Class cls) {
        try {
            return GetCloudServiceResult2.class.equals(cls) || GetCloudServiceResult.class.equals(cls) || ConfigureResult.class.equals(cls) || StopServiceResult.class.equals(cls) || DeviceIdResult.class.equals(cls) || GetCloudServiceResult3.class.equals(cls) || GetStartStreamingResult.class.equals(cls) || ExtraConfigureResult.class.equals(cls);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.haima.hmcp.business.IHmcpHttp
    public void postRequest(String str, Serializable serializable, Class cls, OnVolleyListener onVolleyListener) {
        if ("".equals(str)) {
            postRequest(str, null, serializable, cls, onVolleyListener);
        } else {
            postRequest(str, new RequestDiscardPolicy(), serializable, cls, onVolleyListener);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpHttp
    public void setIsStop(boolean z10) {
        this.isStopPlay = z10;
    }

    @Override // com.haima.hmcp.business.IHmcpHttp
    public void setResponseFlag(boolean z10) {
        this.mResponseDirect = z10;
    }

    @Override // com.haima.hmcp.business.IHmcpHttp
    public void setURL(String str) {
        this.mSaasAuthUrl = str;
    }

    public void postRequest(final String str, IRequestPolicy iRequestPolicy, final Serializable serializable, final Class cls, final OnVolleyListener onVolleyListener) {
        HmRetryPolicy hmRetryPolicy;
        if (serializable != null && cls != null && !TextUtils.isEmpty(this.mSaasAuthUrl) && !isNeedStop(cls)) {
            if (!NetworkUtil.isNetworkConnected(this.mContext) && onVolleyListener != null) {
                onVolleyListener.onError(-1002, "network unavailable");
                return;
            }
            String jSONString = com.alibaba.fastjson.a.toJSONString(serializable);
            LogUtils.i(TAG, "==postRequest==saas url ===>" + this.mSaasAuthUrl);
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject(jSONString);
                String str2 = this.mSaasAuthUrl;
                if (isNeedRetry(cls)) {
                    hmRetryPolicy = new HmRetryPolicy(Constants.CUSTOM_RETRY_CONFIG, true);
                } else {
                    hmRetryPolicy = new HmRetryPolicy(Constants.RETRY_CONFIG, false);
                }
                this.mHttpImpl.post(new IHttp.RequestWrapper.Builder().url(str2).params(jSONObject).requestTag(str).retryPolicy(hmRetryPolicy).requestPolicy(iRequestPolicy).build(), new IHttp.OnResponseListener<org.json.JSONObject>() { // from class: com.haima.hmcp.business.HmcpHttpManager.1
                    @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                    public void onError(int i10, final int i11, final String str3) throws Exception {
                        if (HmcpHttpManager.this.isNeedStop(cls)) {
                            LogUtils.e(HmcpHttpManager.TAG, "==postRequest onErrorResponse need stop==>" + str3);
                            return;
                        }
                        LogUtils.e(HmcpHttpManager.TAG, "==postRequest onErrorResponse==>" + str3);
                        if (onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                            return;
                        }
                        if (i11 == -1000 || i11 == -1003) {
                            HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    onVolleyListener.onError(i11, str3);
                                }
                            });
                        } else if (!HmcpHttpManager.this.isNeedRetry(cls)) {
                            HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.1.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    onVolleyListener.onError(i11, str3);
                                }
                            });
                        } else {
                            LogUtils.e(HmcpHttpManager.TAG, "==postRequest onErrorResponse retryPostRequest==>");
                            HmcpHttpManager.this.retryPostRequest(serializable, cls, onVolleyListener);
                        }
                    }

                    @Override // com.haima.hmcp.business.IHttp.OnResponseListener
                    public void onSuccess(org.json.JSONObject jSONObject2) {
                        if (HmcpHttpManager.this.isNeedStop(cls) || onVolleyListener == null || HmcpHttpManager.this.mHmcpHandler == null) {
                            return;
                        }
                        final BaseResult response = HmcpHttpManager.this.parseResponse(jSONObject2, cls);
                        if (HmcpHttpManager.this.retryByErrorCode(str, response, serializable, cls, onVolleyListener)) {
                            return;
                        }
                        HmcpHttpManager.this.mHmcpHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.business.HmcpHttpManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                onVolleyListener.onSuccess(response);
                            }
                        });
                    }
                });
                return;
            } catch (JSONException e10) {
                CountlyUtil.recordErrorEvent("VolleyManager::postRequest::" + jSONString + "; error = " + Log.getStackTraceString(e10));
                if (onVolleyListener != null) {
                    onVolleyListener.onError(-1000, "Json format error");
                    return;
                }
                return;
            } catch (Exception e11) {
                CountlyUtil.recordErrorEvent("VolleyManager::postRequest::" + jSONString + "; Exception error = " + Log.getStackTraceString(e11));
                return;
            }
        }
        CountlyUtil.recordErrorEvent("postJson or clazz or mSaasAuthUrl is null, or isNeedStop(clazz) is true");
    }

    public HmcpHttpManager(Context context, SSLSocketFactory sSLSocketFactory) {
        if (TextUtils.isEmpty(HmcpManager.getInstance().getHmcpSaasAuthUrl())) {
            this.mSaasAuthUrl = Constants.HMCP_SAAS_AUTH_URL;
        } else {
            this.mSaasAuthUrl = HmcpManager.getInstance().getHmcpSaasAuthUrl();
        }
    }
}
