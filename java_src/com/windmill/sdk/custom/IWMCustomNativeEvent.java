package com.windmill.sdk.custom;

import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMCustomNativeEvent extends IWMCustomBaseEvent {
    void callLoadSuccess(List<WMNativeAdData> list);

    void callNativeAdClick(WMNativeAdData adData);

    void callNativeAdLangPageShow(WMNativeAdData adData);

    void callNativeAdShow(WMNativeAdData adData);

    void callNativeAdShowError(WMNativeAdData adData, WMAdapterError adapterError);
}
