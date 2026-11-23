package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.haima.hmcp.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    private static final int INTEGER_MATH_SHIFT = 8;
    protected static final int MAX_MODULES = 57;
    protected static final int MIN_SKIP = 3;
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    private static class CenterComparator implements Comparator<FinderPattern>, Serializable {
        private final float average;

        private CenterComparator(float f10) {
            this.average = f10;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            if (finderPattern2.getCount() != finderPattern.getCount()) {
                return finderPattern2.getCount() - finderPattern.getCount();
            }
            float fAbs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
            float fAbs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
            if (fAbs < fAbs2) {
                return 1;
            }
            return fAbs == fAbs2 ? 0 : -1;
        }
    }

    private static class FurthestFromAverageComparator implements Comparator<FinderPattern>, Serializable {
        private final float average;

        private FurthestFromAverageComparator(float f10) {
            this.average = f10;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            float fAbs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
            float fAbs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
            if (fAbs < fAbs2) {
                return -1;
            }
            return fAbs == fAbs2 ? 0 : 1;
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    private static float centerFromEnd(int[] iArr, int i10) {
        return ((i10 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private float crossCheckHorizontal(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        BitMatrix bitMatrix = this.image;
        int width = bitMatrix.getWidth();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i17 = i10;
        while (i17 >= 0 && bitMatrix.get(i17, i11)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i17--;
        }
        if (i17 < 0) {
            return Float.NaN;
        }
        while (i17 >= 0 && !bitMatrix.get(i17, i11)) {
            int i18 = crossCheckStateCount[1];
            if (i18 > i12) {
                break;
            }
            crossCheckStateCount[1] = i18 + 1;
            i17--;
        }
        if (i17 < 0 || crossCheckStateCount[1] > i12) {
            return Float.NaN;
        }
        while (i17 >= 0 && bitMatrix.get(i17, i11) && (i16 = crossCheckStateCount[0]) <= i12) {
            crossCheckStateCount[0] = i16 + 1;
            i17--;
        }
        if (crossCheckStateCount[0] > i12) {
            return Float.NaN;
        }
        int i19 = i10 + 1;
        while (i19 < width && bitMatrix.get(i19, i11)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i19++;
        }
        if (i19 == width) {
            return Float.NaN;
        }
        while (i19 < width && !bitMatrix.get(i19, i11) && (i15 = crossCheckStateCount[3]) < i12) {
            crossCheckStateCount[3] = i15 + 1;
            i19++;
        }
        if (i19 == width || crossCheckStateCount[3] >= i12) {
            return Float.NaN;
        }
        while (i19 < width && bitMatrix.get(i19, i11) && (i14 = crossCheckStateCount[4]) < i12) {
            crossCheckStateCount[4] = i14 + 1;
            i19++;
        }
        int i20 = crossCheckStateCount[4];
        if (i20 < i12 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + i20) - i13) * 5 < i13 && foundPatternCross(crossCheckStateCount)) {
            return centerFromEnd(crossCheckStateCount, i19);
        }
        return Float.NaN;
    }

    private float crossCheckVertical(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i17 = i10;
        while (i17 >= 0 && bitMatrix.get(i11, i17)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i17--;
        }
        if (i17 < 0) {
            return Float.NaN;
        }
        while (i17 >= 0 && !bitMatrix.get(i11, i17)) {
            int i18 = crossCheckStateCount[1];
            if (i18 > i12) {
                break;
            }
            crossCheckStateCount[1] = i18 + 1;
            i17--;
        }
        if (i17 < 0 || crossCheckStateCount[1] > i12) {
            return Float.NaN;
        }
        while (i17 >= 0 && bitMatrix.get(i11, i17) && (i16 = crossCheckStateCount[0]) <= i12) {
            crossCheckStateCount[0] = i16 + 1;
            i17--;
        }
        if (crossCheckStateCount[0] > i12) {
            return Float.NaN;
        }
        int i19 = i10 + 1;
        while (i19 < height && bitMatrix.get(i11, i19)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i19++;
        }
        if (i19 == height) {
            return Float.NaN;
        }
        while (i19 < height && !bitMatrix.get(i11, i19) && (i15 = crossCheckStateCount[3]) < i12) {
            crossCheckStateCount[3] = i15 + 1;
            i19++;
        }
        if (i19 == height || crossCheckStateCount[3] >= i12) {
            return Float.NaN;
        }
        while (i19 < height && bitMatrix.get(i11, i19) && (i14 = crossCheckStateCount[4]) < i12) {
            crossCheckStateCount[4] = i14 + 1;
            i19++;
        }
        int i20 = crossCheckStateCount[4];
        if (i20 < i12 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + i20) - i13) * 5 < i13 * 2 && foundPatternCross(crossCheckStateCount)) {
            return centerFromEnd(crossCheckStateCount, i19);
        }
        return Float.NaN;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    protected static boolean foundPatternCross(int[] iArr) {
        int i10;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < 5; i13++) {
            int i14 = iArr[i13];
            if (i14 == 0) {
                return false;
            }
            i12 += i14;
        }
        return i12 >= 7 && Math.abs(i10 - (iArr[0] << 8)) < (i11 = (i10 = (i12 << 8) / 7) / 2) && Math.abs(i10 - (iArr[1] << 8)) < i11 && Math.abs((i10 * 3) - (iArr[2] << 8)) < i11 * 3 && Math.abs(i10 - (iArr[3] << 8)) < i11 && Math.abs(i10 - (iArr[4] << 8)) < i11;
    }

    private int[] getCrossCheckStateCount() {
        int[] iArr = this.crossCheckStateCount;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        return iArr;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int size = this.possibleCenters.size();
        float fAbs = 0.0f;
        int i10 = 0;
        float estimatedModuleSize = 0.0f;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i10++;
                estimatedModuleSize += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i10 < 3) {
            return false;
        }
        float f10 = estimatedModuleSize / size;
        Iterator<FinderPattern> it2 = this.possibleCenters.iterator();
        while (it2.hasNext()) {
            fAbs += Math.abs(it2.next().getEstimatedModuleSize() - f10);
        }
        return fAbs <= estimatedModuleSize * 0.05f;
    }

    private FinderPattern[] selectBestPatterns() throws NotFoundException {
        int size = this.possibleCenters.size();
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        float estimatedModuleSize = 0.0f;
        if (size > 3) {
            Iterator<FinderPattern> it2 = this.possibleCenters.iterator();
            float f10 = 0.0f;
            float f11 = 0.0f;
            while (it2.hasNext()) {
                float estimatedModuleSize2 = it2.next().getEstimatedModuleSize();
                f10 += estimatedModuleSize2;
                f11 += estimatedModuleSize2 * estimatedModuleSize2;
            }
            float f12 = size;
            float f13 = f10 / f12;
            float fSqrt = (float) Math.sqrt((f11 / f12) - (f13 * f13));
            Collections.sort(this.possibleCenters, new FurthestFromAverageComparator(f13));
            float fMax = Math.max(0.2f * f13, fSqrt);
            int i10 = 0;
            while (i10 < this.possibleCenters.size() && this.possibleCenters.size() > 3) {
                if (Math.abs(this.possibleCenters.get(i10).getEstimatedModuleSize() - f13) > fMax) {
                    this.possibleCenters.remove(i10);
                    i10--;
                }
                i10++;
            }
        }
        if (this.possibleCenters.size() > 3) {
            Iterator<FinderPattern> it3 = this.possibleCenters.iterator();
            while (it3.hasNext()) {
                estimatedModuleSize += it3.next().getEstimatedModuleSize();
            }
            Collections.sort(this.possibleCenters, new CenterComparator(estimatedModuleSize / this.possibleCenters.size()));
            List<FinderPattern> list = this.possibleCenters;
            list.subList(3, list.size()).clear();
        }
        return new FinderPattern[]{this.possibleCenters.get(0), this.possibleCenters.get(1), this.possibleCenters.get(2)};
    }

    FinderPatternInfo find(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i10 = (height * 3) / Constants.CHECK_PLAYING_CID_ACTION;
        if (i10 < 3 || z10) {
            i10 = 3;
        }
        int[] iArr = new int[5];
        int i11 = i10 - 1;
        boolean zHaveMultiplyConfirmedCenters = false;
        while (i11 < height && !zHaveMultiplyConfirmedCenters) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            int i12 = 0;
            int i13 = 0;
            while (i12 < width) {
                if (this.image.get(i12, i11)) {
                    if ((i13 & 1) == 1) {
                        i13++;
                    }
                    iArr[i13] = iArr[i13] + 1;
                } else if ((i13 & 1) != 0) {
                    iArr[i13] = iArr[i13] + 1;
                } else if (i13 != 4) {
                    i13++;
                    iArr[i13] = iArr[i13] + 1;
                } else if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i11, i12)) {
                    if (this.hasSkipped) {
                        zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                    } else {
                        int iFindRowSkip = findRowSkip();
                        int i14 = iArr[2];
                        if (iFindRowSkip > i14) {
                            i11 += (iFindRowSkip - i14) - 2;
                            i12 = width - 1;
                        }
                    }
                    iArr[0] = 0;
                    iArr[1] = 0;
                    iArr[2] = 0;
                    iArr[3] = 0;
                    iArr[4] = 0;
                    i10 = 2;
                    i13 = 0;
                } else {
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = iArr[4];
                    iArr[3] = 1;
                    iArr[4] = 0;
                    i13 = 3;
                }
                i12++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i11, width)) {
                i10 = iArr[0];
                if (this.hasSkipped) {
                    zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                }
            }
            i11 += i10;
        }
        FinderPattern[] finderPatternArrSelectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(finderPatternArrSelectBestPatterns);
        return new FinderPatternInfo(finderPatternArrSelectBestPatterns);
    }

    protected BitMatrix getImage() {
        return this.image;
    }

    protected List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    protected boolean handlePossibleCenter(int[] iArr, int i10, int i11) {
        boolean z10 = false;
        int i12 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iCenterFromEnd = (int) centerFromEnd(iArr, i11);
        float fCrossCheckVertical = crossCheckVertical(i10, iCenterFromEnd, iArr[2], i12);
        if (!Float.isNaN(fCrossCheckVertical)) {
            float fCrossCheckHorizontal = crossCheckHorizontal(iCenterFromEnd, (int) fCrossCheckVertical, iArr[2], i12);
            if (!Float.isNaN(fCrossCheckHorizontal)) {
                float f10 = i12 / 7.0f;
                for (int i13 = 0; i13 < this.possibleCenters.size(); i13++) {
                    FinderPattern finderPattern = this.possibleCenters.get(i13);
                    if (finderPattern.aboutEquals(f10, fCrossCheckVertical, fCrossCheckHorizontal)) {
                        this.possibleCenters.set(i13, finderPattern.combineEstimate(fCrossCheckVertical, fCrossCheckHorizontal, f10));
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    FinderPattern finderPattern2 = new FinderPattern(fCrossCheckHorizontal, fCrossCheckVertical, f10);
                    this.possibleCenters.add(finderPattern2);
                    ResultPointCallback resultPointCallback = this.resultPointCallback;
                    if (resultPointCallback != null) {
                        resultPointCallback.foundPossibleResultPoint(finderPattern2);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }
}
