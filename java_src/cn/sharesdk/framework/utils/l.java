package cn.sharesdk.framework.utils;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l implements Escaper {

    private static final class a extends ThreadLocal<char[]> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    protected static final int b(CharSequence charSequence, int i10, int i11) {
        if (i10 >= i11) {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
        char cCharAt = charSequence.charAt(i10);
        int i12 = i10 + 1;
        if (cCharAt < 55296 || cCharAt > 57343) {
            return cCharAt;
        }
        if (cCharAt > 56319) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected low surrogate character '");
            sb2.append(cCharAt);
            sb2.append("' with value ");
            sb2.append((int) cCharAt);
            sb2.append(" at index ");
            sb2.append(i12 - 1);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (i12 == i11) {
            return -cCharAt;
        }
        char cCharAt2 = charSequence.charAt(i12);
        if (Character.isLowSurrogate(cCharAt2)) {
            return Character.toCodePoint(cCharAt, cCharAt2);
        }
        throw new IllegalArgumentException("Expected low surrogate but got char '" + cCharAt2 + "' with value " + ((int) cCharAt2) + " at index " + i12);
    }

    protected int a(CharSequence charSequence, int i10, int i11) {
        while (i10 < i11) {
            int iB = b(charSequence, i10, i11);
            if (iB < 0 || a(iB) != null) {
                break;
            }
            i10 += Character.isSupplementaryCodePoint(iB) ? 2 : 1;
        }
        return i10;
    }

    protected abstract char[] a(int i10);

    @Override // cn.sharesdk.framework.utils.Escaper
    public String escape(String str) {
        int length = str.length();
        int iA = a(str, 0, length);
        return iA == length ? str : a(str, iA);
    }

    protected final String a(String str, int i10) {
        int length = str.length();
        char[] cArrA = new a().get();
        int i11 = 0;
        int length2 = 0;
        while (i10 < length) {
            int iB = b(str, i10, length);
            if (iB >= 0) {
                char[] cArrA2 = a(iB);
                if (cArrA2 != null) {
                    int i12 = i10 - i11;
                    int i13 = length2 + i12;
                    int length3 = cArrA2.length + i13;
                    if (cArrA.length < length3) {
                        cArrA = a(cArrA, length2, length3 + (length - i10) + 32);
                    }
                    if (i12 > 0) {
                        str.getChars(i11, i10, cArrA, length2);
                        length2 = i13;
                    }
                    if (cArrA2.length > 0) {
                        System.arraycopy(cArrA2, 0, cArrA, length2, cArrA2.length);
                        length2 += cArrA2.length;
                    }
                }
                i11 = (Character.isSupplementaryCodePoint(iB) ? 2 : 1) + i10;
                i10 = a(str, i11, length);
            } else {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
        }
        int i14 = length - i11;
        if (i14 > 0) {
            int i15 = i14 + length2;
            if (cArrA.length < i15) {
                cArrA = a(cArrA, length2, i15);
            }
            str.getChars(i11, length, cArrA, length2);
            length2 = i15;
        }
        return new String(cArrA, 0, length2);
    }

    @Override // cn.sharesdk.framework.utils.Escaper
    public Appendable escape(final Appendable appendable) {
        e.a(appendable);
        return new Appendable() { // from class: cn.sharesdk.framework.utils.l.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f2735a = -1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            char[] f2736b = new char[2];

            private void a(char[] cArr, int i10) throws IOException {
                for (int i11 = 0; i11 < i10; i11++) {
                    appendable.append(cArr[i11]);
                }
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) throws IOException {
                return append(charSequence, 0, charSequence.length());
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i10, int i11) throws IOException {
                int i12;
                if (i10 < i11) {
                    if (this.f2735a != -1) {
                        char cCharAt = charSequence.charAt(i10);
                        int i13 = i10 + 1;
                        if (!Character.isLowSurrogate(cCharAt)) {
                            throw new IllegalArgumentException("Expected low surrogate character but got " + cCharAt);
                        }
                        char[] cArrA = l.this.a(Character.toCodePoint((char) this.f2735a, cCharAt));
                        if (cArrA != null) {
                            a(cArrA, cArrA.length);
                            i10 = i13;
                        } else {
                            appendable.append((char) this.f2735a);
                        }
                        this.f2735a = -1;
                        i12 = i10;
                        i10 = i13;
                    } else {
                        i12 = i10;
                    }
                    while (true) {
                        int iA = l.this.a(charSequence, i10, i11);
                        if (iA > i12) {
                            appendable.append(charSequence, i12, iA);
                        }
                        if (iA == i11) {
                            break;
                        }
                        int iB = l.b(charSequence, iA, i11);
                        if (iB < 0) {
                            this.f2735a = -iB;
                            break;
                        }
                        char[] cArrA2 = l.this.a(iB);
                        if (cArrA2 != null) {
                            a(cArrA2, cArrA2.length);
                        } else {
                            a(this.f2736b, Character.toChars(iB, this.f2736b, 0));
                        }
                        i12 = (Character.isSupplementaryCodePoint(iB) ? 2 : 1) + iA;
                        i10 = i12;
                    }
                }
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c10) throws IOException {
                if (this.f2735a != -1) {
                    if (Character.isLowSurrogate(c10)) {
                        char[] cArrA = l.this.a(Character.toCodePoint((char) this.f2735a, c10));
                        if (cArrA != null) {
                            a(cArrA, cArrA.length);
                        } else {
                            appendable.append((char) this.f2735a);
                            appendable.append(c10);
                        }
                        this.f2735a = -1;
                    } else {
                        throw new IllegalArgumentException("Expected low surrogate character but got '" + c10 + "' with value " + ((int) c10));
                    }
                } else if (Character.isHighSurrogate(c10)) {
                    this.f2735a = c10;
                } else if (!Character.isLowSurrogate(c10)) {
                    char[] cArrA2 = l.this.a(c10);
                    if (cArrA2 != null) {
                        a(cArrA2, cArrA2.length);
                    } else {
                        appendable.append(c10);
                    }
                } else {
                    throw new IllegalArgumentException("Unexpected low surrogate character '" + c10 + "' with value " + ((int) c10));
                }
                return this;
            }
        };
    }

    private static final char[] a(char[] cArr, int i10, int i11) {
        char[] cArr2 = new char[i11];
        if (i10 > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i10);
        }
        return cArr2;
    }
}
