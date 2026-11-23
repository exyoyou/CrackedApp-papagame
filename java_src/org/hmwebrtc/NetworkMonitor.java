package org.hmwebrtc;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class NetworkMonitor {
    private static final String TAG = "NetworkMonitor";
    private volatile NetworkChangeDetector.ConnectionType currentConnectionType;
    private final ArrayList<Long> nativeNetworkObservers;

    @Nullable
    private NetworkChangeDetector networkChangeDetector;
    private NetworkChangeDetectorFactory networkChangeDetectorFactory;
    private final Object networkChangeDetectorLock;
    private final ArrayList<NetworkObserver> networkObservers;
    private int numObservers;

    private static class InstanceHolder {
        static final NetworkMonitor instance = new NetworkMonitor();

        private InstanceHolder() {
        }
    }

    public interface NetworkObserver {
        void onConnectionTypeChanged(NetworkChangeDetector.ConnectionType connectionType);
    }

    @Deprecated
    public static void addNetworkObserver(NetworkObserver networkObserver) {
        getInstance().addObserver(networkObserver);
    }

    @CalledByNative
    private static int androidSdkInt() {
        return Build.VERSION.SDK_INT;
    }

    private static void assertIsTrue(boolean z10) {
        if (!z10) {
            throw new AssertionError("Expected to be true");
        }
    }

    static NetworkMonitorAutoDetect createAndSetAutoDetectForTest(Context context) {
        NetworkMonitor networkMonitor = getInstance();
        NetworkChangeDetector networkChangeDetectorCreateNetworkChangeDetector = networkMonitor.createNetworkChangeDetector(context);
        networkMonitor.networkChangeDetector = networkChangeDetectorCreateNetworkChangeDetector;
        return (NetworkMonitorAutoDetect) networkChangeDetectorCreateNetworkChangeDetector;
    }

    private NetworkChangeDetector createNetworkChangeDetector(Context context) {
        return this.networkChangeDetectorFactory.create(new NetworkChangeDetector.Observer() { // from class: org.hmwebrtc.NetworkMonitor.2
            @Override // org.hmwebrtc.NetworkChangeDetector.Observer
            public void onConnectionTypeChanged(NetworkChangeDetector.ConnectionType connectionType) {
                NetworkMonitor.this.updateCurrentConnectionType(connectionType);
            }

            @Override // org.hmwebrtc.NetworkChangeDetector.Observer
            public void onNetworkConnect(NetworkChangeDetector.NetworkInformation networkInformation) {
                NetworkMonitor.this.notifyObserversOfNetworkConnect(networkInformation);
            }

            @Override // org.hmwebrtc.NetworkChangeDetector.Observer
            public void onNetworkDisconnect(long j10) {
                NetworkMonitor.this.notifyObserversOfNetworkDisconnect(j10);
            }

            @Override // org.hmwebrtc.NetworkChangeDetector.Observer
            public void onNetworkPreference(List<NetworkChangeDetector.ConnectionType> list, int i10) {
                NetworkMonitor.this.notifyObserversOfNetworkPreference(list, i10);
            }
        }, context);
    }

    private NetworkChangeDetector.ConnectionType getCurrentConnectionType() {
        return this.currentConnectionType;
    }

    @CalledByNative
    public static NetworkMonitor getInstance() {
        return InstanceHolder.instance;
    }

    private List<Long> getNativeNetworkObserversSync() {
        ArrayList arrayList;
        synchronized (this.nativeNetworkObservers) {
            arrayList = new ArrayList(this.nativeNetworkObservers);
        }
        return arrayList;
    }

    @Deprecated
    public static void init(Context context) {
    }

    public static boolean isOnline() {
        return getInstance().getCurrentConnectionType() != NetworkChangeDetector.ConnectionType.CONNECTION_NONE;
    }

    private native void nativeNotifyConnectionTypeChanged(long j10);

    private native void nativeNotifyOfActiveNetworkList(long j10, NetworkChangeDetector.NetworkInformation[] networkInformationArr);

    private native void nativeNotifyOfNetworkConnect(long j10, NetworkChangeDetector.NetworkInformation networkInformation);

    private native void nativeNotifyOfNetworkDisconnect(long j10, long j11);

    private native void nativeNotifyOfNetworkPreference(long j10, NetworkChangeDetector.ConnectionType connectionType, int i10);

    @CalledByNative
    private boolean networkBindingSupported() {
        boolean z10;
        synchronized (this.networkChangeDetectorLock) {
            NetworkChangeDetector networkChangeDetector = this.networkChangeDetector;
            z10 = networkChangeDetector != null && networkChangeDetector.supportNetworkCallback();
        }
        return z10;
    }

    private void notifyObserversOfConnectionTypeChange(NetworkChangeDetector.ConnectionType connectionType) {
        ArrayList arrayList;
        Iterator<Long> it2 = getNativeNetworkObserversSync().iterator();
        while (it2.hasNext()) {
            nativeNotifyConnectionTypeChanged(it2.next().longValue());
        }
        synchronized (this.networkObservers) {
            arrayList = new ArrayList(this.networkObservers);
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((NetworkObserver) it3.next()).onConnectionTypeChanged(connectionType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyObserversOfNetworkConnect(NetworkChangeDetector.NetworkInformation networkInformation) {
        Iterator<Long> it2 = getNativeNetworkObserversSync().iterator();
        while (it2.hasNext()) {
            nativeNotifyOfNetworkConnect(it2.next().longValue(), networkInformation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyObserversOfNetworkDisconnect(long j10) {
        Iterator<Long> it2 = getNativeNetworkObserversSync().iterator();
        while (it2.hasNext()) {
            nativeNotifyOfNetworkDisconnect(it2.next().longValue(), j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyObserversOfNetworkPreference(List<NetworkChangeDetector.ConnectionType> list, int i10) {
        List<Long> nativeNetworkObserversSync = getNativeNetworkObserversSync();
        for (NetworkChangeDetector.ConnectionType connectionType : list) {
            Iterator<Long> it2 = nativeNetworkObserversSync.iterator();
            while (it2.hasNext()) {
                nativeNotifyOfNetworkPreference(it2.next().longValue(), connectionType, i10);
            }
        }
    }

    @Deprecated
    public static void removeNetworkObserver(NetworkObserver networkObserver) {
        getInstance().removeObserver(networkObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentConnectionType(NetworkChangeDetector.ConnectionType connectionType) {
        this.currentConnectionType = connectionType;
        notifyObserversOfConnectionTypeChange(connectionType);
    }

    private void updateObserverActiveNetworkList(long j10) {
        List<NetworkChangeDetector.NetworkInformation> activeNetworkList;
        synchronized (this.networkChangeDetectorLock) {
            NetworkChangeDetector networkChangeDetector = this.networkChangeDetector;
            activeNetworkList = networkChangeDetector == null ? null : networkChangeDetector.getActiveNetworkList();
        }
        if (activeNetworkList == null || activeNetworkList.size() == 0) {
            return;
        }
        nativeNotifyOfActiveNetworkList(j10, (NetworkChangeDetector.NetworkInformation[]) activeNetworkList.toArray(new NetworkChangeDetector.NetworkInformation[activeNetworkList.size()]));
    }

    public void addObserver(NetworkObserver networkObserver) {
        synchronized (this.networkObservers) {
            this.networkObservers.add(networkObserver);
        }
    }

    @Nullable
    NetworkChangeDetector getNetworkChangeDetector() {
        NetworkChangeDetector networkChangeDetector;
        synchronized (this.networkChangeDetectorLock) {
            networkChangeDetector = this.networkChangeDetector;
        }
        return networkChangeDetector;
    }

    int getNumObservers() {
        int i10;
        synchronized (this.networkChangeDetectorLock) {
            i10 = this.numObservers;
        }
        return i10;
    }

    public void removeObserver(NetworkObserver networkObserver) {
        synchronized (this.networkObservers) {
            this.networkObservers.remove(networkObserver);
        }
    }

    public void setNetworkChangeDetectorFactory(NetworkChangeDetectorFactory networkChangeDetectorFactory) {
        assertIsTrue(this.numObservers == 0);
        this.networkChangeDetectorFactory = networkChangeDetectorFactory;
    }

    public void startMonitoring(Context context) {
        synchronized (this.networkChangeDetectorLock) {
            this.numObservers++;
            if (this.networkChangeDetector == null) {
                this.networkChangeDetector = createNetworkChangeDetector(context);
            }
            this.currentConnectionType = this.networkChangeDetector.getCurrentConnectionType();
        }
    }

    public void stopMonitoring() {
        NetworkChangeDetector networkChangeDetector;
        synchronized (this.networkChangeDetectorLock) {
            int i10 = this.numObservers - 1;
            this.numObservers = i10;
            if (i10 == 0 && (networkChangeDetector = this.networkChangeDetector) != null) {
                try {
                    networkChangeDetector.destroy();
                } catch (Exception e10) {
                    Logging.e(TAG, "Exception in stopMonitoring destroy()", e10);
                    HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "NetworkMonitor.stopMonitoring Exception: " + Log.getStackTraceString(e10));
                }
                this.networkChangeDetector = null;
            }
        }
    }

    private NetworkMonitor() {
        this.networkChangeDetectorFactory = new NetworkChangeDetectorFactory() { // from class: org.hmwebrtc.NetworkMonitor.1
            @Override // org.hmwebrtc.NetworkChangeDetectorFactory
            public NetworkChangeDetector create(NetworkChangeDetector.Observer observer, Context context) {
                return new NetworkMonitorAutoDetect(observer, context);
            }
        };
        this.networkChangeDetectorLock = new Object();
        this.nativeNetworkObservers = new ArrayList<>();
        this.networkObservers = new ArrayList<>();
        this.numObservers = 0;
        this.currentConnectionType = NetworkChangeDetector.ConnectionType.CONNECTION_UNKNOWN;
    }

    @Deprecated
    public void startMonitoring() {
        startMonitoring(ContextUtils.getApplicationContext());
    }

    @CalledByNative
    private void startMonitoring(@Nullable Context context, long j10) {
        Logging.d(TAG, "Start monitoring with native observer " + j10);
        if (context == null) {
            try {
                context = ContextUtils.getApplicationContext();
            } catch (Exception e10) {
                synchronized (this.networkChangeDetectorLock) {
                    NetworkChangeDetector networkChangeDetector = this.networkChangeDetector;
                    if (networkChangeDetector != null) {
                        try {
                            networkChangeDetector.destroy();
                        } catch (Exception e11) {
                            Logging.e(TAG, "Exception in startMonitoring destroy()", e11);
                            HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "NetworkMonitor.startMonitoring Exception: " + Log.getStackTraceString(e11));
                        }
                        this.networkChangeDetector = null;
                    }
                    Logging.e(TAG, "Exception in startMonitoring", e10);
                    HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "NetworkMonitor.startMonitoring Exception: " + Log.getStackTraceString(e10));
                    return;
                }
            }
        }
        startMonitoring(context);
        synchronized (this.nativeNetworkObservers) {
            this.nativeNetworkObservers.add(Long.valueOf(j10));
        }
        updateObserverActiveNetworkList(j10);
        notifyObserversOfConnectionTypeChange(this.currentConnectionType);
    }

    @CalledByNative
    private void stopMonitoring(long j10) {
        Logging.d(TAG, "Stop monitoring with native observer " + j10);
        stopMonitoring();
        synchronized (this.nativeNetworkObservers) {
            this.nativeNetworkObservers.remove(Long.valueOf(j10));
        }
    }
}
