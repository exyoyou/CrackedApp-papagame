package com.google.zxing.common.reedsolomon;

/* JADX INFO: loaded from: classes5.dex */
public final class ReedSolomonDecoder {
    private final GenericGF field;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.field = genericGF;
    }

    private int[] findErrorLocations(GenericGFPoly genericGFPoly) throws ReedSolomonException {
        int degree = genericGFPoly.getDegree();
        if (degree == 1) {
            return new int[]{genericGFPoly.getCoefficient(1)};
        }
        int[] iArr = new int[degree];
        int i10 = 0;
        for (int i11 = 1; i11 < this.field.getSize() && i10 < degree; i11++) {
            if (genericGFPoly.evaluateAt(i11) == 0) {
                iArr[i10] = this.field.inverse(i11);
                i10++;
            }
        }
        if (i10 == degree) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    private int[] findErrorMagnitudes(GenericGFPoly genericGFPoly, int[] iArr, boolean z10) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            int iInverse = this.field.inverse(iArr[i10]);
            int iMultiply = 1;
            for (int i11 = 0; i11 < length; i11++) {
                if (i10 != i11) {
                    int iMultiply2 = this.field.multiply(iArr[i11], iInverse);
                    iMultiply = this.field.multiply(iMultiply, (iMultiply2 & 1) == 0 ? iMultiply2 | 1 : iMultiply2 & (-2));
                }
            }
            int iMultiply3 = this.field.multiply(genericGFPoly.evaluateAt(iInverse), this.field.inverse(iMultiply));
            iArr2[i10] = iMultiply3;
            if (z10) {
                iArr2[i10] = this.field.multiply(iMultiply3, iInverse);
            }
        }
        return iArr2;
    }

    private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly genericGFPoly, GenericGFPoly genericGFPoly2, int i10) throws ReedSolomonException {
        if (genericGFPoly.getDegree() < genericGFPoly2.getDegree()) {
            genericGFPoly2 = genericGFPoly;
            genericGFPoly = genericGFPoly2;
        }
        GenericGFPoly one = this.field.getOne();
        GenericGFPoly zero = this.field.getZero();
        GenericGFPoly genericGFPoly3 = genericGFPoly2;
        GenericGFPoly genericGFPolyAddOrSubtract = genericGFPoly;
        GenericGFPoly genericGFPoly4 = genericGFPoly3;
        GenericGFPoly zero2 = this.field.getZero();
        GenericGFPoly one2 = this.field.getOne();
        while (genericGFPoly4.getDegree() >= i10 / 2) {
            if (genericGFPoly4.isZero()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            GenericGFPoly zero3 = this.field.getZero();
            int iInverse = this.field.inverse(genericGFPoly4.getCoefficient(genericGFPoly4.getDegree()));
            while (genericGFPolyAddOrSubtract.getDegree() >= genericGFPoly4.getDegree() && !genericGFPolyAddOrSubtract.isZero()) {
                int degree = genericGFPolyAddOrSubtract.getDegree() - genericGFPoly4.getDegree();
                int iMultiply = this.field.multiply(genericGFPolyAddOrSubtract.getCoefficient(genericGFPolyAddOrSubtract.getDegree()), iInverse);
                zero3 = zero3.addOrSubtract(this.field.buildMonomial(degree, iMultiply));
                genericGFPolyAddOrSubtract = genericGFPolyAddOrSubtract.addOrSubtract(genericGFPoly4.multiplyByMonomial(degree, iMultiply));
            }
            GenericGFPoly genericGFPolyAddOrSubtract2 = zero3.multiply(zero).addOrSubtract(one);
            GenericGFPoly genericGFPolyAddOrSubtract3 = zero3.multiply(one2).addOrSubtract(zero2);
            GenericGFPoly genericGFPoly5 = genericGFPolyAddOrSubtract;
            genericGFPolyAddOrSubtract = genericGFPoly4;
            genericGFPoly4 = genericGFPoly5;
            GenericGFPoly genericGFPoly6 = zero;
            zero = genericGFPolyAddOrSubtract2;
            one = genericGFPoly6;
            zero2 = one2;
            one2 = genericGFPolyAddOrSubtract3;
        }
        int coefficient = one2.getCoefficient(0);
        if (coefficient == 0) {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        }
        int iInverse2 = this.field.inverse(coefficient);
        return new GenericGFPoly[]{one2.multiply(iInverse2), genericGFPoly4.multiply(iInverse2)};
    }

    public void decode(int[] iArr, int i10) throws ReedSolomonException {
        GenericGFPoly genericGFPoly = new GenericGFPoly(this.field, iArr);
        int[] iArr2 = new int[i10];
        boolean zEquals = this.field.equals(GenericGF.DATA_MATRIX_FIELD_256);
        boolean z10 = true;
        for (int i11 = 0; i11 < i10; i11++) {
            int iEvaluateAt = genericGFPoly.evaluateAt(this.field.exp(zEquals ? i11 + 1 : i11));
            iArr2[(i10 - 1) - i11] = iEvaluateAt;
            if (iEvaluateAt != 0) {
                z10 = false;
            }
        }
        if (z10) {
            return;
        }
        GenericGFPoly[] genericGFPolyArrRunEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i10, 1), new GenericGFPoly(this.field, iArr2), i10);
        GenericGFPoly genericGFPoly2 = genericGFPolyArrRunEuclideanAlgorithm[0];
        GenericGFPoly genericGFPoly3 = genericGFPolyArrRunEuclideanAlgorithm[1];
        int[] iArrFindErrorLocations = findErrorLocations(genericGFPoly2);
        int[] iArrFindErrorMagnitudes = findErrorMagnitudes(genericGFPoly3, iArrFindErrorLocations, zEquals);
        for (int i12 = 0; i12 < iArrFindErrorLocations.length; i12++) {
            int length = (iArr.length - 1) - this.field.log(iArrFindErrorLocations[i12]);
            if (length < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[length] = GenericGF.addOrSubtract(iArr[length], iArrFindErrorMagnitudes[i12]);
        }
    }
}
