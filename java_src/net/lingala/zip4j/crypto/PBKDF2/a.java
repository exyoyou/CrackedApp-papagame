package net.lingala.zip4j.crypto.PBKDF2;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f94571a = "0123456789ABCDEF";

    a() {
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            int i10 = (b10 + 256) % 256;
            stringBuffer.append(f94571a.charAt((i10 / 16) & 15));
            stringBuffer.append(f94571a.charAt((i10 % 16) & 15));
        }
        return stringBuffer.toString();
    }

    public static int b(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'A';
        if (c10 < 'A' || c10 > 'F') {
            c11 = 'a';
            if (c10 < 'a' || c10 > 'f') {
                StringBuffer stringBuffer = new StringBuffer("Input string may only contain hex digits, but found '");
                stringBuffer.append(c10);
                stringBuffer.append("'");
                throw new IllegalArgumentException(stringBuffer.toString());
            }
        }
        return (c10 - c11) + 10;
    }

    public static byte[] c(String str) {
        if (str == null) {
            str = "";
        } else if (str.length() % 2 != 0) {
            StringBuffer stringBuffer = new StringBuffer("0");
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        byte[] bArr = new byte[str.length() / 2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < str.length()) {
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            bArr[i11] = (byte) ((b(str.charAt(i10)) * 16) + b(str.charAt(i12)));
            i11++;
            i10 = i13;
        }
        return bArr;
    }
}
