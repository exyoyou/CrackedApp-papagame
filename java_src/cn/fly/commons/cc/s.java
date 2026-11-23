package cn.fly.commons.cc;

import android.location.GnssStatus;
import android.os.Build;
import android.text.TextUtils;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.Data;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public class s implements y<s> {
    public String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    public byte[] c(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, cn.fly.commons.n.a("0035dbegcj"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    public static void a(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable unused) {
                }
            }
        }
    }

    public String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 0, bArr.length);
            String strA = a(byteArrayInputStream);
            byteArrayInputStream.close();
            return strA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public byte[] b(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, cn.fly.commons.n.a("003*dbegcj"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(2, secretKeySpec);
        byte[] bArr4 = new byte[cipher.getOutputSize(bArr2.length)];
        cipher.doFinal(bArr4, cipher.update(bArr2, 0, bArr2.length, bArr4, 0));
        return bArr4;
    }

    public String a(InputStream inputStream) {
        byte[] bArrDigest = null;
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            MessageDigest messageDigest = MessageDigest.getInstance(cn.fly.commons.n.a("003*fadjfg"));
            int i10 = inputStream.read(bArr);
            while (i10 != -1) {
                messageDigest.update(bArr, 0, i10);
                i10 = inputStream.read(bArr);
            }
            bArrDigest = messageDigest.digest();
        } catch (Throwable unused) {
        }
        return b(bArrDigest);
    }

    public ArrayList<HashMap<String, String>> a(ArrayList<HashMap<String, String>> arrayList, ArrayList<HashMap<String, String>> arrayList2, String str) {
        boolean z10;
        ArrayList<HashMap<String, String>> arrayList3 = new ArrayList<>();
        for (HashMap<String, String> map : arrayList) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                Iterator<HashMap<String, String>> it2 = arrayList2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = false;
                        break;
                    }
                    if (str2.equals(it2.next().get(str))) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    arrayList3.add(map);
                }
            }
        }
        return arrayList3;
    }

    public byte[] a(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, cn.fly.commons.n.a("003Xdbegcj"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(1, secretKeySpec);
        byte[] bArr4 = new byte[cipher.getOutputSize(bArr2.length)];
        cipher.doFinal(bArr4, cipher.update(bArr2, 0, bArr2.length, bArr4, 0));
        return bArr4;
    }

    public byte[] a(int i10, byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
        int i11 = i10 / 8;
        int i12 = i11 - 11;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            int i13 = 0;
            while (bArr.length > i13) {
                try {
                    int iMin = Math.min(bArr.length - i13, i12);
                    byte[] bArrA = a(bArr, i13, iMin, bigInteger, bigInteger2, i11);
                    dataOutputStream2.writeInt(bArrA.length);
                    dataOutputStream2.write(bArrA);
                    i13 += iMin;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    a(dataOutputStream);
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            a(dataOutputStream2);
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] a(byte[] bArr, int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2, int i12) throws Throwable {
        if (bArr.length != i11 || i10 != 0) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger3 = new BigInteger(a(bArr, i12));
        if (bigInteger3.compareTo(bigInteger2) <= 0) {
            return bigInteger3.modPow(bigInteger, bigInteger2).toByteArray();
        }
        throw new Throwable("the message must be smaller than the modulue");
    }

    private byte[] a(byte[] bArr, int i10) throws Throwable {
        if (bArr.length <= i10 - 1) {
            byte[] bArr2 = new byte[i10];
            bArr2[0] = 1;
            int length = bArr.length;
            bArr2[1] = (byte) (length >> 24);
            bArr2[2] = (byte) (length >> 16);
            bArr2[3] = (byte) (length >> 8);
            bArr2[4] = (byte) length;
            System.arraycopy(bArr, 0, bArr2, i10 - length, length);
            return bArr2;
        }
        throw new Throwable("Message too large");
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(s sVar, Class<s> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("bm5".equals(str) && objArr.length == 1) {
            objArr2[0] = sVar.a((byte[]) objArr[0]);
            return true;
        }
        if ("sm5".equals(str)) {
            objArr2[0] = sVar.a((InputStream) objArr[0]);
            return true;
        }
        if ("thx".equals(str)) {
            objArr2[0] = sVar.b((byte[]) objArr[0]);
            return true;
        }
        if ("fnil".equals(str) && objArr.length == 3) {
            objArr2[0] = sVar.a((ArrayList) objArr[0], (ArrayList) objArr[1], (String) objArr[2]);
            return true;
        }
        if ("aesen".equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = a((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th) {
                objArr2[0] = null;
                thArr[0] = th;
            }
            return true;
        }
        if (cn.fly.commons.n.a("005bd[dgba0d").equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = b((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th2) {
                objArr2[0] = null;
                thArr[0] = th2;
            }
            return true;
        }
        if (cn.fly.commons.n.a("006bdEdgbadeRh").equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = c((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th3) {
                objArr2[0] = null;
                thArr[0] = th3;
            }
            return true;
        }
        if ("enc".equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = a(((Integer) objArr[0]).intValue(), (byte[]) objArr[1], (BigInteger) objArr[2], (BigInteger) objArr[3]);
            } catch (Throwable th4) {
                objArr2[0] = null;
                thArr[0] = th4;
            }
            return true;
        }
        if (com.kuaishou.weapon.p0.t.f74895t.equals(str)) {
            if (objArr.length == 1 && (objArr[0] instanceof String)) {
                FlyLog.getInstance().d("%s", "[sasa] " + objArr[0]);
            } else if (objArr.length == 1 && (objArr[0] instanceof Throwable)) {
                FlyLog.getInstance().d((Throwable) objArr[0], "%s", "[sasa]");
            }
            return true;
        }
        if (!"ngck".equals(str) || objArr.length != 1) {
            return false;
        }
        try {
            if (Build.VERSION.SDK_INT >= 31) {
                final Runnable runnable = (Runnable) objArr[0];
                objArr2[0] = new GnssStatus.Callback() { // from class: cn.fly.commons.cc.s.1
                    @Override // android.location.GnssStatus.Callback
                    public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
                        try {
                            runnable.run();
                        } catch (Throwable unused) {
                        }
                    }
                };
            } else {
                objArr2[0] = null;
            }
        } catch (Throwable th5) {
            objArr2[0] = null;
            thArr[0] = th5;
        }
        return true;
    }
}
