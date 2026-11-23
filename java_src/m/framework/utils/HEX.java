package m.framework.utils;

/* JADX INFO: loaded from: classes.dex */
public class HEX {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static byte[] decodeHex(char[] cArr) {
        int length = cArr.length;
        if ((length & 1) != 0) {
            throw new RuntimeException("Odd number of characters.");
        }
        byte[] bArr = new byte[length >> 1];
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int digit = toDigit(cArr[i10], i10) << 4;
            int i12 = i10 + 1;
            int digit2 = digit | toDigit(cArr[i12], i12);
            i10 = i12 + 1;
            bArr[i11] = (byte) (digit2 & 255);
            i11++;
        }
        return bArr;
    }

    public static byte[] decodeHexString(String str) {
        return decodeHex(str.toCharArray());
    }

    public static char[] encodeHex(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = DIGITS;
            cArr[i10] = cArr2[(b10 & 240) >>> 4];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return cArr;
    }

    public static String encodeHexString(byte[] bArr) {
        return new String(encodeHex(bArr));
    }

    public static byte[] toByte(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 2 == 1) {
            return null;
        }
        int i10 = length / 2;
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 2;
            bArr[i11] = (byte) Integer.parseInt(str.substring(i12, i12 + 2), 16);
        }
        return bArr;
    }

    protected static int toDigit(char c10, int i10) {
        int iDigit = Character.digit(c10, 16);
        if (iDigit != -1) {
            return iDigit;
        }
        throw new RuntimeException("Illegal hexadecimal charcter " + c10 + " at index " + i10);
    }

    public static String toHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    public byte[] decode(byte[] bArr) {
        return decodeHex(new String(bArr).toCharArray());
    }

    public byte[] encode(byte[] bArr) {
        return new String(encodeHex(bArr)).getBytes();
    }

    public byte[] decode(Object obj) {
        try {
            return decodeHex(obj instanceof String ? ((String) obj).toCharArray() : (char[]) obj);
        } catch (ClassCastException e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public char[] encode(Object obj) {
        try {
            return encodeHex(obj instanceof String ? ((String) obj).getBytes() : (byte[]) obj);
        } catch (ClassCastException e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }
}
