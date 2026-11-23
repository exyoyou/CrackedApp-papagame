package com.android.dx.util;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes7.dex */
public class BitIntSet implements IntSet {
    int[] bits;

    public BitIntSet(int i10) {
        this.bits = Bits.makeBitSet(i10);
    }

    private void ensureCapacity(int i10) {
        if (i10 >= Bits.getMax(this.bits)) {
            int[] iArrMakeBitSet = Bits.makeBitSet(Math.max(i10 + 1, Bits.getMax(this.bits) * 2));
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, iArrMakeBitSet, 0, iArr.length);
            this.bits = iArrMakeBitSet;
        }
    }

    @Override // com.android.dx.util.IntSet
    public void add(int i10) {
        ensureCapacity(i10);
        Bits.set(this.bits, i10, true);
    }

    @Override // com.android.dx.util.IntSet
    public int elements() {
        return Bits.bitCount(this.bits);
    }

    @Override // com.android.dx.util.IntSet
    public boolean has(int i10) {
        return i10 < Bits.getMax(this.bits) && Bits.get(this.bits, i10);
    }

    @Override // com.android.dx.util.IntSet
    public IntIterator iterator() {
        return new IntIterator() { // from class: com.android.dx.util.BitIntSet.1
            private int idx;

            {
                this.idx = Bits.findFirst(BitIntSet.this.bits, 0);
            }

            @Override // com.android.dx.util.IntIterator
            public boolean hasNext() {
                return this.idx >= 0;
            }

            @Override // com.android.dx.util.IntIterator
            public int next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.idx;
                this.idx = Bits.findFirst(BitIntSet.this.bits, i10 + 1);
                return i10;
            }
        };
    }

    @Override // com.android.dx.util.IntSet
    public void merge(IntSet intSet) {
        if (intSet instanceof BitIntSet) {
            BitIntSet bitIntSet = (BitIntSet) intSet;
            ensureCapacity(Bits.getMax(bitIntSet.bits) + 1);
            Bits.or(this.bits, bitIntSet.bits);
        } else {
            if (!(intSet instanceof ListIntSet)) {
                IntIterator it2 = intSet.iterator();
                while (it2.hasNext()) {
                    add(it2.next());
                }
                return;
            }
            ListIntSet listIntSet = (ListIntSet) intSet;
            int size = listIntSet.ints.size();
            if (size > 0) {
                ensureCapacity(listIntSet.ints.get(size - 1));
            }
            for (int i10 = 0; i10 < listIntSet.ints.size(); i10++) {
                Bits.set(this.bits, listIntSet.ints.get(i10), true);
            }
        }
    }

    @Override // com.android.dx.util.IntSet
    public void remove(int i10) {
        if (i10 < Bits.getMax(this.bits)) {
            Bits.set(this.bits, i10, false);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        int iFindFirst = Bits.findFirst(this.bits, 0);
        boolean z10 = true;
        while (iFindFirst >= 0) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(iFindFirst);
            iFindFirst = Bits.findFirst(this.bits, iFindFirst + 1);
            z10 = false;
        }
        sb2.append('}');
        return sb2.toString();
    }
}
