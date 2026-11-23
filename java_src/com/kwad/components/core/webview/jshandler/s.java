package com.kwad.components.core.webview.jshandler;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes2.dex */
public final class s implements SensorEventListener, com.kwad.sdk.core.webview.c.a {
    private Map<Integer, com.kwad.sdk.core.webview.c.c> apM = new ConcurrentHashMap();

    public static class a extends com.kwad.sdk.core.response.a.a {
        public int accuracy;
        public int apO;
        public ArrayList<Float> apP;
        public long timestamp;
        public int type;

        @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.type = jSONObject.optInt("type");
            this.apO = jSONObject.optInt("interval");
            this.timestamp = jSONObject.optLong(UMCrash.SP_KEY_TIMESTAMP);
            this.accuracy = jSONObject.optInt("accuracy");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(HmDataChannelManager.BEHAVIOR_VALUE);
            ArrayList<Float> arrayList = new ArrayList<>();
            if (jSONArrayOptJSONArray == null) {
                this.apP = arrayList;
                return;
            }
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                try {
                    Object obj = jSONArrayOptJSONArray.get(i10);
                    if (obj != null) {
                        arrayList.add((Float) obj);
                    }
                } catch (Throwable unused) {
                }
            }
            this.apP = arrayList;
        }

        @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            int i10 = this.type;
            if (i10 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i10);
            }
            int i11 = this.apO;
            if (i11 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "interval", i11);
            }
            long j10 = this.timestamp;
            if (j10 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, UMCrash.SP_KEY_TIMESTAMP, j10);
            }
            int i12 = this.accuracy;
            if (i12 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "accuracy", i12);
            }
            if (!this.apP.isEmpty()) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, HmDataChannelManager.BEHAVIOR_VALUE, this.apP);
            }
            return jSONObject;
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        if (TextUtils.isEmpty(str)) {
            cVar.onError(-1, "data is empty");
            return;
        }
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(str));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.apM.put(Integer.valueOf(aVar.type), cVar);
        a(aVar.type, aVar.apO, cVar);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerSensorListener";
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        com.kwad.sdk.utils.bk.Wo().a(this);
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        a(sensorEvent);
    }

    private void a(int i10, int i11, final com.kwad.sdk.core.webview.c.c cVar) {
        com.kwad.sdk.utils.bk.Wo().a(i10, i11, this, new com.kwad.sdk.utils.bk.b() { // from class: com.kwad.components.core.webview.jshandler.s.1
            @Override // com.kwad.sdk.utils.bk.b
            public final void onFailed() {
                cVar.onError(-1, "sensor is not support");
            }
        });
    }

    private void a(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        if (type == 4) {
            type = 2;
        } else if (type == 10) {
            type = 1;
        }
        com.kwad.sdk.core.webview.c.c cVar = this.apM.get(Integer.valueOf(type));
        if (cVar == null) {
            return;
        }
        ArrayList<Float> arrayList = new ArrayList<>();
        int i10 = 0;
        while (true) {
            float[] fArr = sensorEvent.values;
            if (i10 < fArr.length) {
                arrayList.add(Float.valueOf(fArr[i10]));
                i10++;
            } else {
                a aVar = new a();
                aVar.apP = arrayList;
                aVar.timestamp = sensorEvent.timestamp;
                aVar.accuracy = sensorEvent.accuracy;
                cVar.b(aVar);
                return;
            }
        }
    }
}
