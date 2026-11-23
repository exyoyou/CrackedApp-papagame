package app.mgsim.arena;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public class SocketUtils {
    public static void closeInputStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void closeOutStream(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void closeSocket(Socket socket) {
        if (socket != null) {
            try {
                if (!socket.isConnected() || socket.isClosed()) {
                    return;
                }
                socket.shutdownInput();
                socket.shutdownOutput();
                socket.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static ByteBuffer createBuffer(int i10) {
        return ByteBuffer.allocate(i10);
    }

    public static SocketError createSocketError(int i10, String str) {
        return new SocketError(i10, str);
    }

    public static SocketError createSocketErrorForBadNetwork(String str) {
        return new SocketError(1, str);
    }
}
