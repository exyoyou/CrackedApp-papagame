package com.haima.hmcp.business;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public class IntervalUtils {
    private static final int DEFAULT_INTERVAL = 60;
    private static final int MIN_INTERVAL = 5;
    ArrayList<IntervalInfo> intervalInfos = new ArrayList<>();
    private boolean isInitSuccess;

    static class IntervalInfo implements Comparable {
        private int intervalTime;
        private int useTime;

        public IntervalInfo(String str) {
            String[] strArrSplit;
            this.useTime = -1;
            this.intervalTime = -1;
            if (TextUtils.isEmpty(str) || (strArrSplit = str.split(",")) == null || strArrSplit.length <= 1) {
                return;
            }
            try {
                this.useTime = Integer.parseInt(strArrSplit[0]);
                this.intervalTime = Integer.parseInt(strArrSplit[1]);
            } catch (Exception e10) {
                LogUtils.e("IntervalUtils", e10.toString());
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Object obj) {
            if (obj instanceof IntervalInfo) {
                return ((IntervalInfo) obj).useTime - this.useTime;
            }
            return 0;
        }

        public boolean isVaild() {
            return this.useTime >= 0 && this.intervalTime >= 5;
        }
    }

    public IntervalUtils(String str) {
        this.isInitSuccess = false;
        this.isInitSuccess = initIntervalInfos(str);
    }

    private boolean initIntervalInfos(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(";")) {
                IntervalInfo intervalInfo = new IntervalInfo(str2);
                if (intervalInfo.isVaild()) {
                    this.intervalInfos.add(intervalInfo);
                }
            }
            Collections.sort(this.intervalInfos);
        }
        return this.intervalInfos.size() > 0;
    }

    public static void test() {
        IntervalUtils intervalUtils = new IntervalUtils(Constants.DEFAULT_PING2_INTERVAL_TIMES);
        LogUtils.d("test", " useTime 6  interval ：" + intervalUtils.getIntervalTimeByUseTime(-1000L));
        LogUtils.d("test", " useTime 6  interval ：" + intervalUtils.getIntervalTimeByUseTime(6L));
        LogUtils.d("test", " useTime 16  interval ：" + intervalUtils.getIntervalTimeByUseTime(16L));
        LogUtils.d("test", " useTime 26  interval ：" + intervalUtils.getIntervalTimeByUseTime(26L));
        LogUtils.d("test", " useTime 36  interval ：" + intervalUtils.getIntervalTimeByUseTime(36L));
        LogUtils.d("test", " useTime 6  interval ：" + intervalUtils.getIntervalTimeByUseTime(1000L));
    }

    public int getIntervalTimeByUseTime(long j10) {
        int i10;
        if (j10 < 0) {
            return 5;
        }
        for (int i11 = 0; i11 < this.intervalInfos.size(); i11++) {
            if (j10 >= this.intervalInfos.get(i11).useTime) {
                i10 = this.intervalInfos.get(i11).intervalTime;
                return i10 * 1000;
            }
        }
        i10 = 60;
        return i10 * 1000;
    }

    public boolean isInitSuccess() {
        return this.isInitSuccess;
    }
}
