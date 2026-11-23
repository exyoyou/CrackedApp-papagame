package com.cloudplay.messagesdk.gson.internal.j.o;

import com.sigmob.sdk.archives.tar.e;
import external.org.apache.commons.lang3.d;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final TimeZone f23912a = TimeZone.getTimeZone("UTC");

    public static Date a(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i10;
        int i11;
        int i12;
        int iA;
        int length;
        TimeZone timeZone;
        int i13;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int iA2 = a(str, index, i14);
            if (a(str, i14, '-')) {
                i14++;
            }
            int i15 = i14 + 2;
            int iA3 = a(str, i14, i15);
            if (a(str, i15, '-')) {
                i15++;
            }
            int i16 = i15 + 2;
            int iA4 = a(str, i15, i16);
            boolean zA = a(str, i16, 'T');
            if (!zA && str.length() <= i16) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iA2, iA3 - 1, iA4);
                parsePosition.setIndex(i16);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i17 = i16 + 1;
                int i18 = i17 + 2;
                int iA5 = a(str, i17, i18);
                if (a(str, i18, ':')) {
                    i18++;
                }
                int i19 = i18 + 2;
                int iA6 = a(str, i18, i19);
                if (a(str, i19, ':')) {
                    i19++;
                }
                if (str.length() <= i19 || (cCharAt = str.charAt(i19)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i13 = 0;
                } else {
                    int i20 = i19 + 2;
                    iA = a(str, i19, i20);
                    if (iA > 59 && iA < 63) {
                        iA = 59;
                    }
                    if (a(str, i20, d.f90941a)) {
                        int i21 = i20 + 1;
                        int iA7 = a(str, i21 + 1);
                        int iMin = Math.min(iA7, i21 + 3);
                        int iA8 = a(str, i21, iMin);
                        int i22 = iMin - i21;
                        if (i22 == 1) {
                            iA8 *= 100;
                        } else if (i22 == 2) {
                            iA8 *= 10;
                        }
                        i11 = iA6;
                        i12 = iA8;
                        i10 = iA5;
                        i16 = iA7;
                    } else {
                        i13 = iA;
                        i19 = i20;
                    }
                }
                i12 = 0;
                i10 = iA5;
                i16 = i19;
                iA = i13;
                i11 = iA6;
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                iA = 0;
            }
            if (str.length() <= i16) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i16);
            if (cCharAt2 == 'Z') {
                timeZone = f23912a;
                length = i16 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i16);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + e.V;
                }
                length = i16 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = f23912a;
                } else {
                    String str3 = "GMT" + strSubstring;
                    TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                    String id2 = timeZone2.getID();
                    if (!id2.equals(str3) && !id2.replace(":", "").equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, iA2);
            gregorianCalendar2.set(2, iA3 - 1);
            gregorianCalendar2.set(5, iA4);
            gregorianCalendar2.set(11, i10);
            gregorianCalendar2.set(12, i11);
            gregorianCalendar2.set(13, iA);
            gregorianCalendar2.set(14, i12);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException e10) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
            }
            String message = e10.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e10.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e10);
            throw parseException;
        }
    }

    private static boolean a(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    private static int a(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -iDigit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int iDigit2 = Character.digit(str.charAt(i13), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - iDigit2;
            i13 = i14;
        }
        return -i12;
    }

    private static int a(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }
}
