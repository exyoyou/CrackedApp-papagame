package org.webrtc.haima;

import org.hmwebrtc.Logging;
import org.hmwebrtc.StatsReport;

/* JADX INFO: loaded from: classes10.dex */
public class HmStatsCollector {
    private static final String TAG = "stats_collector";
    final FieldInfo[] mFileldInfo;
    private StatsReport.Value[] mReportArray;

    public static class FieldInfo {
        String defValue;
        String name;
        FieldType type;

        FieldInfo(FieldType fieldType, String str, String str2) {
            this.type = fieldType;
            this.name = str;
        }
    }

    public enum FieldType {
        kINT,
        kLong,
        KString
    }

    public HmStatsCollector(FieldInfo[] fieldInfoArr) {
        if (fieldInfoArr == null || fieldInfoArr.length == 0) {
            throw new IllegalArgumentException("Invalid fields size!");
        }
        this.mFileldInfo = new FieldInfo[fieldInfoArr.length];
        this.mReportArray = new StatsReport.Value[fieldInfoArr.length];
        int length = fieldInfoArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            FieldInfo fieldInfo = fieldInfoArr[i10];
            this.mFileldInfo[i11] = fieldInfo;
            this.mReportArray[i11] = new StatsReport.Value(fieldInfo.name, fieldInfo.defValue);
            i10++;
            i11++;
        }
    }

    public StatsReport.Value[] getStats() {
        StatsReport.Value[] valueArr;
        synchronized (this.mReportArray) {
            valueArr = (StatsReport.Value[]) this.mReportArray.clone();
        }
        return valueArr;
    }

    public boolean setValues(int i10, String[] strArr) {
        int length = strArr.length - i10;
        StatsReport.Value[] valueArr = this.mReportArray;
        int i11 = 0;
        if (length < valueArr.length) {
            Logging.d(TAG, "setValues: failed " + i10);
            return false;
        }
        synchronized (valueArr) {
            while (i10 < strArr.length) {
                this.mReportArray[i11] = new StatsReport.Value(this.mFileldInfo[i11].name, strArr[i10]);
                i11++;
                if (i11 >= this.mReportArray.length) {
                    break;
                }
                i10++;
            }
        }
        return true;
    }
}
