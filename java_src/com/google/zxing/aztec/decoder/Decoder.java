package com.google.zxing.aztec.decoder;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.haima.hmcp.widgets.JoyStickMappingManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sdk.base.module.manager.SDKManager;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.pro.bm;
import com.xinzhu.overmind.server.os.f;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import net.lingala.zip4j.util.e;
import x.a;

/* JADX INFO: loaded from: classes5.dex */
public final class Decoder {
    private int codewordSize;
    private AztecDetectorResult ddata;
    private int invertedBitCount;
    private int numCodewords;
    private static final int[] NB_BITS_COMPACT = {0, 104, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, TTAdConstant.INTERACTION_TYPE_CODE, 608};
    private static final int[] NB_BITS = {0, 128, MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, 480, 704, 960, 1248, 1568, 1920, LogType.UNEXP_LOW_MEMORY, 2720, 3168, 3648, 4160, 4704, 5280, 5888, 6528, 7200, 7904, 8640, 9408, 10208, 11040, 11904, 12800, 13728, 14688, 15680, 16704, 17760, 18848, 19968};
    private static final int[] NB_DATABLOCK_COMPACT = {0, 17, 40, 51, 76};
    private static final int[] NB_DATABLOCK = {0, 21, 48, 60, 88, 120, 156, 196, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 316, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME, 416, 470, 528, 588, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 720, 790, 864, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS, 1020, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_WILLING_AND_ABLE_TO_WRITE, JoyStickMappingManager.KEY_CODE_RIGHT_STICK_DOWN, 1066, 1144, 1224, 1306, 1392, 1480, 1570, 1664};
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", "A", SDKManager.ALGO_B_AES_SHA256_RSA, SDKManager.ALGO_C_RFU, SDKManager.ALGO_D_RFU, SDKManager.ALGO_E_SM4_SM3_SM2, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", t.f74887l, "c", t.f74895t, "e", f.TAG, "g", "h", "i", "j", t.f74876a, t.f74879d, t.f74888m, "n", "o", "p", "q", "r", "s", bm.aM, "u", "v", IAdInterListener.AdReqParam.WIDTH, "x", "y", bm.aH, "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", a.f97579g, "#", "$", "%", a.f97576d, "'", "(", ")", WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD, "+", ",", "-", o0.f49827a, e.F0, ":", ";", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.EQUAL_TO_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", ",", o0.f49827a, "CTRL_UL", "CTRL_US"};

