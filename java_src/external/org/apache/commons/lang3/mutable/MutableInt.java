package external.org.apache.commons.lang3.mutable;

import ob.a;

/* JADX INFO: loaded from: classes8.dex */
public class MutableInt extends Number implements Comparable<MutableInt>, a<Number> {
    private static final long serialVersionUID = 512176391864L;
    private int value;

    public MutableInt() {
    }

    public void add(int i10) {
        this.value += i10;
    }

    public void decrement() {
        this.value--;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableInt) && this.value == ((MutableInt) obj).intValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value++;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public void subtract(int i10) {
        this.value -= i10;
    }

    public Integer toInteger() {
        return Integer.valueOf(intValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableInt(int i10) {
        this.value = i10;
    }

    public void add(Number number) {
        this.value += number.intValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableInt mutableInt) {
        int i10 = mutableInt.value;
        int i11 = this.value;
        if (i11 < i10) {
            return -1;
        }
        return i11 == i10 ? 0 : 1;
    }

    @Override // ob.a
    /* JADX INFO: renamed from: getValue, reason: merged with bridge method [inline-methods] */
    public Number getValue2() {
        return Integer.valueOf(this.value);
    }

    public void setValue(int i10) {
        this.value = i10;
    }

    public void subtract(Number number) {
        this.value -= number.intValue();
    }

    @Override // ob.a
    public void setValue(Number number) {
        this.value = number.intValue();
    }

    public MutableInt(Number number) {
        this.value = number.intValue();
    }

    public MutableInt(String str) throws NumberFormatException {
        this.value = Integer.parseInt(str);
    }
}
