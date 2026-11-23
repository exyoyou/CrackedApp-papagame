package com.haima.hmcp.dns;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.entity.DnsRequestIpResult;
import com.haima.hmcp.dns.interfaces.DnsAsyncCallBack;
import com.haima.hmcp.dns.interfaces.DnsResultListener;
import com.haima.hmcp.dns.interfaces.OnDnsRequestServiceIpListener;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class DnsAsyncParser extends DnsParser {
    private static final String TAG = "DnsAsyncParser";
    private final ThreadPoolExecutor mExecutorService;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.haima.hmcp.dns.DnsAsyncParser$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ DnsAsyncCallBack val$callBack;
        final /* synthetic */ Context val$context;
        final /* synthetic */ ConcurrentHashMap val$hashResult;
        final /* synthetic */ List val$hostLst;
        final /* synthetic */ String val$tagName;

        AnonymousClass1(String str, List list, Context context, ConcurrentHashMap concurrentHashMap, DnsAsyncCallBack dnsAsyncCallBack) {
            this.val$tagName = str;
            this.val$hostLst = list;
            this.val$context = context;
            this.val$hashResult = concurrentHashMap;
            this.val$callBack = dnsAsyncCallBack;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$null$0(CountDownLatch countDownLatch, ConcurrentHashMap concurrentHashMap) {
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(Context context, String str, ConcurrentHashMap concurrentHashMap, final CountDownLatch countDownLatch) {
            DnsAsyncParser.this.getHostAddressList(context, str, concurrentHashMap, new DnsResultListener() { // from class: com.haima.hmcp.dns.b
                @Override // com.haima.hmcp.dns.interfaces.DnsResultListener
                public final void dnsAsyncResult(ConcurrentHashMap concurrentHashMap2) {
                    DnsAsyncParser.AnonymousClass1.lambda$null$0(countDownLatch, concurrentHashMap2);
                }
            });
        }

        /* JADX WARN: Code duplicated, block: B:28:0x014e  */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            String str;
            Handler handler;
            Runnable runnable;
            int i10 = 1;
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_START, String.format("[%s] getHostAddressListAsync start with hostList:%s", this.val$tagName, this.val$hostLst));
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            long j10 = DnsManager.mGetTimeOut;
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                try {
                    ThreadPoolExecutor threadPoolExecutor = DnsAsyncParser.this.mExecutorService;
                    final Context context = this.val$context;
                    final String str2 = this.val$tagName;
                    final ConcurrentHashMap concurrentHashMap = this.val$hashResult;
                    i10 = 3;
                    try {
                        threadPoolExecutor.submit(new Runnable() { // from class: com.haima.hmcp.dns.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f34048b.lambda$run$1(context, str2, concurrentHashMap, countDownLatch);
                            }
                        });
                        boolean zAwait = countDownLatch.await(j10, TimeUnit.MILLISECONDS);
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        String str3 = !zAwait ? String.format("[%s] getHostAddressListAsync timeOut,then call result:%s,usedTime: %d", this.val$tagName, this.val$hashResult, Long.valueOf(jCurrentTimeMillis2)) : String.format("[%s] getHostAddressListAsync success with result:%s,usedTime: %d", this.val$tagName, this.val$hashResult, Long.valueOf(jCurrentTimeMillis2));
                        LogUtils.ifmt(DnsAsyncParser.TAG, str3, new Object[0]);
                        if (DnsAsyncParser.this.mHandler != null) {
                            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, URLEncoder.encode(str3));
                            handler = DnsAsyncParser.this.mHandler;
                            final DnsAsyncCallBack dnsAsyncCallBack = this.val$callBack;
                            final ConcurrentHashMap concurrentHashMap2 = this.val$hashResult;
                            runnable = new Runnable() { // from class: com.haima.hmcp.dns.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    dnsAsyncCallBack.dnsAsyncCallback(concurrentHashMap2);
                                }
                            };
                            handler.post(runnable);
                        }
                    } catch (Exception e10) {
                        e = e10;
                        LogUtils.ifmt(DnsAsyncParser.TAG, "[%s] call getHostAddressList got exception:%s", this.val$tagName, e.toString());
                        DnsAsyncParser.this.uploadException(this.val$tagName + " getHostAddressListAsync:", e);
                        long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                        Object[] objArr = new Object[i10];
                        objArr[0] = this.val$tagName;
                        objArr[1] = this.val$hashResult;
                        objArr[2] = Long.valueOf(jCurrentTimeMillis3);
                        String str4 = String.format("[%s] getHostAddressListAsync timeOut,then call result:%s,usedTime: %d", objArr);
                        LogUtils.ifmt(DnsAsyncParser.TAG, str4, new Object[0]);
                        if (DnsAsyncParser.this.mHandler != null) {
                            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, URLEncoder.encode(str4));
                            handler = DnsAsyncParser.this.mHandler;
                            final DnsAsyncCallBack dnsAsyncCallBack2 = this.val$callBack;
                            final ConcurrentHashMap concurrentHashMap3 = this.val$hashResult;
                            runnable = new Runnable() { // from class: com.haima.hmcp.dns.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    dnsAsyncCallBack2.dnsAsyncCallback(concurrentHashMap3);
                                }
                            };
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis;
                    Object[] objArr2 = new Object[i10];
                    objArr2[0] = this.val$tagName;
                    objArr2[1] = this.val$hashResult;
                    objArr2[2] = Long.valueOf(jCurrentTimeMillis4);
                    str = String.format("[%s] getHostAddressListAsync timeOut,then call result:%s,usedTime: %d", objArr2);
                    LogUtils.ifmt(DnsAsyncParser.TAG, str, new Object[0]);
                    if (DnsAsyncParser.this.mHandler != null) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, URLEncoder.encode(str));
                        Handler handler2 = DnsAsyncParser.this.mHandler;
                        final DnsAsyncCallBack dnsAsyncCallBack3 = this.val$callBack;
                        final ConcurrentHashMap concurrentHashMap4 = this.val$hashResult;
                        handler2.post(new Runnable() { // from class: com.haima.hmcp.dns.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                dnsAsyncCallBack3.dnsAsyncCallback(concurrentHashMap4);
                            }
                        });
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                i10 = 3;
            } catch (Throwable th2) {
                th = th2;
                i10 = 3;
                long jCurrentTimeMillis5 = System.currentTimeMillis() - jCurrentTimeMillis;
                Object[] objArr3 = new Object[i10];
                objArr3[0] = this.val$tagName;
                objArr3[1] = this.val$hashResult;
                objArr3[2] = Long.valueOf(jCurrentTimeMillis5);
                str = String.format("[%s] getHostAddressListAsync timeOut,then call result:%s,usedTime: %d", objArr3);
                LogUtils.ifmt(DnsAsyncParser.TAG, str, new Object[0]);
                if (DnsAsyncParser.this.mHandler != null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, URLEncoder.encode(str));
                    Handler handler3 = DnsAsyncParser.this.mHandler;
                    final DnsAsyncCallBack dnsAsyncCallBack4 = this.val$callBack;
                    final ConcurrentHashMap concurrentHashMap5 = this.val$hashResult;
                    handler3.post(new Runnable() { // from class: com.haima.hmcp.dns.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            dnsAsyncCallBack4.dnsAsyncCallback(concurrentHashMap5);
                        }
                    });
                }
                throw th;
            }
        }
    }

    public DnsAsyncParser() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue());
        this.mExecutorService = threadPoolExecutor;
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getHostAddressList(Context context, final String str, final ConcurrentHashMap<String, String> concurrentHashMap, @NonNull final DnsResultListener dnsResultListener) {
        if (!DnsManager.getInstance().dnsFunctionEnabled()) {
            LogUtils.ifmt(TAG, "[%s] getHostAddressList dnsFunctionEnabled is closed,result is %s", str, concurrentHashMap.toString());
            dnsResultListener.dnsAsyncResult(concurrentHashMap);
            return;
        }
        for (String str2 : concurrentHashMap.keySet()) {
            List<String> ipFromCache = getIpFromCache(DnsManager.getInstance().getDnsCache(), str2);
            if (ipFromCache != null && ipFromCache.size() != 0) {
                concurrentHashMap.put(str2, ipFromCache.get(0));
            }
        }
        if (isAllHostHaveIp(concurrentHashMap)) {
            LogUtils.ifmt(TAG, "[%s] getHostAddressList all host is in cache: %s", str, concurrentHashMap.toString());
            dnsResultListener.dnsAsyncResult(concurrentHashMap);
            return;
        }
        for (Map.Entry<String, String> entry : concurrentHashMap.entrySet()) {
            String key = entry.getKey();
            if (key.equalsIgnoreCase(entry.getValue()) && Utils.isHostName(key)) {
                systemParseHost(key);
                List<String> ipFromCache2 = getIpFromCache(DnsManager.getInstance().getDnsCache(), key);
                if (ipFromCache2 != null && ipFromCache2.size() != 0) {
                    concurrentHashMap.put(key, ipFromCache2.get(0));
                }
            }
        }
        if (isAllHostHaveIp(concurrentHashMap)) {
            LogUtils.ifmt(TAG, "[%s] getHostAddressList all host is in cache after systemParseHost: %s", str, concurrentHashMap.toString());
            dnsResultListener.dnsAsyncResult(concurrentHashMap);
        } else {
            if (!DnsManager.getInstance().mOpenResolveIp) {
                LogUtils.ifmt(TAG, "[%s] 307 is closed: %s", str, concurrentHashMap);
                dnsResultListener.dnsAsyncResult(concurrentHashMap);
                return;
            }
            ArrayList arrayList = new ArrayList(concurrentHashMap.keySet());
            HmcpRequest hmcpRequest = HmcpRequest.getInstance(context);
            String str3 = String.format("[%s] getDnsRequestIp 307 request start with host:%s", str, arrayList);
            LogUtils.ifmt(TAG, str3, new Object[0]);
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_REQUEST_IP_START, str3);
            hmcpRequest.getDnsRequestIp(arrayList, new OnDnsRequestServiceIpListener() { // from class: com.haima.hmcp.dns.DnsAsyncParser.2
                @Override // com.haima.hmcp.dns.interfaces.OnDnsRequestServiceIpListener
                public void dnsRequestIpError(String str4, String str5) {
                    LogUtils.ifmt(DnsAsyncParser.TAG, "[%s] dnsRequestIpError got errorCode: %s，errorMsg:%s", str, str4, str5);
                    CountlyUtil.recordEvent(Constants.COUNTLY_DNS_REQUEST_IP_FAIL, str + " dnsRequestIpError:" + str4 + ",msg:" + str5);
                    dnsResultListener.dnsAsyncResult(concurrentHashMap);
                }

                @Override // com.haima.hmcp.dns.interfaces.OnDnsRequestServiceIpListener
                public void dnsRequestIpResult(List<DnsRequestIpResult.Result> list) {
                    for (DnsRequestIpResult.Result result : list) {
                        if (result != null) {
                            DnsAsyncParser.this.saveResultToCache(DnsManager.getInstance().getDnsCache(), result);
                        }
                    }
                    for (String str4 : concurrentHashMap.keySet()) {
                        List<String> ipFromCache3 = DnsAsyncParser.this.getIpFromCache(DnsManager.getInstance().getDnsCache(), str4);
                        if (ipFromCache3 != null && ipFromCache3.size() != 0) {
                            concurrentHashMap.put(str4, ipFromCache3.get(0));
                        }
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_DNS_REQUEST_IP_SUCCESS, String.format("[%s] getDnsRequestIp success and parse result:%s", str, concurrentHashMap));
                    dnsResultListener.dnsAsyncResult(concurrentHashMap);
                    LogUtils.d(DnsAsyncParser.TAG, "DnsCache content after getDnsRequestIp parse:" + DnsManager.getInstance().getDnsCache().toString());
                }
            });
        }
    }

    private boolean isAllHostHaveIp(ConcurrentHashMap<String, String> concurrentHashMap) {
        for (Map.Entry<String, String> entry : concurrentHashMap.entrySet()) {
            String key = entry.getKey();
            if (key.equalsIgnoreCase(entry.getValue()) && Utils.isHostName(key)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveResultToCache(DnsCache dnsCache, DnsRequestIpResult.Result result) {
        List<DnsRequestIpResult.Result.Data> list;
        if (TextUtils.isEmpty(result.host) || result.code != 0 || (list = result.data) == null || list.size() == 0) {
            return;
        }
        for (DnsRequestIpResult.Result.Data data : result.data) {
            int i10 = data.type;
            if (i10 == 1) {
                dnsCache.addIp(DnsManager.DnsIpType.IPV4, result.host, data.ip);
            } else if (i10 == 2) {
                dnsCache.addIp(DnsManager.DnsIpType.IPV6, result.host, data.ip);
            }
        }
    }

    private void systemParseHost(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                if (inetAddress instanceof Inet4Address) {
                    arrayList.add(inetAddress.getHostAddress());
                } else if (inetAddress instanceof Inet6Address) {
                    arrayList2.add(inetAddress.getHostAddress());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, "systemParseHost got error:" + e10);
            uploadException("systemParseHost got error", e10);
        } finally {
            DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV4, str, arrayList);
            DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV6, str, arrayList2);
        }
    }

    public ExecutorService getExecutorService() {
        return this.mExecutorService;
    }

    public void getHostAddressListAsync(@NonNull Context context, @NonNull String str, @NonNull List<String> list, @NonNull final DnsAsyncCallBack dnsAsyncCallBack) {
        if (list == null || list.size() == 0) {
            LogUtils.ifmt(TAG, "[%s] Parameter not valid", str);
            CountlyUtil.recordErrorEvent("getHostAddressListAsync parameter not valid");
            return;
        }
        String str2 = String.format("[%s] getHostAddressListAsync enter with hostList:%s", str, list);
        LogUtils.ifmt(TAG, str2, new Object[0]);
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_GET_START, str2);
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (String str3 : list) {
            concurrentHashMap.put(str3, str3);
            if (Utils.isValidIPV4Address(str3)) {
                DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV4, str3, Arrays.asList(str3));
            } else if (Utils.isIPv6Address(str3)) {
                DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV6, str3, Arrays.asList(str3));
            }
        }
        try {
            this.mExecutorService.submit(new AnonymousClass1(str, list, context, concurrentHashMap, dnsAsyncCallBack));
        } catch (Exception e10) {
            LogUtils.ifmt(TAG, "[%s] call getHostAddressListAsync got exception:%s", str, e10.toString());
            uploadException(str + "getHostAddressListAsync", e10);
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.haima.hmcp.dns.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        dnsAsyncCallBack.dnsAsyncCallback(concurrentHashMap);
                    }
                });
            }
        }
    }
}
