package g3;

import com.facebook.infer.annotation.Nullsafe;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a {
    public static boolean a(File directory) {
        File[] fileArrListFiles = directory.listFiles();
        boolean zB = true;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                zB &= b(file);
            }
        }
        return zB;
    }

    public static boolean b(File file) {
        if (file.isDirectory()) {
            a(file);
        }
        return file.delete();
    }

    public static void c(File directory, b visitor) {
        visitor.c(directory);
        File[] fileArrListFiles = directory.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    c(file, visitor);
                } else {
                    visitor.a(file);
                }
            }
        }
        visitor.b(directory);
    }
}
