package io.socket.engineio.parser;

import io.socket.utf8.UTF8;
import io.socket.utf8.UTF8Exception;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Parser {
    private static final int MAX_INT_CHAR_LENGTH = String.valueOf(Integer.MAX_VALUE).length();
    public static final int PROTOCOL = 3;
    private static Packet<String> err;
    private static final Map<String, Integer> packets;
    private static final Map<Integer, String> packetslist;
    private static UTF8.Options utf8Options;

    public interface DecodePayloadCallback<T> {
        boolean call(Packet<T> packet, int i10, int i11);
    }

    public interface EncodeCallback<T> {
        void call(T t10);
    }

    static {
        HashMap<String, Integer> map = new HashMap<String, Integer>() { // from class: io.socket.engineio.parser.Parser.1
            {
                put("open", 0);
                put("close", 1);
                put("ping", 2);
                put("pong", 3);
                put("message", 4);
                put("upgrade", 5);
                put(Packet.NOOP, 6);
            }
        };
        packets = map;
        packetslist = new HashMap();
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            packetslist.put(entry.getValue(), entry.getKey());
        }
        err = new Packet<>("error", "parser error");
        UTF8.Options options = new UTF8.Options();
        utf8Options = options;
        options.strict = false;
    }

    private Parser() {
    }

    private static String byteArrayToString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.appendCodePoint(b10 & 255);
        }
        return sb2.toString();
    }

    public static Packet<String> decodePacket(String str) {
        return decodePacket(str, false);
    }

    public static void decodePayload(String str, DecodePayloadCallback<String> decodePayloadCallback) {
        if (str == null || str.length() == 0) {
            decodePayloadCallback.call(err, 0, 1);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (':' != cCharAt) {
                sb2.append(cCharAt);
            } else {
                try {
                    int i11 = Integer.parseInt(sb2.toString());
                    int i12 = i10 + 1;
                    try {
                        String strSubstring = str.substring(i12, i12 + i11);
                        if (strSubstring.length() != 0) {
                            Packet<String> packetDecodePacket = decodePacket(strSubstring, false);
                            if (err.type.equals(packetDecodePacket.type) && err.data.equals(packetDecodePacket.data)) {
                                decodePayloadCallback.call(err, 0, 1);
                                return;
                            } else if (!decodePayloadCallback.call(packetDecodePacket, i10 + i11, length)) {
                                return;
                            }
                        }
                        i10 += i11;
                        sb2 = new StringBuilder();
                    } catch (IndexOutOfBoundsException unused) {
                        decodePayloadCallback.call(err, 0, 1);
                        return;
                    }
                } catch (NumberFormatException unused2) {
                    decodePayloadCallback.call(err, 0, 1);
                    return;
                }
            }
            i10++;
        }
        if (sb2.length() > 0) {
            decodePayloadCallback.call(err, 0, 1);
        }
    }

    private static void encodeByteArray(Packet<byte[]> packet, EncodeCallback<byte[]> encodeCallback) {
        byte[] bArr = packet.data;
        byte[] bArr2 = new byte[bArr.length + 1];
        bArr2[0] = packets.get(packet.type).byteValue();
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        encodeCallback.call(bArr2);
    }

    private static void encodeOneBinaryPacket(Packet packet, final EncodeCallback<byte[]> encodeCallback) throws UTF8Exception {
        encodePacket(packet, true, new EncodeCallback() { // from class: io.socket.engineio.parser.Parser.4
            @Override // io.socket.engineio.parser.Parser.EncodeCallback
            public void call(Object obj) {
                if (obj instanceof String) {
                    String str = (String) obj;
                    String strValueOf = String.valueOf(str.length());
                    int length = strValueOf.length() + 2;
                    byte[] bArr = new byte[length];
                    bArr[0] = 0;
                    int i10 = 0;
                    while (i10 < strValueOf.length()) {
                        int i11 = i10 + 1;
                        bArr[i11] = (byte) Character.getNumericValue(strValueOf.charAt(i10));
                        i10 = i11;
                    }
                    bArr[length - 1] = -1;
                    encodeCallback.call(Buffer.concat(new byte[][]{bArr, Parser.stringToByteArray(str)}));
                    return;
                }
                byte[] bArr2 = (byte[]) obj;
                String strValueOf2 = String.valueOf(bArr2.length);
                int length2 = strValueOf2.length() + 2;
                byte[] bArr3 = new byte[length2];
                bArr3[0] = 1;
                int i12 = 0;
                while (i12 < strValueOf2.length()) {
                    int i13 = i12 + 1;
                    bArr3[i13] = (byte) Character.getNumericValue(strValueOf2.charAt(i12));
                    i12 = i13;
                }
                bArr3[length2 - 1] = -1;
                encodeCallback.call(Buffer.concat(new byte[][]{bArr3, bArr2}));
            }
        });
    }

    public static void encodePacket(Packet packet, EncodeCallback encodeCallback) throws UTF8Exception {
        encodePacket(packet, false, encodeCallback);
    }

    public static void encodePayload(Packet[] packetArr, EncodeCallback encodeCallback) throws UTF8Exception {
        for (Packet packet : packetArr) {
            if (packet.data instanceof byte[]) {
                encodePayloadAsBinary(packetArr, encodeCallback);
                return;
            }
        }
        if (packetArr.length == 0) {
            encodeCallback.call("0:");
            return;
        }
        final StringBuilder sb2 = new StringBuilder();
        for (Packet packet2 : packetArr) {
            encodePacket(packet2, false, new EncodeCallback() { // from class: io.socket.engineio.parser.Parser.2
                @Override // io.socket.engineio.parser.Parser.EncodeCallback
                public void call(Object obj) {
                    sb2.append(Parser.setLengthHeader((String) obj));
                }
            });
        }
        encodeCallback.call(sb2.toString());
    }

    private static void encodePayloadAsBinary(Packet[] packetArr, EncodeCallback<byte[]> encodeCallback) throws UTF8Exception {
        if (packetArr.length == 0) {
            encodeCallback.call(new byte[0]);
            return;
        }
        final ArrayList arrayList = new ArrayList(packetArr.length);
        for (Packet packet : packetArr) {
            encodeOneBinaryPacket(packet, new EncodeCallback<byte[]>() { // from class: io.socket.engineio.parser.Parser.3
                @Override // io.socket.engineio.parser.Parser.EncodeCallback
                public void call(byte[] bArr) {
                    arrayList.add(bArr);
                }
            });
        }
        encodeCallback.call(Buffer.concat((byte[][]) arrayList.toArray(new byte[arrayList.size()][])));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String setLengthHeader(String str) {
        return str.length() + ":" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] stringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) Character.codePointAt(str, i10);
        }
        return bArr;
    }

    public static Packet<String> decodePacket(String str, boolean z10) {
        int numericValue;
        if (str == null) {
            return err;
        }
        try {
            numericValue = Character.getNumericValue(str.charAt(0));
        } catch (IndexOutOfBoundsException unused) {
            numericValue = -1;
        }
        if (z10) {
            try {
                str = UTF8.decode(str, utf8Options);
            } catch (UTF8Exception unused2) {
                return err;
            }
        }
        if (numericValue >= 0) {
            Map<Integer, String> map = packetslist;
            if (numericValue < map.size()) {
                return str.length() > 1 ? new Packet<>(map.get(Integer.valueOf(numericValue)), str.substring(1)) : new Packet<>(map.get(Integer.valueOf(numericValue)));
            }
        }
        return err;
    }

    public static void encodePacket(Packet packet, boolean z10, EncodeCallback encodeCallback) throws UTF8Exception {
        if (packet.data instanceof byte[]) {
            encodeByteArray(packet, encodeCallback);
            return;
        }
        String strValueOf = String.valueOf(packets.get(packet.type));
        if (packet.data != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strValueOf);
            String strValueOf2 = String.valueOf(packet.data);
            if (z10) {
                strValueOf2 = UTF8.encode(strValueOf2, utf8Options);
            }
            sb2.append(strValueOf2);
            strValueOf = sb2.toString();
        }
        encodeCallback.call(strValueOf);
    }

    public static Packet<byte[]> decodePacket(byte[] bArr) {
        byte b10 = bArr[0];
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 1, bArr2, 0, length);
        return new Packet<>(packetslist.get(Integer.valueOf(b10)), bArr2);
    }

    public static void decodePayload(byte[] bArr, DecodePayloadCallback decodePayloadCallback) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (byteBufferWrap.capacity() > 0) {
                StringBuilder sb2 = new StringBuilder();
                boolean z10 = (byteBufferWrap.get(0) & 255) == 0;
                int i10 = 1;
                while (true) {
                    int i11 = byteBufferWrap.get(i10) & 255;
                    if (i11 == 255) {
                        break;
                    }
                    if (sb2.length() > MAX_INT_CHAR_LENGTH) {
                        decodePayloadCallback.call(err, 0, 1);
                        return;
                    } else {
                        sb2.append(i11);
                        i10++;
                    }
                }
                byteBufferWrap.position(sb2.length() + 1);
                ByteBuffer byteBufferSlice = byteBufferWrap.slice();
                int i12 = Integer.parseInt(sb2.toString());
                byteBufferSlice.position(1);
                int i13 = i12 + 1;
                byteBufferSlice.limit(i13);
                byte[] bArr2 = new byte[byteBufferSlice.remaining()];
                byteBufferSlice.get(bArr2);
                if (z10) {
                    arrayList.add(byteArrayToString(bArr2));
                } else {
                    arrayList.add(bArr2);
                }
                byteBufferSlice.clear();
                byteBufferSlice.position(i13);
                byteBufferWrap = byteBufferSlice.slice();
            } else {
                int size = arrayList.size();
                for (int i14 = 0; i14 < size; i14++) {
                    Object obj = arrayList.get(i14);
                    if (obj instanceof String) {
                        decodePayloadCallback.call(decodePacket((String) obj, true), i14, size);
                    } else if (obj instanceof byte[]) {
                        decodePayloadCallback.call(decodePacket((byte[]) obj), i14, size);
                    }
                }
                return;
            }
        }
    }
}
