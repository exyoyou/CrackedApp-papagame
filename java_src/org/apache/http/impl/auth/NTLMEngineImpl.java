package org.apache.http.impl.auth;

import android.util.Base64;
import com.alipay.security.mobile.module.commonutils.crypto.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.o0;
import com.sigmob.sdk.archives.tar.e;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
final class NTLMEngineImpl implements NTLMEngine {
    static final String DEFAULT_CHARSET = "ASCII";
    protected static final int FLAG_DOMAIN_PRESENT = 4096;
    protected static final int FLAG_REQUEST_128BIT_KEY_EXCH = 536870912;
    protected static final int FLAG_REQUEST_56BIT_ENCRYPTION = Integer.MIN_VALUE;
    protected static final int FLAG_REQUEST_ALWAYS_SIGN = 32768;
    protected static final int FLAG_REQUEST_EXPLICIT_KEY_EXCH = 1073741824;
    protected static final int FLAG_REQUEST_LAN_MANAGER_KEY = 128;
    protected static final int FLAG_REQUEST_NTLM2_SESSION = 524288;
    protected static final int FLAG_REQUEST_NTLMv1 = 512;
    protected static final int FLAG_REQUEST_SEAL = 32;
    protected static final int FLAG_REQUEST_SIGN = 16;
    protected static final int FLAG_REQUEST_TARGET = 4;
    protected static final int FLAG_REQUEST_UNICODE_ENCODING = 1;
    protected static final int FLAG_REQUEST_VERSION = 33554432;
    protected static final int FLAG_TARGETINFO_PRESENT = 8388608;
    protected static final int FLAG_WORKSTATION_PRESENT = 8192;
    private static final SecureRandom RND_GEN;
    private static final byte[] SIGNATURE;
    private String credentialCharset = DEFAULT_CHARSET;

    static class HMACMD5 {
        protected byte[] ipad;
        protected MessageDigest md5;
        protected byte[] opad;

        HMACMD5(byte[] bArr) throws NTLMEngineException {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                this.md5 = messageDigest;
                this.ipad = new byte[64];
                this.opad = new byte[64];
                int length = bArr.length;
                if (length > 64) {
                    messageDigest.update(bArr);
                    bArr = this.md5.digest();
                    length = bArr.length;
                }
                int i10 = 0;
                while (i10 < length) {
                    this.ipad[i10] = (byte) (54 ^ bArr[i10]);
                    this.opad[i10] = (byte) (92 ^ bArr[i10]);
                    i10++;
                }
                while (i10 < 64) {
                    this.ipad[i10] = e.N;
                    this.opad[i10] = 92;
                    i10++;
                }
                this.md5.reset();
                this.md5.update(this.ipad);
            } catch (Exception e10) {
                throw new NTLMEngineException("Error getting md5 message digest implementation: " + e10.getMessage(), e10);
            }
        }

        byte[] getOutput() {
            byte[] bArrDigest = this.md5.digest();
            this.md5.update(this.opad);
            return this.md5.digest(bArrDigest);
        }

        void update(byte[] bArr) {
            this.md5.update(bArr);
        }

