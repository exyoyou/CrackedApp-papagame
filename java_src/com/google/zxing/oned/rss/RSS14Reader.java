package com.google.zxing.oned.rss;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.OneDReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class RSS14Reader extends AbstractRSSReader {
    private final List<Pair> possibleLeftPairs = new ArrayList();
    private final List<Pair> possibleRightPairs = new ArrayList();
    private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = {1, 10, 34, 70, 126};
    private static final int[] INSIDE_ODD_TOTAL_SUBSET = {4, 20, 48, 81};
    private static final int[] OUTSIDE_GSUM = {0, 161, 961, 2015, 2715};
    private static final int[] INSIDE_GSUM = {0, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME, 1036, 1516};
    private static final int[] OUTSIDE_ODD_WIDEST = {8, 6, 4, 3, 1};
    private static final int[] INSIDE_ODD_WIDEST = {2, 4, 6, 8};
    private static final int[][] FINDER_PATTERNS = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void addOrTally(Collection<Pair> collection, Pair pair) {
        boolean z10;
        if (pair == null) {
            return;
        }
        Iterator<Pair> it2 = collection.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            Pair next = it2.next();
            if (next.getValue() == pair.getValue()) {
                next.incrementCount();
                z10 = true;
                break;
            }
        }
        if (z10) {
            return;
        }
        collection.add(pair);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x004b A[PHI: r7 r8
      0x004b: PHI (r7v5 boolean) = (r7v3 boolean), (r7v12 boolean) binds: [B:32:0x0049, B:19:0x0033] A[DONT_GENERATE, DONT_INLINE]
      0x004b: PHI (r8v3 boolean) = (r8v1 boolean), (r8v10 boolean) binds: [B:32:0x0049, B:19:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x004f A[PHI: r7 r8
      0x004f: PHI (r7v6 boolean) = (r7v3 boolean), (r7v12 boolean) binds: [B:34:0x004d, B:21:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x004f: PHI (r8v4 boolean) = (r8v1 boolean), (r8v10 boolean) binds: [B:34:0x004d, B:21:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0052 A[PHI: r7 r8
      0x0052: PHI (r7v8 boolean) = (r7v3 boolean), (r7v12 boolean) binds: [B:34:0x004d, B:21:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0052: PHI (r8v8 boolean) = (r8v1 boolean), (r8v10 boolean) binds: [B:34:0x004d, B:21:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    private void adjustOddEvenCounts(boolean z10, int i10) throws NotFoundException {
        boolean z11;
        boolean z12;
        int iCount = AbstractRSSReader.count(getOddCounts());
        int iCount2 = AbstractRSSReader.count(getEvenCounts());
        int i11 = (iCount + iCount2) - i10;
        boolean z13 = false;
        boolean z14 = true;
        boolean z15 = (iCount & 1) == z10;
        boolean z16 = (iCount2 & 1) == 1;
        if (z10) {
            if (iCount > 12) {
                z14 = false;
                z11 = true;
            } else {
                z14 = iCount < 4;
                z11 = false;
            }
            if (iCount2 > 12) {
                z12 = true;
            } else if (iCount2 < 4) {
                z12 = false;
                z13 = true;
            } else {
                z12 = false;
            }
        } else {
            if (iCount > 11) {
                z14 = false;
                z11 = true;
            } else {
                z14 = iCount < 5;
                z11 = false;
            }
            if (iCount2 > 10) {
                z12 = true;
            } else if (iCount2 < 4) {
                z12 = false;
                z13 = true;
            } else {
                z12 = false;
            }
        }
        if (i11 == 1) {
            if (z15) {
                if (z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z11 = true;
            } else {
                if (!z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z14 = z14;
                z12 = true;
            }
        } else if (i11 == -1) {
            if (z15) {
                if (z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else {
                if (!z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z14 = z14;
                z13 = true;
            }
        } else {
            if (i11 != 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (z15) {
                if (!z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iCount < iCount2) {
                    z12 = true;
                } else {
                    z13 = true;
                    z11 = true;
                }
            } else {
                if (z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z14 = z14;
            }
        }
        if (z14) {
            if (z11) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
        }
        if (z11) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (z13) {
            if (z12) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
        }
        if (z12) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
    }

    private static boolean checkChecksum(Pair pair, Pair pair2) {
        pair.getFinderPattern().getValue();
        pair2.getFinderPattern().getValue();
        int checksumPortion = (pair.getChecksumPortion() + (pair2.getChecksumPortion() * 16)) % 79;
        int value = (pair.getFinderPattern().getValue() * 9) + pair2.getFinderPattern().getValue();
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        return checksumPortion == value;
    }

    private static Result constructResult(Pair pair, Pair pair2) {
        String strValueOf = String.valueOf((((long) pair.getValue()) * 4537077) + ((long) pair2.getValue()));
        StringBuilder sb2 = new StringBuilder(14);
        for (int length = 13 - strValueOf.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(strValueOf);
        int i10 = 0;
        for (int i11 = 0; i11 < 13; i11++) {
            int iCharAt = sb2.charAt(i11) - '0';
            if ((i11 & 1) == 0) {
                iCharAt *= 3;
            }
            i10 += iCharAt;
        }
        int i12 = 10 - (i10 % 10);
        if (i12 == 10) {
            i12 = 0;
        }
        sb2.append(i12);
        ResultPoint[] resultPoints = pair.getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = pair2.getFinderPattern().getResultPoints();
        return new Result(String.valueOf(sb2.toString()), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
    }

    private DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z10) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z10) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1] + 1, dataCharacterCounters);
            int i10 = 0;
            for (int length = dataCharacterCounters.length - 1; i10 < length; length--) {
                int i11 = dataCharacterCounters[i10];
                dataCharacterCounters[i10] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i11;
                i10++;
            }
        }
        int i12 = z10 ? 16 : 15;
        float fCount = AbstractRSSReader.count(dataCharacterCounters) / i12;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i13 = 0; i13 < dataCharacterCounters.length; i13++) {
            float f10 = dataCharacterCounters[i13] / fCount;
            int i14 = (int) (0.5f + f10);
            if (i14 < 1) {
                i14 = 1;
            } else if (i14 > 8) {
                i14 = 8;
            }
            int i15 = i13 >> 1;
            if ((i13 & 1) == 0) {
                oddCounts[i15] = i14;
                oddRoundingErrors[i15] = f10 - i14;
            } else {
                evenCounts[i15] = i14;
                evenRoundingErrors[i15] = f10 - i14;
            }
        }
        adjustOddEvenCounts(z10, i12);
        int i16 = 0;
        int i17 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            int i18 = oddCounts[length2];
            i16 = (i16 * 9) + i18;
            i17 += i18;
        }
        int i19 = 0;
        int i20 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            int i21 = evenCounts[length3];
            i19 = (i19 * 9) + i21;
            i20 += i21;
        }
        int i22 = i16 + (i19 * 3);
        if (!z10) {
            if ((i20 & 1) != 0 || i20 > 10 || i20 < 4) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i23 = (10 - i20) / 2;
            int i24 = INSIDE_ODD_WIDEST[i23];
            return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i24, false) * INSIDE_ODD_TOTAL_SUBSET[i23]) + RSSUtils.getRSSvalue(oddCounts, i24, true) + INSIDE_GSUM[i23], i22);
        }
        if ((i17 & 1) != 0 || i17 > 12 || i17 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i25 = (12 - i17) / 2;
        int i26 = OUTSIDE_ODD_WIDEST[i25];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i26, false) * OUTSIDE_EVEN_TOTAL_SUBSET[i25]) + RSSUtils.getRSSvalue(evenCounts, 9 - i26, true) + OUTSIDE_GSUM[i25], i22);
    }

    private Pair decodePair(BitArray bitArray, boolean z10, int i10, Map<DecodeHintType, ?> map) {
        try {
            int[] iArrFindFinderPattern = findFinderPattern(bitArray, 0, z10);
            FinderPattern foundFinderPattern = parseFoundFinderPattern(bitArray, i10, z10, iArrFindFinderPattern);
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float size = (iArrFindFinderPattern[0] + iArrFindFinderPattern[1]) / 2.0f;
                if (z10) {
                    size = (bitArray.getSize() - 1) - size;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(size, i10));
            }
            DataCharacter dataCharacterDecodeDataCharacter = decodeDataCharacter(bitArray, foundFinderPattern, true);
            DataCharacter dataCharacterDecodeDataCharacter2 = decodeDataCharacter(bitArray, foundFinderPattern, false);
            return new Pair((dataCharacterDecodeDataCharacter.getValue() * 1597) + dataCharacterDecodeDataCharacter2.getValue(), dataCharacterDecodeDataCharacter.getChecksumPortion() + (dataCharacterDecodeDataCharacter2.getChecksumPortion() * 4), foundFinderPattern);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] findFinderPattern(BitArray bitArray, int i10, boolean z10) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        boolean z11 = false;
        while (i10 < size) {
            z11 = !bitArray.get(i10);
            if (z10 == z11) {
                break;
            }
            i10++;
        }
        int i11 = i10;
        int i12 = 0;
        while (i10 < size) {
            if (bitArray.get(i10) ^ z11) {
                decodeFinderCounters[i12] = decodeFinderCounters[i12] + 1;
            } else {
                if (i12 != 3) {
                    i12++;
                } else {
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        return new int[]{i11, i10};
                    }
                    i11 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i12--;
                }
                decodeFinderCounters[i12] = 1;
                z11 = !z11;
            }
            i10++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i10, boolean z10, int[] iArr) throws NotFoundException {
        int size;
        int i11;
        boolean z11 = bitArray.get(iArr[0]);
        int i12 = iArr[0] - 1;
        while (i12 >= 0 && (bitArray.get(i12) ^ z11)) {
            i12--;
        }
        int i13 = i12 + 1;
        int i14 = iArr[0] - i13;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i14;
        int finderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS);
        int i15 = iArr[1];
        if (z10) {
            int size2 = (bitArray.getSize() - 1) - i13;
            size = (bitArray.getSize() - 1) - i15;
            i11 = size2;
        } else {
            size = i15;
            i11 = i13;
        }
        return new FinderPattern(finderValue, new int[]{i13, iArr[1]}, i11, size, i10);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        addOrTally(this.possibleLeftPairs, decodePair(bitArray, false, i10, map));
        bitArray.reverse();
        addOrTally(this.possibleRightPairs, decodePair(bitArray, true, i10, map));
        bitArray.reverse();
        for (Pair pair : this.possibleLeftPairs) {
            if (pair.getCount() > 1) {
                for (Pair pair2 : this.possibleRightPairs) {
                    if (pair2.getCount() > 1 && checkChecksum(pair, pair2)) {
                        return constructResult(pair, pair2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.possibleLeftPairs.clear();
        this.possibleRightPairs.clear();
    }
}
