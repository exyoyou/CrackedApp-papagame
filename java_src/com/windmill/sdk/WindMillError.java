package com.windmill.sdk;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WindMillError {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f86538b;
    private String message;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Integer, WindMillError> f86537a = new HashMap();
    public static final WindMillError ERROR_AD_NO_FILL = new WindMillError(700000, "无广告返回，各adn的详细错误信息可通过接口：getloadFailMessage 获取或者在广告平台相关报表查看");
    public static final WindMillError ERROR_INIT_EXCEPTION = new WindMillError(700100, "聚合SDK初始化过程SDK异常");
    public static final WindMillError ERROR_NOT_INIT = new WindMillError(700101, "聚合SDK未初始化,请先调用初始化startWithAppId方法");
    public static final WindMillError ERROR_INIT_FAIL = new WindMillError(700200, "SDK初始化失败,检查初始化参数:AppId等");
    public static final WindMillError ERROR_NETWORK = new WindMillError(700300, "网络请求出现错误,检查网络状态是否正常");
    public static final WindMillError ERROR_STRATEGY_REQUEST = new WindMillError(700400, "策略请求错误");
    public static final WindMillError ERROR_NULL_STRATEGY = new WindMillError(700410, "策略为空");
    public static final WindMillError ERROR_NOT_FOUND_ADAPTER = new WindMillError(700500, "未找到该渠道的适配器");
    public static final WindMillError ERROR_AD_ADAPTER_VERSION_ERROR = new WindMillError(700510, "渠道适配器版本不兼容,请使用SDK压缩包中提供的适配器");
    public static final WindMillError ERROR_AD_CUSTOM_ADAPTER_VERSION_ERROR = new WindMillError(700511, "渠道自定义适配器版本不兼容,请检查ToBid自定义适配器接口并更新版本号");
    public static final WindMillError ERROR_AD_REQUEST = new WindMillError(700600, "广告请求阶段发生异常");
    public static final WindMillError ERROR_PLACEMENT_ID_IS_EMPTY = new WindMillError(700610, "广告请求时传入placementID为空");
    public static final WindMillError ERROR_BID_TOKEN_IS_EMPTY = new WindMillError(700620, "广告请求时传入token为空");
    public static final WindMillError ERROR_AD_COUNT_IS_EMPTY = new WindMillError(700630, "请求的广告数量为空");
    public static final WindMillError ERROR_LOAD_AD_TIME_OUT = new WindMillError(700640, "加载广告超时");
    public static final WindMillError ERROR_CHANNEL_LOAD_AD_TIME_OUT = new WindMillError(700641, "渠道加载广告超时");
    public static final WindMillError ERROR_AD_LOAD_FAIL_LOADING = new WindMillError(700650, "广告正在加载中,请稍后再加载");
    public static final WindMillError ERROR_AD_LOAD_FAIL_INTERVAL = new WindMillError(700660, "广告加载频繁,请稍后在试");
    public static final WindMillError ERROR_AD_LOAD_FAIL_PLAYING = new WindMillError(700670, "广告正在播放中,请在广告关闭后再播放");
    public static final WindMillError ERROR_AD_LOAD_FRE_FILTER = new WindMillError(700680, "广告超过展示频次");
    public static final WindMillError ERROR_AD_NOT_READY = new WindMillError(700690, "广告未准备好");
    public static final WindMillError ERROR_AD_PLAY = new WindMillError(700700, "广告播放出错");
    public static final WindMillError ERROR_AD_PLAY_NETWORK_EXPIRED = new WindMillError(700710, "广告已过期，请重新加载");
    public static final WindMillError ERROR_AD_PLAY_NETWORK_NOT_READY = new WindMillError(700720, "渠道广告未准备好");
    public static final WindMillError ERROR_ALLAD_NOT_READY = new WindMillError(700730, "渠道所有广告都未准备好");
    public static final WindMillError ERROR_GDPR_DENIED = new WindMillError(700800, "GDPR未授权");
    public static final WindMillError ERROR_AD_LOAD_NETWORK_FILTER = new WindMillError(700900, "命中广告渠道过滤");
    public static final WindMillError ERROR_AD_LOAD_NETWORK_SOURCE_FILTER = new WindMillError(700901, "命中广告渠道下的广告源过滤");
    public static final WindMillError ERROR_AD_LOAD_NETWORK_BIDDING_FILTER = new WindMillError(700902, "命中竞价/非竞价广告过滤过滤");
    public static final WindMillError ERROR_AD_LOAD_NETWORK_PRICE_FILTER = new WindMillError(700903, "命中价格过滤");
    public static final WindMillError ERROR_AD_LOAD_NETWORK_TYPE_FILTER = new WindMillError(700904, "命中三方广告源广告类型过滤");
    public static final WindMillError ERROR_AD_BID_CURRENCY_FILTER = new WindMillError(700910, "命中竞价广告源币种、汇率匹配失败");
    public static final WindMillError ERROR_AD_BID_PRICE_FILTER = new WindMillError(700920, "命中竞价广告源出价未超过您设置的底价，被过滤不参与比价");
    public static final WindMillError ERROR_AD_ADAPTER_LOAD = new WindMillError(0, "Adapter加载广告出错");
    public static final WindMillError ERROR_AD_ADAPTER_PLAY = new WindMillError(1, "Adapter展示广告出错");

    public WindMillError(int errorCode, String message) {
        this.f86538b = errorCode;
        this.message = message;
        f86537a.put(Integer.valueOf(errorCode), this);
    }

    public static WindMillError getWindAdError(int error_code) {
        return f86537a.get(Integer.valueOf(error_code));
    }

    public WindMillError copy() {
        return new WindMillError(this.f86538b, this.message);
    }

    public int getErrorCode() {
        return this.f86538b;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String toString() {
        return String.format("{ \"error_code\":%d, \"message\": %s }", Integer.valueOf(this.f86538b), this.message);
    }
}
