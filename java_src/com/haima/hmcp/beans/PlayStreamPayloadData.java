package com.haima.hmcp.beans;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PlayStreamPayloadData implements IPayloadData {
    public static final int SUPPORTED = 1;
    public static final int UNKNOWN = -1;
    public static final int UNSUPPORTED = 0;
    public int ahead;
    public String audioUrl;
    public String cid;
    public boolean countDown;
    public int countdownTime;
    public boolean enable;
    public String encryption;
    public boolean finishByServer;
    public String finishTip;
    public String followerCid;
    public String formatter;
    public String gsmUrl;
    public GSMUsbNatData gsmUsbNatData;
    public String host;
    public String idcId;
    public String idcName;
    public String inputUrl;
    public String instanceAccessUrl;
    public String ipV6TurnUrl;
    public String kqiInfoList;
    public String masterId;
    public String pin;
    public int pingSize;
    public int pingTimes;
    public int playingTime;
    public boolean reconnectStream;
    public int remindTime;
    public String resolution;
    public ResolutionInfo resolutionInfo;
    public boolean restore;
    public String roomId;
    public String sToken;
    public String screenRecordUrl;
    public String screenUrl;
    public Map<String, Object> sdkDisplayInfo;
    public String signalUrl;
    public String signalV2Url;
    public String streamType;
    public String tip;
    public int traceTimes;
    public String turnPassword;
    public String turnUrl;
    public String turnUserName;
    public int type;
    public String uId;
    public String videoUrl;
    public WebRtcInfo webRtcInfo;
    public int supportLiving = -1;
    public SdkStreamPayloadData sdkStreamPayloadData = null;

    public String toString() {
        return "PlayStreamPayloadData{videoUrl='" + this.videoUrl + "', audioUrl='" + this.audioUrl + "', inputUrl='" + this.inputUrl + "', screenUrl='" + this.screenUrl + "', screenRecordUrl='" + this.screenRecordUrl + "', sToken='" + this.sToken + "', resolution='" + this.resolution + "', resolutionInfo=" + this.resolutionInfo + ", encryption='" + this.encryption + "', idcId='" + this.idcId + "', idcName='" + this.idcName + "', supportLiving=" + this.supportLiving + ", finishByServer=" + this.finishByServer + ", finishTip='" + this.finishTip + "', ahead=" + this.ahead + ", countDown=" + this.countDown + ", enable=" + this.enable + ", formatter='" + this.formatter + "', type=" + this.type + ", playingTime=" + this.playingTime + ", remindTime=" + this.remindTime + ", countdownTime=" + this.countdownTime + ", tip='" + this.tip + "', traceTimes=" + this.traceTimes + ", pingTimes=" + this.pingTimes + ", pingSize=" + this.pingSize + ", host='" + this.host + "', masterId='" + this.masterId + "', pin='" + this.pin + "', cid='" + this.cid + "', followerCid='" + this.followerCid + "', uId='" + this.uId + "', webRtcInfo=" + this.webRtcInfo + ", streamType='" + this.streamType + "', gsmUrl='" + this.gsmUrl + "', instanceAccessUrl='" + this.instanceAccessUrl + "', restore=" + this.restore + ", reconnectStream=" + this.reconnectStream + ", sdkDisplayInfo=" + this.sdkDisplayInfo + ", signalV2Url='" + this.signalV2Url + "', kqiInfoList='" + this.kqiInfoList + "', sdkStreamPayloadData=" + this.sdkStreamPayloadData + '}';
    }
}
