package com.byazt.gf;

import android.hardware.SensorManager;
import androidx.annotation.NonNull;
import com.umeng.analytics.pro.bm;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 914, 54})
public class ve {
    public static float[] c(List<Float> list, List<Float> list2, List<Float> list3, List<Float> list4, List<Float> list5, List<Float> list6) {
        int iMin = Math.min(list.size(), list4.size());
        float degrees = 0.0f;
        char c10 = 0;
        float f10 = 0.0f;
        float degrees2 = 0.0f;
        int i10 = 0;
        while (i10 < iMin) {
            Float f11 = list.get(i10);
            Float f12 = list2.get(i10);
            Float f13 = list3.get(i10);
            Float f14 = list4.get(i10);
            Float f15 = list5.get(i10);
            Float f16 = list6.get(i10);
            if (f11 == null || f12 == null || f13 == null || f14 == null || f15 == null || f16 == null) {
                break;
            }
            float[] fArr = new float[3];
            fArr[c10] = f11.floatValue();
            fArr[1] = f12.floatValue();
            fArr[2] = f13.floatValue();
            float[] fArr2 = new float[3];
            fArr2[c10] = f14.floatValue();
            fArr2[1] = f15.floatValue();
            fArr2[2] = f16.floatValue();
            float[] fArr3 = new float[9];
            float[] fArr4 = new float[3];
            SensorManager.getRotationMatrix(fArr3, null, fArr, fArr2);
            SensorManager.getOrientation(fArr3, fArr4);
            degrees += (((float) Math.toDegrees(fArr4[c10])) + 360.0f) % 360.0f;
            float degrees3 = (((float) Math.toDegrees(fArr4[1])) + 360.0f) % 360.0f;
            degrees2 += (((float) Math.toDegrees(fArr4[2])) + 360.0f) % 360.0f;
            i10++;
            f10 = degrees3 + f10;
            c10 = 0;
        }
        float f17 = f10;
        if (iMin == 0) {
            return new float[]{0.0f, 0.0f, 0.0f};
        }
        float f18 = iMin;
        return new float[]{degrees / f18, f17 / f18, degrees2 / f18};
    }

    @NonNull
    public static int[][] c(List<JSONObject> list, long j10, long j11) throws JSONException {
        int size = list.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (int i10 = 0; i10 < size; i10++) {
            JSONArray jSONArrayOptJSONArray = list.get(i10).optJSONArray("val");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 3) {
                dArr[i10] = jSONArrayOptJSONArray.getDouble(0);
                dArr2[i10] = jSONArrayOptJSONArray.getDouble(1);
                dArr3[i10] = jSONArrayOptJSONArray.getDouble(2);
            }
        }
        return new int[][]{c(dArr, j10), c(dArr2, j11), c(dArr3, j11)};
    }

    @NonNull
    public static int[] c(double[] dArr, long j10) {
        if (j10 <= 0 || j10 > 360) {
            return new int[0];
        }
        int[] iArr = new int[(int) (360 / j10)];
        for (double d10 : dArr) {
            int i10 = (int) (d10 / j10);
            iArr[i10] = iArr[i10] + 1;
        }
        return iArr;
    }

    @NonNull
    public static int[] c(LinkedList<JSONObject> linkedList, int i10) {
        int[] iArr = new int[i10];
        if (linkedList != null && !linkedList.isEmpty()) {
            int iOptLong = (int) (((linkedList.get(linkedList.size() - 1).optLong(bm.aM, 0L) / 1000) / 60) / 60);
            Iterator<JSONObject> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                int iOptLong2 = iOptLong - ((int) (((it2.next().optLong(bm.aM, 0L) / 1000) / 60) / 60));
                if (iOptLong2 >= 0 && iOptLong2 < i10) {
                    iArr[iOptLong2] = iArr[iOptLong2] + 1;
                }
            }
        }
        return iArr;
    }
}
