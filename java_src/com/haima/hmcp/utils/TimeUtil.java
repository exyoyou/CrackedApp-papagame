package com.haima.hmcp.utils;

/* JADX INFO: loaded from: classes5.dex */
public class TimeUtil {
    public static long Access;
    public static long CloudPoneInfoRequst;
    public static long CloudPoneInfoRespone;
    public static long ConfigRequst;
    public static long ConfigRespone;
    public static long ConnectRequst;
    public static long FirstFrameArrival;
    public static long MediaCodecCreate;
    public static long RefreshRequst;
    public static long StreamUrl;

    public static String logString() {
        return "ConfigRequst:" + ConfigRequst + ",ConfigRespone:" + ConfigRespone + ",CloudPoneInfoRequst:" + CloudPoneInfoRequst + ",CloudPoneInfoRespone:" + CloudPoneInfoRespone + ",Access:" + Access + ",ConnectRequst:" + ConnectRequst + ",RefreshRequst:" + RefreshRequst + ",StreamUrl:" + StreamUrl + ",MediaCodecCreate:" + MediaCodecCreate + ",FirstFrameArrival:" + FirstFrameArrival;
    }
}
