package org.apache.http.client.utils;

import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i10, int i11, boolean z10) {
        int i12 = z10 ? i10 / 700 : i10 / 2;
        int i13 = i12 + (i12 / i11);
        int i14 = 0;
        while (i13 > 455) {
            i13 /= 35;
            i14 += 36;
        }
        return i14 + ((i13 * 36) / (i13 + 38));
    }

    private int digit(char c10) {
        if (c10 >= 'A' && c10 <= 'Z') {
            return c10 - 'A';
        }
        if (c10 >= 'a' && c10 <= 'z') {
            return c10 - 'a';
        }
        if (c10 >= '0' && c10 <= '9') {
            return (c10 - '0') + 26;
        }
        throw new IllegalArgumentException("illegal digit: " + c10);
    }

    protected String decode(String str) {
        int i10;
        StringBuilder sb2 = new StringBuilder(str.length());
        int iLastIndexOf = str.lastIndexOf(45);
        int length = 128;
        int iAdapt = 72;
        if (iLastIndexOf != -1) {
            sb2.append(str.subSequence(0, iLastIndexOf));
            str = str.substring(iLastIndexOf + 1);
        }
        int i11 = 0;
        while (str.length() > 0) {
            int i12 = 36;
            int i13 = i11;
            int i14 = 1;
            while (str.length() != 0) {
                char cCharAt = str.charAt(0);
                str = str.substring(1);
                int iDigit = digit(cCharAt);
                i13 += iDigit * i14;
                if (i12 <= iAdapt + 1) {
                    i10 = 1;
                } else {
                    i10 = i12 >= iAdapt + 26 ? 26 : i12 - iAdapt;
                }
                if (iDigit < i10) {
                    break;
                }
                i14 *= 36 - i10;
                i12 += 36;
            }
            iAdapt = adapt(i13 - i11, sb2.length() + 1, i11 == 0);
            length += i13 / (sb2.length() + 1);
            int length2 = i13 % (sb2.length() + 1);
            sb2.insert(length2, (char) length);
            i11 = length2 + 1;
        }
        return sb2.toString();
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb2 = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, o0.f49827a);
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (sb2.length() > 0) {
                sb2.append(d.f90941a);
            }
            if (strNextToken.startsWith(ACE_PREFIX)) {
                strNextToken = decode(strNextToken.substring(4));
            }
            sb2.append(strNextToken);
        }
        return sb2.toString();
    }
}