        void update(byte[] bArr, int i10, int i11) {
            this.md5.update(bArr, i10, i11);
        }
    }

    static class MD4 {
        protected int A = 1732584193;
        protected int B = -271733879;
        protected int C = -1732584194;
        protected int D = 271733878;
        protected long count = 0;
        protected byte[] dataBuffer = new byte[64];

        MD4() {
        }

        byte[] getOutput() {
            int i10 = (int) (this.count & 63);
            int i11 = i10 < 56 ? 56 - i10 : 120 - i10;
            byte[] bArr = new byte[i11 + 8];
            bArr[0] = -128;
            for (int i12 = 0; i12 < 8; i12++) {
                bArr[i11 + i12] = (byte) ((this.count * 8) >>> (i12 * 8));
            }
            update(bArr);
            byte[] bArr2 = new byte[16];
            NTLMEngineImpl.writeULong(bArr2, this.A, 0);
            NTLMEngineImpl.writeULong(bArr2, this.B, 4);
            NTLMEngineImpl.writeULong(bArr2, this.C, 8);
            NTLMEngineImpl.writeULong(bArr2, this.D, 12);
            return bArr2;
        }

        protected void processBuffer() {
            int[] iArr = new int[16];
            for (int i10 = 0; i10 < 16; i10++) {
                byte[] bArr = this.dataBuffer;
                int i11 = i10 * 4;
                iArr[i10] = (bArr[i11] & 255) + ((bArr[i11 + 1] & 255) << 8) + ((bArr[i11 + 2] & 255) << 16) + ((bArr[i11 + 3] & 255) << 24);
            }
            int i12 = this.A;
            int i13 = this.B;
            int i14 = this.C;
            int i15 = this.D;
            round1(iArr);
            round2(iArr);
            round3(iArr);
            this.A += i12;
            this.B += i13;
            this.C += i14;
            this.D += i15;
        }

        protected void round1(int[] iArr) {
            int iRotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(this.B, this.C, this.D) + iArr[0], 3);
            this.A = iRotintlft;
            int iRotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(iRotintlft, this.B, this.C) + iArr[1], 7);
            this.D = iRotintlft2;
            int iRotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(iRotintlft2, this.A, this.B) + iArr[2], 11);
            this.C = iRotintlft3;
            int iRotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(iRotintlft3, this.D, this.A) + iArr[3], 19);
            this.B = iRotintlft4;
            int iRotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(iRotintlft4, this.C, this.D) + iArr[4], 3);
            this.A = iRotintlft5;
            int iRotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(iRotintlft5, this.B, this.C) + iArr[5], 7);
            this.D = iRotintlft6;
            int iRotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(iRotintlft6, this.A, this.B) + iArr[6], 11);
            this.C = iRotintlft7;
            int iRotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(iRotintlft7, this.D, this.A) + iArr[7], 19);
            this.B = iRotintlft8;
            int iRotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(iRotintlft8, this.C, this.D) + iArr[8], 3);
            this.A = iRotintlft9;
            int iRotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(iRotintlft9, this.B, this.C) + iArr[9], 7);
            this.D = iRotintlft10;
            int iRotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(iRotintlft10, this.A, this.B) + iArr[10], 11);
            this.C = iRotintlft11;
            int iRotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(iRotintlft11, this.D, this.A) + iArr[11], 19);
            this.B = iRotintlft12;
            int iRotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(iRotintlft12, this.C, this.D) + iArr[12], 3);
            this.A = iRotintlft13;
            int iRotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(iRotintlft13, this.B, this.C) + iArr[13], 7);
            this.D = iRotintlft14;
            int iRotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(iRotintlft14, this.A, this.B) + iArr[14], 11);
            this.C = iRotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(iRotintlft15, this.D, this.A) + iArr[15], 19);
        }

        protected void round2(int[] iArr) {
            int iRotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(this.B, this.C, this.D) + iArr[0] + 1518500249, 3);
            this.A = iRotintlft;
            int iRotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(iRotintlft, this.B, this.C) + iArr[4] + 1518500249, 5);
            this.D = iRotintlft2;
            int iRotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(iRotintlft2, this.A, this.B) + iArr[8] + 1518500249, 9);
            this.C = iRotintlft3;
            int iRotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(iRotintlft3, this.D, this.A) + iArr[12] + 1518500249, 13);
            this.B = iRotintlft4;
            int iRotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(iRotintlft4, this.C, this.D) + iArr[1] + 1518500249, 3);
            this.A = iRotintlft5;
            int iRotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(iRotintlft5, this.B, this.C) + iArr[5] + 1518500249, 5);
            this.D = iRotintlft6;
            int iRotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(iRotintlft6, this.A, this.B) + iArr[9] + 1518500249, 9);
            this.C = iRotintlft7;
            int iRotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(iRotintlft7, this.D, this.A) + iArr[13] + 1518500249, 13);
            this.B = iRotintlft8;
            int iRotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(iRotintlft8, this.C, this.D) + iArr[2] + 1518500249, 3);
            this.A = iRotintlft9;
            int iRotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(iRotintlft9, this.B, this.C) + iArr[6] + 1518500249, 5);
            this.D = iRotintlft10;
            int iRotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(iRotintlft10, this.A, this.B) + iArr[10] + 1518500249, 9);
            this.C = iRotintlft11;
            int iRotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(iRotintlft11, this.D, this.A) + iArr[14] + 1518500249, 13);
            this.B = iRotintlft12;
            int iRotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(iRotintlft12, this.C, this.D) + iArr[3] + 1518500249, 3);
            this.A = iRotintlft13;
            int iRotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(iRotintlft13, this.B, this.C) + iArr[7] + 1518500249, 5);
            this.D = iRotintlft14;
            int iRotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(iRotintlft14, this.A, this.B) + iArr[11] + 1518500249, 9);
            this.C = iRotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(iRotintlft15, this.D, this.A) + iArr[15] + 1518500249, 13);
        }

        protected void round3(int[] iArr) {
            int iRotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(this.B, this.C, this.D) + iArr[0] + 1859775393, 3);
            this.A = iRotintlft;
            int iRotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(iRotintlft, this.B, this.C) + iArr[8] + 1859775393, 9);
            this.D = iRotintlft2;
            int iRotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(iRotintlft2, this.A, this.B) + iArr[4] + 1859775393, 11);
            this.C = iRotintlft3;
            int iRotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(iRotintlft3, this.D, this.A) + iArr[12] + 1859775393, 15);
            this.B = iRotintlft4;
            int iRotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(iRotintlft4, this.C, this.D) + iArr[2] + 1859775393, 3);
            this.A = iRotintlft5;
            int iRotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(iRotintlft5, this.B, this.C) + iArr[10] + 1859775393, 9);
            this.D = iRotintlft6;
            int iRotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(iRotintlft6, this.A, this.B) + iArr[6] + 1859775393, 11);
            this.C = iRotintlft7;
            int iRotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(iRotintlft7, this.D, this.A) + iArr[14] + 1859775393, 15);
            this.B = iRotintlft8;
            int iRotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(iRotintlft8, this.C, this.D) + iArr[1] + 1859775393, 3);
            this.A = iRotintlft9;
            int iRotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(iRotintlft9, this.B, this.C) + iArr[9] + 1859775393, 9);
            this.D = iRotintlft10;
            int iRotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(iRotintlft10, this.A, this.B) + iArr[5] + 1859775393, 11);
            this.C = iRotintlft11;
            int iRotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(iRotintlft11, this.D, this.A) + iArr[13] + 1859775393, 15);
            this.B = iRotintlft12;
            int iRotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(iRotintlft12, this.C, this.D) + iArr[3] + 1859775393, 3);
            this.A = iRotintlft13;
            int iRotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(iRotintlft13, this.B, this.C) + iArr[11] + 1859775393, 9);
            this.D = iRotintlft14;
            int iRotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(iRotintlft14, this.A, this.B) + iArr[7] + 1859775393, 11);
            this.C = iRotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(iRotintlft15, this.D, this.A) + iArr[15] + 1859775393, 15);
        }

        void update(byte[] bArr) {
            byte[] bArr2;
            int i10 = (int) (this.count & 63);
            int i11 = 0;
            while (true) {
                int length = (bArr.length - i11) + i10;
                bArr2 = this.dataBuffer;
                if (length < bArr2.length) {
                    break;
                }
                int length2 = bArr2.length - i10;
                System.arraycopy(bArr, i11, bArr2, i10, length2);
                this.count += (long) length2;
                i11 += length2;
                processBuffer();
                i10 = 0;
            }
            if (i11 < bArr.length) {
                int length3 = bArr.length - i11;
                System.arraycopy(bArr, i11, bArr2, i10, length3);
                this.count += (long) length3;
            }
        }
    }

    static class Type1Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;

        Type1Message(String str, String str2) throws NTLMEngineException {
            try {
                String strConvertHost = NTLMEngineImpl.convertHost(str2);
                String strConvertDomain = NTLMEngineImpl.convertDomain(str);
                this.hostBytes = strConvertHost != null ? strConvertHost.getBytes(NTLMEngineImpl.DEFAULT_CHARSET) : null;
                this.domainBytes = strConvertDomain != null ? strConvertDomain.toUpperCase(Locale.ENGLISH).getBytes(NTLMEngineImpl.DEFAULT_CHARSET) : null;
            } catch (UnsupportedEncodingException e10) {
                throw new NTLMEngineException("Unicode unsupported: " + e10.getMessage(), e10);
            }
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            prepareResponse(40, 1);
            addULong(-1576500735);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE);
            addULong(2600);
            addUShort(3840);
            return super.getResponse();
        }
    }

    static class Type2Message extends NTLMMessage {
        protected byte[] challenge;
        protected int flags;
        protected String target;
        protected byte[] targetInfo;

        Type2Message(String str) throws NTLMEngineException {
            super(str, 2);
            byte[] bArr = new byte[8];
            this.challenge = bArr;
            readBytes(bArr, 24);
            int uLong = readULong(20);
            this.flags = uLong;
            if ((uLong & 1) == 0) {
                throw new NTLMEngineException("NTLM type 2 message has flags that make no sense: " + Integer.toString(this.flags));
            }
            this.target = null;
            if (getMessageLength() >= 20) {
                byte[] securityBuffer = readSecurityBuffer(12);
                if (securityBuffer.length != 0) {
                    try {
                        this.target = new String(securityBuffer, "UnicodeLittleUnmarked");
                    } catch (UnsupportedEncodingException e10) {
                        throw new NTLMEngineException(e10.getMessage(), e10);
                    }
                }
            }
            this.targetInfo = null;
            if (getMessageLength() >= 48) {
                byte[] securityBuffer2 = readSecurityBuffer(40);
                if (securityBuffer2.length != 0) {
                    this.targetInfo = securityBuffer2;
                }
            }
        }

        byte[] getChallenge() {
            return this.challenge;
        }

        int getFlags() {
            return this.flags;
        }

        String getTarget() {
            return this.target;
        }

        byte[] getTargetInfo() {
            return this.targetInfo;
        }
    }

    static class Type3Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;
        protected byte[] lmResp;
        protected byte[] ntResp;
        protected byte[] sessionKey;
        protected int type2Flags;
        protected byte[] userBytes;

        Type3Message(String str, String str2, String str3, String str4, byte[] bArr, int i10, String str5, byte[] bArr2) throws NTLMEngineException {
            byte[] lanManagerSessionKey;
            byte[] bytes;
            this.type2Flags = i10;
            String strConvertHost = NTLMEngineImpl.convertHost(str2);
            String strConvertDomain = NTLMEngineImpl.convertDomain(str);
            CipherGen cipherGen = new CipherGen(strConvertDomain, str3, str4, bArr, str5, bArr2);
            try {
                if ((8388608 & i10) != 0 && bArr2 != null && str5 != null) {
                    this.ntResp = cipherGen.getNTLMv2Response();
                    this.lmResp = cipherGen.getLMv2Response();
                    lanManagerSessionKey = (i10 & 128) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLMv2UserSessionKey();
                } else if ((524288 & i10) != 0) {
                    this.ntResp = cipherGen.getNTLM2SessionResponse();
                    this.lmResp = cipherGen.getLM2SessionResponse();
                    lanManagerSessionKey = (i10 & 128) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLM2SessionResponseUserSessionKey();
                } else {
                    this.ntResp = cipherGen.getNTLMResponse();
                    this.lmResp = cipherGen.getLMResponse();
                    lanManagerSessionKey = (i10 & 128) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLMUserSessionKey();
                }
            } catch (NTLMEngineException unused) {
                this.ntResp = new byte[0];
                this.lmResp = cipherGen.getLMResponse();
                lanManagerSessionKey = (i10 & 128) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getLMUserSessionKey();
            }
            if ((i10 & 16) == 0) {
                this.sessionKey = null;
            } else if ((i10 & 1073741824) != 0) {
                this.sessionKey = NTLMEngineImpl.RC4(cipherGen.getSecondaryKey(), lanManagerSessionKey);
            } else {
                this.sessionKey = lanManagerSessionKey;
            }
            if (strConvertHost != null) {
                try {
                    bytes = strConvertHost.getBytes("UnicodeLittleUnmarked");
                } catch (UnsupportedEncodingException e10) {
                    throw new NTLMEngineException("Unicode not supported: " + e10.getMessage(), e10);
                }
            } else {
                bytes = null;
            }
            this.hostBytes = bytes;
            this.domainBytes = strConvertDomain != null ? strConvertDomain.toUpperCase(Locale.ENGLISH).getBytes("UnicodeLittleUnmarked") : null;
            this.userBytes = str3.getBytes("UnicodeLittleUnmarked");
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            int length = this.ntResp.length;
            int length2 = this.lmResp.length;
            byte[] bArr = this.domainBytes;
            int length3 = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.hostBytes;
            int length4 = bArr2 != null ? bArr2.length : 0;
            int length5 = this.userBytes.length;
            byte[] bArr3 = this.sessionKey;
            int length6 = bArr3 != null ? bArr3.length : 0;
            int i10 = length2 + 72;
            int i11 = i10 + length;
            int i12 = i11 + length3;
            int i13 = i12 + length5;
            int i14 = i13 + length4;
            prepareResponse(i14 + length6, 3);
            addUShort(length2);
            addUShort(length2);
            addULong(72);
            addUShort(length);
            addUShort(length);
            addULong(i10);
            addUShort(length3);
            addUShort(length3);
            addULong(i11);
            addUShort(length5);
            addUShort(length5);
            addULong(i12);
            addUShort(length4);
            addUShort(length4);
            addULong(i13);
            addUShort(length6);
            addUShort(length6);
            addULong(i14);
            int i15 = this.type2Flags;
            addULong((i15 & 4) | (i15 & 128) | (i15 & 512) | (524288 & i15) | NTLMEngineImpl.FLAG_REQUEST_VERSION | (32768 & i15) | (i15 & 32) | (i15 & 16) | (536870912 & i15) | (Integer.MIN_VALUE & i15) | (1073741824 & i15) | (8388608 & i15) | (i15 & 1));
            addUShort(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE);
            addULong(2600);
            addUShort(3840);
            addBytes(this.lmResp);
            addBytes(this.ntResp);
            addBytes(this.domainBytes);
            addBytes(this.userBytes);
            addBytes(this.hostBytes);
            byte[] bArr4 = this.sessionKey;
            if (bArr4 != null) {
                addBytes(bArr4);
            }
            return super.getResponse();
        }
    }

    static {
        SecureRandom secureRandom;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            secureRandom = null;
        }
        RND_GEN = secureRandom;
        byte[] bytes = EncodingUtils.getBytes("NTLMSSP", DEFAULT_CHARSET);
        byte[] bArr = new byte[bytes.length + 1];
        SIGNATURE = bArr;
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = 0;
    }

    NTLMEngineImpl() {
    }

    static int F(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    static int G(int i10, int i11, int i12) {
        return (i10 & i12) | (i10 & i11) | (i11 & i12);
    }

    static int H(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    static byte[] RC4(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            Cipher cipher = Cipher.getInstance("RC4");
            cipher.init(1, new SecretKeySpec(bArr2, "RC4"));
            return cipher.doFinal(bArr);
        } catch (Exception e10) {
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertDomain(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertHost(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] createBlob(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr3.length + 8 + 8 + 4 + bArr2.length + 4];
        System.arraycopy(new byte[]{1, 1, 0, 0}, 0, bArr4, 0, 4);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, 4, 4);
        System.arraycopy(bArr3, 0, bArr4, 8, bArr3.length);
        int length = bArr3.length + 8;
        System.arraycopy(bArr, 0, bArr4, length, 8);
        int i10 = length + 8;
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i10, 4);
        int i11 = i10 + 4;
        System.arraycopy(bArr2, 0, bArr4, i11, bArr2.length);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i11 + bArr2.length, 4);
        return bArr4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Key createDESKey(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i10, bArr2, 0, 7);
        byte[] bArr3 = {bArr2[0], (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1)), (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2)), (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3)), (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4)), (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5)), (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6)), (byte) (bArr2[6] << 1)};
        oddParity(bArr3);
        return new SecretKeySpec(bArr3, "DES");
    }

    static byte[] hmacMD5(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr2);
        hmacmd5.update(bArr);
        return hmacmd5.getOutput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.toUpperCase(Locale.ENGLISH).getBytes(a.f7272b);
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key keyCreateDESKey = createDESKey(bArr, 0);
            Key keyCreateDESKey2 = createDESKey(bArr, 7);
            byte[] bytes2 = "KGS!@#$%".getBytes(a.f7272b);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, keyCreateDESKey);
            byte[] bArrDoFinal = cipher.doFinal(bytes2);
            cipher.init(1, keyCreateDESKey2);
            byte[] bArrDoFinal2 = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArrDoFinal, 0, bArr2, 0, 8);
            System.arraycopy(bArrDoFinal2, 0, bArr2, 8, 8);
            return bArr2;
        } catch (Exception e10) {
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmResponse(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            Key keyCreateDESKey = createDESKey(bArr3, 0);
            Key keyCreateDESKey2 = createDESKey(bArr3, 7);
            Key keyCreateDESKey3 = createDESKey(bArr3, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, keyCreateDESKey);
            byte[] bArrDoFinal = cipher.doFinal(bArr2);
            cipher.init(1, keyCreateDESKey2);
            byte[] bArrDoFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, keyCreateDESKey3);
            byte[] bArrDoFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(bArrDoFinal, 0, bArr4, 0, 8);
            System.arraycopy(bArrDoFinal2, 0, bArr4, 8, 8);
            System.arraycopy(bArrDoFinal3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e10) {
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(bArr);
            Locale locale = Locale.ENGLISH;
            hmacmd5.update(str2.toUpperCase(locale).getBytes("UnicodeLittleUnmarked"));
            if (str != null) {
                hmacmd5.update(str.toUpperCase(locale).getBytes("UnicodeLittleUnmarked"));
            }
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e10) {
            throw new NTLMEngineException("Unicode not supported! " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(bArr2);
        hmacmd5.update(bArr3);
        byte[] output = hmacmd5.getOutput();
        byte[] bArr4 = new byte[output.length + bArr3.length];
        System.arraycopy(output, 0, bArr4, 0, output.length);
        System.arraycopy(bArr3, 0, bArr4, output.length, bArr3.length);
        return bArr4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeRandomChallenge() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[8];
        synchronized (secureRandom) {
            secureRandom.nextBytes(bArr);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeSecondaryKey() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[16];
        synchronized (secureRandom) {
            secureRandom.nextBytes(bArr);
        }
        return bArr;
    }

    static byte[] ntlm2SessionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr2);
            messageDigest.update(bArr3);
            byte[] bArrDigest = messageDigest.digest();
            byte[] bArr4 = new byte[8];
            System.arraycopy(bArrDigest, 0, bArr4, 0, 8);
            return lmResponse(bArr, bArr4);
        } catch (Exception e10) {
            if (e10 instanceof NTLMEngineException) {
                throw ((NTLMEngineException) e10);
            }
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.getBytes("UnicodeLittleUnmarked");
            MD4 md4 = new MD4();
            md4.update(bytes);
            return md4.getOutput();
        } catch (UnsupportedEncodingException e10) {
            throw new NTLMEngineException("Unicode not supported: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(bArr);
            hmacmd5.update(str2.toUpperCase(Locale.ENGLISH).getBytes("UnicodeLittleUnmarked"));
            if (str != null) {
                hmacmd5.update(str.getBytes("UnicodeLittleUnmarked"));
            }
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e10) {
            throw new NTLMEngineException("Unicode not supported! " + e10.getMessage(), e10);
        }
    }

    private static void oddParity(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            if (((((((((b10 >>> 7) ^ (b10 >>> 6)) ^ (b10 >>> 5)) ^ (b10 >>> 4)) ^ (b10 >>> 3)) ^ (b10 >>> 2)) ^ (b10 >>> 1)) & 1) == 0) {
                bArr[i10] = (byte) (b10 | 1);
            } else {
                bArr[i10] = (byte) (b10 & (-2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] readSecurityBuffer(byte[] bArr, int i10) throws NTLMEngineException {
        int uShort = readUShort(bArr, i10);
        int uLong = readULong(bArr, i10 + 4);
        if (bArr.length < uLong + uShort) {
            throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
        }
        byte[] bArr2 = new byte[uShort];
        System.arraycopy(bArr, uLong, bArr2, 0, uShort);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readULong(byte[] bArr, int i10) throws NTLMEngineException {
        if (bArr.length < i10 + 4) {
            throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
        }
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readUShort(byte[] bArr, int i10) throws NTLMEngineException {
        if (bArr.length < i10 + 2) {
            throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
        }
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    static int rotintlft(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    private static String stripDotSuffix(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(o0.f49827a);
        return iIndexOf != -1 ? str.substring(0, iIndexOf) : str;
    }

    static void writeULong(byte[] bArr, int i10, int i11) {
        bArr[i11] = (byte) (i10 & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType1Msg(String str, String str2) throws NTLMEngineException {
        return getType1Message(str2, str);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        Type2Message type2Message = new Type2Message(str5);
        return getType3Message(str, str2, str4, str3, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    String getCredentialCharset() {
        return this.credentialCharset;
    }

    final String getResponseFor(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        if (str == null || str.trim().equals("")) {
            return getType1Message(str4, str5);
        }
        Type2Message type2Message = new Type2Message(str);
        return getType3Message(str2, str3, str4, str5, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    String getType1Message(String str, String str2) throws NTLMEngineException {
        return new Type1Message(str2, str).getResponse();
    }

    String getType3Message(String str, String str2, String str3, String str4, byte[] bArr, int i10, String str5, byte[] bArr2) throws NTLMEngineException {
        return new Type3Message(str4, str3, str, str2, bArr, i10, str5, bArr2).getResponse();
    }

    void setCredentialCharset(String str) {
        this.credentialCharset = str;
    }

    static class NTLMMessage {
        private int currentOutputPosition;
        private byte[] messageContents;

        NTLMMessage() {
            this.messageContents = null;
            this.currentOutputPosition = 0;
        }

        protected void addByte(byte b10) {
            byte[] bArr = this.messageContents;
            int i10 = this.currentOutputPosition;
            bArr[i10] = b10;
            this.currentOutputPosition = i10 + 1;
        }

        protected void addBytes(byte[] bArr) {
            if (bArr == null) {
                return;
            }
            for (byte b10 : bArr) {
                byte[] bArr2 = this.messageContents;
                int i10 = this.currentOutputPosition;
                bArr2[i10] = b10;
                this.currentOutputPosition = i10 + 1;
            }
        }

        protected void addULong(int i10) {
            addByte((byte) (i10 & 255));
            addByte((byte) ((i10 >> 8) & 255));
            addByte((byte) ((i10 >> 16) & 255));
            addByte((byte) ((i10 >> 24) & 255));
        }

        protected void addUShort(int i10) {
            addByte((byte) (i10 & 255));
            addByte((byte) ((i10 >> 8) & 255));
        }

        protected int getMessageLength() {
            return this.currentOutputPosition;
        }

        protected int getPreambleLength() {
            return NTLMEngineImpl.SIGNATURE.length + 4;
        }

        String getResponse() {
            byte[] bArr = this.messageContents;
            int length = bArr.length;
            int i10 = this.currentOutputPosition;
            if (length > i10) {
                byte[] bArr2 = new byte[i10];
                System.arraycopy(bArr, 0, bArr2, 0, i10);
                bArr = bArr2;
            }
            return EncodingUtils.getAsciiString(Base64.encode(bArr, 2));
        }

        protected void prepareResponse(int i10, int i11) {
            this.messageContents = new byte[i10];
            this.currentOutputPosition = 0;
            addBytes(NTLMEngineImpl.SIGNATURE);
            addULong(i11);
        }

        protected byte readByte(int i10) throws NTLMEngineException {
            byte[] bArr = this.messageContents;
            if (bArr.length >= i10 + 1) {
                return bArr[i10];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        protected void readBytes(byte[] bArr, int i10) throws NTLMEngineException {
            byte[] bArr2 = this.messageContents;
            if (bArr2.length < bArr.length + i10) {
                throw new NTLMEngineException("NTLM: Message too short");
            }
            System.arraycopy(bArr2, i10, bArr, 0, bArr.length);
        }

        protected byte[] readSecurityBuffer(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readSecurityBuffer(this.messageContents, i10);
        }

        protected int readULong(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readULong(this.messageContents, i10);
        }

        protected int readUShort(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readUShort(this.messageContents, i10);
        }

        NTLMMessage(String str, int i10) throws NTLMEngineException {
            this.messageContents = null;
            this.currentOutputPosition = 0;
            byte[] bArrDecode = Base64.decode(EncodingUtils.getBytes(str, NTLMEngineImpl.DEFAULT_CHARSET), 2);
            this.messageContents = bArrDecode;
            if (bArrDecode.length >= NTLMEngineImpl.SIGNATURE.length) {
                for (int i11 = 0; i11 < NTLMEngineImpl.SIGNATURE.length; i11++) {
                    if (this.messageContents[i11] != NTLMEngineImpl.SIGNATURE[i11]) {
                        throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                    }
                }
                int uLong = readULong(NTLMEngineImpl.SIGNATURE.length);
                if (uLong == i10) {
                    this.currentOutputPosition = this.messageContents.length;
                    return;
                }
                throw new NTLMEngineException("NTLM type " + Integer.toString(i10) + " message expected - instead got type " + Integer.toString(uLong));
            }
            throw new NTLMEngineException("NTLM message decoding error - packet too short");
        }
    }

    protected static class CipherGen {
        protected final byte[] challenge;
        protected byte[] clientChallenge;
        protected byte[] clientChallenge2;
        protected final String domain;
        protected byte[] lanManagerSessionKey;
        protected byte[] lm2SessionResponse;
        protected byte[] lmHash;
        protected byte[] lmResponse;
        protected byte[] lmUserSessionKey;
        protected byte[] lmv2Hash;
        protected byte[] lmv2Response;
        protected byte[] ntlm2SessionResponse;
        protected byte[] ntlm2SessionResponseUserSessionKey;
        protected byte[] ntlmHash;
        protected byte[] ntlmResponse;
        protected byte[] ntlmUserSessionKey;
        protected byte[] ntlmv2Blob;
        protected byte[] ntlmv2Hash;
        protected byte[] ntlmv2Response;
        protected byte[] ntlmv2UserSessionKey;
        protected final String password;
        protected byte[] secondaryKey;
        protected final String target;
        protected final byte[] targetInformation;
        protected byte[] timestamp;
        protected final String user;

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            this.lmHash = null;
            this.lmResponse = null;
            this.ntlmHash = null;
            this.ntlmResponse = null;
            this.ntlmv2Hash = null;
            this.lmv2Hash = null;
            this.lmv2Response = null;
            this.ntlmv2Blob = null;
            this.ntlmv2Response = null;
            this.ntlm2SessionResponse = null;
            this.lm2SessionResponse = null;
            this.lmUserSessionKey = null;
            this.ntlmUserSessionKey = null;
            this.ntlmv2UserSessionKey = null;
            this.ntlm2SessionResponseUserSessionKey = null;
            this.lanManagerSessionKey = null;
            this.domain = str;
            this.target = str4;
            this.user = str2;
            this.password = str3;
            this.challenge = bArr;
            this.targetInformation = bArr2;
            this.clientChallenge = bArr3;
            this.clientChallenge2 = bArr4;
            this.secondaryKey = bArr5;
            this.timestamp = bArr6;
        }

        public byte[] getClientChallenge() throws NTLMEngineException {
            if (this.clientChallenge == null) {
                this.clientChallenge = NTLMEngineImpl.makeRandomChallenge();
            }
            return this.clientChallenge;
        }

        public byte[] getClientChallenge2() throws NTLMEngineException {
            if (this.clientChallenge2 == null) {
                this.clientChallenge2 = NTLMEngineImpl.makeRandomChallenge();
            }
            return this.clientChallenge2;
        }

        public byte[] getLM2SessionResponse() throws NTLMEngineException {
            if (this.lm2SessionResponse == null) {
                byte[] clientChallenge = getClientChallenge();
                byte[] bArr = new byte[24];
                this.lm2SessionResponse = bArr;
                System.arraycopy(clientChallenge, 0, bArr, 0, clientChallenge.length);
                byte[] bArr2 = this.lm2SessionResponse;
                Arrays.fill(bArr2, clientChallenge.length, bArr2.length, (byte) 0);
            }
            return this.lm2SessionResponse;
        }

        public byte[] getLMHash() throws NTLMEngineException {
            if (this.lmHash == null) {
                this.lmHash = NTLMEngineImpl.lmHash(this.password);
            }
            return this.lmHash;
        }

        public byte[] getLMResponse() throws NTLMEngineException {
            if (this.lmResponse == null) {
                this.lmResponse = NTLMEngineImpl.lmResponse(getLMHash(), this.challenge);
            }
            return this.lmResponse;
        }

        public byte[] getLMUserSessionKey() throws NTLMEngineException {
            if (this.lmUserSessionKey == null) {
                this.lmUserSessionKey = new byte[16];
                System.arraycopy(getLMHash(), 0, this.lmUserSessionKey, 0, 8);
                Arrays.fill(this.lmUserSessionKey, 8, 16, (byte) 0);
            }
            return this.lmUserSessionKey;
        }

        public byte[] getLMv2Hash() throws NTLMEngineException {
            if (this.lmv2Hash == null) {
                this.lmv2Hash = NTLMEngineImpl.lmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.lmv2Hash;
        }

        public byte[] getLMv2Response() throws NTLMEngineException {
            if (this.lmv2Response == null) {
                this.lmv2Response = NTLMEngineImpl.lmv2Response(getLMv2Hash(), this.challenge, getClientChallenge());
            }
            return this.lmv2Response;
        }

        public byte[] getLanManagerSessionKey() throws NTLMEngineException {
            if (this.lanManagerSessionKey == null) {
                try {
                    byte[] bArr = new byte[14];
                    System.arraycopy(getLMHash(), 0, bArr, 0, 8);
                    Arrays.fill(bArr, 8, 14, (byte) -67);
                    Key keyCreateDESKey = NTLMEngineImpl.createDESKey(bArr, 0);
                    Key keyCreateDESKey2 = NTLMEngineImpl.createDESKey(bArr, 7);
                    byte[] bArr2 = new byte[8];
                    System.arraycopy(getLMResponse(), 0, bArr2, 0, 8);
                    Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher.init(1, keyCreateDESKey);
                    byte[] bArrDoFinal = cipher.doFinal(bArr2);
                    Cipher cipher2 = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher2.init(1, keyCreateDESKey2);
                    byte[] bArrDoFinal2 = cipher2.doFinal(bArr2);
                    byte[] bArr3 = new byte[16];
                    this.lanManagerSessionKey = bArr3;
                    System.arraycopy(bArrDoFinal, 0, bArr3, 0, bArrDoFinal.length);
                    System.arraycopy(bArrDoFinal2, 0, this.lanManagerSessionKey, bArrDoFinal.length, bArrDoFinal2.length);
                } catch (Exception e10) {
                    throw new NTLMEngineException(e10.getMessage(), e10);
                }
            }
            return this.lanManagerSessionKey;
        }

        public byte[] getNTLM2SessionResponse() throws NTLMEngineException {
            if (this.ntlm2SessionResponse == null) {
                this.ntlm2SessionResponse = NTLMEngineImpl.ntlm2SessionResponse(getNTLMHash(), this.challenge, getClientChallenge());
            }
            return this.ntlm2SessionResponse;
        }

        public byte[] getNTLM2SessionResponseUserSessionKey() throws NTLMEngineException {
            if (this.ntlm2SessionResponseUserSessionKey == null) {
                byte[] lM2SessionResponse = getLM2SessionResponse();
                byte[] bArr = this.challenge;
                byte[] bArr2 = new byte[bArr.length + lM2SessionResponse.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                System.arraycopy(lM2SessionResponse, 0, bArr2, this.challenge.length, lM2SessionResponse.length);
                this.ntlm2SessionResponseUserSessionKey = NTLMEngineImpl.hmacMD5(bArr2, getNTLMUserSessionKey());
            }
            return this.ntlm2SessionResponseUserSessionKey;
        }

        public byte[] getNTLMHash() throws NTLMEngineException {
            if (this.ntlmHash == null) {
                this.ntlmHash = NTLMEngineImpl.ntlmHash(this.password);
            }
            return this.ntlmHash;
        }

        public byte[] getNTLMResponse() throws NTLMEngineException {
            if (this.ntlmResponse == null) {
                this.ntlmResponse = NTLMEngineImpl.lmResponse(getNTLMHash(), this.challenge);
            }
            return this.ntlmResponse;
        }

        public byte[] getNTLMUserSessionKey() throws NTLMEngineException {
            if (this.ntlmUserSessionKey == null) {
                MD4 md4 = new MD4();
                md4.update(getNTLMHash());
                this.ntlmUserSessionKey = md4.getOutput();
            }
            return this.ntlmUserSessionKey;
        }

        public byte[] getNTLMv2Blob() throws NTLMEngineException {
            if (this.ntlmv2Blob == null) {
                this.ntlmv2Blob = NTLMEngineImpl.createBlob(getClientChallenge2(), this.targetInformation, getTimestamp());
            }
            return this.ntlmv2Blob;
        }

        public byte[] getNTLMv2Hash() throws NTLMEngineException {
            if (this.ntlmv2Hash == null) {
                this.ntlmv2Hash = NTLMEngineImpl.ntlmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.ntlmv2Hash;
        }

        public byte[] getNTLMv2Response() throws NTLMEngineException {
            if (this.ntlmv2Response == null) {
                this.ntlmv2Response = NTLMEngineImpl.lmv2Response(getNTLMv2Hash(), this.challenge, getNTLMv2Blob());
            }
            return this.ntlmv2Response;
        }

        public byte[] getNTLMv2UserSessionKey() throws NTLMEngineException {
            if (this.ntlmv2UserSessionKey == null) {
                byte[] nTLMv2Hash = getNTLMv2Hash();
                byte[] bArr = new byte[16];
                System.arraycopy(getNTLMv2Response(), 0, bArr, 0, 16);
                this.ntlmv2UserSessionKey = NTLMEngineImpl.hmacMD5(bArr, nTLMv2Hash);
            }
            return this.ntlmv2UserSessionKey;
        }

        public byte[] getSecondaryKey() throws NTLMEngineException {
            if (this.secondaryKey == null) {
                this.secondaryKey = NTLMEngineImpl.makeSecondaryKey();
            }
            return this.secondaryKey;
        }

        public byte[] getTimestamp() {
            if (this.timestamp == null) {
                long jCurrentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
                this.timestamp = new byte[8];
                for (int i10 = 0; i10 < 8; i10++) {
                    this.timestamp[i10] = (byte) jCurrentTimeMillis;
                    jCurrentTimeMillis >>>= 8;
                }
            }
            return this.timestamp;
        }

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2) {
            this(str, str2, str3, bArr, str4, bArr2, null, null, null, null);
        }
    }
}
