package io.socket.client;

import io.socket.backo.Backoff;
import io.socket.emitter.Emitter;
import io.socket.parser.IOParser;
import io.socket.parser.Packet;
import io.socket.parser.Parser;
import io.socket.thread.EventThread;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.lingala.zip4j.util.e;
import okhttp3.Call;
import okhttp3.WebSocket;

/* JADX INFO: loaded from: classes.dex */
public class Manager extends Emitter {
    public static final String EVENT_CLOSE = "close";
    public static final String EVENT_CONNECT_ERROR = "connect_error";
    public static final String EVENT_CONNECT_TIMEOUT = "connect_timeout";
    public static final String EVENT_ERROR = "error";
    public static final String EVENT_OPEN = "open";
    public static final String EVENT_PACKET = "packet";
    public static final String EVENT_PING = "ping";
    public static final String EVENT_PONG = "pong";
    public static final String EVENT_RECONNECT = "reconnect";
    public static final String EVENT_RECONNECTING = "reconnecting";
    public static final String EVENT_RECONNECT_ATTEMPT = "reconnect_attempt";
    public static final String EVENT_RECONNECT_ERROR = "reconnect_error";
    public static final String EVENT_RECONNECT_FAILED = "reconnect_failed";
    public static final String EVENT_TRANSPORT = "transport";
    static Call.Factory defaultCallFactory;
    static WebSocket.Factory defaultWebSocketFactory;
    private static final Logger logger = Logger.getLogger(Manager.class.getName());
    private double _randomizationFactor;
    private boolean _reconnection;
    private int _reconnectionAttempts;
    private long _reconnectionDelay;
    private long _reconnectionDelayMax;
    private long _timeout;
    private Backoff backoff;
    private Set<Socket> connecting;
    private Parser.Decoder decoder;
    private Parser.Encoder encoder;
    private boolean encoding;
    io.socket.engineio.client.Socket engine;
    private Date lastPing;
    ConcurrentHashMap<String, Socket> nsps;
    private Options opts;
    private List<Packet> packetBuffer;
    ReadyState readyState;
    private boolean reconnecting;
    private boolean skipReconnect;
    private Queue<On.Handle> subs;
    private URI uri;

    /* JADX INFO: renamed from: io.socket.client.Manager$11, reason: invalid class name */
    class AnonymousClass11 extends TimerTask {
        final /* synthetic */ Manager val$self;

