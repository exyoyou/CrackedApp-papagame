package okio.internal;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", "endIndex", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"})
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            char cCharAt = str.charAt(i12);
            if (Intrinsics.compare((int) cCharAt, 128) >= 0) {
                int length2 = str.length();
                int i13 = i12;
                while (i12 < length2) {
                    char cCharAt2 = str.charAt(i12);
                    if (Intrinsics.compare((int) cCharAt2, 128) < 0) {
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) cCharAt2;
                        i12++;
                        while (true) {
                            i13 = i14;
                            if (i12 >= length2 || Intrinsics.compare((int) str.charAt(i12), 128) >= 0) {
                                break;
                            }
                            i14 = i13 + 1;
                            bArr[i13] = (byte) str.charAt(i12);
                            i12++;
                        }
                    } else {
                        if (Intrinsics.compare((int) cCharAt2, 2048) < 0) {
                            int i15 = i13 + 1;
                            bArr[i13] = (byte) ((cCharAt2 >> 6) | 192);
                            byte b10 = (byte) ((cCharAt2 & '?') | 128);
                            i10 = i15 + 1;
                            bArr[i15] = b10;
                        } else {
                            if (55296 <= cCharAt2 && cCharAt2 < 57344) {
                                if (Intrinsics.compare((int) cCharAt2, GeneratorBase.SURR1_LAST) <= 0 && length2 > (i11 = i12 + 1)) {
                                    char cCharAt3 = str.charAt(i11);
                                    if (56320 <= cCharAt3 && cCharAt3 < 57344) {
                                        int iCharAt = ((cCharAt2 << '\n') + str.charAt(i11)) - 56613888;
                                        int i16 = i13 + 1;
                                        bArr[i13] = (byte) ((iCharAt >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                                        int i17 = i16 + 1;
                                        bArr[i16] = (byte) (((iCharAt >> 12) & 63) | 128);
                                        int i18 = i17 + 1;
                                        bArr[i17] = (byte) (((iCharAt >> 6) & 63) | 128);
                                        byte b11 = (byte) ((iCharAt & 63) | 128);
                                        i10 = i18 + 1;
                                        bArr[i18] = b11;
                                        i12 += 2;
                                    }
                                    i13 = i10;
                                }
                                i10 = i13 + 1;
                                bArr[i13] = Utf8.REPLACEMENT_BYTE;
                            } else {
                                int i19 = i13 + 1;
                                bArr[i13] = (byte) ((cCharAt2 >> '\f') | Opcodes.SHL_INT_LIT8);
                                int i20 = i19 + 1;
                                bArr[i19] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                                byte b12 = (byte) ((cCharAt2 & '?') | 128);
                                i10 = i20 + 1;
                                bArr[i20] = b12;
                            }
                        }
                        i12++;
                        i13 = i10;
                    }
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr, i13);
                Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
                return bArrCopyOf;
            }
            bArr[i12] = (byte) cCharAt;
            i12++;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf2, "copyOf(...)");
        return bArrCopyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0098, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x011c, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L97;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonToUtf8String(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        return commonToUtf8String(bArr, i10, i11);
    }
}
