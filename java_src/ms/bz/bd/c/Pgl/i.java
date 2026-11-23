package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
final class i extends pblz.pgla {
    i() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    String name = networkInterfaceNextElement.getName();
                    if (!TextUtils.isEmpty(name) && !inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address) && name.startsWith((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f77982", new byte[]{101, 56, 74, 72, BinaryMemcacheOpcodes.REPLACEQ}))) {
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "950409", new byte[]{BinaryMemcacheOpcodes.SASL_AUTH, 57, 70, 84, 46, 42, 62, 6, 100, 119, HttpConstants.SEMICOLON, 119, 77, 65, 2, 43, 96});
                        networkInterfaceNextElement.getName();
                        return networkInterfaceNextElement.getName();
                    }
                }
            }
            return "";
        } catch (SocketException unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a84f10", new byte[]{119, Utf8.REPLACEMENT_BYTE, com.sigmob.sdk.archives.tar.e.Q, 82, 39, com.sigmob.sdk.archives.tar.e.O, 67, BinaryMemcacheOpcodes.GAT, 97, BinaryMemcacheOpcodes.GATKQ, 117, 41, 84, 82, 8, 38, 107, BinaryMemcacheOpcodes.INCREMENTQ, Utf8.REPLACEMENT_BYTE});
            return "";
        }
    }
}
