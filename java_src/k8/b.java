package k8;

import android.os.Parcel;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f92148a = 6;

    public static void a(boolean z10) {
        File fileF = com.xinzhu.datatransfer.b.f();
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(fileF);
                int length = (int) fileF.length();
                byte[] bArr = new byte[length];
                int i10 = fileInputStream.read(bArr);
                fileInputStream.close();
                if (i10 != length) {
                    throw new IOException("Unable to read Persistence file.");
                }
                parcelObtain.unmarshall(bArr, 0, length);
                parcelObtain.setDataPosition(0);
                parcelObtain.createCharArray();
                int i11 = parcelObtain.readInt();
                int i12 = parcelObtain.readInt();
                if (i11 == 6) {
                    for (int i13 = 0; i13 < i12; i13++) {
                        String string = parcelObtain.readString();
                        int i14 = parcelObtain.readInt();
                        parcelObtain.readString();
                        parcelObtain.readString();
                        boolean z11 = parcelObtain.readByte() != 0;
                        parcelObtain.readByte();
                        int i15 = parcelObtain.readInt();
                        for (int i16 = 0; i16 < i15; i16++) {
                            int i17 = parcelObtain.readInt();
                            parcelObtain.readInt();
                            parcelObtain.readString();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            if (b(z10, z11)) {
                                MindPackageManagerService.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(string).getAbsolutePath(), i17, i14);
                            }
                        }
                        parcelObtain.readInt();
                        parcelObtain.readLong();
                        parcelObtain.readLong();
                    }
                } else if (i11 == 5) {
                    for (int i18 = 0; i18 < i12; i18++) {
                        String string2 = parcelObtain.readString();
                        int i19 = parcelObtain.readInt();
                        parcelObtain.readInt();
                        int i20 = parcelObtain.readInt();
                        for (int i21 = 0; i21 < i20; i21++) {
                            int i22 = parcelObtain.readInt();
                            parcelObtain.readInt();
                            parcelObtain.readString();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            MindPackageManagerService.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(string2).getAbsolutePath(), i22, i19);
                        }
                        parcelObtain.readInt();
                        parcelObtain.readLong();
                        parcelObtain.readLong();
                    }
                } else if (i11 < 5) {
                    for (int i23 = 0; i23 < i12; i23++) {
                        String string3 = parcelObtain.readString();
                        parcelObtain.readString();
                        parcelObtain.readString();
                        parcelObtain.readByte();
                        int i24 = parcelObtain.readInt();
                        int i25 = parcelObtain.readInt();
                        for (int i26 = 0; i26 < i25; i26++) {
                            int i27 = parcelObtain.readInt();
                            parcelObtain.readInt();
                            parcelObtain.readString();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            parcelObtain.readByte();
                            MindPackageManagerService.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(string3).getAbsolutePath(), i27, i24);
                        }
                        parcelObtain.readByte();
                        if (i11 == 4) {
                            parcelObtain.readInt();
                        }
                    }
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

    private static boolean b(boolean z10, boolean z11) {
        if (z10) {
            return Overmind.get().use32BitMainPackage() ? !z11 : z11;
        }
        return true;
    }
}
