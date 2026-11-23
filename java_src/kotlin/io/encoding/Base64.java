package kotlin.io.encoding;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.AbstractList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.Charsets;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalEncodingApi
@SinceKotlin(version = "1.8")
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\t\b\u0017\u0018\u0000 >2\u00020\u0001:\u0002=>B!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J4\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00142\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J\"\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J=\u0010\u001b\u001a\u0002H\u001c\"\f\b\u0000\u0010\u001c*\u00060\u001dj\u0002`\u001e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u0002H\u001c2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0002\u0010\u001fJ\"\u0010 \u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00142\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J\"\u0010 \u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00142\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014J%\u0010#\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0002\b$J5\u0010%\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u0014H\u0000¢\u0006\u0002\b)J\b\u0010*\u001a\u00020\u0003H\u0002J0\u0010+\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J%\u0010,\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0002\b-J%\u0010.\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0002\b/J\u0015\u00100\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0002\b1J(\u00102\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u0014H\u0002J\u0010\u00105\u001a\u0002062\u0006\u00103\u001a\u00020\u0014H\u0002J \u00107\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J%\u00108\u001a\u0002062\u0006\u0010(\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0002\b9J \u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010<\u001a\u00020\u0014H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006?"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "isUrlSafe", "", "isMimeScheme", "paddingOption", "Lkotlin/io/encoding/Base64$PaddingOption;", "<init>", "(ZZLkotlin/io/encoding/Base64$PaddingOption;)V", "isUrlSafe$kotlin_stdlib", "()Z", "isMimeScheme$kotlin_stdlib", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "withPadding", "option", "encodeToByteArray", "", "source", "startIndex", "", "endIndex", "encodeIntoByteArray", RtspHeaders.Values.DESTINATION, "destinationOffset", "encode", "", "encodeToAppendable", "A", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", "", "encodeToByteArrayImpl", "encodeToByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeSize", "sourceSize", "encodeSize$kotlin_stdlib", "shouldPadOnEncode", "decodeImpl", "decodeSize", "decodeSize$kotlin_stdlib", "charsToBytesImpl", "charsToBytesImpl$kotlin_stdlib", "bytesToStringImpl", "bytesToStringImpl$kotlin_stdlib", "handlePaddingSymbol", "padIndex", "byteStart", "checkPaddingIsAllowed", "", "skipIllegalSymbolsIfMime", "checkSourceBounds", "checkSourceBounds$kotlin_stdlib", "checkDestinationBounds", "destinationSize", "capacityNeeded", "PaddingOption", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Base64 {

    @NotNull
    private static final Base64 Mime;

    @NotNull
    private static final Base64 UrlSafe;
    private static final int bitsPerByte = 8;
    private static final int bitsPerSymbol = 6;
    public static final int bytesPerGroup = 3;
    private static final int mimeGroupsPerLine = 19;
    public static final int mimeLineLength = 76;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;
    private final boolean isMimeScheme;
    private final boolean isUrlSafe;

    @NotNull
    private final PaddingOption paddingOption;

    /* JADX INFO: renamed from: Default, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final byte[] mimeLineSeparatorSymbols = {13, 10};

    /* JADX INFO: renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0016"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "<init>", "()V", "bitsPerByte", "", "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "padSymbol", "", "mimeLineLength", "mimeGroupsPerLine", "mimeLineSeparatorSymbols", "", "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "UrlSafe", "getUrlSafe", "()Lkotlin/io/encoding/Base64;", "Mime", "getMime", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion extends Base64 {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Base64 getMime() {
            return Base64.Mime;
        }

        @NotNull
        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.mimeLineSeparatorSymbols;
        }

        @NotNull
        public final Base64 getUrlSafe() {
            return Base64.UrlSafe;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Companion() {
            boolean z10 = false;
            super(z10, z10, PaddingOption.PRESENT, null);
        }
    }

    @SinceKotlin(version = "2.0")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "<init>", "(Ljava/lang/String;I)V", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum PaddingOption {
        PRESENT,
        ABSENT,
        PRESENT_OPTIONAL,
        ABSENT_OPTIONAL;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @NotNull
        public static EnumEntries<PaddingOption> getEntries() {
            return $ENTRIES;
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        UrlSafe = new Base64(true, false, paddingOption);
        Mime = new Base64(false, true, paddingOption);
    }

    public /* synthetic */ Base64(boolean z10, boolean z11, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, paddingOption);
    }

    private final void checkDestinationBounds(int destinationSize, int destinationOffset, int capacityNeeded) {
        if (destinationOffset < 0 || destinationOffset > destinationSize) {
            throw new IndexOutOfBoundsException("destination offset: " + destinationOffset + ", destination size: " + destinationSize);
        }
        int i10 = destinationOffset + capacityNeeded;
        if (i10 < 0 || i10 > destinationSize) {
            throw new IndexOutOfBoundsException("The destination array does not have enough capacity, destination offset: " + destinationOffset + ", destination size: " + destinationSize + ", capacity needed: " + capacityNeeded);
        }
    }

    private final void checkPaddingIsAllowed(int padIndex) {
        if (this.paddingOption != PaddingOption.ABSENT) {
            return;
        }
        throw new IllegalArgumentException("The padding option is set to ABSENT, but the input has a pad character at index " + padIndex);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.decode(bArr, i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x007e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0082  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:27:0x00be  */
    /* JADX WARN: Code duplicated, block: B:51:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cd A[SYNTHETIC] */
    private final int decodeImpl(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        boolean z10;
        int i10;
        int i11;
        int[] iArr = this.isUrlSafe ? Base64Kt.base64UrlDecodeMap : Base64Kt.base64DecodeMap;
        int i12 = -8;
        int i13 = destinationOffset;
        int iHandlePaddingSymbol = startIndex;
        int i14 = -8;
        int i15 = 0;
        while (true) {
            if (iHandlePaddingSymbol >= endIndex) {
                z10 = false;
                break;
            }
            if (i14 != i12 || iHandlePaddingSymbol + 3 >= endIndex) {
                i10 = source[iHandlePaddingSymbol] & 255;
                i11 = iArr[i10];
                if (i11 < 0) {
                    iHandlePaddingSymbol++;
                    i15 = (i15 << 6) | i11;
                    i14 += 6;
                    if (i14 >= 0) {
                        destination[i13] = (byte) (i15 >>> i14);
                        i15 &= (1 << i14) - 1;
                        i14 -= 8;
                        i13++;
                    }
                } else {
                    if (i11 == -2) {
                        iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i14);
                        z10 = true;
                        break;
                    }
                    if (this.isMimeScheme) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid symbol '");
                        sb2.append((char) i10);
                        sb2.append("'(");
                        String string = Integer.toString(i10, CharsKt__CharJVMKt.checkRadix(8));
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        sb2.append(string);
                        sb2.append(") at index ");
                        sb2.append(iHandlePaddingSymbol);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    iHandlePaddingSymbol++;
                }
            } else {
                int i16 = iHandlePaddingSymbol + 1;
                int i17 = iArr[source[iHandlePaddingSymbol] & 255];
                int i18 = i16 + 1;
                int i19 = iArr[source[i16] & 255];
                int i20 = i18 + 1;
                int i21 = iArr[source[i18] & 255];
                int i22 = i20 + 1;
                int i23 = (i19 << 12) | (i17 << 18) | (i21 << 6) | iArr[source[i20] & 255];
                if (i23 >= 0) {
                    int i24 = i13 + 1;
                    destination[i13] = (byte) (i23 >> 16);
                    int i25 = i24 + 1;
                    destination[i24] = (byte) (i23 >> 8);
                    i13 = i25 + 1;
                    destination[i25] = (byte) i23;
                    iHandlePaddingSymbol = i22;
                } else {
                    iHandlePaddingSymbol = i22 - 4;
                    i10 = source[iHandlePaddingSymbol] & 255;
                    i11 = iArr[i10];
                    if (i11 < 0) {
                        iHandlePaddingSymbol++;
                        i15 = (i15 << 6) | i11;
                        i14 += 6;
                        if (i14 >= 0) {
                            destination[i13] = (byte) (i15 >>> i14);
                            i15 &= (1 << i14) - 1;
                            i14 -= 8;
                            i13++;
                        }
                    } else {
                        if (i11 == -2) {
                            iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i14);
                            z10 = true;
                            break;
                        }
                        if (this.isMimeScheme) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Invalid symbol '");
                            sb3.append((char) i10);
                            sb3.append("'(");
                            String string2 = Integer.toString(i10, CharsKt__CharJVMKt.checkRadix(8));
                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                            sb3.append(string2);
                            sb3.append(") at index ");
                            sb3.append(iHandlePaddingSymbol);
                            throw new IllegalArgumentException(sb3.toString());
                        }
                        iHandlePaddingSymbol++;
                    }
                }
            }
            i12 = -8;
        }
        if (i14 == -2) {
            throw new IllegalArgumentException("The last unit of input does not have enough bits");
        }
        if (i14 != -8 && !z10 && this.paddingOption == PaddingOption.PRESENT) {
            throw new IllegalArgumentException("The padding option is set to PRESENT, but the input is not properly padded");
        }
        if (i15 != 0) {
            throw new IllegalArgumentException("The pad bits must be zeros");
        }
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, iHandlePaddingSymbol, endIndex);
        if (iSkipIllegalSymbolsIfMime >= endIndex) {
            return i13 - destinationOffset;
        }
        int i26 = source[iSkipIllegalSymbolsIfMime] & 255;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Symbol '");
        sb4.append((char) i26);
        sb4.append("'(");
        String string3 = Integer.toString(i26, CharsKt__CharJVMKt.checkRadix(8));
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        sb4.append(string3);
        sb4.append(") at index ");
        sb4.append(iSkipIllegalSymbolsIfMime - 1);
        sb4.append(" is prohibited after the pad character");
        throw new IllegalArgumentException(sb4.toString());
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i14, i15, i12);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.encode(bArr, i10, i11);
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i14, i15, i12);
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToAppendable");
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i10, i11);
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i10, i11);
    }

    private final int handlePaddingSymbol(byte[] source, int padIndex, int endIndex, int byteStart) {
        if (byteStart == -8) {
            throw new IllegalArgumentException("Redundant pad character at index " + padIndex);
        }
        if (byteStart == -6) {
            checkPaddingIsAllowed(padIndex);
        } else if (byteStart == -4) {
            checkPaddingIsAllowed(padIndex);
            padIndex = skipIllegalSymbolsIfMime(source, padIndex + 1, endIndex);
            if (padIndex == endIndex || source[padIndex] != 61) {
                throw new IllegalArgumentException("Missing one pad character at index " + padIndex);
            }
        } else if (byteStart != -2) {
            throw new IllegalStateException("Unreachable".toString());
        }
        return padIndex + 1;
    }

    private final boolean shouldPadOnEncode() {
        PaddingOption paddingOption = this.paddingOption;
        return paddingOption == PaddingOption.PRESENT || paddingOption == PaddingOption.PRESENT_OPTIONAL;
    }

    private final int skipIllegalSymbolsIfMime(byte[] source, int startIndex, int endIndex) {
        if (!this.isMimeScheme) {
            return startIndex;
        }
        while (startIndex < endIndex) {
            if (Base64Kt.base64DecodeMap[source[startIndex] & 255] != -1) {
                return startIndex;
            }
            startIndex++;
        }
        return startIndex;
    }

    @NotNull
    public final String bytesToStringImpl$kotlin_stdlib(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        StringBuilder sb2 = new StringBuilder(source.length);
        for (byte b10 : source) {
            sb2.append((char) b10);
        }
        return sb2.toString();
    }

    @NotNull
    public final byte[] charsToBytesImpl$kotlin_stdlib(@NotNull CharSequence source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i10 = 0;
        while (startIndex < endIndex) {
            char cCharAt = source.charAt(startIndex);
            if (cCharAt <= 255) {
                bArr[i10] = (byte) cCharAt;
                i10++;
            } else {
                bArr[i10] = Utf8.REPLACEMENT_BYTE;
                i10++;
            }
            startIndex++;
        }
        return bArr;
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    @NotNull
    public final byte[] decode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int iDecodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[iDecodeSize$kotlin_stdlib];
        if (decodeImpl(source, bArr, 0, startIndex, endIndex) == iDecodeSize$kotlin_stdlib) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int decodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, decodeSize$kotlin_stdlib(source, startIndex, endIndex));
        return decodeImpl(source, destination, destinationOffset, startIndex, endIndex);
    }

    public final int decodeSize$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        int i10 = endIndex - startIndex;
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            throw new IllegalArgumentException("Input should have at least 2 symbols for Base64 decoding, startIndex: " + startIndex + ", endIndex: " + endIndex);
        }
        if (this.isMimeScheme) {
            while (startIndex < endIndex) {
                int i11 = Base64Kt.base64DecodeMap[source[startIndex] & 255];
                if (i11 < 0) {
                    if (i11 == -2) {
                        i10 -= endIndex - startIndex;
                        break;
                    }
                    i10--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i10--;
            if (source[endIndex - 2] == 61) {
                i10--;
            }
        }
        return (int) ((((long) i10) * ((long) 6)) / ((long) 8));
    }

    @NotNull
    public final String encode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public final int encodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - startIndex));
        byte[] bArr = this.isUrlSafe ? Base64Kt.base64UrlEncodeMap : Base64Kt.base64EncodeMap;
        int i10 = this.isMimeScheme ? 19 : Integer.MAX_VALUE;
        int i11 = destinationOffset;
        while (true) {
            if (startIndex + 2 >= endIndex) {
                break;
            }
            int iMin = Math.min((endIndex - startIndex) / 3, i10);
            int i12 = 0;
            while (i12 < iMin) {
                int i13 = startIndex + 1;
                int i14 = i13 + 1;
                int i15 = ((source[startIndex] & 255) << 16) | ((source[i13] & 255) << 8) | (source[i14] & 255);
                int i16 = i11 + 1;
                destination[i11] = bArr[i15 >>> 18];
                int i17 = i16 + 1;
                destination[i16] = bArr[(i15 >>> 12) & 63];
                int i18 = i17 + 1;
                destination[i17] = bArr[(i15 >>> 6) & 63];
                i11 = i18 + 1;
                destination[i18] = bArr[i15 & 63];
                i12++;
                startIndex = i14 + 1;
            }
            if (iMin == i10 && startIndex != endIndex) {
                int i19 = i11 + 1;
                byte[] bArr2 = mimeLineSeparatorSymbols;
                destination[i11] = bArr2[0];
                i11 = i19 + 1;
                destination[i19] = bArr2[1];
            }
        }
        int i20 = endIndex - startIndex;
        if (i20 == 1) {
            int i21 = startIndex + 1;
            int i22 = (source[startIndex] & 255) << 4;
            int i23 = i11 + 1;
            destination[i11] = bArr[i22 >>> 6];
            i11 = i23 + 1;
            destination[i23] = bArr[i22 & 63];
            if (shouldPadOnEncode()) {
                int i24 = i11 + 1;
                destination[i11] = 61;
                i11 = i24 + 1;
                destination[i24] = 61;
            }
            startIndex = i21;
        } else if (i20 == 2) {
            int i25 = startIndex + 1;
            int i26 = i25 + 1;
            int i27 = ((source[i25] & 255) << 2) | ((source[startIndex] & 255) << 10);
            int i28 = i11 + 1;
            destination[i11] = bArr[i27 >>> 12];
            int i29 = i28 + 1;
            destination[i28] = bArr[(i27 >>> 6) & 63];
            i11 = i29 + 1;
            destination[i29] = bArr[i27 & 63];
            if (shouldPadOnEncode()) {
                destination[i11] = 61;
                i11++;
            }
            startIndex = i26;
        }
        if (startIndex == endIndex) {
            return i11 - destinationOffset;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i10 = sourceSize / 3;
        int i11 = sourceSize % 3;
        int i12 = i10 * 4;
        if (i11 != 0) {
            i12 += shouldPadOnEncode() ? 4 : i11 + 1;
        }
        if (this.isMimeScheme) {
            i12 += ((i12 - 1) / 76) * 2;
        }
        if (i12 >= 0) {
            return i12;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    @NotNull
    public final <A extends Appendable> A encodeToAppendable(@NotNull byte[] source, @NotNull A destination, int startIndex, int endIndex) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    @NotNull
    public final byte[] encodeToByteArray(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    @NotNull
    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    @NotNull
    /* JADX INFO: renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* JADX INFO: renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* JADX INFO: renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    @SinceKotlin(version = "2.0")
    @NotNull
    public final Base64 withPadding(@NotNull PaddingOption option) {
        Intrinsics.checkNotNullParameter(option, "option");
        return this.paddingOption == option ? this : new Base64(this.isUrlSafe, this.isMimeScheme, option);
    }

    private Base64(boolean z10, boolean z11, PaddingOption paddingOption) {
        this.isUrlSafe = z10;
        this.isMimeScheme = z11;
        this.paddingOption = paddingOption;
        if (!((z10 && z11) ? false : true)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = charSequence.length();
        }
        return base64.decode(charSequence, i10, i11);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i14, i15, i12);
    }

    public final int decodeIntoByteArray(@NotNull CharSequence source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String strSubstring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            bArrCharsToBytesImpl$kotlin_stdlib = strSubstring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bArrCharsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, bArrCharsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    @NotNull
    public final byte[] decode(@NotNull CharSequence source, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String strSubstring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            bArrCharsToBytesImpl$kotlin_stdlib = strSubstring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bArrCharsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, bArrCharsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }
}
