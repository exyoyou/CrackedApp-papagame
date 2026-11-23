package com.sdk.q;

import android.util.Base64;
import com.sdk.v.f;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.SM2Engine;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {
    @Override // com.sdk.q.a
    public String a(String str, String str2) throws f {
        byte[] bytes = str2.getBytes();
        byte[] bArrDecode = Base64.decode(str, 0);
        com.sdk.v.c cVar = com.sdk.v.b.f78617a;
        cVar.getClass();
        if (bArrDecode == null) {
            throw new f(com.sdk.v.a.E10400);
        }
        if (bytes == null) {
            throw new f(com.sdk.v.a.E10400);
        }
        if (bytes.length == 0) {
            throw new f(com.sdk.v.a.E10415);
        }
        if (bArrDecode.length != 65) {
            throw new f(com.sdk.v.a.E10417);
        }
        if (bArrDecode[0] != 4) {
            throw new f(com.sdk.v.a.E10403);
        }
        try {
            ECPublicKeyParameters eCPublicKeyParametersA = cVar.a(bArrDecode);
            SM2Engine sM2Engine = new SM2Engine();
            sM2Engine.init(true, new ParametersWithRandom(eCPublicKeyParametersA, new SecureRandom()));
            try {
                byte[] bArrProcessBlock = sM2Engine.processBlock(bytes, 0, bytes.length);
                if (bArrProcessBlock == null || bArrProcessBlock.length < 97) {
                    throw new f(com.sdk.v.a.E10406);
                }
                byte[] bArr = new byte[bArrProcessBlock.length];
                System.arraycopy(bArrProcessBlock, 0, bArr, 0, 65);
                System.arraycopy(bArrProcessBlock, bArrProcessBlock.length - 32, bArr, 65, 32);
                System.arraycopy(bArrProcessBlock, 65, bArr, 97, bArrProcessBlock.length - 97);
                return Base64.encodeToString(bArr, 0).replaceAll("\n", "");
            } catch (InvalidCipherTextException e10) {
                throw new f(com.sdk.v.a.E10200, e10);
            }
        } catch (Exception unused) {
            throw new f(com.sdk.v.a.E10416);
        }
    }

    @Override // com.sdk.q.a
    public String b(String str, String str2) {
        return new String(com.sdk.v.b.a(com.sdk.p.c.a(str2), str.substring(0, 16).getBytes(), str.substring(16).getBytes(), 2));
    }

    @Override // com.sdk.q.a
    public String a(String str) throws f {
        StringBuilder sb2;
        String string = "";
        for (byte b10 : com.sdk.v.b.a(str.getBytes())) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                sb2 = new StringBuilder();
                sb2.append(string);
                string = "0";
            } else {
                sb2 = new StringBuilder();
            }
            sb2.append(string);
            sb2.append(hexString);
            string = sb2.toString();
        }
        return string.toUpperCase().toUpperCase();
    }

    @Override // com.sdk.q.a
    public String a(String str, String str2, String str3) {
        return Base64.encodeToString(com.sdk.v.b.b(str3.getBytes(), str.getBytes(), str2.getBytes(), 2), 0).replaceAll("\n", "");
    }
}
