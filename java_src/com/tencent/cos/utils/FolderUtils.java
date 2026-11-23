package com.tencent.cos.utils;

import kotlin.text.Typography;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes2.dex */
public class FolderUtils {
    private static char[] InValidChar = {'/', '?', '*', ':', '|', TokenParser.ESCAPE, Typography.less, Typography.greater, '\"'};
    private static final String[] RESERVERED = {"con", "aux", "nul", "prn", "com0", "com1", "com2", "com3", "com4", "com5", "com6", "com7", "com8", "com9", "lpt0", "lpt1", "lpt2", "lpt3", "lpt4", "lpt5", "lpt6", "lpt7", "lpt8", "lpt9"};

    private static boolean hasInValidChar(String str) {
        int length = InValidChar.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.indexOf(InValidChar[i10]) != -1) {
                return true;
            }
        }
        return false;
    }

    private static boolean isReservedStr(String str) {
        int length = RESERVERED.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (RESERVERED[i10].contentEquals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidFolder(String str) {
        return (hasInValidChar(str) || isReservedStr(str)) ? false : true;
    }

    public static boolean isValidPath(String str) {
        if (str == null) {
            return false;
        }
        boolean zEndsWith = str.endsWith(e.F0);
        String[] strArrSplit = str.split(e.F0);
        int length = strArrSplit.length;
        if (length == 0 && str.equalsIgnoreCase(e.F0)) {
            return true;
        }
        if (length == 0 && zEndsWith) {
            return isValidFolder(str);
        }
        if (zEndsWith && !isValidFolder(strArrSplit[length - 1])) {
            return false;
        }
        for (int i10 = 0; i10 < length - 1; i10++) {
            if (!("".equals(strArrSplit[i10]) && i10 == 0) && (("".equals(strArrSplit[i10]) && i10 > 0) || !isValidFolder(strArrSplit[i10]))) {
                return false;
            }
        }
        return true;
    }
}
