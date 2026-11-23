package cn.fly.commons.cc;

import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f1214a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Number f1215a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Number f1216b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Number f1217c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Number f1218d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1219e;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v22, types: [java.lang.Number] */
        /* JADX WARN: Type inference failed for: r13v29 */
        /* JADX WARN: Type inference failed for: r13v30 */
        /* JADX WARN: Type inference failed for: r13v31 */
        /* JADX WARN: Type inference failed for: r13v32 */
        /* JADX WARN: Type inference failed for: r13v33 */
        /* JADX WARN: Type inference failed for: r13v34 */
        /* JADX WARN: Type inference failed for: r13v35 */
        /* JADX WARN: Type inference failed for: r13v36 */
        public a(Number number, Number number2, Number number3) {
            Number number4;
            Number[] numberArr = {number, number2, number3};
            int[] iArr = {0, 0, 0};
            for (int i10 = 0; i10 < 3; i10++) {
                Number number5 = numberArr[i10];
                if (number5 != null) {
                    if (number5 instanceof Byte) {
                        iArr[i10] = 1;
                    } else if (number5 instanceof Short) {
                        iArr[i10] = 2;
                    } else if (number5 instanceof Integer) {
                        iArr[i10] = 3;
                    } else if (number5 instanceof Long) {
                        iArr[i10] = 4;
                    } else if (number5 instanceof Float) {
                        iArr[i10] = 5;
                    } else if (number5 instanceof Double) {
                        iArr[i10] = 6;
                    }
                }
            }
            int i11 = 0;
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = iArr[i12];
                if (i11 < i13) {
                    i11 = i13;
                }
            }
            ?? ValueOf = number;
            if (number != null) {
                switch (i11) {
                    case 1:
                        ValueOf = Byte.valueOf(Double.valueOf(String.valueOf(number)).byteValue());
                        break;
                    case 2:
                        ValueOf = Short.valueOf(Double.valueOf(String.valueOf(number)).shortValue());
                        break;
                    case 3:
                        ValueOf = Integer.valueOf(Double.valueOf(String.valueOf(number)).intValue());
                        break;
                    case 4:
                        ValueOf = Long.valueOf(Double.valueOf(String.valueOf(number)).longValue());
                        break;
                    case 5:
                        ValueOf = Float.valueOf(Double.valueOf(String.valueOf(number)).floatValue());
                        break;
                    case 6:
                        ValueOf = Double.valueOf(String.valueOf(number));
                        break;
                }
            } else {
                number4 = new Number[]{Integer.MIN_VALUE, (byte) -128, Short.valueOf(ShortCompanionObject.MIN_VALUE), Integer.MIN_VALUE, Long.MIN_VALUE, Float.valueOf(Float.MIN_VALUE), Double.valueOf(Double.MIN_VALUE)}[i11];
            }
            if (number2 != null) {
                switch (i11) {
                    case 1:
                        number2 = Byte.valueOf(Double.valueOf(String.valueOf(number2)).byteValue());
                        break;
                    case 2:
                        number2 = Short.valueOf(Double.valueOf(String.valueOf(number2)).shortValue());
                        break;
                    case 3:
                        number2 = Integer.valueOf(Double.valueOf(String.valueOf(number2)).intValue());
                        break;
                    case 4:
                        number2 = Long.valueOf(Double.valueOf(String.valueOf(number2)).longValue());
                        break;
                    case 5:
                        number2 = Float.valueOf(Double.valueOf(String.valueOf(number2)).floatValue());
                        break;
                    case 6:
                        number2 = Double.valueOf(String.valueOf(number2));
                        break;
                }
            } else {
                ValueOf = number4;
                number2 = new Number[]{Integer.MAX_VALUE, Byte.valueOf(ByteCompanionObject.MAX_VALUE), Short.valueOf(ShortCompanionObject.MAX_VALUE), Integer.MAX_VALUE, Long.MAX_VALUE, Float.valueOf(Float.MAX_VALUE), Double.valueOf(Double.MAX_VALUE)}[i11];
            }
            this.f1215a = ValueOf;
            this.f1216b = number2;
            this.f1217c = number3;
            boolean z10 = ((Comparable) ValueOf).compareTo(number2) > 0;
            this.f1219e = z10;
            if (this.f1217c == null) {
                this.f1217c = Integer.valueOf(z10 ? -1 : 1);
            }
        }

        public boolean a() {
            Object obj = this.f1218d;
            if (obj == null) {
                obj = this.f1215a;
            }
            if (this.f1219e) {
                return ((Comparable) obj).compareTo(this.f1216b) >= 0;
            }
            return ((Comparable) obj).compareTo(this.f1216b) <= 0;
        }

        public Number b() {
            if (this.f1218d == null) {
                this.f1218d = this.f1215a;
            }
            Number number = this.f1218d;
            Number number2 = this.f1217c;
            if (number2 instanceof Double) {
                this.f1218d = Double.valueOf(number.doubleValue() + this.f1217c.doubleValue());
            } else if (number2 instanceof Float) {
                this.f1218d = Float.valueOf(number.floatValue() + this.f1217c.floatValue());
            } else if (number2 instanceof Long) {
                this.f1218d = Long.valueOf(number.longValue() + this.f1217c.longValue());
            } else if (number2 instanceof Integer) {
                this.f1218d = Integer.valueOf(number.intValue() + this.f1217c.intValue());
            } else if (number2 instanceof Short) {
                this.f1218d = Integer.valueOf(number.shortValue() + this.f1217c.shortValue());
            } else {
                this.f1218d = Integer.valueOf(number.byteValue() + this.f1217c.byteValue());
            }
            return number;
        }
    }

    public c(Number number, Number number2, Number number3) {
        this.f1214a = new a(number, number2, number3);
    }

    public a a() {
        return this.f1214a;
    }

    public boolean b(Number number) {
        return a(number);
    }

    public boolean a(Number number) {
        return ((Comparable) this.f1214a.f1215a).compareTo(number) <= 0 && ((Comparable) this.f1214a.f1216b).compareTo(number) >= 0;
    }

    public Number[] b() {
        return new Number[]{this.f1214a.f1215a, this.f1214a.f1216b};
    }
}
