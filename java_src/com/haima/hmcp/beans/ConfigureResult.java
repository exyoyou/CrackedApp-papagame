package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ConfigureResult extends BaseResult {
    public List<CommonMeta> interactiveTalkInfo;
    public List<IntroVideoInfo> introAnimationInfo;
    public List<IntroImageInfo> introImageInfo;
    public List<String> langList;
    public String minimumBitRate;

    @JSONField(name = "recommendInfo")
    public RecommendInfo recommendInfo;
    public List<ResolutionInfo> resolutionInfo;
    public List<CommonMeta> setDataInfo;
    public List<SpeedTestInfo> speedMeasurementInfo;
    public List<SwitchInfo> switchInfo;
    public List<TipsInfo> tipsInfo;
    public List<ResolutionInfo> webrtcResolutionInfo;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "ConfigureResultData{resolutionInfo=" + this.resolutionInfo + ", interactiveTalkInfo=" + this.interactiveTalkInfo + ", tipsInfo=" + this.tipsInfo + ", setDataInfo=" + this.setDataInfo + ", introVideoInfo=" + this.introAnimationInfo + ", speedTestInfo=" + this.speedMeasurementInfo + ", introImageInfo=" + this.introImageInfo + ", recommendInfo=" + this.recommendInfo + ", minimumBitRate=" + this.minimumBitRate + '}';
    }
}
