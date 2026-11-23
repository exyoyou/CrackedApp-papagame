package com.alipay.security.mobile.module.commonutils.crypto;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.UnsupportedEncodingException;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7271a = "iso8859-1";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7272b = "US-ASCII";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static char[] f7273c = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f7274d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, 26, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, -1, -1, -1, -1, -1};

    private a() {
    }

    public static String a(byte[] bArr) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = bArr[i10] & 255;
            if (i11 == length) {
                stringBuffer.append(f7273c[i12 >>> 2]);
                stringBuffer.append(f7273c[(i12 & 3) << 4]);
                str = "==";
            } else {
                int i13 = i11 + 1;
                int i14 = bArr[i11] & 255;
                if (i13 == length) {
                    stringBuffer.append(f7273c[i12 >>> 2]);
                    stringBuffer.append(f7273c[((i12 & 3) << 4) | ((i14 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >>> 4)]);
                    stringBuffer.append(f7273c[(i14 & 15) << 2]);
                    str = SimpleComparison.EQUAL_TO_OPERATION;
                } else {
                    int i15 = i13 + 1;
                    int i16 = bArr[i13] & 255;
                    stringBuffer.append(f7273c[i12 >>> 2]);
                    stringBuffer.append(f7273c[((i12 & 3) << 4) | ((i14 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >>> 4)]);
                    stringBuffer.append(f7273c[((i14 & 15) << 2) | ((i16 & 192) >>> 6)]);
                    stringBuffer.append(f7273c[i16 & 63]);
                    i10 = i15;
                }
            }
            stringBuffer.append(str);
            break;
        }
        return stringBuffer.toString();
    }

    public static byte[] b(String str) throws UnsupportedEncodingException {
        int i10;
        byte b10;
        int i11;
        byte b11;
        int i12;
        byte b12;
        int i13;
        byte b13;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bytes = str.getBytes(f7272b);
        int length = bytes.length;
        int i14 = 0;
        loop0: while (i14 < length) {
            while (true) {
                i10 = i14 + 1;
                b10 = f7274d[bytes[i14]];
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
                b11 = f7274d[bytes[i10]];
                if (i11 >= length || b11 != -1) {
                    break;
                }
                i10 = i11;
            }
            if (b11 == -1) {
                break;
            }
            stringBuffer.append((char) ((b10 << 2) | ((b11 & com.sigmob.sdk.archives.tar.e.H) >>> 4)));
            while (true) {
                i12 = i11 + 1;
                byte b14 = bytes[i11];
                if (b14 == 61) {
                    break loop0;
                }
                b12 = f7274d[b14];
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
                b13 = f7274d[b15];
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
        return stringBuffer.toString().getBytes(f7271a);
    }
}
