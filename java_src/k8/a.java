package k8;

import android.os.Parcel;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import ma.c;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static void a() {
        File fileC = com.xinzhu.datatransfer.b.c();
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(fileC);
                int length = (int) fileC.length();
                byte[] bArr = new byte[length];
                int i10 = fileInputStream.read(bArr);
                fileInputStream.close();
                if (i10 != length) {
                    throw new IOException("Unable to read Persistence file.");
                }
                parcelObtain.unmarshall(bArr, 0, length);
                parcelObtain.setDataPosition(0);
                parcelObtain.readInt();
                int i11 = parcelObtain.readInt();
                for (int i12 = 0; i12 < i11; i12++) {
                    MindDeviceInfo mindDeviceInfo = new MindDeviceInfo();
                    int i13 = parcelObtain.readInt();
                    mindDeviceInfo.f89705b = parcelObtain.readByte() != 0;
                    mindDeviceInfo.f89707d = parcelObtain.readString();
                    mindDeviceInfo.f89706c = parcelObtain.readString();
                    mindDeviceInfo.f89709f = parcelObtain.readString();
                    mindDeviceInfo.f89710g = parcelObtain.readString();
                    mindDeviceInfo.f89708e = parcelObtain.readString();
                    mindDeviceInfo.f89711h = parcelObtain.readString();
                    mindDeviceInfo.f89712i = parcelObtain.readString();
                    int i14 = parcelObtain.readInt();
                    for (int i15 = 0; i15 < i14; i15++) {
                        mindDeviceInfo.f89713j.put(parcelObtain.readString(), parcelObtain.readString());
                    }
                    c.a().e(i13, mindDeviceInfo);
                }
                parcelObtain.recycle();
            } catch (Exception e10) {
                if (!(e10 instanceof FileNotFoundException)) {
                    e10.printStackTrace();
                }
            }
        } catch (Throwable th) {
            parcelObtain.recycle();
            throw th;
        }
    }
}
