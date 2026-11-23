package sa;

import android.annotation.SuppressLint;
import android.content.pm.PackageParser;
import android.content.pm.Signature;
import android.os.Parcel;
import android.util.ArraySet;
import java.security.PublicKey;

/* JADX INFO: loaded from: classes8.dex */
public class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97013a = "g0";

    public static PackageParser.SigningDetails a(Parcel parcel) {
        try {
            if (com.xinzhu.overmind.utils.e.j()) {
                return b(parcel);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    private static PackageParser.SigningDetails b(Parcel parcel) {
        parcel.readString();
        boolean z10 = parcel.readInt() != 0;
        String str = f97013a;
        com.xinzhu.overmind.b.c(str, "get if unknown signing details " + z10);
        if (z10) {
            return (PackageParser.SigningDetails) com.xinzhu.haunted.android.content.pm.n.a.q();
        }
        com.xinzhu.haunted.android.content.pm.n.a aVarO = com.xinzhu.haunted.android.content.pm.n.a.o(null, 0, null, null);
        ClassLoader classLoader = Object.class.getClassLoader();
        aVarO.D((Signature[]) parcel.createTypedArray(Signature.CREATOR));
        aVarO.C(parcel.readInt());
        com.xinzhu.haunted.android.os.q qVar = new com.xinzhu.haunted.android.os.q(parcel);
        int i10 = parcel.readInt();
        com.xinzhu.overmind.b.c(str, "type here111 " + i10 + " " + aVarO.u());
        if (i10 < 0) {
            return null;
        }
        ArraySet<PublicKey> arraySetA = v0.d.a(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = parcel.readInt();
            com.xinzhu.overmind.b.c(f97013a, "type here " + i12);
            arraySetA.add((PublicKey) qVar.f(i12, classLoader, null, null));
        }
        aVarO.B(arraySetA);
        aVarO.z((Signature[]) parcel.createTypedArray(Signature.CREATOR));
        return (PackageParser.SigningDetails) aVarO.f88853a;
    }
}
