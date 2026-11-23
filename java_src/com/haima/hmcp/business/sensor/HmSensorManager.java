package com.haima.hmcp.business.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.WindowManager;
import com.alibaba.fastjson.a;
import com.alibaba.fastjson.h;
import com.alibaba.fastjson.parser.Feature;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.ReportInfo;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.business.sensor.bean.HmSensorLocalData;
import com.haima.hmcp.business.sensor.bean.report.HmSensorAccuracyReportInfo;
import com.haima.hmcp.business.sensor.bean.report.HmSensorActionListReportInfo;
import com.haima.hmcp.business.sensor.bean.report.HmSensorActionReportInfo;
import com.haima.hmcp.business.sensor.bean.report.HmSensorDataReportInfo;
import com.haima.hmcp.business.sensor.bean.ws.HmSensorBaseMsg;
import com.haima.hmcp.business.sensor.bean.ws.HmSensorReceivedMsg;
import com.haima.hmcp.business.sensor.bean.ws.HmSensorSendMsg;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorManager implements SensorEventListener {
    private final String SENSOR_GET_SENSOR_LIST_MSG_KEY;
    private final String SENSOR_ORIGIN_DATA_MSG_KEY;
    private final String TAG;
    private IHmSensorStatusListener mIHmSensorStatusListener;
    private final Map<Integer, HmSensorLocalData> mLocalDataMap;
    private SensorManager mSensorManager;
    private IWebSocket mWebSocketManager;
    private WindowManager mWindowManager;

    public @interface SourceFrom {
        public static final int LIST = 0;
        public static final int SINGLE = 1;
    }

    private HmSensorManager(Context context, IWebSocket iWebSocket) {
        String simpleName = HmSensorManager.class.getSimpleName();
        this.TAG = simpleName;
        this.SENSOR_ORIGIN_DATA_MSG_KEY = "sensor";
        this.SENSOR_GET_SENSOR_LIST_MSG_KEY = Constants.WS_MESSAGE_TYPE_SENSOR_LIST;
        this.mLocalDataMap = new HashMap();
        this.mWindowManager = null;
        if (context != null && iWebSocket != null) {
            this.mSensorManager = (SensorManager) context.getSystemService("sensor");
            this.mWindowManager = (WindowManager) context.getSystemService("window");
            this.mWebSocketManager = iWebSocket;
        } else {
            LogUtils.e(simpleName, "HmSensorManager init failed : Context is" + context + ",IWebSocket is " + iWebSocket);
        }
    }

    private void correctData(int i10, float[] fArr) {
        WindowManager windowManager;
        if (needCorrect(i10) && (windowManager = this.mWindowManager) != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            if ((rotation == 2 || rotation == 3) && i10 == 4) {
                minusData(0, fArr);
                minusData(1, fArr);
            }
        }
    }

    private int getSensorSampleMin() {
        return HmSensorConfig.getInstance().getSensorSamplingMinUs();
    }

    private boolean isSensorDataReport() {
        return HmSensorConfig.getInstance().getSensorCountlySwitch() == 1;
    }

    private void minusData(int i10, float[] fArr) {
        if (i10 > fArr.length - 1) {
            return;
        }
        fArr[i10] = -fArr[i10];
    }

    private boolean needCorrect(int i10) {
        return i10 == 4;
    }

    public static HmSensorManager newInstance(Context context, IWebSocket iWebSocket) {
        return new HmSensorManager(context, iWebSocket);
    }

    private HmSensorBaseMsg newMsgInstance(String str) {
        return new HmSensorBaseMsg(str, CountlyUtil.mCloudID, CountlyUtil.mAccessKey);
    }

    private void onFailedProcess(int i10) {
        if (this.mIHmSensorStatusListener != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(IHmSensorStatusListener.FAILURE_KEY_SENSOR_TYPE, i10);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            this.mIHmSensorStatusListener.onSensorFailure(jSONObject.toString());
        }
    }

    private int processSamplingPeriodUs(int i10) {
        return (Build.VERSION.SDK_INT < 31 || i10 == 1 || i10 == 2 || i10 == 3 || i10 > getSensorSampleMin()) ? i10 : getSensorSampleMin();
    }

    private void processSensorInternal(HmSensorReceivedMsg hmSensorReceivedMsg, @SourceFrom int i10) {
        if (hmSensorReceivedMsg == null) {
            return;
        }
        int i11 = hmSensorReceivedMsg.sensorType;
        int i12 = hmSensorReceivedMsg.sendPeriodMs;
        int iProcessSamplingPeriodUs = processSamplingPeriodUs(hmSensorReceivedMsg.samplingPeriodUs);
        LogUtils.d(this.TAG, "start processSensorInternal,sensorType is " + i11 + ",samplingPeriodUs is " + iProcessSamplingPeriodUs + ",sendPeriodMs is " + i12);
        reportImmediately(Constants.COUNTLY_SENSOR_START, new HmSensorActionReportInfo(i11, iProcessSamplingPeriodUs, i12));
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null) {
            Sensor defaultSensor = sensorManager.getDefaultSensor(i11);
            if (defaultSensor == null) {
                LogUtils.e(this.TAG, "sensorType is " + i11 + ",getDefaultSensor failed!");
                onFailedProcess(i11);
                reportImmediately(Constants.COUNTLY_SENSOR_START_FAILURE, new HmSensorActionReportInfo(i11, iProcessSamplingPeriodUs, i12));
                return;
            }
            if (iProcessSamplingPeriodUs >= 0) {
                LogUtils.d(this.TAG, "sensorType =" + i11 + " register succeed!");
                this.mLocalDataMap.put(Integer.valueOf(i11), new HmSensorLocalData(i12, new HmSensorDataReportInfo()));
                this.mSensorManager.unregisterListener(this, defaultSensor);
                this.mSensorManager.registerListener(this, defaultSensor, iProcessSamplingPeriodUs);
                reportImmediately(Constants.COUNTLY_SENSOR_START_SUCCESS, new HmSensorActionReportInfo(i11, iProcessSamplingPeriodUs, i12, i10));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sendSensorData(HmSensorSendMsg hmSensorSendMsg) {
        HmSensorBaseMsg hmSensorBaseMsgNewMsgInstance = newMsgInstance("sensor");
        hmSensorBaseMsgNewMsgInstance.data = hmSensorSendMsg;
        sendWsMsg(a.toJSONString(hmSensorBaseMsgNewMsgInstance));
    }

    private void sendWsMsg(String str) {
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, str);
        }
    }

    private void unregisterSensor(int i10) {
        Sensor defaultSensor;
        LogUtils.d(this.TAG, "unregister the sensor which type is " + i10);
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null && (defaultSensor = sensorManager.getDefaultSensor(i10)) != null) {
            this.mSensorManager.unregisterListener(this, defaultSensor);
        }
        this.mLocalDataMap.remove(Integer.valueOf(i10));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
        reportImmediately(Constants.COUNTLY_SENSOR_ACCURACY, new HmSensorAccuracyReportInfo(sensor.getType(), i10));
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        HmSensorDataReportInfo hmSensorDataReportInfo;
        List<HmSensorDataReportInfo.InnerData> list;
        int type = sensorEvent.sensor.getType();
        HmSensorLocalData hmSensorLocalData = this.mLocalDataMap.get(Integer.valueOf(type));
        if (hmSensorLocalData == null) {
            LogUtils.e(this.TAG, "eventType=" + type + " has not been registered!");
            return;
        }
        int i10 = hmSensorLocalData.sendPeriodMs;
        long jCurrentTimeMillis = System.currentTimeMillis();
        HmSensorDataReportInfo hmSensorDataReportInfo2 = hmSensorLocalData.report;
        if (hmSensorLocalData.timeStamp == 0) {
            hmSensorLocalData.timeStamp = jCurrentTimeMillis;
        }
        if (jCurrentTimeMillis - hmSensorLocalData.timeStamp >= i10) {
            hmSensorLocalData.timeStamp = jCurrentTimeMillis;
            correctData(type, sensorEvent.values);
            sendSensorData(new HmSensorSendMsg(type, sensorEvent.accuracy, sensorEvent.values));
            if (isSensorDataReport() && hmSensorDataReportInfo2 != null) {
                hmSensorDataReportInfo2.type = type;
                List<HmSensorDataReportInfo.InnerData> list2 = hmSensorDataReportInfo2.data;
                if (list2 != null) {
                    HmSensorDataReportInfo.InnerData innerData = new HmSensorDataReportInfo.InnerData();
                    innerData.timestamp = jCurrentTimeMillis;
                    float[] fArr = sensorEvent.values;
                    innerData.value = Arrays.copyOf(fArr, fArr.length);
                    list2.add(innerData);
                }
            }
        }
        if (!isSensorDataReport() || (hmSensorDataReportInfo = hmSensorLocalData.report) == null || (list = hmSensorDataReportInfo.data) == null || list.isEmpty()) {
            return;
        }
        if (hmSensorLocalData.reportTimeStamp == 0) {
            hmSensorLocalData.reportTimeStamp = jCurrentTimeMillis;
        }
        if (jCurrentTimeMillis - hmSensorLocalData.reportTimeStamp >= HmSensorConfig.getInstance().getCountlyDataIntervalMs()) {
            hmSensorLocalData.reportTimeStamp = jCurrentTimeMillis;
            reportImmediately(Constants.COUNTLY_SENSOR_DATA, hmSensorDataReportInfo2);
            hmSensorLocalData.report.data.clear();
        }
    }

    public void processSensorList(String str) {
        HmSensorBaseMsg hmSensorBaseMsg;
        LogUtils.d(this.TAG, "start processSensorList : " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hmSensorBaseMsg = (HmSensorBaseMsg) a.parseObject(str, new h<HmSensorBaseMsg<List<HmSensorReceivedMsg>>>() { // from class: com.haima.hmcp.business.sensor.HmSensorManager.2
            }, new Feature[0]);
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "parse json exception : " + e10);
            hmSensorBaseMsg = null;
        }
        if (hmSensorBaseMsg == null || hmSensorBaseMsg.data == 0) {
            return;
        }
        HmSensorActionListReportInfo hmSensorActionListReportInfo = new HmSensorActionListReportInfo();
        ArrayList arrayList = new ArrayList();
        List list = (List) hmSensorBaseMsg.data;
        for (int i10 = 0; i10 < list.size(); i10++) {
            HmSensorReceivedMsg hmSensorReceivedMsg = (HmSensorReceivedMsg) list.get(i10);
            processSensorInternal(hmSensorReceivedMsg, 0);
            if (hmSensorReceivedMsg != null) {
                arrayList.add(new HmSensorActionReportInfo(hmSensorReceivedMsg.sensorType, hmSensorReceivedMsg.samplingPeriodUs, hmSensorReceivedMsg.sendPeriodMs));
            }
        }
        hmSensorActionListReportInfo.sensors.addAll(arrayList);
        reportImmediately(Constants.COUNTLY_SENSOR_GET_SENSOR_LIST, hmSensorActionListReportInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void processSensorSingle(String str) {
        HmSensorBaseMsg hmSensorBaseMsg;
        T t10;
        LogUtils.d(this.TAG, "start processSensorSingle : " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hmSensorBaseMsg = (HmSensorBaseMsg) a.parseObject(str, new h<HmSensorBaseMsg<HmSensorReceivedMsg>>() { // from class: com.haima.hmcp.business.sensor.HmSensorManager.1
            }, new Feature[0]);
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "processSensorSingle : parse json exception : " + e10);
            hmSensorBaseMsg = null;
        }
        if (hmSensorBaseMsg == null || (t10 = hmSensorBaseMsg.data) == 0) {
            LogUtils.e(this.TAG, "processSensorSingle content is empty!");
        } else {
            if (((HmSensorReceivedMsg) t10).cmd == 1) {
                processSensorInternal((HmSensorReceivedMsg) t10, 1);
                return;
            }
            int i10 = ((HmSensorReceivedMsg) t10).sensorType;
            reportImmediately(Constants.COUNTLY_SENSOR_STOP, new HmSensorActionReportInfo(i10));
            unregisterSensor(i10);
        }
    }

    public void reportImmediately(String str, ReportInfo reportInfo) {
        if (reportInfo == null) {
            return;
        }
        String jSONString = a.toJSONString(reportInfo);
        LogUtils.d(this.TAG, "jsonContent reportImmediately " + str);
        CountlyUtil.recordEvent(str, jSONString);
    }

    public void sendToGetSensorList() {
        LogUtils.d(this.TAG, "getSensorList from screen_ws");
        HmSensorBaseMsg hmSensorBaseMsgNewMsgInstance = newMsgInstance(Constants.WS_MESSAGE_TYPE_SENSOR_LIST);
        hmSensorBaseMsgNewMsgInstance.data = "";
        hmSensorBaseMsgNewMsgInstance.mid = "A" + System.currentTimeMillis();
        sendWsMsg(a.toJSONString(hmSensorBaseMsgNewMsgInstance));
    }

    public void setSensorStatusListener(IHmSensorStatusListener iHmSensorStatusListener) {
        this.mIHmSensorStatusListener = iHmSensorStatusListener;
    }

    public void stopAllSensors() {
        LogUtils.d(this.TAG, "stop all the sensors");
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
        Iterator<Integer> it2 = this.mLocalDataMap.keySet().iterator();
        while (it2.hasNext()) {
            reportImmediately(Constants.COUNTLY_SENSOR_STOP, new HmSensorActionReportInfo(it2.next().intValue()));
        }
        this.mLocalDataMap.clear();
    }
}
