package app.mgsim.arena;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class UDPHelper {
    private static final String TAG = "ArenaUDP";
    private static int UPD_PORT = 12306;
    private DatagramSocket mClient;
    private final Context mContext;
    private WifiManager.MulticastLock mLock;
    private volatile int mRetryCount = 10;
    private ConcurrentHashMap<Integer, AreaInfo> mAreaMaps = new ConcurrentHashMap<>();

    private class UDPReceiveThread extends SocketThread {
        private UDPReceiveThread() {
        }

        @Override // app.mgsim.arena.SocketThread
        protected void execute() {
            try {
                try {
                    UDPHelper.this.mLock.acquire();
                    byte[] bArr = new byte[10];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 10);
                    while (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                        UDPHelper.this.mClient.receive(datagramPacket);
                        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                        byte b10 = byteBufferWrap.get();
                        long jCurrentTimeMillis = System.currentTimeMillis() - byteBufferWrap.getLong();
                        UDPHelper.this.printMsg("receive meg for area: " + ((int) b10) + "---get ping time :" + jCurrentTimeMillis);
                        UDPHelper.this.updateMapForPings(b10, jCurrentTimeMillis);
                    }
                    UDPHelper.this.printMsg("UDPReceiveThread client is null or is closed----");
                } catch (Exception e10) {
                    if (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                        UDPHelper.this.printMsg("UDPReceiveThread while exception ,restart receive thread...");
                        UDPHelper.this.restartReceiveThread();
                    }
                    UDPHelper.this.printMsg("UDPReceiveThread while exception:" + e10.getMessage());
                }
            } finally {
                UDPHelper.this.printMsg("UDPReceiveThread finally----");
                UDPHelper.this.releaseWifiLock();
            }
        }
    }

    private class UDPSendThread extends SocketThread {
        private AreaInfo info;
        int retryCount;

        public UDPSendThread(AreaInfo areaInfo) {
            this.info = areaInfo;
        }

        @Override // app.mgsim.arena.SocketThread
        protected void execute() {
            int i10;
            ByteBuffer byteBufferCreateBuf = null;
            try {
                byteBufferCreateBuf = UDPHelper.this.createBuf(9);
                while (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                    byteBufferCreateBuf.clear();
                    String host = this.info.getHost();
                    int port = this.info.getPort();
                    byte area = (byte) this.info.getArea();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    byteBufferCreateBuf.put(area);
                    byteBufferCreateBuf.putLong(jCurrentTimeMillis);
                    UDPHelper.this.mClient.send(new DatagramPacket(byteBufferCreateBuf.array(), 0, byteBufferCreateBuf.array().length, InetAddress.getByName(host), port));
                    Thread.sleep(5000L);
                }
                UDPHelper.this.printMsg("UDPSendThread client is null or client is closed---");
            } catch (Exception e10) {
                if (byteBufferCreateBuf != null) {
                    try {
                        byteBufferCreateBuf.clear();
                    } catch (Exception unused) {
                    }
                }
                if (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed() && (i10 = this.retryCount) <= 10) {
                    this.retryCount = i10 + 1;
                    UDPHelper.this.printMsg("UDPSendThread while exception restart send thread....");
                    execute();
                }
                UDPHelper.this.printMsg("UDPSendThread while exception:" + e10.getMessage());
            }
        }
    }

    public UDPHelper(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ByteBuffer createBuf(int i10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferAllocate;
    }

    private void initUDPClient() {
        try {
            DatagramSocket datagramSocket = new DatagramSocket(UPD_PORT);
            this.mClient = datagramSocket;
            datagramSocket.setSoTimeout(10000);
        } catch (SocketException e10) {
            if (this.mRetryCount > 0) {
                UPD_PORT++;
                initUDPClient();
            }
            printMsg("initUDP -->mRetryCount:" + this.mRetryCount + "--SocketException: " + e10.getMessage());
            this.mRetryCount = this.mRetryCount + (-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartReceiveThread() {
        releaseWifiLock();
        try {
            this.mLock = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).createMulticastLock("test udp wifi");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        new Thread(new UDPReceiveThread()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMapForPings(byte b10, long j10) {
        synchronized (this.mAreaMaps) {
            Enumeration<AreaInfo> enumerationElements = this.mAreaMaps.elements();
            while (enumerationElements.hasMoreElements()) {
                AreaInfo areaInfoNextElement = enumerationElements.nextElement();
                if (areaInfoNextElement != null && areaInfoNextElement.getArea() == b10) {
                    areaInfoNextElement.setPingTime(j10);
                    this.mAreaMaps.replace(Integer.valueOf(b10), areaInfoNextElement);
                    break;
                }
            }
        }
    }

    public ConcurrentHashMap<Integer, AreaInfo> getAreaMaps() {
        ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap;
        synchronized (this.mAreaMaps) {
            concurrentHashMap = this.mAreaMaps;
        }
        return concurrentHashMap;
    }

    public void initUDPAndStart(AreaInfo[] areaInfoArr) {
        this.mAreaMaps.clear();
        for (AreaInfo areaInfo : areaInfoArr) {
            this.mAreaMaps.put(Integer.valueOf(areaInfo.getArea()), areaInfo);
        }
        if (this.mLock == null) {
            try {
                this.mLock = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).createMulticastLock("test udp wifi");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.mRetryCount = 10;
        initUDPClient();
        new Thread(new UDPReceiveThread()).start();
        for (AreaInfo areaInfo2 : areaInfoArr) {
            new Thread(new UDPSendThread(areaInfo2)).start();
        }
    }

    void printMsg(String str) {
    }

    void releaseWifiLock() {
        try {
            WifiManager.MulticastLock multicastLock = this.mLock;
            if (multicastLock != null) {
                multicastLock.release();
            }
        } catch (Exception e10) {
            printMsg("releaseWifiLock mLock  release exception----" + e10.getMessage());
        }
    }

    public void stop() {
        DatagramSocket datagramSocket = this.mClient;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.mClient = null;
        }
        this.mRetryCount = 10;
        this.mAreaMaps.clear();
    }

    public void updateMaps(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        synchronized (this.mAreaMaps) {
            Enumeration<AreaInfo> enumerationElements = this.mAreaMaps.elements();
            while (enumerationElements.hasMoreElements()) {
                AreaInfo areaInfoNextElement = enumerationElements.nextElement();
                if (areaInfoNextElement != null) {
                    if (areaInfoNextElement.getArea() == 1) {
                        areaInfoNextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getBj());
                        this.mAreaMaps.replace(1, areaInfoNextElement);
                    } else if (areaInfoNextElement.getArea() == 2) {
                        areaInfoNextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getSh());
                        this.mAreaMaps.replace(2, areaInfoNextElement);
                    } else if (areaInfoNextElement.getArea() == 3) {
                        areaInfoNextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getGz());
                        this.mAreaMaps.replace(3, areaInfoNextElement);
                    }
                }
            }
        }
    }
}
