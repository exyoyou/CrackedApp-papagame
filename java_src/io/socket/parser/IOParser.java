package io.socket.parser;

import io.socket.hasbinary.HasBinary;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.lingala.zip4j.util.e;
import org.json.JSONException;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public final class IOParser implements Parser {
    private static final Logger logger = Logger.getLogger(IOParser.class.getName());

    static class BinaryReconstructor {
        List<byte[]> buffers = new ArrayList();
        public Packet reconPack;

        BinaryReconstructor(Packet packet) {
            this.reconPack = packet;
        }

        public void finishReconstruction() {
            this.reconPack = null;
            this.buffers = new ArrayList();
        }

        public Packet takeBinaryData(byte[] bArr) {
            this.buffers.add(bArr);
            int size = this.buffers.size();
            Packet packet = this.reconPack;
            if (size != packet.attachments) {
                return null;
            }
            List<byte[]> list = this.buffers;
            Packet packetReconstructPacket = Binary.reconstructPacket(packet, (byte[][]) list.toArray(new byte[list.size()][]));
            finishReconstruction();
            return packetReconstructPacket;
        }
    }

    public static final class Encoder implements Parser.Encoder {
        private void encodeAsBinary(Packet packet, Parser.Encoder.Callback callback) {
            Binary.DeconstructedPacket deconstructedPacketDeconstructPacket = Binary.deconstructPacket(packet);
            String strEncodeAsString = encodeAsString(deconstructedPacketDeconstructPacket.packet);
            ArrayList arrayList = new ArrayList(Arrays.asList(deconstructedPacketDeconstructPacket.buffers));
            arrayList.add(0, strEncodeAsString);
            callback.call(arrayList.toArray());
        }

        private String encodeAsString(Packet packet) {
            StringBuilder sb2 = new StringBuilder("" + packet.type);
            int i10 = packet.type;
            if (5 == i10 || 6 == i10) {
                sb2.append(packet.attachments);
                sb2.append("-");
            }
            String str = packet.nsp;
            if (str != null && str.length() != 0 && !e.F0.equals(packet.nsp)) {
                sb2.append(packet.nsp);
                sb2.append(",");
            }
            int i11 = packet.f91811id;
            if (i11 >= 0) {
                sb2.append(i11);
            }
            Object obj = packet.data;
            if (obj != null) {
                sb2.append(obj);
            }
            if (IOParser.logger.isLoggable(Level.FINE)) {
                IOParser.logger.fine(String.format("encoded %s as %s", packet, sb2));
            }
            return sb2.toString();
        }

        @Override // io.socket.parser.Parser.Encoder
        public void encode(Packet packet, Parser.Encoder.Callback callback) {
            int i10 = packet.type;
            if ((i10 == 2 || i10 == 3) && HasBinary.hasBinary(packet.data)) {
                packet.type = packet.type == 2 ? 5 : 6;
            }
            if (IOParser.logger.isLoggable(Level.FINE)) {
                IOParser.logger.fine(String.format("encoding packet %s", packet));
            }
            int i11 = packet.type;
            if (5 == i11 || 6 == i11) {
                encodeAsBinary(packet, callback);
            } else {
                callback.call(new String[]{encodeAsString(packet)});
            }
        }
    }

    private IOParser() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Packet<String> error() {
        return new Packet<>(4, "parser error");
    }

    public static final class Decoder implements Parser.Decoder {
        private Parser.Decoder.Callback onDecodedCallback;
        BinaryReconstructor reconstructor = null;

        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
        private static Packet decodeString(String str) {
            int i10;
            int length = str.length();
            Packet packet = new Packet(Character.getNumericValue(str.charAt(0)));
            int i11 = packet.type;
            if (i11 < 0 || i11 > Parser.types.length - 1) {
                return IOParser.error();
            }
            if (5 != i11 && 6 != i11) {
                i10 = 0;
            } else {
                if (!str.contains("-") || length <= 1) {
                    return IOParser.error();
                }
                StringBuilder sb2 = new StringBuilder();
                i10 = 0;
                while (true) {
                    i10++;
                    if (str.charAt(i10) == '-') {
                        break;
                    }
                    sb2.append(str.charAt(i10));
                }
                packet.attachments = Integer.parseInt(sb2.toString());
            }
            int i12 = i10 + 1;
            if (length <= i12 || '/' != str.charAt(i12)) {
                packet.nsp = e.F0;
            } else {
                StringBuilder sb3 = new StringBuilder();
                do {
                    i10++;
                    char cCharAt = str.charAt(i10);
                    if (',' == cCharAt) {
                        break;
                    }
                    sb3.append(cCharAt);
                } while (i10 + 1 != length);
                packet.nsp = sb3.toString();
            }
            int i13 = i10 + 1;
            if (length > i13 && Character.getNumericValue(Character.valueOf(str.charAt(i13)).charValue()) > -1) {
                StringBuilder sb4 = new StringBuilder();
                do {
                    i10++;
                    char cCharAt2 = str.charAt(i10);
                    if (Character.getNumericValue(cCharAt2) < 0) {
                        i10--;
                        break;
                    }
                    sb4.append(cCharAt2);
                } while (i10 + 1 != length);
                try {
                    packet.f91811id = Integer.parseInt(sb4.toString());
                } catch (NumberFormatException unused) {
                    return IOParser.error();
                }
            }
            int i14 = i10 + 1;
            if (length > i14) {
                try {
                    str.charAt(i14);
                    packet.data = new JSONTokener(str.substring(i14)).nextValue();
                } catch (JSONException e10) {
                    IOParser.logger.log(Level.WARNING, "An error occured while retrieving data from JSONTokener", (Throwable) e10);
                    return IOParser.error();
                }
            }
            if (IOParser.logger.isLoggable(Level.FINE)) {
                IOParser.logger.fine(String.format("decoded %s as %s", str, packet));
            }
            return packet;
        }

        @Override // io.socket.parser.Parser.Decoder
        public void add(String str) {
            Parser.Decoder.Callback callback;
            Packet packetDecodeString = decodeString(str);
            int i10 = packetDecodeString.type;
            if (5 != i10 && 6 != i10) {
                Parser.Decoder.Callback callback2 = this.onDecodedCallback;
                if (callback2 != null) {
                    callback2.call(packetDecodeString);
                    return;
                }
                return;
            }
            BinaryReconstructor binaryReconstructor = new BinaryReconstructor(packetDecodeString);
            this.reconstructor = binaryReconstructor;
            if (binaryReconstructor.reconPack.attachments != 0 || (callback = this.onDecodedCallback) == null) {
                return;
            }
            callback.call(packetDecodeString);
        }

        @Override // io.socket.parser.Parser.Decoder
        public void destroy() {
            BinaryReconstructor binaryReconstructor = this.reconstructor;
            if (binaryReconstructor != null) {
                binaryReconstructor.finishReconstruction();
            }
            this.onDecodedCallback = null;
        }

        @Override // io.socket.parser.Parser.Decoder
        public void onDecoded(Parser.Decoder.Callback callback) {
            this.onDecodedCallback = callback;
        }

        @Override // io.socket.parser.Parser.Decoder
        public void add(byte[] bArr) {
            BinaryReconstructor binaryReconstructor = this.reconstructor;
            if (binaryReconstructor != null) {
                Packet packetTakeBinaryData = binaryReconstructor.takeBinaryData(bArr);
                if (packetTakeBinaryData != null) {
                    this.reconstructor = null;
                    Parser.Decoder.Callback callback = this.onDecodedCallback;
                    if (callback != null) {
                        callback.call(packetTakeBinaryData);
                        return;
                    }
                    return;
                }
                return;
            }
            throw new RuntimeException("got binary data when not reconstructing a packet");
        }
    }
}
