package com.haima.hmcp.countly;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.a;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.business.HttpVolleyImpl;
import com.haima.hmcp.business.IHttp;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HttpCountly {
    private static final String COUNT_KEY = "count";
    private static final String DAY_OF_WEEK = "dow";
    private static final String DUR_KEY = "dur";
    private static final String HOUR = "hour";
    private static final String KEY_KEY = "key";
    private static final String SEGMENTATION_KEY = "segmentation";
    private static final String SUM_KEY = "sum";
    private static final String TAG = "HttpCountly";
    private static final String TIMESTAMP_KEY = "timestamp";
    private static long lastTsMs;
    private String appKey;
    public double dur;
    private IHttp mHttpImpl;
    private int sendErrorCount = 0;
    private String serverURL_;
    private List<String> serverUrlList;
    public double sum;

    public HttpCountly(Context context, String str, String str2) {
        setServerInfo(str, str2);
        this.appKey = str2;
        this.mHttpImpl = new HttpVolleyImpl(context, 10);
    }

    static /* synthetic */ int access$108(HttpCountly httpCountly) {
        int i10 = httpCountly.sendErrorCount;
        httpCountly.sendErrorCount = i10 + 1;
        return i10;
    }

    static int currentDayOfWeek() {
        switch (Calendar.getInstance().get(7)) {
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            default:
                return 0;
        }
    }

    static int currentHour() {
        return Calendar.getInstance().get(11);
    }

    static synchronized long currentTimestampMs() {
        long jCurrentTimeMillis;
        jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = lastTsMs;
        if (j10 >= jCurrentTimeMillis) {
            jCurrentTimeMillis = 1 + j10;
        }
        lastTsMs = jCurrentTimeMillis;
        return jCurrentTimeMillis;
    }

    private String getEventDatas(String str, ConcurrentLinkedQueue<Map> concurrentLinkedQueue, int i10) {
        ConcurrentLinkedQueue concurrentLinkedQueue2 = new ConcurrentLinkedQueue();
        concurrentLinkedQueue2.addAll(concurrentLinkedQueue);
        String str2 = "";
        while (!concurrentLinkedQueue2.isEmpty()) {
            JSONObject json = toJSON(str, i10, currentTimestampMs(), currentHour(), currentDayOfWeek(), (Map) concurrentLinkedQueue2.poll());
            if (concurrentLinkedQueue2.isEmpty()) {
                str2 = str2 + json;
            } else {
                str2 = str2 + json + ",";
            }
        }
        return "app_key=" + this.appKey + "&events=[" + URLEncoder.encode(StringUtils.replaceSpecialStr(str2)) + "]";
    }

    public boolean isServerInfoInited() {
        return (TextUtils.isEmpty(this.serverURL_) || TextUtils.isEmpty(this.appKey)) ? false : true;
    }

    public boolean postEventData(String str, final ConcurrentLinkedQueue<Map> concurrentLinkedQueue, int i10, final boolean z10) {
        String str2 = this.serverURL_ + "/i?";
        String str3 = TAG;
        LogUtils.e(str3, "countly url = " + str2);
        if (TextUtils.isEmpty(this.serverURL_)) {
            CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
            return true;
        }
        final String eventDatas = getEventDatas(str, concurrentLinkedQueue, i10);
        LogUtils.i(str3, "===postEventData==" + eventDatas);
        this.mHttpImpl.post(new IHttp.RequestWrapper.Builder().url(str2).params(eventDatas).build(), new IHttp.OnResponseListener<String>() { // from class: com.haima.hmcp.countly.HttpCountly.1
            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onError(int i11, int i12, String str4) {
                CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
            }

            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onSuccess(String str4) {
                try {
                    if ("success".equalsIgnoreCase(a.parseObject(str4).getString("result"))) {
                        LogUtils.d(HttpCountly.TAG, "request : " + eventDatas + " response : " + str4);
                        if (z10) {
                            LogUtils.i(HttpCountly.TAG, "===postEventData==" + a.toJSONString(concurrentLinkedQueue));
                            CountlyUtil.deleteDiskCacheEvent((ConcurrentLinkedQueue<Map>) concurrentLinkedQueue);
                        }
                    } else {
                        CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
                    }
                } catch (Exception e10) {
                    LogUtils.e(HttpCountly.TAG, "postEventData error :" + e10);
                }
            }
        });
        return true;
    }

    public boolean postSendFailedEventData(String str, final ConcurrentLinkedQueue<Map> concurrentLinkedQueue, int i10) {
        String string;
        List<String> list = this.serverUrlList;
        if (list == null || list.isEmpty()) {
            string = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            List<String> list2 = this.serverUrlList;
            sb2.append(list2.get(this.sendErrorCount % list2.size()));
            sb2.append("/i?");
            string = sb2.toString();
        }
        String str2 = TAG;
        LogUtils.d(str2, "postSendFailedEventData url = " + string + "--errorCount:" + this.sendErrorCount);
        if (TextUtils.isEmpty(string)) {
            CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
            return true;
        }
        final String eventDatas = getEventDatas(str, concurrentLinkedQueue, i10);
        LogUtils.i(str2, "===postSendFailedEventData==" + eventDatas);
        this.mHttpImpl.post(new IHttp.RequestWrapper.Builder().url(string).params(eventDatas).build(), new IHttp.OnResponseListener<String>() { // from class: com.haima.hmcp.countly.HttpCountly.2
            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onError(int i11, int i12, String str3) {
                LogUtils.d(HttpCountly.TAG, "postSendFailedEventData error:" + a.toJSONString(concurrentLinkedQueue));
                CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
                HttpCountly.access$108(HttpCountly.this);
            }

            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onSuccess(String str3) {
                try {
                    if ("success".equalsIgnoreCase(a.parseObject(str3).getString("result"))) {
                        LogUtils.d(HttpCountly.TAG, "postSendFailedEventData request : " + eventDatas + " response : " + str3);
                        String str4 = HttpCountly.TAG;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("===postSendFailedEventData==");
                        sb3.append(a.toJSONString(concurrentLinkedQueue));
                        LogUtils.i(str4, sb3.toString());
                        CountlyUtil.deleteDiskCacheEvent((ConcurrentLinkedQueue<Map>) concurrentLinkedQueue);
                    } else {
                        CountlyResendFailEventsManager.getInstance().addEvents(concurrentLinkedQueue);
                        LogUtils.d(HttpCountly.TAG, "postSendFailedEventData failed:" + a.toJSONString(concurrentLinkedQueue));
                        HttpCountly.access$108(HttpCountly.this);
                    }
                } catch (Exception e10) {
                    LogUtils.e(HttpCountly.TAG, "postSendFailedEventData error :" + e10);
                }
            }
        });
        return true;
    }

    public void setServerInfo(String str, String str2) {
        if (!TextUtils.isEmpty(HmcpManager.getInstance().getCountlyUrl())) {
            this.serverURL_ = HmcpManager.getInstance().getCountlyUrl();
        } else if (TextUtils.isEmpty(str)) {
            this.serverURL_ = Constants.COUNTLY_URL;
        } else {
            this.serverURL_ = str;
        }
        if (!TextUtils.isEmpty(HmcpManager.getInstance().getCountlyKey())) {
            this.appKey = HmcpManager.getInstance().getCountlyKey();
        } else if (TextUtils.isEmpty(str2)) {
            this.appKey = Constants.COUNTLY_KEY;
        } else {
            this.appKey = str2;
        }
        LogUtils.d(TAG, "AppSet: " + HmcpManager.getInstance().getCountlyUrl() + " Package: " + Constants.COUNTLY_URL + " Mongo: " + str + " Final: " + this.serverURL_ + " Key:" + this.appKey);
    }

    public void setServerList(List<String> list) {
        if (list == null || list.size() == 0) {
            this.serverUrlList = Arrays.asList(this.serverURL_);
        } else {
            this.serverUrlList = list;
        }
        LogUtils.d(TAG, "setServerList for countly:" + this.serverUrlList);
    }

    JSONObject toJSON(String str, int i10, long j10, int i11, int i12, Map map) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", str);
            jSONObject.put("count", i10);
            jSONObject.put("timestamp", j10);
            jSONObject.put("hour", i11);
            jSONObject.put(DAY_OF_WEEK, i12);
            if (map != null) {
                jSONObject.put(SEGMENTATION_KEY, new JSONObject(map));
            }
            jSONObject.put(SUM_KEY, this.sum);
            double d10 = this.dur;
            if (d10 > 0.0d) {
                jSONObject.put(DUR_KEY, d10);
            }
        } catch (JSONException e10) {
            LogUtils.e(TAG, "Got exception converting an Event to JSON", e10);
        }
        return jSONObject;
    }

    public boolean postEventData(String str, Map map, int i10, boolean z10) {
        ConcurrentLinkedQueue<Map> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        concurrentLinkedQueue.add(map);
        return postEventData(str, concurrentLinkedQueue, i10, z10);
    }
}
