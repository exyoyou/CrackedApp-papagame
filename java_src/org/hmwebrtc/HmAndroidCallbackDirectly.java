package org.hmwebrtc;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
public class HmAndroidCallbackDirectly {
    private static final String TAG = "HmCallbackDirectly";
    private static final String hmAdapterCallbackName = "nativeCallbackDirectly";
    private static final String hmAdapterName = "org.webrtc.haima.HmRtcAdapterImpl";
    private static final String hmExceptionReportMethodName = "throwExceptionMsg";
    private static final String hmRecordCountlyEventMethodName = "recordCountlyEvent";
    private static Class<?> sHmRtcAdapterCls;
    private static Method sMethod;

    public static void hmCallbackDirectly(String str, String str2) {
        if (sMethod == null || sHmRtcAdapterCls == null) {
            try {
                Class<?> cls = Class.forName(hmAdapterName);
                sHmRtcAdapterCls = cls;
                Class<?>[] clsArr = new Class[2];
                clsArr[0] = String.class;
                clsArr[1] = String.class;
                sMethod = cls.getMethod(hmAdapterCallbackName, clsArr);
            } catch (Exception unused) {
                return;
            }
        }
        try {
            sMethod.invoke(sHmRtcAdapterCls, str, str2);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Fatal error: call HmRtcAdapterImpl failed:");
            sb2.append(str);
            sb2.append(", exception: ");
            sb2.append(e10);
        }
    }

    public static void hmRecordCountlyEvent(int i10, String str) {
        if (sMethod == null || sHmRtcAdapterCls == null) {
            try {
                Class<?> cls = Class.forName(hmAdapterName);
                sHmRtcAdapterCls = cls;
                sMethod = cls.getMethod(hmRecordCountlyEventMethodName, Integer.TYPE, String.class);
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Can't find class: ");
                sb2.append(e10);
                return;
            }
        }
        try {
            sMethod.invoke(sHmRtcAdapterCls, Integer.valueOf(i10), str);
        } catch (Exception e11) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Fatal error: call HmRtcAdapterImpl failed:recordCountlyEvent, exception: ");
            sb3.append(e11);
        }
    }
}
