package ma;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94217b = "d";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f94218c = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.os.b f94219a;

    public static d c() {
        return f94218c;
    }

    private com.xinzhu.overmind.server.os.b d() {
        com.xinzhu.overmind.server.os.b bVar = this.f94219a;
        if (bVar != null && bVar.asBinder().isBinderAlive()) {
            return this.f94219a;
        }
        this.f94219a = com.xinzhu.overmind.server.os.b.AbstractBinderC1134b.asInterface(Overmind.get().getService(l.f89695i));
        return d();
    }

    public void a(String str, String str2) {
        try {
            com.xinzhu.overmind.utils.l.p(new File(str2).getParentFile());
            ParcelFileDescriptor parcelFileDescriptorF = f(str);
            if (parcelFileDescriptorF != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorF);
                com.xinzhu.overmind.utils.l.e(autoCloseInputStream, new File(str2));
                autoCloseInputStream.close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(String str, String str2) {
        try {
            List<MindShareFileInfo> listE = e(str);
            if (listE != null && !listE.isEmpty()) {
                com.xinzhu.overmind.utils.l.p(new File(str2));
                for (MindShareFileInfo mindShareFileInfo : listE) {
                    File file = new File(mindShareFileInfo.f89714b);
                    File file2 = new File(str2, file.getName());
                    if (!mindShareFileInfo.f89716d.booleanValue()) {
                        a(mindShareFileInfo.f89714b, file2.getAbsolutePath());
                    } else if (!file.getName().equals("oat")) {
                        b(mindShareFileInfo.f89714b, file2.getAbsolutePath());
                    }
                }
                return;
            }
            com.xinzhu.overmind.b.c(f94217b, "copyDirectory get empty file list");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List<MindShareFileInfo> e(String str) {
        try {
            return d().listFiles(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ParcelFileDescriptor f(String str) {
        try {
            return d().openAsParcelFile(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
