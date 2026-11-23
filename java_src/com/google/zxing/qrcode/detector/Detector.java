package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float fSizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float fSizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        if (Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays)) {
            return fSizeOfBlackWhiteBlackRunBothWays2 / 7.0f;
        }
        return Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays2) ? fSizeOfBlackWhiteBlackRunBothWays / 7.0f : (fSizeOfBlackWhiteBlackRunBothWays + fSizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    protected static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f10) throws NotFoundException {
        int iRound = ((round(ResultPoint.distance(resultPoint, resultPoint2) / f10) + round(ResultPoint.distance(resultPoint, resultPoint3) / f10)) >> 1) + 7;
        int i10 = iRound & 3;
        if (i10 == 0) {
            return iRound + 1;
        }
        if (i10 == 2) {
            return iRound - 1;
        }
        if (i10 != 3) {
            return iRound;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i10) {
        float x10;
        float y10;
        float f10;
        float f11 = i10 - 3.5f;
        if (resultPoint4 != null) {
            x10 = resultPoint4.getX();
            y10 = resultPoint4.getY();
            f10 = f11 - 3.0f;
        } else {
            x10 = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y10 = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f10 = f11;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f11, 3.5f, f10, f10, 3.5f, f11, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x10, y10, resultPoint3.getX(), resultPoint3.getY());
    }

    private static int round(float f10) {
        return (int) (f10 + 0.5f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i10) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i10, i10, perspectiveTransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        double dSqrt;
        int i18 = 1;
        boolean z10 = Math.abs(i13 - i11) > Math.abs(i12 - i10);
        if (z10) {
            i15 = i10;
            i14 = i11;
            i17 = i12;
            i16 = i13;
        } else {
            i14 = i10;
            i15 = i11;
            i16 = i12;
            i17 = i13;
        }
        int iAbs = Math.abs(i16 - i14);
        int i19 = i17 - i15;
        int iAbs2 = Math.abs(i19);
        int i20 = (-iAbs) >> 1;
        int i21 = i14 < i16 ? 1 : -1;
        int i22 = i15 < i17 ? 1 : -1;
        int i23 = i16 + i21;
        int i24 = i14;
        int i25 = i15;
        int i26 = 0;
        while (true) {
            if (i24 == i23) {
                i23 = i23;
                i19 = i19;
                break;
            }
            boolean z11 = z10;
            if ((i26 == i18) == this.image.get(z10 ? i25 : i24, z10 ? i24 : i25)) {
                if (i26 == 2) {
                    int i27 = i24 - i14;
                    int i28 = i25 - i15;
                    dSqrt = Math.sqrt((i27 * i27) + (i28 * i28));
                } else {
                    i26++;
                }
                return (float) dSqrt;
            }
            i20 += iAbs2;
            if (i20 > 0) {
                if (i25 == i17) {
                    break;
                }
                i25 += i22;
                i20 -= iAbs;
            }
            i24 += i21;
            i19 = i19;
            i23 = i23;
            z10 = z11;
            i18 = 1;
        }
        if (i26 != 2) {
            return Float.NaN;
        }
        int i29 = i23 - i14;
        dSqrt = Math.sqrt((i29 * i29) + (i19 * i19));
        return (float) dSqrt;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i10, int i11, int i12, int i13) {
        float width;
        float height;
        float fSizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i10, i11, i12, i13);
        int width2 = i10 - (i12 - i10);
        int height2 = 0;
        if (width2 < 0) {
            width = i10 / (i10 - width2);
            width2 = 0;
        } else if (width2 >= this.image.getWidth()) {
            width = ((this.image.getWidth() - 1) - i10) / (width2 - i10);
            width2 = this.image.getWidth() - 1;
        } else {
            width = 1.0f;
        }
        float f10 = i11;
        int i14 = (int) (f10 - ((i13 - i11) * width));
        if (i14 < 0) {
            height = f10 / (i11 - i14);
        } else if (i14 >= this.image.getHeight()) {
            height = ((this.image.getHeight() - 1) - i11) / (i14 - i11);
            height2 = this.image.getHeight() - 1;
        } else {
            height2 = i14;
            height = 1.0f;
        }
        return (fSizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i10, i11, (int) (i10 + ((width2 - i10) * height)), height2)) - 1.0f;
    }

    protected float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    protected AlignmentPattern findAlignmentInRegion(float f10, int i10, int i11, float f11) throws NotFoundException {
        int i12 = (int) (f11 * f10);
        int iMax = Math.max(0, i10 - i12);
        int iMin = Math.min(this.image.getWidth() - 1, i10 + i12) - iMax;
        float f12 = 3.0f * f10;
        if (iMin < f12) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i11 - i12);
        int iMin2 = Math.min(this.image.getHeight() - 1, i11 + i12) - iMax2;
        if (iMin2 >= f12) {
            return new AlignmentPatternFinder(this.image, iMax, iMax2, iMin, iMin2, f10, this.resultPointCallback).find();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected BitMatrix getImage() {
        return this.image;
    }

    protected ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    protected DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        AlignmentPattern alignmentPatternFindAlignmentInRegion;
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float fCalculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (fCalculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iComputeDimension = computeDimension(topLeft, topRight, bottomLeft, fCalculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(iComputeDimension);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length <= 0) {
            alignmentPatternFindAlignmentInRegion = null;
            break;
        }
        float x10 = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
        float y10 = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
        float f10 = 1.0f - (3.0f / dimensionForVersion);
        int x11 = (int) (topLeft.getX() + ((x10 - topLeft.getX()) * f10));
        int y11 = (int) (topLeft.getY() + (f10 * (y10 - topLeft.getY())));
        int i10 = 4;
        while (true) {
            if (i10 > 16) {
                alignmentPatternFindAlignmentInRegion = null;
                break;
            }
            try {
                alignmentPatternFindAlignmentInRegion = findAlignmentInRegion(fCalculateModuleSize, x11, y11, i10);
                break;
            } catch (NotFoundException unused) {
                i10 <<= 1;
            }
        }
        return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPatternFindAlignmentInRegion, iComputeDimension), iComputeDimension), alignmentPatternFindAlignmentInRegion == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPatternFindAlignmentInRegion});
    }

    public DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.resultPointCallback = resultPointCallback;
        return processFinderPatternInfo(new FinderPatternFinder(this.image, resultPointCallback).find(map));
    }
}
