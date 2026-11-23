package com.xinzhu.overmind.server.pm;

import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.utils.y;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class i extends d.b implements com.xinzhu.overmind.server.g {
    public static final String TAG = "MindPackageInstallerService";
    private static i sService = new i();

    public static i get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public int installPackageAsExist(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
        ArrayList<ra.d> arrayList = new ArrayList();
        arrayList.add(new ra.c());
        InstallOption installOption = mindPackageSettings.f89831d;
        for (ra.d dVar : arrayList) {
            int iA = dVar.a(mindPackageSettings, installOption, i10);
            y.a(TAG, "installPackageAsUser_Storage: " + dVar.getClass().getSimpleName() + " exec: " + iA);
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public int installPackageAsUser(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
        ArrayList<ra.d> arrayList = new ArrayList();
        arrayList.add(new ra.c());
        arrayList.add(new ra.b());
        arrayList.add(new ra.a());
        InstallOption installOption = mindPackageSettings.f89831d;
        for (ra.d dVar : arrayList) {
            int iA = dVar.a(mindPackageSettings, installOption, i10);
            y.a(TAG, "installPackageAsUser_Storage: " + dVar.getClass().getSimpleName() + " exec: " + iA);
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public int uninstallPackageAsUser(MindPackageSettings mindPackageSettings, boolean z10, int i10) {
        ArrayList<ra.d> arrayList = new ArrayList();
        if (z10) {
            arrayList.add(new ra.e());
        }
        arrayList.add(new ra.f());
        InstallOption installOption = mindPackageSettings.f89831d;
        for (ra.d dVar : arrayList) {
            int iA = dVar.a(mindPackageSettings, installOption, i10);
            y.a(TAG, "uninstallPackageAsUser: " + dVar.getClass().getSimpleName() + " exec: " + iA);
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public int updatePackage(MindPackageSettings mindPackageSettings) {
        ArrayList<ra.d> arrayList = new ArrayList();
        arrayList.add(new ra.b());
        arrayList.add(new ra.a());
        InstallOption installOption = mindPackageSettings.f89831d;
        for (ra.d dVar : arrayList) {
            int iA = dVar.a(mindPackageSettings, installOption, -1);
            y.a(TAG, "updatePackage: " + dVar.getClass().getSimpleName() + " exec: " + iA);
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }
}
