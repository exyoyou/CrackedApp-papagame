package kotlin.time;

import com.kuaishou.weapon.p0.t;
import java.io.IOException;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\u001a\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0003\u001a\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0003\u001a'\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\b\u001a'\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\b\u001a\u0010\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0014H\u0000\u001a\u0014\u0010&\u001a\u00020\u0014*\u00020\u00142\u0006\u0010$\u001a\u00020\u0001H\u0002\u001a\u0014\u0010,\u001a\u00020\u0011*\u00020\u000f2\u0006\u0010-\u001a\u00020\u0014H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0006\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0014X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010)\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"isDistantPast", "", "Lkotlin/time/Instant;", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "(Lkotlin/time/Instant;)Z", "isDistantFuture", "isDistantFuture$annotations", "DISTANT_PAST_SECONDS", "", "DISTANT_FUTURE_SECONDS", "MIN_SECOND", "MAX_SECOND", "parseIso", "isoString", "", "formatIso", "", "instant", "DAYS_PER_CYCLE", "", "DAYS_0000_TO_1970", "safeAddOrElse", "a", t.f74887l, "action", "Lkotlin/Function0;", "", "safeMultiplyOrElse", "SECONDS_PER_HOUR", "SECONDS_PER_MINUTE", "HOURS_PER_DAY", "SECONDS_PER_DAY", "NANOS_PER_SECOND", "NANOS_PER_MILLI", "MILLIS_PER_SECOND", "isLeapYear", "year", "monthLength", "POWERS_OF_TEN", "", "asciiDigitPositionsInIsoStringAfterYear", "colonsInIsoOffsetString", "asciiDigitsInIsoOffsetString", "truncateForErrorMessage", "maxLength", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,799:1\n1#2:800\n*E\n"})
public final class InstantKt {
    private static final int DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long DISTANT_FUTURE_SECONDS = 3093527980800L;
    private static final long DISTANT_PAST_SECONDS = -3217862419201L;
    private static final int HOURS_PER_DAY = 24;
    private static final long MAX_SECOND = 31556889864403199L;
    private static final int MILLIS_PER_SECOND = 1000;
    private static final long MIN_SECOND = -31557014167219200L;
    private static final int NANOS_PER_MILLI = 1000000;
    public static final int NANOS_PER_SECOND = 1000000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;

    @NotNull
    private static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

    @NotNull
    private static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    @NotNull
    private static final int[] colonsInIsoOffsetString = {3, 6};