        AnonymousClass11(Manager manager) {
            this.val$self = manager;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            EventThread.exec(new Runnable() { // from class: io.socket.client.Manager.11.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass11.this.val$self.skipReconnect) {
                        return;
                    }
                    Manager.logger.fine("attempting reconnect");
                    int attempts = AnonymousClass11.this.val$self.backoff.getAttempts();
                    AnonymousClass11.this.val$self.emitAll("reconnect_attempt", Integer.valueOf(attempts));
                    AnonymousClass11.this.val$self.emitAll("reconnecting", Integer.valueOf(attempts));
                    if (AnonymousClass11.this.val$self.skipReconnect) {
                        return;
                    }
                    AnonymousClass11.this.val$self.open(new OpenCallback() { // from class: io.socket.client.Manager.11.1.1
                        @Override // io.socket.client.Manager.OpenCallback
                        public void call(Exception exc) {
                            if (exc == null) {
                                Manager.logger.fine("reconnect success");
                                AnonymousClass11.this.val$self.onreconnect();
                            } else {
                                Manager.logger.fine("reconnect attempt error");
                                AnonymousClass11.this.val$self.reconnecting = false;
                                AnonymousClass11.this.val$self.reconnect();
                                AnonymousClass11.this.val$self.emitAll("reconnect_error", exc);
                            }
                        }
                    });
                }
            });
        }
    }

    private static class Engine extends io.socket.engineio.client.Socket {
        Engine(URI uri, io.socket.engineio.client.Socket.Options options) {
            super(uri, options);
        }
    }

    public interface OpenCallback {
        void call(Exception exc);
    }

    public static class Options extends io.socket.engineio.client.Socket.Options {
        public Parser.Decoder decoder;
        public Parser.Encoder encoder;
        public double randomizationFactor;
        public int reconnectionAttempts;
        public long reconnectionDelay;
        public long reconnectionDelayMax;
        public boolean reconnection = true;
        public long timeout = 20000;
    }

    enum ReadyState {
        CLOSED,
        OPENING,
        OPEN
    }

    public Manager() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanup() {
        logger.fine("cleanup");
        while (true) {
            On.Handle handlePoll = this.subs.poll();
            if (handlePoll == null) {
                this.decoder.onDecoded(null);
                this.packetBuffer.clear();
                this.encoding = false;
                this.lastPing = null;
                this.decoder.destroy();
                return;
            }
            handlePoll.destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void emitAll(String str, Object... objArr) {
        emit(str, objArr);
        Iterator<Socket> it2 = this.nsps.values().iterator();
        while (it2.hasNext()) {
            it2.next().emit(str, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String generateId(String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (e.F0.equals(str)) {
            str2 = "";
        } else {
            str2 = str + "#";
        }
        sb2.append(str2);
        sb2.append(this.engine.id());
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeReconnectOnOpen() {
        if (!this.reconnecting && this._reconnection && this.backoff.getAttempts() == 0) {
            reconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onclose(String str) {
        logger.fine("onclose");
        cleanup();
        this.backoff.reset();
        this.readyState = ReadyState.CLOSED;
        emit("close", str);
        if (!this._reconnection || this.skipReconnect) {
            return;
        }
        reconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ondata(String str) {
        this.decoder.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ondecoded(Packet packet) {
        emit("packet", packet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onerror(Exception exc) {
        logger.log(Level.FINE, "error", (Throwable) exc);
        emitAll("error", exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onopen() {
        logger.fine("open");
        cleanup();
        this.readyState = ReadyState.OPEN;
        emit("open", new Object[0]);
        io.socket.engineio.client.Socket socket = this.engine;
        this.subs.add(On.on(socket, "data", new Emitter.Listener() { // from class: io.socket.client.Manager.2
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                Object obj = objArr[0];
                if (obj instanceof String) {
                    Manager.this.ondata((String) obj);
                } else if (obj instanceof byte[]) {
                    Manager.this.ondata((byte[]) obj);
                }
            }
        }));
        this.subs.add(On.on(socket, "ping", new Emitter.Listener() { // from class: io.socket.client.Manager.3
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                Manager.this.onping();
            }
        }));
        this.subs.add(On.on(socket, "pong", new Emitter.Listener() { // from class: io.socket.client.Manager.4
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                Manager.this.onpong();
            }
        }));
        this.subs.add(On.on(socket, "error", new Emitter.Listener() { // from class: io.socket.client.Manager.5
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                Manager.this.onerror((Exception) objArr[0]);
            }
        }));
        this.subs.add(On.on(socket, "close", new Emitter.Listener() { // from class: io.socket.client.Manager.6
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                Manager.this.onclose((String) objArr[0]);
            }
        }));
        this.decoder.onDecoded(new Parser.Decoder.Callback() { // from class: io.socket.client.Manager.7
            @Override // io.socket.parser.Parser.Decoder.Callback
            public void call(Packet packet) {
                Manager.this.ondecoded(packet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onping() {
        this.lastPing = new Date();
        emitAll("ping", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onpong() {
        Object[] objArr = new Object[1];
        objArr[0] = Long.valueOf(this.lastPing != null ? new Date().getTime() - this.lastPing.getTime() : 0L);
        emitAll("pong", objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onreconnect() {
        int attempts = this.backoff.getAttempts();
        this.reconnecting = false;
        this.backoff.reset();
        updateSocketIds();
        emitAll("reconnect", Integer.valueOf(attempts));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPacketQueue() {
        if (this.packetBuffer.isEmpty() || this.encoding) {
            return;
        }
        packet(this.packetBuffer.remove(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reconnect() {
        if (this.reconnecting || this.skipReconnect) {
            return;
        }
        if (this.backoff.getAttempts() >= this._reconnectionAttempts) {
            logger.fine("reconnect failed");
            this.backoff.reset();
            emitAll("reconnect_failed", new Object[0]);
            this.reconnecting = false;
            return;
        }
        long jDuration = this.backoff.duration();
        logger.fine(String.format("will wait %dms before reconnect attempt", Long.valueOf(jDuration)));
        this.reconnecting = true;
        final Timer timer = new Timer();
        timer.schedule(new AnonymousClass11(this), jDuration);
        this.subs.add(new On.Handle() { // from class: io.socket.client.Manager.12
            @Override // io.socket.client.On.Handle
            public void destroy() {
                timer.cancel();
            }
        });
    }

    private void updateSocketIds() {
        for (Map.Entry<String, Socket> entry : this.nsps.entrySet()) {
            String key = entry.getKey();
            entry.getValue().f91808id = generateId(key);
        }
    }

    void close() {
        logger.fine(Socket.EVENT_DISCONNECT);
        this.skipReconnect = true;
        this.reconnecting = false;
        if (this.readyState != ReadyState.OPEN) {
            cleanup();
        }
        this.backoff.reset();
        this.readyState = ReadyState.CLOSED;
        io.socket.engineio.client.Socket socket = this.engine;
        if (socket != null) {
            socket.close();
        }
    }

    void destroy(Socket socket) {
        this.connecting.remove(socket);
        if (this.connecting.isEmpty()) {
            close();
        }
    }

    public Manager open() {
        return open(null);
    }

    void packet(Packet packet) {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(String.format("writing packet %s", packet));
        }
        String str = packet.query;
        if (str != null && !str.isEmpty() && packet.type == 0) {
            packet.nsp += "?" + packet.query;
        }
        if (this.encoding) {
            this.packetBuffer.add(packet);
        } else {
            this.encoding = true;
            this.encoder.encode(packet, new Parser.Encoder.Callback() { // from class: io.socket.client.Manager.10
                @Override // io.socket.parser.Parser.Encoder.Callback
                public void call(Object[] objArr) {
                    for (Object obj : objArr) {
                        if (obj instanceof String) {
                            this.engine.write((String) obj);
                        } else if (obj instanceof byte[]) {
                            this.engine.write((byte[]) obj);
                        }
                    }
                    this.encoding = false;
                    this.processPacketQueue();
                }
            });
        }
    }

    public final double randomizationFactor() {
        return this._randomizationFactor;
    }

    public boolean reconnection() {
        return this._reconnection;
    }

    public int reconnectionAttempts() {
        return this._reconnectionAttempts;
    }

    public final long reconnectionDelay() {
        return this._reconnectionDelay;
    }

    public final long reconnectionDelayMax() {
        return this._reconnectionDelayMax;
    }

    public Socket socket(final String str, Options options) {
        Socket socket = this.nsps.get(str);
        if (socket != null) {
            return socket;
        }
        final Socket socket2 = new Socket(this, str, options);
        Socket socketPutIfAbsent = this.nsps.putIfAbsent(str, socket2);
        if (socketPutIfAbsent != null) {
            return socketPutIfAbsent;
        }
        socket2.on(Socket.EVENT_CONNECTING, new Emitter.Listener() { // from class: io.socket.client.Manager.8
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                this.connecting.add(socket2);
            }
        });
        socket2.on("connect", new Emitter.Listener() { // from class: io.socket.client.Manager.9
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                socket2.f91808id = this.generateId(str);
            }
        });
        return socket2;
    }

    public long timeout() {
        return this._timeout;
    }

    public Manager(URI uri) {
        this(uri, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ondata(byte[] bArr) {
        this.decoder.add(bArr);
    }

    public Manager open(final OpenCallback openCallback) {
        EventThread.exec(new Runnable() { // from class: io.socket.client.Manager.1
            @Override // java.lang.Runnable
            public void run() {
                ReadyState readyState;
                Logger logger2 = Manager.logger;
                Level level = Level.FINE;
                if (logger2.isLoggable(level)) {
                    Manager.logger.fine(String.format("readyState %s", Manager.this.readyState));
                }
                ReadyState readyState2 = Manager.this.readyState;
                if (readyState2 == ReadyState.OPEN || readyState2 == (readyState = ReadyState.OPENING)) {
                    return;
                }
                if (Manager.logger.isLoggable(level)) {
                    Manager.logger.fine(String.format("opening %s", Manager.this.uri));
                }
                Manager.this.engine = new Engine(Manager.this.uri, Manager.this.opts);
                final Manager manager = Manager.this;
                final io.socket.engineio.client.Socket socket = manager.engine;
                manager.readyState = readyState;
                manager.skipReconnect = false;
                socket.on("transport", new Emitter.Listener() { // from class: io.socket.client.Manager.1.1
                    @Override // io.socket.emitter.Emitter.Listener
                    public void call(Object... objArr) {
                        manager.emit("transport", objArr);
                    }
                });
                final On.Handle handleOn = On.on(socket, "open", new Emitter.Listener() { // from class: io.socket.client.Manager.1.2
                    @Override // io.socket.emitter.Emitter.Listener
                    public void call(Object... objArr) {
                        manager.onopen();
                        OpenCallback openCallback2 = openCallback;
                        if (openCallback2 != null) {
                            openCallback2.call(null);
                        }
                    }
                });
                On.Handle handleOn2 = On.on(socket, "error", new Emitter.Listener() { // from class: io.socket.client.Manager.1.3
                    @Override // io.socket.emitter.Emitter.Listener
                    public void call(Object... objArr) {
                        Object obj = objArr.length > 0 ? objArr[0] : null;
                        Manager.logger.fine("connect_error");
                        manager.cleanup();
                        Manager manager2 = manager;
                        manager2.readyState = ReadyState.CLOSED;
                        manager2.emitAll("connect_error", obj);
                        if (openCallback != null) {
                            openCallback.call(new SocketIOException("Connection error", obj instanceof Exception ? (Exception) obj : null));
                        } else {
                            manager.maybeReconnectOnOpen();
                        }
                    }
                });
                if (Manager.this._timeout >= 0) {
                    final long j10 = Manager.this._timeout;
                    Manager.logger.fine(String.format("connection attempt will timeout after %d", Long.valueOf(j10)));
                    final Timer timer = new Timer();
                    timer.schedule(new TimerTask() { // from class: io.socket.client.Manager.1.4
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            EventThread.exec(new Runnable() { // from class: io.socket.client.Manager.1.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Manager.logger.fine(String.format("connect attempt timed out after %d", Long.valueOf(j10)));
                                    handleOn.destroy();
                                    socket.close();
                                    socket.emit("error", new SocketIOException("timeout"));
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    manager.emitAll("connect_timeout", Long.valueOf(j10));
                                }
                            });
                        }
                    }, j10);
                    Manager.this.subs.add(new On.Handle() { // from class: io.socket.client.Manager.1.5
                        @Override // io.socket.client.On.Handle
                        public void destroy() {
                            timer.cancel();
                        }
                    });
                }
                Manager.this.subs.add(handleOn);
                Manager.this.subs.add(handleOn2);
                Manager.this.engine.open();
            }
        });
        return this;
    }

    public Manager randomizationFactor(double d10) {
        this._randomizationFactor = d10;
        Backoff backoff = this.backoff;
        if (backoff != null) {
            backoff.setJitter(d10);
        }
        return this;
    }

    public Manager reconnection(boolean z10) {
        this._reconnection = z10;
        return this;
    }

    public Manager reconnectionAttempts(int i10) {
        this._reconnectionAttempts = i10;
        return this;
    }

    public Manager reconnectionDelay(long j10) {
        this._reconnectionDelay = j10;
        Backoff backoff = this.backoff;
        if (backoff != null) {
            backoff.setMin(j10);
        }
        return this;
    }

    public Manager reconnectionDelayMax(long j10) {
        this._reconnectionDelayMax = j10;
        Backoff backoff = this.backoff;
        if (backoff != null) {
            backoff.setMax(j10);
        }
        return this;
    }

    public Manager timeout(long j10) {
        this._timeout = j10;
        return this;
    }

    public Manager(Options options) {
        this(null, options);
    }

    public Manager(URI uri, Options options) {
        this.connecting = new HashSet();
        options = options == null ? new Options() : options;
        if (options.path == null) {
            options.path = "/socket.io";
        }
        if (options.webSocketFactory == null) {
            options.webSocketFactory = defaultWebSocketFactory;
        }
        if (options.callFactory == null) {
            options.callFactory = defaultCallFactory;
        }
        this.opts = options;
        this.nsps = new ConcurrentHashMap<>();
        this.subs = new LinkedList();
        reconnection(options.reconnection);
        int i10 = options.reconnectionAttempts;
        reconnectionAttempts(i10 == 0 ? Integer.MAX_VALUE : i10);
        long j10 = options.reconnectionDelay;
        reconnectionDelay(j10 == 0 ? 1000L : j10);
        long j11 = options.reconnectionDelayMax;
        reconnectionDelayMax(j11 == 0 ? 5000L : j11);
        double d10 = options.randomizationFactor;
        randomizationFactor(d10 == 0.0d ? 0.5d : d10);
        this.backoff = new Backoff().setMin(reconnectionDelay()).setMax(reconnectionDelayMax()).setJitter(randomizationFactor());
        timeout(options.timeout);
        this.readyState = ReadyState.CLOSED;
        this.uri = uri;
        this.encoding = false;
        this.packetBuffer = new ArrayList();
        Parser.Encoder encoder = options.encoder;
        this.encoder = encoder == null ? new IOParser.Encoder() : encoder;
        Parser.Decoder decoder = options.decoder;
        this.decoder = decoder == null ? new IOParser.Decoder() : decoder;
    }

    public Socket socket(String str) {
        return socket(str, null);
    }
}
