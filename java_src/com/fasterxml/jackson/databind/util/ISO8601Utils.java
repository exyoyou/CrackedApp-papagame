package com.fasterxml.jackson.databind.util;

import external.org.apache.commons.lang3.d;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public class ISO8601Utils {
    protected static final int DEF_8601_LEN = 29;
    private static final TimeZone TIMEZONE_Z = TimeZone.getTimeZone("UTC");

    private static boolean checkOffset(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_Z);
    }

    private static int indexOfNonDigit(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00cf A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d5 A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00da  */
    /* JADX WARN: Code duplicated, block: B:70:0x0168 A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x019b A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i10;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        String strSubstring;
        int length;
        TimeZone timeZone;
        char cCharAt2;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int i15 = parseInt(str, index, i14);
            if (checkOffset(str, i14, '-')) {
                i14++;
            }
            int i16 = i14 + 2;
            int i17 = parseInt(str, i14, i16);
            if (checkOffset(str, i16, '-')) {
                i16++;
            }
            int i18 = i16 + 2;
            int i19 = parseInt(str, i16, i18);
            boolean zCheckOffset = checkOffset(str, i18, 'T');
            if (!zCheckOffset && str.length() <= i18) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i15, i17 - 1, i19);
                parsePosition.setIndex(i18);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i20 = i18 + 1;
                int i21 = i20 + 2;
                int i22 = parseInt(str, i20, i21);
                if (checkOffset(str, i21, ':')) {
                    i21++;
                }
                int i23 = i21 + 2;
                int i24 = parseInt(str, i21, i23);
                if (checkOffset(str, i23, ':')) {
                    i23++;
                }
                if (str.length() <= i23 || (cCharAt2 = str.charAt(i23)) == 'Z' || cCharAt2 == '+' || cCharAt2 == '-') {
                    i11 = i24;
                    i12 = 0;
                    i10 = i22;
                    i18 = i23;
                } else {
                    int i25 = i23 + 2;
                    i13 = parseInt(str, i23, i25);
                    if (i13 > 59 && i13 < 63) {
                        i13 = 59;
                    }
                    if (checkOffset(str, i25, d.f90941a)) {
                        int i26 = i25 + 1;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i26 + 1);
                        int iMin = Math.min(iIndexOfNonDigit, i26 + 3);
                        int i27 = parseInt(str, i26, iMin);
                        int i28 = iMin - i26;
                        if (i28 == 1) {
                            i27 *= 100;
                        } else if (i28 == 2) {
                            i27 *= 10;
                        }
                        i11 = i24;
                        i12 = i27;
                        i10 = i22;
                        i18 = iIndexOfNonDigit;
                    } else {
                        i11 = i24;
                        i10 = i22;
                        i18 = i25;
                        i12 = 0;
                    }
                }
                if (str.length() > i18) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(i18);
                if (cCharAt == 'Z') {
                    timeZone = TIMEZONE_Z;
                    length = i18 + 1;
                } else {
                    if (cCharAt != '+' && cCharAt != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(i18);
                    length = i18 + strSubstring.length();
                    if (!"+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                        timeZone = TIMEZONE_Z;
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
                gregorianCalendar2.set(1, i15);
                gregorianCalendar2.set(2, i17 - 1);
                gregorianCalendar2.set(5, i19);
                gregorianCalendar2.set(11, i10);
                gregorianCalendar2.set(12, i11);
                gregorianCalendar2.set(13, i13);
                gregorianCalendar2.set(14, i12);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            if (str.length() > i18) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(i18);
            if (cCharAt == 'Z') {
                timeZone = TIMEZONE_Z;
                length = i18 + 1;
            } else {
                if (cCharAt != '+') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                }
                strSubstring = str.substring(i18);
                length = i18 + strSubstring.length();
                if ("+0000".equals(strSubstring)) {
                    timeZone = TIMEZONE_Z;
                } else {
                    timeZone = TIMEZONE_Z;
                }
            }
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, i15);
            gregorianCalendar3.set(2, i17 - 1);
            gregorianCalendar3.set(5, i19);
            gregorianCalendar3.set(11, i10);
            gregorianCalendar3.set(12, i11);
            gregorianCalendar3.set(13, i13);
            gregorianCalendar3.set(14, i12);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (Exception e10) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
            }
            String message = e10.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e10.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date " + str2 + ": " + message, parsePosition.getIndex());
            parseException.initCause(e10);
            throw parseException;
        }
    }

    private static int parseInt(String str, int i10, int i11) throws NumberFormatException {
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

    public static String format(Date date, boolean z10) {
        return format(date, z10, TIMEZONE_Z);
    }

    @Deprecated
    public static String format(Date date, boolean z10, TimeZone timeZone) {
        return format(date, z10, timeZone, Locale.US);
    }

    public static String format(Date date, boolean z10, TimeZone timeZone, Locale locale) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.setTime(date);
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(String.format("%04d-%02d-%02dT%02d:%02d:%02d", Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(2) + 1), Integer.valueOf(gregorianCalendar.get(5)), Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12)), Integer.valueOf(gregorianCalendar.get(13))));
        if (z10) {
            sb2.append(String.format(".%03d", Integer.valueOf(gregorianCalendar.get(14))));
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i10 = offset / 60000;
            int iAbs = Math.abs(i10 / 60);
            int iAbs2 = Math.abs(i10 % 60);
            Object[] objArr = new Object[3];
            objArr[0] = Character.valueOf(offset < 0 ? '-' : '+');
            objArr[1] = Integer.valueOf(iAbs);
            objArr[2] = Integer.valueOf(iAbs2);
            sb2.append(String.format("%c%02d:%02d", objArr));
        } else {
            sb2.append('Z');
        }
        return sb2.toString();
    }
}
