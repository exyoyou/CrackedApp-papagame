package ra;

import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.t;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class a implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96810b = "a";

    private void b(MindPackageSettings mindPackageSettings, File file, File file2, InstallOption installOption) throws IOException {
        if (installOption.f(2)) {
            if (!installOption.f(8) || !l.r(file, file2)) {
                l.b(file, file2);
            }
            file2.setReadOnly();
        }
    }

    private void c(MindPackageSettings mindPackageSettings, File file) throws Exception {
        if (mindPackageSettings.b()) {
            t.a(file, new File(com.xinzhu.overmind.a.f(mindPackageSettings.f89829b.f89743m), com.xinzhu.overmind.a.K(Overmind.get().use32BitMainPackage() ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k)), !Overmind.get().use32BitMainPackage());
            com.xinzhu.overmind.b.a(f96810b, "apk emptyAbi detected, copy native libs.");
            return;
        }
        if (mindPackageSettings.K()) {
            t.a(file, new File(com.xinzhu.overmind.a.f(mindPackageSettings.f89829b.f89743m), com.xinzhu.overmind.a.K(com.xinzhu.overmind.a.f89173i)), false);
            com.xinzhu.overmind.b.a(f96810b, "apk 32bit detected, copy native libs.");
        }
        if (mindPackageSettings.L()) {
            t.a(file, new File(com.xinzhu.overmind.a.f(mindPackageSettings.f89829b.f89743m), com.xinzhu.overmind.a.K(com.xinzhu.overmind.a.f89175k)), true);
            com.xinzhu.overmind.b.a(f96810b, "apk 64bit detected, copy native libs.");
        }
    }

    @Override // ra.d
    public int a(MindPackageSettings mindPackageSettings, InstallOption installOption, int i10) {
        try {
            String str = mindPackageSettings.f89829b.f89752v;
            File file = new File(str);
            File fileJ = com.xinzhu.overmind.a.j(mindPackageSettings.f89829b.f89743m);
            c(mindPackageSettings, file);
            b(mindPackageSettings, file, fileJ, installOption);
            if (installOption.f(2)) {
                mindPackageSettings.f89829b.f89752v = fileJ.getAbsolutePath();
            }
            if (!com.xinzhu.overmind.utils.d.o(mindPackageSettings.f89829b.f89751u)) {
                for (String str2 : mindPackageSettings.f89829b.f89751u) {
                    File fileP = com.xinzhu.overmind.a.P(str, str2);
                    if (!fileP.exists()) {
                        fileP = com.xinzhu.overmind.a.d0(str, str2);
                    }
                    File fileS = com.xinzhu.overmind.a.S(mindPackageSettings.f89829b.f89743m, str2);
                    c(mindPackageSettings, fileP);
                    b(mindPackageSettings, fileP, fileS, installOption);
                }
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }
}