    @NotNull
    private static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final String formatIso(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb2 = new StringBuilder();
        UnboundLocalDateTime unboundLocalDateTimeFromInstant = UnboundLocalDateTime.INSTANCE.fromInstant(instant);
        int year = unboundLocalDateTimeFromInstant.getYear();
        int i10 = 0;
        if (Math.abs(year) < 1000) {
            StringBuilder sb3 = new StringBuilder();
            if (year >= 0) {
                sb3.append(year + 10000);
                Intrinsics.checkNotNullExpressionValue(sb3.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb3.append(year - 10000);
                Intrinsics.checkNotNullExpressionValue(sb3.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb2.append((CharSequence) sb3);
        } else {
            if (year >= 10000) {
                sb2.append('+');
            }
            sb2.append(year);
        }
        sb2.append('-');
        formatIso$lambda$8$appendTwoDigits(sb2, sb2, unboundLocalDateTimeFromInstant.getMonth());
        sb2.append('-');
        formatIso$lambda$8$appendTwoDigits(sb2, sb2, unboundLocalDateTimeFromInstant.getDay());
        sb2.append('T');
        formatIso$lambda$8$appendTwoDigits(sb2, sb2, unboundLocalDateTimeFromInstant.getHour());
        sb2.append(':');
        formatIso$lambda$8$appendTwoDigits(sb2, sb2, unboundLocalDateTimeFromInstant.getMinute());
        sb2.append(':');
        formatIso$lambda$8$appendTwoDigits(sb2, sb2, unboundLocalDateTimeFromInstant.getSecond());
        if (unboundLocalDateTimeFromInstant.getNanosecond() != 0) {
            sb2.append(external.org.apache.commons.lang3.d.f90941a);
            while (true) {
                int nanosecond = unboundLocalDateTimeFromInstant.getNanosecond();
                iArr = POWERS_OF_TEN;
                int i11 = i10 + 1;
                if (nanosecond % iArr[i11] != 0) {
                    break;
                }
                i10 = i11;
            }
            int i12 = i10 - (i10 % 3);
            String strValueOf = String.valueOf((unboundLocalDateTimeFromInstant.getNanosecond() / iArr[i12]) + iArr[9 - i12]);
            Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strValueOf.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            sb2.append(strSubstring);
        }
        sb2.append('Z');
        return sb2.toString();
    }

    private static final void formatIso$lambda$8$appendTwoDigits(Appendable appendable, StringBuilder sb2, int i10) throws IOException {
        if (i10 < 10) {
            appendable.append('0');
        }
        sb2.append(i10);
    }

    private static final boolean isDistantFuture(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return instant.compareTo(Instant.INSTANCE.getDISTANT_FUTURE()) >= 0;
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantFuture$annotations(Instant instant) {
    }

    private static final boolean isDistantPast(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return instant.compareTo(Instant.INSTANCE.getDISTANT_PAST()) <= 0;
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantPast$annotations(Instant instant) {
    }

    public static final boolean isLeapYear(int i10) {
        return (i10 & 3) == 0 && (i10 % 100 != 0 || i10 % 400 == 0);
    }

    private static final int monthLength(int i10, boolean z10) {
        if (i10 != 2) {
            return (i10 == 4 || i10 == 6 || i10 == 9 || i10 == 11) ? 30 : 31;
        }
        return z10 ? 29 : 28;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final Instant parseIso(CharSequence charSequence) {
        int i10;
        int i11;
        int i12;
        if (!(charSequence.length() > 0)) {
            throw new IllegalArgumentException("An empty string is not a valid Instant".toString());
        }
        char cCharAt = charSequence.charAt(0);
        if (cCharAt == '+' || cCharAt == '-') {
            i10 = 1;
        } else {
            cCharAt = ' ';
            i10 = 0;
        }
        int i13 = i10;
        int iCharAt = 0;
        while (i13 < charSequence.length()) {
            char cCharAt2 = charSequence.charAt(i13);
            if (!('0' <= cCharAt2 && cCharAt2 < ':')) {
                break;
            }
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i13) - '0');
            i13++;
        }
        int i14 = i13 - i10;
        if (i14 > 10) {
            parseIso$parseFailure(charSequence, "Expected at most 10 digits for the year number, got " + i14 + " digits");
            throw new KotlinNothingValueException();
        }
        if (i14 == 10 && Intrinsics.compare((int) charSequence.charAt(i10), 50) >= 0) {
            parseIso$parseFailure(charSequence, "Expected at most 9 digits for the year number or year 1000000000, got " + i14 + " digits");
            throw new KotlinNothingValueException();
        }
        if (i14 < 4) {
            parseIso$parseFailure(charSequence, "The year number must be padded to 4 digits, got " + i14 + " digits");
            throw new KotlinNothingValueException();
        }
        if (cCharAt == '+' && i14 == 4) {
            parseIso$parseFailure(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
            throw new KotlinNothingValueException();
        }
        if (cCharAt == ' ' && i14 != 4) {
            parseIso$parseFailure(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
            throw new KotlinNothingValueException();
        }
        if (cCharAt == '-') {
            iCharAt = -iCharAt;
        }
        int i15 = i13 + 16;
        if (charSequence.length() < i15) {
            parseIso$parseFailure(charSequence, "The input string is too short");
            throw new KotlinNothingValueException();
        }
        parseIso$expect(charSequence, "'-'", i13, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(InstantKt.parseIso$lambda$1(((Character) obj).charValue()));
            }
        });
        parseIso$expect(charSequence, "'-'", i13 + 3, new Function1() { // from class: kotlin.time.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(InstantKt.parseIso$lambda$2(((Character) obj).charValue()));
            }
        });
        parseIso$expect(charSequence, "'T' or 't'", i13 + 6, new Function1() { // from class: kotlin.time.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(InstantKt.parseIso$lambda$3(((Character) obj).charValue()));
            }
        });
        parseIso$expect(charSequence, "':'", i13 + 9, new Function1() { // from class: kotlin.time.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(InstantKt.parseIso$lambda$4(((Character) obj).charValue()));
            }
        });
        parseIso$expect(charSequence, "':'", i13 + 12, new Function1() { // from class: kotlin.time.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(InstantKt.parseIso$lambda$5(((Character) obj).charValue()));
            }
        });
        for (int i16 : asciiDigitPositionsInIsoStringAfterYear) {
            parseIso$expect(charSequence, "an ASCII digit", i16 + i13, new Function1() { // from class: kotlin.time.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(InstantKt.parseIso$lambda$6(((Character) obj).charValue()));
                }
            });
        }
        int iso$twoDigitNumber = parseIso$twoDigitNumber(charSequence, i13 + 1);
        int iso$twoDigitNumber2 = parseIso$twoDigitNumber(charSequence, i13 + 4);
        int iso$twoDigitNumber3 = parseIso$twoDigitNumber(charSequence, i13 + 7);
        int iso$twoDigitNumber4 = parseIso$twoDigitNumber(charSequence, i13 + 10);
        int iso$twoDigitNumber5 = parseIso$twoDigitNumber(charSequence, i13 + 13);
        int i17 = i13 + 15;
        if (charSequence.charAt(i17) == '.') {
            i17 = i15;
            int iCharAt2 = 0;
            while (i17 < charSequence.length()) {
                char cCharAt3 = charSequence.charAt(i17);
                if (!('0' <= cCharAt3 && cCharAt3 < ':')) {
                    break;
                }
                iCharAt2 = (iCharAt2 * 10) + (charSequence.charAt(i17) - '0');
                i17++;
            }
            int i18 = i17 - i15;
            if (!(1 <= i18 && i18 < 10)) {
                parseIso$parseFailure(charSequence, "1..9 digits are supported for the fraction of the second, got " + i18 + " digits");
                throw new KotlinNothingValueException();
            }
            i11 = iCharAt2 * POWERS_OF_TEN[9 - i18];
        } else {
            i11 = 0;
        }
        if (i17 >= charSequence.length()) {
            parseIso$parseFailure(charSequence, "The UTC offset at the end of the string is missing");
            throw new KotlinNothingValueException();
        }
        char cCharAt4 = charSequence.charAt(i17);
        if (cCharAt4 == '+' || cCharAt4 == '-') {
            int length = charSequence.length() - i17;
            if (length > 9) {
                parseIso$parseFailure(charSequence, "The UTC offset string \"" + truncateForErrorMessage(charSequence.subSequence(i17, charSequence.length()).toString(), 16) + "\" is too long");
                throw new KotlinNothingValueException();
            }
            if (length % 3 != 0) {
                parseIso$parseFailure(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i17, charSequence.length()).toString() + '\"');
                throw new KotlinNothingValueException();
            }
            int[] iArr = colonsInIsoOffsetString;
            int length2 = iArr.length;
            int i19 = 0;
            while (i19 < length2) {
                int i20 = i17 + iArr[i19];
                if (i20 >= charSequence.length()) {
                    break;
                }
                int i21 = length2;
                if (charSequence.charAt(i20) != ':') {
                    parseIso$parseFailure(charSequence, "Expected ':' at index " + i20 + ", got '" + charSequence.charAt(i20) + '\'');
                    throw new KotlinNothingValueException();
                }
                i19++;
                length2 = i21;
            }
            int[] iArr2 = asciiDigitsInIsoOffsetString;
            int length3 = iArr2.length;
            int i22 = 0;
            while (i22 < length3) {
                int i23 = iArr2[i22] + i17;
                if (i23 >= charSequence.length()) {
                    break;
                }
                char cCharAt5 = charSequence.charAt(i23);
                int[] iArr3 = iArr2;
                if (!('0' <= cCharAt5 && cCharAt5 < ':')) {
                    parseIso$parseFailure(charSequence, "Expected an ASCII digit at index " + i23 + ", got '" + charSequence.charAt(i23) + '\'');
                    throw new KotlinNothingValueException();
                }
                i22++;
                iArr2 = iArr3;
            }
            int iso$twoDigitNumber6 = parseIso$twoDigitNumber(charSequence, i17 + 1);
            int iso$twoDigitNumber7 = length > 3 ? parseIso$twoDigitNumber(charSequence, i17 + 4) : 0;
            int iso$twoDigitNumber8 = length > 6 ? parseIso$twoDigitNumber(charSequence, i17 + 7) : 0;
            if (iso$twoDigitNumber7 > 59) {
                parseIso$parseFailure(charSequence, "Expected offset-minute-of-hour in 0..59, got " + iso$twoDigitNumber7);
                throw new KotlinNothingValueException();
            }
            if (iso$twoDigitNumber8 > 59) {
                parseIso$parseFailure(charSequence, "Expected offset-second-of-minute in 0..59, got " + iso$twoDigitNumber8);
                throw new KotlinNothingValueException();
            }
            if (iso$twoDigitNumber6 > 17 && (iso$twoDigitNumber6 != 18 || iso$twoDigitNumber7 != 0 || iso$twoDigitNumber8 != 0)) {
                parseIso$parseFailure(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i17, charSequence.length()).toString());
                throw new KotlinNothingValueException();
            }
            i12 = ((iso$twoDigitNumber6 * 3600) + (iso$twoDigitNumber7 * 60) + iso$twoDigitNumber8) * (cCharAt4 == '-' ? -1 : 1);
        } else {
            if (cCharAt4 != 'Z' && cCharAt4 != 'z') {
                parseIso$parseFailure(charSequence, "Expected the UTC offset at position " + i17 + ", got '" + cCharAt4 + '\'');
                throw new KotlinNothingValueException();
            }
            int i24 = i17 + 1;
            if (charSequence.length() != i24) {
                parseIso$parseFailure(charSequence, "Extra text after the instant at position " + i24);
                throw new KotlinNothingValueException();
            }
            i12 = 0;
        }
        if (!(1 <= iso$twoDigitNumber && iso$twoDigitNumber < 13)) {
            parseIso$parseFailure(charSequence, "Expected a month number in 1..12, got " + iso$twoDigitNumber);
            throw new KotlinNothingValueException();
        }
        if (!(1 <= iso$twoDigitNumber2 && iso$twoDigitNumber2 <= monthLength(iso$twoDigitNumber, isLeapYear(iCharAt)))) {
            parseIso$parseFailure(charSequence, "Expected a valid day-of-month for month " + iso$twoDigitNumber + " of year " + iCharAt + ", got " + iso$twoDigitNumber2);
            throw new KotlinNothingValueException();
        }
        if (iso$twoDigitNumber3 > 23) {
            parseIso$parseFailure(charSequence, "Expected hour in 0..23, got " + iso$twoDigitNumber3);
            throw new KotlinNothingValueException();
        }
        if (iso$twoDigitNumber4 > 59) {
            parseIso$parseFailure(charSequence, "Expected minute-of-hour in 0..59, got " + iso$twoDigitNumber4);
            throw new KotlinNothingValueException();
        }
        if (iso$twoDigitNumber5 <= 59) {
            return new UnboundLocalDateTime(iCharAt, iso$twoDigitNumber, iso$twoDigitNumber2, iso$twoDigitNumber3, iso$twoDigitNumber4, iso$twoDigitNumber5, i11).toInstant(i12);
        }
        parseIso$parseFailure(charSequence, "Expected second-of-minute in 0..59, got " + iso$twoDigitNumber5);
        throw new KotlinNothingValueException();
    }

    private static final void parseIso$expect(CharSequence charSequence, String str, int i10, Function1<? super Character, Boolean> function1) {
        char cCharAt = charSequence.charAt(i10);
        if (function1.invoke(Character.valueOf(cCharAt)).booleanValue()) {
            return;
        }
        parseIso$parseFailure(charSequence, "Expected " + str + ", but got '" + cCharAt + "' at position " + i10);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$1(char c10) {
        return c10 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$2(char c10) {
        return c10 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$3(char c10) {
        return c10 == 'T' || c10 == 't';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$4(char c10) {
        return c10 == ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$5(char c10) {
        return c10 == ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$6(char c10) {
        return '0' <= c10 && c10 < ':';
    }

    private static final Void parseIso$parseFailure(CharSequence charSequence, String str) {
        throw new InstantFormatException(str + " when parsing an Instant from \"" + truncateForErrorMessage(charSequence, 64) + '\"');
    }

    private static final int parseIso$twoDigitNumber(CharSequence charSequence, int i10) {
        return ((charSequence.charAt(i10) - '0') * 10) + (charSequence.charAt(i10 + 1) - '0');
    }

    private static final long safeAddOrElse(long j10, long j11, Function0 function0) {
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) < 0) {
            return j12;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    private static final long safeMultiplyOrElse(long j10, long j11, Function0 function0) {
        if (j11 == 1) {
            return j10;
        }
        if (j10 == 1) {
            return j11;
        }
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j12 = j10 * j11;
        if (j12 / j11 == j10 && ((j10 != Long.MIN_VALUE || j11 != -1) && (j11 != Long.MIN_VALUE || j10 != -1))) {
            return j12;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    private static final String truncateForErrorMessage(CharSequence charSequence, int i10) {
        if (charSequence.length() <= i10) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i10).toString() + "...";
    }
}
