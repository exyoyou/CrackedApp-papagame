package kotlin.text;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0019\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0001\n\u0000\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010\r\u001a\u00020\u0001*\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a,\u0010\u0014\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0003\u001a,\u0010\u0018\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0003\u001a,\u0010\u0019\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0003\u001a,\u0010\u001a\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0003\u001a<\u0010\u001b\u001a\u00020\u0012*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0002\u001a,\u0010\u001b\u001a\u00020\u0012*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0002\u001a(\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0002\u001a@\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0000\u001a\u0010\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,H\u0002\u001a\u0016\u0010-\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010-\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0003\u001a&\u0010.\u001a\u0004\u0018\u00010\u000e*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0003\u001a&\u0010/\u001a\u0004\u0018\u00010\u000e*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0003\u001a&\u00100\u001a\u0004\u0018\u00010\u000e*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0003\u001a$\u00101\u001a\u00020\u000e*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0003\u001a\u0014\u00102\u001a\u000203*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0012H\u0002\u001a@\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0000\u001a \u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,2\u0006\u00108\u001a\u00020\u00122\u0006\u00109\u001a\u00020\u0012H\u0002\u001a \u0010:\u001a\u00020,2\u0006\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,2\u0006\u00109\u001a\u00020\u0012H\u0002\u001a\u001c\u0010;\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a\u0016\u0010\r\u001a\u00020\u0001*\u0002032\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0016\u0010<\u001a\u000203*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010<\u001a\u000203*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020=2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0016\u0010>\u001a\u00020=*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010>\u001a\u00020=*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0016\u0010?\u001a\u00020\u0012*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010?\u001a\u00020\u0012*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0001\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020,2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0016\u0010@\u001a\u00020,*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u001a*\u0010@\u001a\u00020,*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0001\u001a$\u0010A\u001a\u00020\u0001*\u00020,2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u0012H\u0003\u001a\u001c\u0010F\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0002\u001a,\u0010G\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010H\u001a\u00020\u0012H\u0003\u001a,\u0010I\u001a\u00020,*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010H\u001a\u00020\u0012H\u0003\u001a<\u0010J\u001a\u00020K*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u00012\u0006\u0010M\u001a\u00020\u00012\u0006\u0010N\u001a\u00020O2\u0006\u0010H\u001a\u00020\u0012H\u0002\u001a$\u0010P\u001a\u00020K*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010H\u001a\u00020\u0012H\u0002\u001a\u001c\u0010Q\u001a\u00020K*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a\u001c\u0010R\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a\u001c\u0010S\u001a\u00020,*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a5\u0010T\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010U\u001a\u00020\u00012\u0006\u0010N\u001a\u00020O2\u0006\u0010V\u001a\u00020\u0001H\u0082\b\u001a\u0015\u0010W\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0012H\u0082\b\u001a\u0015\u0010X\u001a\u00020,*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0012H\u0082\b\u001a,\u0010Y\u001a\u00020K*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u00012\u0006\u0010[\u001a\u00020\u0012H\u0002\u001a,\u0010\\\u001a\u00020K*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010U\u001a\u00020\u00012\u0006\u0010V\u001a\u00020\u0001H\u0002\u001a,\u0010]\u001a\u00020K*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u00012\u0006\u0010M\u001a\u00020\u0001H\u0002\u001a\u0014\u0010^\u001a\u00020_*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0012H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006`"}, d2 = {"LOWER_CASE_HEX_DIGITS", "", "UPPER_CASE_HEX_DIGITS", "BYTE_TO_LOWER_CASE_HEX_DIGITS", "", "getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations", "()V", "getBYTE_TO_LOWER_CASE_HEX_DIGITS", "()[I", "BYTE_TO_UPPER_CASE_HEX_DIGITS", "HEX_DIGITS_TO_DECIMAL", "HEX_DIGITS_TO_LONG_DECIMAL", "", "toHexString", "", "format", "Lkotlin/text/HexFormat;", "startIndex", "", "endIndex", "toHexStringNoLineAndGroupSeparator", "bytesFormat", "Lkotlin/text/HexFormat$BytesHexFormat;", "byteToDigits", "toHexStringShortByteSeparatorNoPrefixAndSuffix", "toHexStringNoLineAndGroupSeparatorSlowPath", "toHexStringSlowPath", "formatByteAt", "index", "bytePrefix", "byteSuffix", RtspHeaders.Values.DESTINATION, "", "destinationOffset", "formattedStringLength", "numberOfBytes", "byteSeparatorLength", "bytePrefixLength", "byteSuffixLength", "bytesPerLine", "bytesPerGroup", "groupSeparatorLength", "checkFormatLength", "formatLength", "", "hexToByteArray", "hexToByteArrayNoLineAndGroupSeparator", "hexToByteArrayShortByteSeparatorNoPrefixAndSuffix", "hexToByteArrayNoLineAndGroupSeparatorSlowPath", "hexToByteArraySlowPath", "parseByteAt", "", "parsedByteArrayMaxSize", "stringLength", "charsPerSet", "charsPerElement", "elementsPerSet", "elementSeparatorLength", "wholeElementsPerSet", "checkNewLineAt", "hexToByte", "", "hexToShort", "hexToInt", "hexToLong", "toHexStringImpl", "numberFormat", "Lkotlin/text/HexFormat$NumberHexFormat;", "digits", "bits", "toCharArrayIfNotEmpty", "hexToIntImpl", "typeHexLength", "hexToLongImpl", "checkPrefixSuffixNumberOfDigits", "", "prefix", "suffix", "ignoreCase", "", "checkNumberOfDigits", "checkZeroDigits", "parseInt", "parseLong", "checkContainsAt", "part", "partName", "decimalFromHexDigitAt", "longDecimalFromHexDigitAt", "throwInvalidNumberOfDigits", "specifier", "expected", "throwNotContainedAt", "throwInvalidPrefixSuffix", "throwInvalidDigitAt", "", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1249:1\n1198#1,7:1251\n1198#1,7:1258\n1198#1,7:1265\n1198#1,7:1272\n1198#1,7:1279\n1198#1,7:1286\n1198#1,7:1293\n1198#1,7:1300\n1209#1,5:1307\n1209#1,5:1312\n1198#1,7:1317\n1198#1,7:1324\n1209#1,5:1331\n1218#1,5:1336\n1#2:1250\n1188#3,3:1341\n1188#3,3:1344\n1188#3,3:1347\n1188#3,3:1350\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n457#1:1251,7\n490#1:1258,7\n494#1:1265,7\n497#1:1272,7\n538#1:1279,7\n541#1:1286,7\n546#1:1293,7\n551#1:1300,7\n558#1:1307,5\n559#1:1312,5\n1153#1:1317,7\n1155#1:1324,7\n1183#1:1331,5\n1191#1:1336,5\n43#1:1341,3\n44#1:1344,3\n55#1:1347,3\n56#1:1350,3\n*E\n"})
public final class HexExtensionsKt {

    @NotNull
    private static final int[] BYTE_TO_LOWER_CASE_HEX_DIGITS;

    @NotNull
    private static final int[] BYTE_TO_UPPER_CASE_HEX_DIGITS;

    @NotNull
    private static final int[] HEX_DIGITS_TO_DECIMAL;

    @NotNull
    private static final long[] HEX_DIGITS_TO_LONG_DECIMAL;

    @NotNull
    private static final String LOWER_CASE_HEX_DIGITS = "0123456789abcdef";

    @NotNull
    private static final String UPPER_CASE_HEX_DIGITS = "0123456789ABCDEF";

    static {
        int[] iArr = new int[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = LOWER_CASE_HEX_DIGITS.charAt(i11 & 15) | (LOWER_CASE_HEX_DIGITS.charAt(i11 >> 4) << '\b');
        }
        BYTE_TO_LOWER_CASE_HEX_DIGITS = iArr;
        int[] iArr2 = new int[256];
        for (int i12 = 0; i12 < 256; i12++) {
            iArr2[i12] = "0123456789ABCDEF".charAt(i12 & 15) | ("0123456789ABCDEF".charAt(i12 >> 4) << '\b');
        }
        BYTE_TO_UPPER_CASE_HEX_DIGITS = iArr2;
        int[] iArr3 = new int[256];
        for (int i13 = 0; i13 < 256; i13++) {
            iArr3[i13] = -1;
        }
        int i14 = 0;
        int i15 = 0;
        while (i14 < LOWER_CASE_HEX_DIGITS.length()) {
            iArr3[LOWER_CASE_HEX_DIGITS.charAt(i14)] = i15;
            i14++;
            i15++;
        }
        int i16 = 0;
        int i17 = 0;
        while (i16 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i16)] = i17;
            i16++;
            i17++;
        }
        HEX_DIGITS_TO_DECIMAL = iArr3;
        long[] jArr = new long[256];
        for (int i18 = 0; i18 < 256; i18++) {
            jArr[i18] = -1;
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < LOWER_CASE_HEX_DIGITS.length()) {
            jArr[LOWER_CASE_HEX_DIGITS.charAt(i19)] = i20;
            i19++;
            i20++;
        }
        int i21 = 0;
        while (i10 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i10)] = i21;
            i10++;
            i21++;
        }
        HEX_DIGITS_TO_LONG_DECIMAL = jArr;
    }

    private static final long charsPerSet(long j10, int i10, int i11) {
        if (!(i10 > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        long j11 = i10;
        return (j10 * j11) + (((long) i11) * (j11 - 1));
    }

    private static final int checkContainsAt(String str, int i10, int i11, String str2, boolean z10, String str3) {
        if (str2.length() == 0) {
            return i10;
        }
        int length = str2.length();
        for (int i12 = 0; i12 < length; i12++) {
            if (!CharsKt__CharKt.equals(str2.charAt(i12), str.charAt(i10 + i12), z10)) {
                throwNotContainedAt(str, i10, i11, str2, str3);
            }
        }
        return i10 + str2.length();
    }

    private static final int checkFormatLength(long j10) {
        boolean z10 = false;
        if (0 <= j10 && j10 <= 2147483647L) {
            z10 = true;
        }
        if (z10) {
            return (int) j10;
        }
        throw new IllegalArgumentException("The resulting string length is too big: " + ((Object) ULong.m270toStringimpl(ULong.m224constructorimpl(j10))));
    }

    private static final int checkNewLineAt(String str, int i10, int i11) {
        if (str.charAt(i10) == '\r') {
            int i12 = i10 + 1;
            return (i12 >= i11 || str.charAt(i12) != '\n') ? i12 : i10 + 2;
        }
        if (str.charAt(i10) == '\n') {
            return i10 + 1;
        }
        throw new NumberFormatException("Expected a new line at index " + i10 + ", but was " + str.charAt(i10));
    }

    private static final void checkNumberOfDigits(String str, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 1) {
            throwInvalidNumberOfDigits(str, i10, i11, "at least", 1);
        } else if (i13 > i12) {
            checkZeroDigits(str, i10, (i13 + i10) - i12);
        }
    }

    private static final void checkPrefixSuffixNumberOfDigits(String str, int i10, int i11, String str2, String str3, boolean z10, int i12) {
        if ((i11 - i10) - str2.length() <= str3.length()) {
            throwInvalidPrefixSuffix(str, i10, i11, str2, str3);
        }
        if (!(str2.length() == 0)) {
            int length = str2.length();
            for (int i13 = 0; i13 < length; i13++) {
                if (!CharsKt__CharKt.equals(str2.charAt(i13), str.charAt(i10 + i13), z10)) {
                    throwNotContainedAt(str, i10, i11, str2, "prefix");
                }
            }
            i10 += str2.length();
        }
        int length2 = i11 - str3.length();
        if (!(str3.length() == 0)) {
            int length3 = str3.length();
            for (int i14 = 0; i14 < length3; i14++) {
                if (!CharsKt__CharKt.equals(str3.charAt(i14), str.charAt(length2 + i14), z10)) {
                    throwNotContainedAt(str, length2, i11, str3, "suffix");
                }
            }
        }
        checkNumberOfDigits(str, i10, length2, i12);
    }

    private static final void checkZeroDigits(String str, int i10, int i11) {
        while (i10 < i11) {
            if (str.charAt(i10) != '0') {
                throw new NumberFormatException("Expected the hexadecimal digit '0' at index " + i10 + ", but was '" + str.charAt(i10) + "'.\nThe result won't fit the type being parsed.");
            }
            i10++;
        }
    }

    private static final int decimalFromHexDigitAt(String str, int i10) {
        int i11;
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') == 0 && (i11 = HEX_DIGITS_TO_DECIMAL[cCharAt]) >= 0) {
            return i11;
        }
        throwInvalidDigitAt(str, i10);
        throw new KotlinNothingValueException();
    }

    private static final int formatByteAt(byte[] bArr, int i10, String str, String str2, int[] iArr, char[] cArr, int i11) {
        return toCharArrayIfNotEmpty(str2, cArr, formatByteAt(bArr, i10, iArr, cArr, toCharArrayIfNotEmpty(str, cArr, i11)));
    }

    private static final int formattedStringLength(int i10, int i11, int i12, int i13) {
        if (!(i10 > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        long j10 = i11;
        return checkFormatLength((((long) i10) * (((((long) i12) + 2) + ((long) i13)) + j10)) - j10);
    }

    @NotNull
    public static final int[] getBYTE_TO_LOWER_CASE_HEX_DIGITS() {
        return BYTE_TO_LOWER_CASE_HEX_DIGITS;
    }

    @ExperimentalStdlibApi
    public static /* synthetic */ void getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations() {
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final byte hexToByte(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToByte(str, 0, str.length(), format);
    }

    public static /* synthetic */ byte hexToByte$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final byte[] hexToByteArray(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToByteArray(str, 0, str.length(), format);
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, hexFormat);
    }

    @ExperimentalStdlibApi
    private static final byte[] hexToByteArrayNoLineAndGroupSeparator(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(str, i10, i11, bytesHexFormat) : hexToByteArrayNoLineAndGroupSeparatorSlowPath(str, i10, i11, bytesHexFormat);
    }

    @ExperimentalStdlibApi
    private static final byte[] hexToByteArrayNoLineAndGroupSeparatorSlowPath(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        long length = byteSeparator.length();
        long length2 = ((long) bytePrefix.length()) + 2 + ((long) byteSuffix.length()) + length;
        long j10 = i11 - i10;
        int i12 = (int) ((j10 + length) / length2);
        if ((((long) i12) * length2) - length != j10) {
            return null;
        }
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        byte[] bArr = new byte[i12];
        if (!(bytePrefix.length() == 0)) {
            int length3 = bytePrefix.length();
            for (int i13 = 0; i13 < length3; i13++) {
                if (!CharsKt__CharKt.equals(bytePrefix.charAt(i13), str.charAt(i10 + i13), ignoreCase$kotlin_stdlib)) {
                    throwNotContainedAt(str, i10, i11, bytePrefix, "byte prefix");
                }
            }
            i10 += bytePrefix.length();
        }
        String str2 = byteSuffix + byteSeparator + bytePrefix;
        int i14 = i12 - 1;
        for (int i15 = 0; i15 < i14; i15++) {
            bArr[i15] = parseByteAt(str, i10);
            i10 += 2;
            if (!(str2.length() == 0)) {
                int length4 = str2.length();
                for (int i16 = 0; i16 < length4; i16++) {
                    if (!CharsKt__CharKt.equals(str2.charAt(i16), str.charAt(i10 + i16), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, i10, i11, str2, "byte suffix + byte separator + byte prefix");
                    }
                }
                i10 += str2.length();
            }
        }
        bArr[i14] = parseByteAt(str, i10);
        int i17 = i10 + 2;
        if (!(byteSuffix.length() == 0)) {
            int length5 = byteSuffix.length();
            for (int i18 = 0; i18 < length5; i18++) {
                if (!CharsKt__CharKt.equals(byteSuffix.charAt(i18), str.charAt(i17 + i18), ignoreCase$kotlin_stdlib)) {
                    throwNotContainedAt(str, i17, i11, byteSuffix, "byte suffix");
                }
            }
        }
        return bArr;
    }

    @ExperimentalStdlibApi
    private static final byte[] hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        int length = bytesHexFormat.getByteSeparator().length();
        if (!(length <= 1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i12 = i11 - i10;
        int i13 = 2;
        if (length == 0) {
            if ((i12 & 1) != 0) {
                return null;
            }
            int i14 = i12 >> 1;
            byte[] bArr = new byte[i14];
            int i15 = 0;
            for (int i16 = 0; i16 < i14; i16++) {
                bArr[i16] = parseByteAt(str, i15);
                i15 += 2;
            }
            return bArr;
        }
        if (i12 % 3 != 2) {
            return null;
        }
        int i17 = (i12 / 3) + 1;
        byte[] bArr2 = new byte[i17];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        bArr2[0] = parseByteAt(str, 0);
        for (int i18 = 1; i18 < i17; i18++) {
            if (str.charAt(i13) != cCharAt) {
                String byteSeparator = bytesHexFormat.getByteSeparator();
                boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
                if (!(byteSeparator.length() == 0)) {
                    int length2 = byteSeparator.length();
                    for (int i19 = 0; i19 < length2; i19++) {
                        if (!CharsKt__CharKt.equals(byteSeparator.charAt(i19), str.charAt(i13 + i19), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, i13, i11, byteSeparator, "byte separator");
                        }
                    }
                    byteSeparator.length();
                }
            }
            bArr2[i18] = parseByteAt(str, i13 + 1);
            i13 += 3;
        }
        return bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    /* JADX WARN: Code duplicated, block: B:55:0x011f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0136  */
    /* JADX WARN: Code duplicated, block: B:61:0x013a  */
    /* JADX WARN: Code duplicated, block: B:62:0x013d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0144  */
    /* JADX WARN: Code duplicated, block: B:66:0x0156  */
    /* JADX WARN: Code duplicated, block: B:79:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x010d A[SYNTHETIC] */
    @ExperimentalStdlibApi
    private static final byte[] hexToByteArraySlowPath(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z10;
        int length;
        int i16;
        int i17;
        int i18;
        int length2;
        int i19;
        int i20;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        int i21 = parsedByteArrayMaxSize(i11 - i10, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        byte[] bArr = new byte[i21];
        int length3 = i10;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        while (length3 < i11) {
            if (i23 == bytesPerLine) {
                length3 = checkNewLineAt(str, length3, i11);
                i12 = 0;
            } else {
                if (i24 == bytesPerGroup) {
                    if (groupSeparator.length() == 0) {
                        i14 = i23;
                    } else {
                        int length4 = groupSeparator.length();
                        int i25 = 0;
                        while (i25 < length4) {
                            int i26 = i23;
                            int i27 = length4;
                            if (!CharsKt__CharKt.equals(groupSeparator.charAt(i25), str.charAt(length3 + i25), ignoreCase$kotlin_stdlib)) {
                                throwNotContainedAt(str, length3, i11, groupSeparator, "group separator");
                            }
                            i25++;
                            i23 = i26;
                            length4 = i27;
                        }
                        i14 = i23;
                        length3 += groupSeparator.length();
                    }
                    i12 = i14;
                } else {
                    int i28 = i23;
                    if (i24 != 0) {
                        if (byteSeparator.length() == 0) {
                            i13 = i24;
                        } else {
                            int length5 = byteSeparator.length();
                            int i29 = 0;
                            while (i29 < length5) {
                                int i30 = length5;
                                int i31 = i24;
                                if (!CharsKt__CharKt.equals(byteSeparator.charAt(i29), str.charAt(length3 + i29), ignoreCase$kotlin_stdlib)) {
                                    throwNotContainedAt(str, length3, i11, byteSeparator, "byte separator");
                                }
                                i29++;
                                length5 = i30;
                                i24 = i31;
                            }
                            i13 = i24;
                            length3 += byteSeparator.length();
                        }
                        i12 = i28;
                        i24 = i13;
                    } else {
                        i12 = i28;
                    }
                }
                int i32 = i12 + 1;
                i15 = i24 + 1;
                if (bytePrefix.length() == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i17 = i15;
                } else {
                    length = bytePrefix.length();
                    i16 = 0;
                    while (i16 < length) {
                        int i33 = length;
                        int i34 = i15;
                        if (!CharsKt__CharKt.equals(bytePrefix.charAt(i16), str.charAt(length3 + i16), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i11, bytePrefix, "byte prefix");
                        }
                        i16++;
                        length = i33;
                        i15 = i34;
                    }
                    i17 = i15;
                    length3 += bytePrefix.length();
                }
                if (i11 - 2 < length3) {
                    throwInvalidNumberOfDigits(str, length3, i11, "exactly", 2);
                }
                i18 = i22 + 1;
                bArr[i22] = parseByteAt(str, length3);
                length3 += 2;
                if (byteSuffix.length() == 0) {
                    i20 = i18;
                } else {
                    length2 = byteSuffix.length();
                    i19 = 0;
                    while (i19 < length2) {
                        int i35 = i18;
                        if (!CharsKt__CharKt.equals(byteSuffix.charAt(i19), str.charAt(length3 + i19), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i11, byteSuffix, "byte suffix");
                        }
                        i19++;
                        i18 = i35;
                    }
                    i20 = i18;
                    length3 += byteSuffix.length();
                }
                i23 = i32;
                i22 = i20;
                i24 = i17;
            }
            i24 = 0;
            int i36 = i12 + 1;
            i15 = i24 + 1;
            if (bytePrefix.length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                i17 = i15;
            } else {
                length = bytePrefix.length();
                i16 = 0;
                while (i16 < length) {
                    int i37 = length;
                    int i38 = i15;
                    if (!CharsKt__CharKt.equals(bytePrefix.charAt(i16), str.charAt(length3 + i16), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i11, bytePrefix, "byte prefix");
                    }
                    i16++;
                    length = i37;
                    i15 = i38;
                }
                i17 = i15;
                length3 += bytePrefix.length();
            }
            if (i11 - 2 < length3) {
                throwInvalidNumberOfDigits(str, length3, i11, "exactly", 2);
            }
            i18 = i22 + 1;
            bArr[i22] = parseByteAt(str, length3);
            length3 += 2;
            if (byteSuffix.length() == 0) {
                i20 = i18;
            } else {
                length2 = byteSuffix.length();
                i19 = 0;
                while (i19 < length2) {
                    int i39 = i18;
                    if (!CharsKt__CharKt.equals(byteSuffix.charAt(i19), str.charAt(length3 + i19), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i11, byteSuffix, "byte suffix");
                    }
                    i19++;
                    i18 = i39;
                }
                i20 = i18;
                length3 += byteSuffix.length();
            }
            i23 = i36;
            i22 = i20;
            i24 = i17;
        }
        if (i22 == i21) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i22);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final int hexToInt(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToInt(str, 0, str.length(), format);
    }

    public static /* synthetic */ int hexToInt$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, hexFormat);
    }

    @ExperimentalStdlibApi
    private static final int hexToIntImpl(String str, int i10, int i11, HexFormat hexFormat, int i12) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i10, i11, i12);
            return parseInt(str, i10, i11);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i10, i11, prefix, suffix, number.getIgnoreCase(), i12);
        return parseInt(str, i10 + prefix.length(), i11 - suffix.length());
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLong(str, 0, str.length(), format);
    }

    public static /* synthetic */ long hexToLong$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, hexFormat);
    }

    @ExperimentalStdlibApi
    private static final long hexToLongImpl(String str, int i10, int i11, HexFormat hexFormat, int i12) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i10, i11, i12);
            return parseLong(str, i10, i11);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i10, i11, prefix, suffix, number.getIgnoreCase(), i12);
        return parseLong(str, i10 + prefix.length(), i11 - suffix.length());
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final short hexToShort(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToShort(str, 0, str.length(), format);
    }

    public static /* synthetic */ short hexToShort$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, hexFormat);
    }

    private static final long longDecimalFromHexDigitAt(String str, int i10) {
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') == 0) {
            long j10 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
            if (j10 >= 0) {
                return j10;
            }
        }
        throwInvalidDigitAt(str, i10);
        throw new KotlinNothingValueException();
    }

    private static final byte parseByteAt(String str, int i10) {
        int[] iArr;
        int i11;
        int i12;
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') != 0 || (i11 = (iArr = HEX_DIGITS_TO_DECIMAL)[cCharAt]) < 0) {
            throwInvalidDigitAt(str, i10);
            throw new KotlinNothingValueException();
        }
        int i13 = i10 + 1;
        char cCharAt2 = str.charAt(i13);
        if ((cCharAt2 >>> '\b') == 0 && (i12 = iArr[cCharAt2]) >= 0) {
            return (byte) ((i11 << 4) | i12);
        }
        throwInvalidDigitAt(str, i13);
        throw new KotlinNothingValueException();
    }

    private static final int parseInt(String str, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (i10 < i11) {
            int i14 = i13 << 4;
            char cCharAt = str.charAt(i10);
            if ((cCharAt >>> '\b') != 0 || (i12 = HEX_DIGITS_TO_DECIMAL[cCharAt]) < 0) {
                throwInvalidDigitAt(str, i10);
                throw new KotlinNothingValueException();
            }
            i13 = i14 | i12;
            i10++;
        }
        return i13;
    }

    private static final long parseLong(String str, int i10, int i11) {
        long j10 = 0;
        while (i10 < i11) {
            long j11 = j10 << 4;
            char cCharAt = str.charAt(i10);
            if ((cCharAt >>> '\b') == 0) {
                long j12 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                if (j12 >= 0) {
                    j10 = j11 | j12;
                    i10++;
                }
            }
            throwInvalidDigitAt(str, i10);
            throw new KotlinNothingValueException();
        }
        return j10;
    }

    public static final int parsedByteArrayMaxSize(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        long jCharsPerSet;
        if (!(i10 > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        long j10 = ((long) i15) + 2 + ((long) i16);
        long jCharsPerSet2 = charsPerSet(j10, i12, i14);
        if (i11 <= i12) {
            jCharsPerSet = charsPerSet(j10, i11, i14);
        } else {
            jCharsPerSet = charsPerSet(jCharsPerSet2, i11 / i12, i13);
            int i17 = i11 % i12;
            if (i17 != 0) {
                jCharsPerSet = jCharsPerSet + ((long) i13) + charsPerSet(j10, i17, i14);
            }
        }
        long j11 = i10;
        long jWholeElementsPerSet = wholeElementsPerSet(j11, jCharsPerSet, 1);
        long j12 = j11 - ((jCharsPerSet + 1) * jWholeElementsPerSet);
        long jWholeElementsPerSet2 = wholeElementsPerSet(j12, jCharsPerSet2, i13);
        long j13 = j12 - ((jCharsPerSet2 + ((long) i13)) * jWholeElementsPerSet2);
        long jWholeElementsPerSet3 = wholeElementsPerSet(j13, j10, i14);
        return (int) (((long) (j13 - ((j10 + ((long) i14)) * jWholeElementsPerSet3) > 0 ? 1 : 0)) + (jWholeElementsPerSet * ((long) i11)) + (jWholeElementsPerSet2 * ((long) i12)) + jWholeElementsPerSet3);
    }

    private static final Void throwInvalidDigitAt(String str, int i10) {
        throw new NumberFormatException("Expected a hexadecimal digit at index " + i10 + ", but was " + str.charAt(i10));
    }

    private static final void throwInvalidNumberOfDigits(String str, int i10, int i11, String str2, int i12) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + ' ' + i12 + " hexadecimal digits at index " + i10 + ", but was \"" + strSubstring + "\" of length " + (i11 - i10));
    }

    private static final void throwInvalidPrefixSuffix(String str, int i10, int i11, String str2, String str3) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected a hexadecimal number with prefix \"" + str2 + "\" and suffix \"" + str3 + "\", but was " + strSubstring);
    }

    private static final void throwNotContainedAt(String str, int i10, int i11, String str2, String str3) {
        int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(str2.length() + i10, i11);
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i10, iCoerceAtMost);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected " + str3 + " \"" + str2 + "\" at index " + i10 + ", but was " + strSubstring);
    }

    private static final int toCharArrayIfNotEmpty(String str, char[] cArr, int i10) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                int length2 = str.length();
                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                str.getChars(0, length2, cArr, i10);
            } else {
                cArr[i10] = str.charAt(0);
            }
        }
        return i10 + str.length();
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(@NotNull byte[] bArr, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return toHexString(bArr, 0, bArr.length, format);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, hexFormat);
    }

    @ExperimentalStdlibApi
    private static final String toHexStringImpl(long j10, HexFormat.NumberHexFormat numberHexFormat, String str, int i10) {
        if (!((i10 & 3) == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i11 = i10 >> 2;
        int minLength = numberHexFormat.getMinLength();
        int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(minLength - i11, 0);
        String prefix = numberHexFormat.getPrefix();
        String suffix = numberHexFormat.getSuffix();
        boolean removeLeadingZeros = numberHexFormat.getRemoveLeadingZeros();
        int iCheckFormatLength = checkFormatLength(((long) prefix.length()) + ((long) iCoerceAtLeast) + ((long) i11) + ((long) suffix.length()));
        char[] cArr = new char[iCheckFormatLength];
        int charArrayIfNotEmpty = toCharArrayIfNotEmpty(prefix, cArr, 0);
        if (iCoerceAtLeast > 0) {
            int i12 = iCoerceAtLeast + charArrayIfNotEmpty;
            ArraysKt___ArraysJvmKt.fill(cArr, str.charAt(0), charArrayIfNotEmpty, i12);
            charArrayIfNotEmpty = i12;
        }
        int i13 = i10;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 -= 4;
            int i15 = (int) ((j10 >> i13) & 15);
            removeLeadingZeros = removeLeadingZeros && i15 == 0 && (i13 >> 2) >= minLength;
            if (!removeLeadingZeros) {
                cArr[charArrayIfNotEmpty] = str.charAt(i15);
                charArrayIfNotEmpty++;
            }
        }
        int charArrayIfNotEmpty2 = toCharArrayIfNotEmpty(suffix, cArr, charArrayIfNotEmpty);
        return charArrayIfNotEmpty2 == iCheckFormatLength ? StringsKt__StringsJVMKt.concatToString(cArr) : StringsKt__StringsJVMKt.concatToString$default(cArr, 0, charArrayIfNotEmpty2, 1, null);
    }

    @ExperimentalStdlibApi
    private static final String toHexStringNoLineAndGroupSeparator(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? toHexStringShortByteSeparatorNoPrefixAndSuffix(bArr, i10, i11, bytesHexFormat, iArr) : toHexStringNoLineAndGroupSeparatorSlowPath(bArr, i10, i11, bytesHexFormat, iArr);
    }

    @ExperimentalStdlibApi
    private static final String toHexStringNoLineAndGroupSeparatorSlowPath(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        char[] cArr = new char[formattedStringLength(i11 - i10, byteSeparator.length(), bytePrefix.length(), byteSuffix.length())];
        int byteAt = formatByteAt(bArr, i10, bytePrefix, byteSuffix, iArr, cArr, 0);
        while (true) {
            i10++;
            if (i10 >= i11) {
                return StringsKt__StringsJVMKt.concatToString(cArr);
            }
            byteAt = formatByteAt(bArr, i10, bytePrefix, byteSuffix, iArr, cArr, toCharArrayIfNotEmpty(byteSeparator, cArr, byteAt));
        }
    }

    @ExperimentalStdlibApi
    private static final String toHexStringShortByteSeparatorNoPrefixAndSuffix(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int length = bytesHexFormat.getByteSeparator().length();
        int byteAt = 0;
        if (!(length <= 1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i12 = i11 - i10;
        if (length == 0) {
            char[] cArr = new char[checkFormatLength(((long) i12) * 2)];
            while (i10 < i11) {
                byteAt = formatByteAt(bArr, i10, iArr, cArr, byteAt);
                i10++;
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        char[] cArr2 = new char[checkFormatLength((((long) i12) * 3) - 1)];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        int byteAt2 = formatByteAt(bArr, i10, iArr, cArr2, 0);
        for (int i13 = i10 + 1; i13 < i11; i13++) {
            cArr2[byteAt2] = cCharAt;
            byteAt2 = formatByteAt(bArr, i13, iArr, cArr2, byteAt2 + 1);
        }
        return StringsKt__StringsJVMKt.concatToString(cArr2);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0060 A[SYNTHETIC] */
    @ExperimentalStdlibApi
    private static final String toHexStringSlowPath(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int i12;
        int i13;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        int i14 = formattedStringLength(i11 - i10, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        char[] cArr = new char[i14];
        int charArrayIfNotEmpty = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = i10; i17 < i11; i17++) {
            if (i15 == bytesPerLine) {
                cArr[charArrayIfNotEmpty] = '\n';
                charArrayIfNotEmpty++;
                i12 = 0;
            } else {
                if (i16 == bytesPerGroup) {
                    charArrayIfNotEmpty = toCharArrayIfNotEmpty(groupSeparator, cArr, charArrayIfNotEmpty);
                    i12 = i15;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i13 != 0) {
                    charArrayIfNotEmpty = toCharArrayIfNotEmpty(byteSeparator, cArr, charArrayIfNotEmpty);
                }
                charArrayIfNotEmpty = formatByteAt(bArr, i17, bytePrefix, byteSuffix, iArr, cArr, charArrayIfNotEmpty);
                i16 = i13 + 1;
                i15 = i12 + 1;
            }
            i13 = 0;
            if (i13 != 0) {
                charArrayIfNotEmpty = toCharArrayIfNotEmpty(byteSeparator, cArr, charArrayIfNotEmpty);
            }
            charArrayIfNotEmpty = formatByteAt(bArr, i17, bytePrefix, byteSuffix, iArr, cArr, charArrayIfNotEmpty);
            i16 = i13 + 1;
            i15 = i12 + 1;
        }
        if (charArrayIfNotEmpty == i14) {
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    private static final long wholeElementsPerSet(long j10, long j11, int i10) {
        if (j10 <= 0 || j11 <= 0) {
            return 0L;
        }
        long j12 = i10;
        return (j10 + j12) / (j11 + j12);
    }

    @ExperimentalStdlibApi
    private static final byte hexToByte(String str, int i10, int i11, HexFormat hexFormat) {
        return (byte) hexToIntImpl(str, i10, i11, hexFormat, 2);
    }

    @ExperimentalStdlibApi
    private static final byte[] hexToByteArray(String str, int i10, int i11, HexFormat hexFormat) {
        byte[] bArrHexToByteArrayNoLineAndGroupSeparator;
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        if (i10 == i11) {
            return new byte[0];
        }
        HexFormat.BytesHexFormat bytes = hexFormat.getBytes();
        return (!bytes.getNoLineAndGroupSeparator() || (bArrHexToByteArrayNoLineAndGroupSeparator = hexToByteArrayNoLineAndGroupSeparator(str, i10, i11, bytes)) == null) ? hexToByteArraySlowPath(str, i10, i11, bytes) : bArrHexToByteArrayNoLineAndGroupSeparator;
    }

    @ExperimentalStdlibApi
    public static final int hexToInt(@NotNull String str, int i10, int i11, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToIntImpl(str, i10, i11, format, 8);
    }

    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, int i10, int i11, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLongImpl(str, i10, i11, format, 16);
    }

    @ExperimentalStdlibApi
    private static final short hexToShort(String str, int i10, int i11, HexFormat hexFormat) {
        return (short) hexToIntImpl(str, i10, i11, hexFormat, 4);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(@NotNull byte[] bArr, int i10, int i11, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, bArr.length);
        if (i10 == i11) {
            return "";
        }
        int[] iArr = format.getUpperCase() ? BYTE_TO_UPPER_CASE_HEX_DIGITS : BYTE_TO_LOWER_CASE_HEX_DIGITS;
        HexFormat.BytesHexFormat bytes = format.getBytes();
        return bytes.getNoLineAndGroupSeparator() ? toHexStringNoLineAndGroupSeparator(bArr, i10, i11, bytes, iArr) : toHexStringSlowPath(bArr, i10, i11, bytes, iArr);
    }

    public static final int formattedStringLength(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i10 > 0) {
            int i17 = i10 - 1;
            int i18 = i17 / i11;
            int i19 = (i11 - 1) / i12;
            int i20 = i10 % i11;
            if (i20 != 0) {
                i11 = i20;
            }
            int i21 = (i19 * i18) + ((i11 - 1) / i12);
            return checkFormatLength(((long) i18) + (((long) i21) * ((long) i13)) + (((long) ((i17 - i18) - i21)) * ((long) i14)) + (((long) i10) * (((long) i15) + 2 + ((long) i16))));
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    static /* synthetic */ byte hexToByte$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, i10, i11, hexFormat);
    }

    static /* synthetic */ byte[] hexToByteArray$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, i10, i11, hexFormat);
    }

    public static /* synthetic */ int hexToInt$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, i10, i11, hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, i10, i11, hexFormat);
    }

    static /* synthetic */ short hexToShort$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, i10, i11, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, i10, i11, hexFormat);
    }

    private static final int formatByteAt(byte[] bArr, int i10, int[] iArr, char[] cArr, int i11) {
        int i12 = iArr[bArr[i10] & 255];
        cArr[i11] = (char) (i12 >> 8);
        cArr[i11 + 1] = (char) (i12 & 255);
        return i11 + 2;
    }

    public static /* synthetic */ String toHexString$default(byte b10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(b10, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(byte b10, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (!number.getIsDigitsOnlyAndNoPadding()) {
            return toHexStringImpl(b10, number, str, 8);
        }
        char[] cArr = {str.charAt((b10 >> 4) & 15), str.charAt(b10 & 15)};
        return number.getRemoveLeadingZeros() ? StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt___RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(b10 & 255) - 24) >> 2, 1), 0, 2, null) : StringsKt__StringsJVMKt.concatToString(cArr);
    }

    public static /* synthetic */ String toHexString$default(short s10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(s10, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(int i10, HexFormat hexFormat, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(i10, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(long j10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(j10, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(short s10, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (!number.getIsDigitsOnlyAndNoPadding()) {
            return toHexStringImpl(s10, number, str, 16);
        }
        char[] cArr = {str.charAt((s10 >> 12) & 15), str.charAt((s10 >> 8) & 15), str.charAt((s10 >> 4) & 15), str.charAt(s10 & 15)};
        return number.getRemoveLeadingZeros() ? StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt___RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(s10 & UShort.MAX_VALUE) - 16) >> 2, 3), 0, 2, null) : StringsKt__StringsJVMKt.concatToString(cArr);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(int i10, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (!number.getIsDigitsOnlyAndNoPadding()) {
            return toHexStringImpl(i10, number, str, 32);
        }
        char[] cArr = {str.charAt((i10 >> 28) & 15), str.charAt((i10 >> 24) & 15), str.charAt((i10 >> 20) & 15), str.charAt((i10 >> 16) & 15), str.charAt((i10 >> 12) & 15), str.charAt((i10 >> 8) & 15), str.charAt((i10 >> 4) & 15), str.charAt(i10 & 15)};
        return number.getRemoveLeadingZeros() ? StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt___RangesKt.coerceAtMost(Integer.numberOfLeadingZeros(i10) >> 2, 7), 0, 2, null) : StringsKt__StringsJVMKt.concatToString(cArr);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(long j10, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (!number.getIsDigitsOnlyAndNoPadding()) {
            return toHexStringImpl(j10, number, str, 64);
        }
        char[] cArr = {str.charAt((int) ((j10 >> 60) & 15)), str.charAt((int) ((j10 >> 56) & 15)), str.charAt((int) ((j10 >> 52) & 15)), str.charAt((int) ((j10 >> 48) & 15)), str.charAt((int) ((j10 >> 44) & 15)), str.charAt((int) ((j10 >> 40) & 15)), str.charAt((int) ((j10 >> 36) & 15)), str.charAt((int) ((j10 >> 32) & 15)), str.charAt((int) ((j10 >> 28) & 15)), str.charAt((int) ((j10 >> 24) & 15)), str.charAt((int) ((j10 >> 20) & 15)), str.charAt((int) ((j10 >> 16) & 15)), str.charAt((int) ((j10 >> 12) & 15)), str.charAt((int) ((j10 >> 8) & 15)), str.charAt((int) ((j10 >> 4) & 15)), str.charAt((int) (15 & j10))};
        return number.getRemoveLeadingZeros() ? StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt___RangesKt.coerceAtMost(Long.numberOfLeadingZeros(j10) >> 2, 15), 0, 2, null) : StringsKt__StringsJVMKt.concatToString(cArr);
    }
}