    /* JADX INFO: renamed from: com.google.zxing.aztec.decoder.Decoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                iArr[Table.BINARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.UPPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    private boolean[] correctBits(boolean[] zArr) throws FormatException {
        GenericGF genericGF;
        int i10;
        int i11;
        if (this.ddata.getNbLayers() <= 2) {
            this.codewordSize = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            this.codewordSize = 8;
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            this.codewordSize = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            this.codewordSize = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        if (this.ddata.isCompact()) {
            i10 = NB_BITS_COMPACT[this.ddata.getNbLayers()] - (this.numCodewords * this.codewordSize);
            i11 = NB_DATABLOCK_COMPACT[this.ddata.getNbLayers()];
        } else {
            i10 = NB_BITS[this.ddata.getNbLayers()] - (this.numCodewords * this.codewordSize);
            i11 = NB_DATABLOCK[this.ddata.getNbLayers()];
        }
        int i12 = i11 - nbDatablocks;
        int[] iArr = new int[this.numCodewords];
        int i13 = 0;
        while (true) {
            int i14 = 1;
            if (i13 >= this.numCodewords) {
                try {
                    break;
                } catch (ReedSolomonException unused) {
                    throw FormatException.getFormatInstance();
                }
            }
            int i15 = 1;
            while (true) {
                int i16 = this.codewordSize;
                if (i14 <= i16) {
                    if (zArr[(((i16 * i13) + i16) - i14) + i10]) {
                        iArr[i13] = iArr[i13] + i15;
                    }
                    i15 <<= 1;
                    i14++;
                }
            }
            i13++;
        }
        new ReedSolomonDecoder(genericGF).decode(iArr, i12);
        this.invertedBitCount = 0;
        boolean[] zArr2 = new boolean[this.codewordSize * nbDatablocks];
        int i17 = 0;
        for (int i18 = 0; i18 < nbDatablocks; i18++) {
            int i19 = 1 << (this.codewordSize - 1);
            int i20 = 0;
            int i21 = 0;
            boolean z10 = false;
            while (true) {
                int i22 = this.codewordSize;
                if (i20 < i22) {
                    boolean z11 = (iArr[i18] & i19) == i19;
                    if (i21 != i22 - 1) {
                        if (z10 == z11) {
                            i21++;
                        } else {
                            z10 = z11;
                            i21 = 1;
                        }
                        zArr2[((i22 * i18) + i20) - i17] = z11;
                    } else {
                        if (z11 == z10) {
                            throw FormatException.getFormatInstance();
                        }
                        i17++;
                        this.invertedBitCount++;
                        i21 = 0;
                        z10 = false;
                    }
                    i19 >>>= 1;
                    i20++;
                }
            }
        }
        return zArr2;
    }

    private boolean[] extractBits(BitMatrix bitMatrix) throws FormatException {
        boolean[] zArr;
        int i10;
        if (this.ddata.isCompact()) {
            int nbLayers = this.ddata.getNbLayers();
            int[] iArr = NB_BITS_COMPACT;
            if (nbLayers > iArr.length) {
                throw FormatException.getFormatInstance();
            }
            zArr = new boolean[iArr[this.ddata.getNbLayers()]];
            this.numCodewords = NB_DATABLOCK_COMPACT[this.ddata.getNbLayers()];
        } else {
            int nbLayers2 = this.ddata.getNbLayers();
            int[] iArr2 = NB_BITS;
            if (nbLayers2 > iArr2.length) {
                throw FormatException.getFormatInstance();
            }
            zArr = new boolean[iArr2[this.ddata.getNbLayers()]];
            this.numCodewords = NB_DATABLOCK[this.ddata.getNbLayers()];
        }
        int nbLayers3 = this.ddata.getNbLayers();
        int height = bitMatrix.getHeight();
        int i11 = 0;
        int i12 = 0;
        while (nbLayers3 != 0) {
            int i13 = 0;
            int i14 = 0;
            while (true) {
                i10 = height * 2;
                if (i13 >= i10 - 4) {
                    break;
                }
                int i15 = (i13 / 2) + i12;
                zArr[i11 + i13] = bitMatrix.get(i12 + i14, i15);
                zArr[((i10 + i11) - 4) + i13] = bitMatrix.get(i15, ((i12 + height) - 1) - i14);
                i14 = (i14 + 1) % 2;
                i13++;
            }
            int i16 = 0;
            for (int i17 = i10 + 1; i17 > 5; i17--) {
                int i18 = i10 - i17;
                int i19 = ((i17 / 2) + i12) - 1;
                zArr[(((height * 4) + i11) - 8) + i18 + 1] = bitMatrix.get(((i12 + height) - 1) - i16, i19);
                zArr[(((height * 6) + i11) - 12) + i18 + 1] = bitMatrix.get(i19, i12 + i16);
                i16 = (i16 + 1) % 2;
            }
            i12 += 2;
            i11 += (height * 8) - 16;
            nbLayers3--;
            height -= 4;
        }
        return zArr;
    }

    private static String getCharacter(Table table, int i10) {
        int i11 = AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
        if (i11 == 2) {
            return UPPER_TABLE[i10];
        }
        if (i11 == 3) {
            return LOWER_TABLE[i10];
        }
        if (i11 == 4) {
            return MIXED_TABLE[i10];
        }
        if (i11 != 5) {
            return i11 != 6 ? "" : DIGIT_TABLE[i10];
        }
        return PUNCT_TABLE[i10];
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006c  */
    private String getEncodedData(boolean[] zArr) throws FormatException {
        int nbDatablocks = (this.codewordSize * this.ddata.getNbDatablocks()) - this.invertedBitCount;
        if (nbDatablocks > zArr.length) {
            throw FormatException.getFormatInstance();
        }
        Table table = Table.UPPER;
        StringBuilder sb2 = new StringBuilder(20);
        Table table2 = table;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 0;
        while (true) {
            boolean z12 = false;
            while (!z10) {
                if (z11) {
                    z12 = true;
                } else {
                    table2 = table;
                }
                if (AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()] != 1) {
                    int i11 = table == Table.DIGIT ? 4 : 5;
                    if (nbDatablocks - i10 < i11) {
                        z10 = true;
                    } else {
                        int code = readCode(zArr, i10, i11);
                        i10 += i11;
                        String character = getCharacter(table, code);
                        if (character.startsWith("CTRL_")) {
                            table = getTable(character.charAt(5));
                            if (character.charAt(6) == 'S') {
                                z11 = true;
                            }
                        } else {
                            sb2.append(character);
                        }
                    }
                } else if (nbDatablocks - i10 < 8) {
                    z10 = true;
                } else {
                    int code2 = readCode(zArr, i10, 8);
                    i10 += 8;
                    sb2.append((char) code2);
                }
                if (z12) {
                    table = table2;
                    z11 = false;
                }
            }
            return sb2.toString();
        }
    }

    private static Table getTable(char c10) {
        if (c10 == 'B') {
            return Table.BINARY;
        }
        if (c10 == 'D') {
            return Table.DIGIT;
        }
        if (c10 == 'P') {
            return Table.PUNCT;
        }
        if (c10 != 'L') {
            return c10 != 'M' ? Table.UPPER : Table.MIXED;
        }
        return Table.LOWER;
    }

    private static int readCode(boolean[] zArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            i12 <<= 1;
            if (zArr[i13]) {
                i12++;
            }
        }
        return i12;
    }

    private static BitMatrix removeDashedLines(BitMatrix bitMatrix) {
        int width = ((((bitMatrix.getWidth() - 1) / 2) / 16) * 2) + 1;
        BitMatrix bitMatrix2 = new BitMatrix(bitMatrix.getWidth() - width, bitMatrix.getHeight() - width);
        int i10 = 0;
        for (int i11 = 0; i11 < bitMatrix.getWidth(); i11++) {
            if (((bitMatrix.getWidth() / 2) - i11) % 16 != 0) {
                int i12 = 0;
                for (int i13 = 0; i13 < bitMatrix.getHeight(); i13++) {
                    if (((bitMatrix.getWidth() / 2) - i13) % 16 != 0) {
                        if (bitMatrix.get(i11, i13)) {
                            bitMatrix2.set(i10, i12);
                        }
                        i12++;
                    }
                }
                i10++;
            }
        }
        return bitMatrix2;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        BitMatrix bits = aztecDetectorResult.getBits();
        if (!this.ddata.isCompact()) {
            bits = removeDashedLines(this.ddata.getBits());
        }
        return new DecoderResult(null, getEncodedData(correctBits(extractBits(bits))), null, null);
    }
}
