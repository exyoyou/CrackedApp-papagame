package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface e extends IInterface {

    public static class a implements e {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void deleteUser(int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void doTransferInstalls() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ActivityInfo getActivityInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ApplicationInfo getApplicationInfo(String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public int getComponentEnabledSetting(ComponentName componentName, int i10) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ApplicationInfo> getInstalledApplications(int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<PackageInfo> getInstalledPackages(int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<InstalledPackage> getInstalledPackagesAsUser(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public MindPackageSettings getMindPackageSettings(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public PackageInfo getPackageInfo(String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public String[] getPackagesForUid(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ProviderInfo getProviderInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ActivityInfo getReceiverInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ServiceInfo getServiceInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public InstallResult installPackageAsExist(String str, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public InstallResult installPackageAsUser(String str, InstallOption installOption, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public boolean isInstalled(String str, int i10) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ProviderInfo> queryContentProviders(String str, int i10, int i11, int i12) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ResolveInfo> queryIntentActivities(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ResolveInfo> queryIntentBroadcastReceivers(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<ResolveInfo> queryIntentServices(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ResolveInfo resolveActivity(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ProviderInfo resolveContentProvider(String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ResolveInfo resolveIntent(Intent intent, String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public ResolveInfo resolveService(Intent intent, int i10, String str, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void setComponentEnabledSetting(ComponentName componentName, int i10, int i11, int i12) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void setMindPackageRunWithPlugin(String str, boolean z10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void uninstallPackage(String str) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void uninstallPackageAsUser(String str, int i10) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements e {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindPackageManagerService";
        static final int TRANSACTION_deleteUser = 22;
        static final int TRANSACTION_doTransferInstalls = 29;
        static final int TRANSACTION_doTransferInstallsOnlyForMainPackage = 30;
        static final int TRANSACTION_getActivityInfo = 9;
        static final int TRANSACTION_getApplicationInfo = 5;
        static final int TRANSACTION_getComponentEnabledSetting = 26;
        static final int TRANSACTION_getInstalledApplications = 11;
        static final int TRANSACTION_getInstalledPackages = 12;
        static final int TRANSACTION_getInstalledPackagesAsUser = 24;
        static final int TRANSACTION_getMindPackageSettings = 27;
        static final int TRANSACTION_getPackageInfo = 6;
        static final int TRANSACTION_getPackagesForUid = 31;
        static final int TRANSACTION_getProviderInfo = 10;
        static final int TRANSACTION_getReceiverInfo = 8;
        static final int TRANSACTION_getServiceInfo = 7;
        static final int TRANSACTION_installPackageAsExist = 19;
        static final int TRANSACTION_installPackageAsUser = 18;
        static final int TRANSACTION_isInstalled = 23;
        static final int TRANSACTION_queryContentProviders = 17;
        static final int TRANSACTION_queryIntentActivities = 13;
        static final int TRANSACTION_queryIntentBroadcastReceivers = 15;
        static final int TRANSACTION_queryIntentContentProviders = 16;
        static final int TRANSACTION_queryIntentServices = 14;
        static final int TRANSACTION_resolveActivity = 2;
        static final int TRANSACTION_resolveContentProvider = 3;
        static final int TRANSACTION_resolveIntent = 4;
        static final int TRANSACTION_resolveService = 1;
        static final int TRANSACTION_setComponentEnabledSetting = 25;
        static final int TRANSACTION_setMindPackageRunWithPlugin = 28;
        static final int TRANSACTION_uninstallPackage = 21;
        static final int TRANSACTION_uninstallPackageAsUser = 20;

        private static class a implements e {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static e f89900c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89901b;

            a(IBinder iBinder) {
                this.f89901b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89901b;
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void deleteUser(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f89901b.transact(22, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().deleteUser(i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void doTransferInstalls() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89901b.transact(29, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().doTransferInstalls();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89901b.transact(30, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().doTransferInstallsOnlyForMainPackage();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ActivityInfo getActivityInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(9, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getActivityInfo(componentName, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ApplicationInfo getApplicationInfo(String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(5, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getApplicationInfo(str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ApplicationInfo) ApplicationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public int getComponentEnabledSetting(ComponentName componentName, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(26, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getComponentEnabledSetting(componentName, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ApplicationInfo> getInstalledApplications(int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(11, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledApplications(i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ApplicationInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<PackageInfo> getInstalledPackages(int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(12, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledPackages(i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PackageInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<InstalledPackage> getInstalledPackagesAsUser(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(24, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledPackagesAsUser(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InstalledPackage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public MindPackageSettings getMindPackageSettings(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89901b.transact(27, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getMindPackageSettings(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public PackageInfo getPackageInfo(String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(6, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPackageInfo(str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (PackageInfo) PackageInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public String[] getPackagesForUid(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(31, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPackagesForUid(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ProviderInfo getProviderInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(10, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getProviderInfo(componentName, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ActivityInfo getReceiverInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(8, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getReceiverInfo(componentName, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ServiceInfo getServiceInfo(ComponentName componentName, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(7, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getServiceInfo(componentName, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ServiceInfo) ServiceInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public InstallResult installPackageAsExist(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(19, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsExist(str, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InstallResult.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public InstallResult installPackageAsUser(String str, InstallOption installOption, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (installOption != null) {
                        parcelObtain.writeInt(1);
                        installOption.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(18, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsUser(str, installOption, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InstallResult.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public boolean isInstalled(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (!this.f89901b.transact(23, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().isInstalled(str, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ProviderInfo> queryContentProviders(String str, int i10, int i11, int i12) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.f89901b.transact(17, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryContentProviders(str, i10, i11, i12);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ProviderInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ResolveInfo> queryIntentActivities(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(13, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentActivities(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ResolveInfo> queryIntentBroadcastReceivers(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(15, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentBroadcastReceivers(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(16, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentContentProviders(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<ResolveInfo> queryIntentServices(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(14, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentServices(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ResolveInfo resolveActivity(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveActivity(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ProviderInfo resolveContentProvider(String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(3, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveContentProvider(str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ResolveInfo resolveIntent(Intent intent, String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(4, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveIntent(intent, str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public ResolveInfo resolveService(Intent intent, int i10, String str, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    if (!this.f89901b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveService(intent, i10, str, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void setComponentEnabledSetting(ComponentName componentName, int i10, int i11, int i12) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.f89901b.transact(25, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().setComponentEnabledSetting(componentName, i10, i11, i12);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void setMindPackageRunWithPlugin(String str, boolean z10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f89901b.transact(28, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().setMindPackageRunWithPlugin(str, z10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void uninstallPackage(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.f89901b.transact(21, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().uninstallPackage(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void uninstallPackageAsUser(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89901b.transact(20, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().uninstallPackageAsUser(str, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        public static e getDefaultImpl() {
            return a.f89900c;
        }

        public static boolean setDefaultImpl(e eVar) {
            if (a.f89900c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (eVar == null) {
                return false;
            }
            a.f89900c = eVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoResolveService = resolveService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoResolveService != null) {
                        parcel2.writeInt(1);
                        resolveInfoResolveService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoResolveActivity = resolveActivity(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoResolveActivity != null) {
                        parcel2.writeInt(1);
                        resolveInfoResolveActivity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    ProviderInfo providerInfoResolveContentProvider = resolveContentProvider(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (providerInfoResolveContentProvider != null) {
                        parcel2.writeInt(1);
                        providerInfoResolveContentProvider.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoResolveIntent = resolveIntent(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoResolveIntent != null) {
                        parcel2.writeInt(1);
                        resolveInfoResolveIntent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    ApplicationInfo applicationInfo = getApplicationInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (applicationInfo != null) {
                        parcel2.writeInt(1);
                        applicationInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    PackageInfo packageInfo = getPackageInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (packageInfo != null) {
                        parcel2.writeInt(1);
                        packageInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    ServiceInfo serviceInfo = getServiceInfo(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (serviceInfo != null) {
                        parcel2.writeInt(1);
                        serviceInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityInfo receiverInfo = getReceiverInfo(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (receiverInfo != null) {
                        parcel2.writeInt(1);
                        receiverInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityInfo activityInfo = getActivityInfo(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (activityInfo != null) {
                        parcel2.writeInt(1);
                        activityInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    ProviderInfo providerInfo = getProviderInfo(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (providerInfo != null) {
                        parcel2.writeInt(1);
                        providerInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ApplicationInfo> installedApplications = getInstalledApplications(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(installedApplications);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PackageInfo> installedPackages = getInstalledPackages(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(installedPackages);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentActivities);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentServices = queryIntentServices(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentServices);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentBroadcastReceivers = queryIntentBroadcastReceivers(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentBroadcastReceivers);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentContentProviders = queryIntentContentProviders(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentContentProviders);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ProviderInfo> listQueryContentProviders = queryContentProviders(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryContentProviders);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    InstallResult installResultInstallPackageAsUser = installPackageAsUser(parcel.readString(), parcel.readInt() != 0 ? InstallOption.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (installResultInstallPackageAsUser != null) {
                        parcel2.writeInt(1);
                        installResultInstallPackageAsUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    InstallResult installResultInstallPackageAsExist = installPackageAsExist(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (installResultInstallPackageAsExist != null) {
                        parcel2.writeInt(1);
                        installResultInstallPackageAsExist.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    uninstallPackageAsUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    uninstallPackage(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteUser(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInstalled = isInstalled(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInstalled ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<InstalledPackage> installedPackagesAsUser = getInstalledPackagesAsUser(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(installedPackagesAsUser);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComponentEnabledSetting(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int componentEnabledSetting = getComponentEnabledSetting(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(componentEnabledSetting);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    MindPackageSettings mindPackageSettings = getMindPackageSettings(parcel.readString());
                    parcel2.writeNoException();
                    if (mindPackageSettings != null) {
                        parcel2.writeInt(1);
                        mindPackageSettings.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMindPackageRunWithPlugin(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    doTransferInstalls();
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    doTransferInstallsOnlyForMainPackage();
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] packagesForUid = getPackagesForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(packagesForUid);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void deleteUser(int i10) throws RemoteException;

    void doTransferInstalls() throws RemoteException;

    void doTransferInstallsOnlyForMainPackage() throws RemoteException;

    ActivityInfo getActivityInfo(ComponentName componentName, int i10, int i11) throws RemoteException;

    ApplicationInfo getApplicationInfo(String str, int i10, int i11) throws RemoteException;

    int getComponentEnabledSetting(ComponentName componentName, int i10) throws RemoteException;

    List<ApplicationInfo> getInstalledApplications(int i10, int i11) throws RemoteException;

    List<PackageInfo> getInstalledPackages(int i10, int i11) throws RemoteException;

    List<InstalledPackage> getInstalledPackagesAsUser(int i10) throws RemoteException;

    MindPackageSettings getMindPackageSettings(String str) throws RemoteException;

    PackageInfo getPackageInfo(String str, int i10, int i11) throws RemoteException;

    String[] getPackagesForUid(int i10) throws RemoteException;

    ProviderInfo getProviderInfo(ComponentName componentName, int i10, int i11) throws RemoteException;

    ActivityInfo getReceiverInfo(ComponentName componentName, int i10, int i11) throws RemoteException;

    ServiceInfo getServiceInfo(ComponentName componentName, int i10, int i11) throws RemoteException;

    InstallResult installPackageAsExist(String str, int i10) throws RemoteException;

    InstallResult installPackageAsUser(String str, InstallOption installOption, int i10) throws RemoteException;

    boolean isInstalled(String str, int i10) throws RemoteException;

    List<ProviderInfo> queryContentProviders(String str, int i10, int i11, int i12) throws RemoteException;

    List<ResolveInfo> queryIntentActivities(Intent intent, int i10, String str, int i11) throws RemoteException;

    List<ResolveInfo> queryIntentBroadcastReceivers(Intent intent, int i10, String str, int i11) throws RemoteException;

    List<ResolveInfo> queryIntentContentProviders(Intent intent, int i10, String str, int i11) throws RemoteException;

    List<ResolveInfo> queryIntentServices(Intent intent, int i10, String str, int i11) throws RemoteException;

    ResolveInfo resolveActivity(Intent intent, int i10, String str, int i11) throws RemoteException;

    ProviderInfo resolveContentProvider(String str, int i10, int i11) throws RemoteException;

    ResolveInfo resolveIntent(Intent intent, String str, int i10, int i11) throws RemoteException;

    ResolveInfo resolveService(Intent intent, int i10, String str, int i11) throws RemoteException;

    void setComponentEnabledSetting(ComponentName componentName, int i10, int i11, int i12) throws RemoteException;

    void setMindPackageRunWithPlugin(String str, boolean z10) throws RemoteException;

    void uninstallPackage(String str) throws RemoteException;

    void uninstallPackageAsUser(String str, int i10) throws RemoteException;
}
