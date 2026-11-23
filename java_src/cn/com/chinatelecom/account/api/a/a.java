package cn.com.chinatelecom.account.api.a;

import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.UnsupportedEncodingException;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static char[] f732a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static byte[] f733b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, e.L, e.M, e.N, e.O, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, 26, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, e.H, e.I, e.J, e.K, -1, -1, -1, -1, -1};

    public static byte[] a(String str) {
        try {
            return b(str);
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return new byte[0];
        }
    }

    private static byte[] b(String str) throws UnsupportedEncodingException {
        int i10;
        byte b10;
        int i11;
        byte b11;
        int i12;
        byte b12;
        int i13;
        byte b13;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bytes = str.getBytes(com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);
        int length = bytes.length;
        int i14 = 0;
        loop0: while (i14 < length) {
            while (true) {
                i10 = i14 + 1;
                b10 = f733b[bytes[i14]];
                if (i10 >= length || b10 != -1) {
                    break;
                }
                i14 = i10;
            }
            if (b10 == -1) {
                break;
            }
            while (true) {
                i11 = i10 + 1;
                b11 = f733b[bytes[i10]];
                if (i11 >= length || b11 != -1) {
                    break;
                }
                i10 = i11;
            }
            if (b11 == -1) {
                break;
            }
            stringBuffer.append((char) ((b10 << 2) | ((b11 & e.H) >>> 4)));
            while (true) {
                i12 = i11 + 1;
                byte b14 = bytes[i11];
                if (b14 == 61) {
                    break loop0;
                }
                b12 = f733b[b14];
                if (i12 >= length || b12 != -1) {
                    break;
                }
                i11 = i12;
            }
            if (b12 == -1) {
                break;
            }
            stringBuffer.append((char) (((b11 & 15) << 4) | ((b12 & 60) >>> 2)));
            while (true) {
                i13 = i12 + 1;
                byte b15 = bytes[i12];
                if (b15 == 61) {
                    break loop0;
                }
                b13 = f733b[b15];
                if (i13 >= length || b13 != -1) {
                    break;
                }
                i12 = i13;
            }
            if (b13 == -1) {
                break;
            }
            stringBuffer.append((char) (b13 | ((b12 & 3) << 6)));
            i14 = i13;
        }
        return stringBuffer.toString().getBytes(com.alipay.security.mobile.module.commonutils.crypto.a.f7271a);
    }
}
