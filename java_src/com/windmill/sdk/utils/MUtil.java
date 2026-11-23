package com.windmill.sdk.utils;

import com.windmill.sdk.base.WMLogUtil;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class MUtil {
    public static int getMaxRandom(int max) {
        try {
            return new Random().nextInt(max);
        } catch (Exception e10) {
            StringWriter stringWriter = new StringWriter();
            e10.printStackTrace(new PrintWriter(stringWriter));
            WMLogUtil.i("------MUtil--getRandom Exception " + stringWriter.toString());
            return 100;
        }
    }

    public static int getRandom() {
        try {
            return new Random().nextInt(6) + 100;
        } catch (Exception e10) {
            StringWriter stringWriter = new StringWriter();
            e10.printStackTrace(new PrintWriter(stringWriter));
            WMLogUtil.i("------MUtil--getRandom Exception " + stringWriter.toString());
            return 100;
        }
    }

    public static int getRandom95() {
        try {
            return 100 - new Random().nextInt(6);
        } catch (Exception e10) {
            StringWriter stringWriter = new StringWriter();
            e10.printStackTrace(new PrintWriter(stringWriter));
            WMLogUtil.i("------MUtil--getRandom Exception " + stringWriter.toString());
            return 100;
        }
    }

    public static int getRandom(int start, int end) {
        try {
            return new Random().nextInt(end) + start;
        } catch (Exception e10) {
            StringWriter stringWriter = new StringWriter();
            e10.printStackTrace(new PrintWriter(stringWriter));
            WMLogUtil.i("------MUtil--getRandom Exception " + stringWriter.toString());
            return 100;
        }
    }
}
