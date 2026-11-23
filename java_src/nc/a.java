package nc;

import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse;
import java.lang.reflect.Array;
import kotlin.jvm.internal.ByteCompanionObject;
import net.lingala.zip4j.exception.ZipException;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f94519g = {99, 124, 119, 123, -14, 107, 111, -59, e.H, 1, e.T, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, e.N, Utf8.REPLACEMENT_BYTE, -9, -52, e.L, -91, -27, -15, 113, -40, e.I, BinaryMemcacheOpcodes.INCREMENTQ, 4, -57, BinaryMemcacheOpcodes.GATK, -61, BinaryMemcacheOpcodes.FLUSHQ, -106, 5, -102, 7, BinaryMemcacheOpcodes.ADDQ, -128, -30, -21, 39, -78, 117, 9, -125, HttpConstants.COMMA, 26, 27, 110, 90, -96, 82, HttpConstants.SEMICOLON, -42, -77, 41, -29, 47, -124, e.Q, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, e.P, e.S, -49, -48, ByteSourceJsonBootstrapper.UTF8_BOM_1, -86, -5, 67, 77, e.K, -123, 69, -7, 2, ByteCompanionObject.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, BinaryMemcacheOpcodes.SASL_AUTH, 16, -1, -13, -46, -51, 12, BinaryMemcacheOpcodes.REPLACEQ, -20, 95, -105, 68, BinaryMemcacheOpcodes.QUITQ, -60, -89, 126, 61, 100, 93, BinaryMemcacheOpcodes.APPENDQ, 115, 96, DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE, 79, -36, 34, 42, -112, -120, 70, -18, -72, BinaryMemcacheOpcodes.DELETEQ, -34, 94, 11, -37, -32, e.J, HttpConstants.COLON, 10, 73, 6, BinaryMemcacheOpcodes.GATKQ, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, e.O, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, e.R, 37, 46, BinaryMemcacheOpcodes.TOUCH, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, e.M, 87, -71, -122, -63, BinaryMemcacheOpcodes.GAT, -98, -31, -8, -104, BinaryMemcacheOpcodes.SETQ, 105, -39, -114, -108, -101, BinaryMemcacheOpcodes.GATQ, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, ByteSourceJsonBootstrapper.UTF8_BOM_3, -26, 66, 104, 65, -103, 45, 15, -80, 84, ByteSourceJsonBootstrapper.UTF8_BOM_2, BinaryMemcacheOpcodes.DECREMENTQ};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f94520h = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f94521i = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f94522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[][] f94523b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94527f;

    public a(byte[] bArr) throws ZipException {
        c(bArr);
    }

    private final void a(int[][] iArr) {
        int i10 = this.f94524c;
        int[] iArr2 = iArr[0];
        this.f94524c = i10 ^ iArr2[0];
        this.f94525d ^= iArr2[1];
        this.f94526e ^= iArr2[2];
        this.f94527f ^= iArr2[3];
        int i11 = 1;
        while (i11 < this.f94522a - 1) {
            int[] iArr3 = f94521i;
            int iF = (((iArr3[this.f94524c & 255] ^ f(iArr3[(this.f94525d >> 8) & 255], 24)) ^ f(iArr3[(this.f94526e >> 16) & 255], 16)) ^ f(iArr3[(this.f94527f >> 24) & 255], 8)) ^ iArr[i11][0];
            int iF2 = (((iArr3[this.f94525d & 255] ^ f(iArr3[(this.f94526e >> 8) & 255], 24)) ^ f(iArr3[(this.f94527f >> 16) & 255], 16)) ^ f(iArr3[(this.f94524c >> 24) & 255], 8)) ^ iArr[i11][1];
            int iF3 = (((iArr3[this.f94526e & 255] ^ f(iArr3[(this.f94527f >> 8) & 255], 24)) ^ f(iArr3[(this.f94524c >> 16) & 255], 16)) ^ f(iArr3[(this.f94525d >> 24) & 255], 8)) ^ iArr[i11][2];
            int i12 = i11 + 1;
            int iF4 = iArr[i11][3] ^ (((iArr3[this.f94527f & 255] ^ f(iArr3[(this.f94524c >> 8) & 255], 24)) ^ f(iArr3[(this.f94525d >> 16) & 255], 16)) ^ f(iArr3[(this.f94526e >> 24) & 255], 8));
            this.f94524c = (((iArr3[iF & 255] ^ f(iArr3[(iF2 >> 8) & 255], 24)) ^ f(iArr3[(iF3 >> 16) & 255], 16)) ^ f(iArr3[(iF4 >> 24) & 255], 8)) ^ iArr[i12][0];
            this.f94525d = (((iArr3[iF2 & 255] ^ f(iArr3[(iF3 >> 8) & 255], 24)) ^ f(iArr3[(iF4 >> 16) & 255], 16)) ^ f(iArr3[(iF >> 24) & 255], 8)) ^ iArr[i12][1];
            this.f94526e = (((iArr3[iF3 & 255] ^ f(iArr3[(iF4 >> 8) & 255], 24)) ^ f(iArr3[(iF >> 16) & 255], 16)) ^ f(iArr3[(iF2 >> 24) & 255], 8)) ^ iArr[i12][2];
            this.f94527f = (((iArr3[iF4 & 255] ^ f(iArr3[(iF >> 8) & 255], 24)) ^ f(iArr3[(iF2 >> 16) & 255], 16)) ^ f(iArr3[(iF3 >> 24) & 255], 8)) ^ iArr[i12][3];
            i11 = i12 + 1;
        }
        int[] iArr4 = f94521i;
        int iF5 = (((iArr4[this.f94524c & 255] ^ f(iArr4[(this.f94525d >> 8) & 255], 24)) ^ f(iArr4[(this.f94526e >> 16) & 255], 16)) ^ f(iArr4[(this.f94527f >> 24) & 255], 8)) ^ iArr[i11][0];
        int iF6 = (((iArr4[this.f94525d & 255] ^ f(iArr4[(this.f94526e >> 8) & 255], 24)) ^ f(iArr4[(this.f94527f >> 16) & 255], 16)) ^ f(iArr4[(this.f94524c >> 24) & 255], 8)) ^ iArr[i11][1];
        int iF7 = (((iArr4[this.f94526e & 255] ^ f(iArr4[(this.f94527f >> 8) & 255], 24)) ^ f(iArr4[(this.f94524c >> 16) & 255], 16)) ^ f(iArr4[(this.f94525d >> 24) & 255], 8)) ^ iArr[i11][2];
        int i13 = i11 + 1;
        int iF8 = iArr[i11][3] ^ (f(iArr4[(this.f94526e >> 24) & 255], 8) ^ ((iArr4[this.f94527f & 255] ^ f(iArr4[(this.f94524c >> 8) & 255], 24)) ^ f(iArr4[(this.f94525d >> 16) & 255], 16)));
        byte[] bArr = f94519g;
        int i14 = (((bArr[iF5 & 255] & 255) ^ ((bArr[(iF6 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iF7 >> 16) & 255] & 255) << 16)) ^ (bArr[(iF8 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ);
        int[] iArr5 = iArr[i13];
        this.f94524c = iArr5[0] ^ i14;
        this.f94525d = ((((bArr[iF6 & 255] & 255) ^ ((bArr[(iF7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iF8 >> 16) & 255] & 255) << 16)) ^ (bArr[(iF5 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr5[1];
        this.f94526e = ((((bArr[iF7 & 255] & 255) ^ ((bArr[(iF8 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iF5 >> 16) & 255] & 255) << 16)) ^ (bArr[(iF6 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr5[2];
        this.f94527f = ((((bArr[iF8 & 255] & 255) ^ ((bArr[(iF5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iF6 >> 16) & 255] & 255) << 16)) ^ (bArr[(iF7 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr5[3];
    }

    private int[][] b(byte[] bArr) throws ZipException {
        int length = bArr.length / 4;
        if ((length != 4 && length != 6 && length != 8) || length * 4 != bArr.length) {
            throw new ZipException("invalid key length (not 128/192/256)");
        }
        int i10 = length + 6;
        this.f94522a = i10;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10 + 1, 4);
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length) {
            iArr[i12 >> 2][i12 & 3] = (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16) | (bArr[i11 + 3] << BinaryMemcacheOpcodes.FLUSHQ);
            i11 += 4;
            i12++;
        }
        int i13 = (this.f94522a + 1) << 2;
        for (int i14 = length; i14 < i13; i14++) {
            int i15 = i14 - 1;
            int i16 = iArr[i15 >> 2][i15 & 3];
            int i17 = i14 % length;
            if (i17 == 0) {
                i16 = i(f(i16, 8)) ^ f94520h[(i14 / length) - 1];
            } else if (length > 6 && i17 == 4) {
                i16 = i(i16);
            }
            int i18 = i14 - length;
            iArr[i14 >> 2][i14 & 3] = i16 ^ iArr[i18 >> 2][i18 & 3];
        }
        return iArr;
    }

    private int f(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    private final void g(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = (bArr[i10] & 255) | ((bArr[i11] & 255) << 8);
        int i14 = i12 + 1;
        int i15 = i13 | ((bArr[i12] & 255) << 16);
        int i16 = i14 + 1;
        this.f94524c = i15 | (bArr[i14] << BinaryMemcacheOpcodes.FLUSHQ);
        int i17 = i16 + 1;
        int i18 = bArr[i16] & 255;
        int i19 = i17 + 1;
        int i20 = ((bArr[i17] & 255) << 8) | i18;
        int i21 = i19 + 1;
        int i22 = i20 | ((bArr[i19] & 255) << 16);
        int i23 = i21 + 1;
        this.f94525d = i22 | (bArr[i21] << BinaryMemcacheOpcodes.FLUSHQ);
        int i24 = i23 + 1;
        int i25 = bArr[i23] & 255;
        int i26 = i24 + 1;
        int i27 = ((bArr[i24] & 255) << 8) | i25;
        int i28 = i26 + 1;
        int i29 = i27 | ((bArr[i26] & 255) << 16);
        int i30 = i28 + 1;
        this.f94526e = i29 | (bArr[i28] << BinaryMemcacheOpcodes.FLUSHQ);
        int i31 = i30 + 1;
        int i32 = bArr[i30] & 255;
        int i33 = i31 + 1;
        int i34 = ((bArr[i31] & 255) << 8) | i32;
        int i35 = i34 | ((bArr[i33] & 255) << 16);
        this.f94527f = (bArr[i33 + 1] << BinaryMemcacheOpcodes.FLUSHQ) | i35;
    }

    private final void h(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        int i12 = this.f94524c;
        bArr[i10] = (byte) i12;
        int i13 = i11 + 1;
        bArr[i11] = (byte) (i12 >> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (i12 >> 16);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i12 >> 24);
        int i16 = i15 + 1;
        int i17 = this.f94525d;
        bArr[i15] = (byte) i17;
        int i18 = i16 + 1;
        bArr[i16] = (byte) (i17 >> 8);
        int i19 = i18 + 1;
        bArr[i18] = (byte) (i17 >> 16);
        int i20 = i19 + 1;
        bArr[i19] = (byte) (i17 >> 24);
        int i21 = i20 + 1;
        int i22 = this.f94526e;
        bArr[i20] = (byte) i22;
        int i23 = i21 + 1;
        bArr[i21] = (byte) (i22 >> 8);
        int i24 = i23 + 1;
        bArr[i23] = (byte) (i22 >> 16);
        int i25 = i24 + 1;
        bArr[i24] = (byte) (i22 >> 24);
        int i26 = i25 + 1;
        int i27 = this.f94527f;
        bArr[i25] = (byte) i27;
        int i28 = i26 + 1;
        bArr[i26] = (byte) (i27 >> 8);
        bArr[i28] = (byte) (i27 >> 16);
        bArr[i28 + 1] = (byte) (i27 >> 24);
    }

    private int i(int i10) {
        byte[] bArr = f94519g;
        return (bArr[(i10 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ) | (bArr[i10 & 255] & 255) | ((bArr[(i10 >> 8) & 255] & 255) << 8) | ((bArr[(i10 >> 16) & 255] & 255) << 16);
    }

    public void c(byte[] bArr) throws ZipException {
        this.f94523b = b(bArr);
    }

    public int d(byte[] bArr, int i10, byte[] bArr2, int i11) throws ZipException {
        if (this.f94523b == null) {
            throw new ZipException("AES engine not initialised");
        }
        if (i10 + 16 > bArr.length) {
            throw new ZipException("input buffer too short");
        }
        if (i11 + 16 > bArr2.length) {
            throw new ZipException("output buffer too short");
        }
        g(bArr, i10);
        a(this.f94523b);
        h(bArr2, i11);
        return 16;
    }

    public int e(byte[] bArr, byte[] bArr2) throws ZipException {
        return d(bArr, 0, bArr2, 0);
    }
}
