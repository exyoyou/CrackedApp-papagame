package io.socket.yeast;

import com.join.mgps.Util.o0;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Yeast {
    private static char[] alphabet;
    private static int length;
    private static Map<Character, Integer> map;
    private static String prev;
    private static int seed;

    static {
        char[] charArray = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_".toCharArray();
        alphabet = charArray;
        length = charArray.length;
        seed = 0;
        map = new HashMap(length);
        for (int i10 = 0; i10 < length; i10++) {
            map.put(Character.valueOf(alphabet[i10]), Integer.valueOf(i10));
        }
    }

    private Yeast() {
    }

    public static long decode(String str) {
        long jIntValue = 0;
        for (char c10 : str.toCharArray()) {
            jIntValue = (jIntValue * ((long) length)) + ((long) map.get(Character.valueOf(c10)).intValue());
        }
        return jIntValue;
    }

    public static String encode(long j10) {
        StringBuilder sb2 = new StringBuilder();
        do {
            sb2.insert(0, alphabet[(int) (j10 % ((long) length))]);
            j10 /= (long) length;
        } while (j10 > 0);
        return sb2.toString();
    }

    public static String yeast() {
        String strEncode = encode(new Date().getTime());
        if (!strEncode.equals(prev)) {
            seed = 0;
            prev = strEncode;
            return strEncode;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strEncode);
        sb2.append(o0.f49827a);
        int i10 = seed;
        seed = i10 + 1;
        sb2.append(encode(i10));
        return sb2.toString();
    }
}
