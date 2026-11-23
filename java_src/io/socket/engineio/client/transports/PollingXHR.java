package io.socket.engineio.client.transports;

import io.socket.emitter.Emitter;
import io.socket.engineio.client.Transport;
import io.socket.thread.EventThread;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class PollingXHR extends Polling {
    private static boolean LOGGABLE_FINE;
    private static final Logger logger;

    static {
        Logger logger2 = Logger.getLogger(PollingXHR.class.getName());
        logger = logger2;
        LOGGABLE_FINE = logger2.isLoggable(Level.FINE);
    }

    public PollingXHR(Transport.Options options) {
        super(options);
    }

    @Override // io.socket.engineio.client.transports.Polling
    protected void doPoll() {
        logger.fine("xhr poll");
        Request request = request();
        request.on("data", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.5
            @Override // io.socket.emitter.Emitter.Listener
            public void call(final Object... objArr) {
                EventThread.exec(new Runnable() { // from class: io.socket.engineio.client.transports.PollingXHR.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Object[] objArr2 = objArr;
                        Object obj = objArr2.length > 0 ? objArr2[0] : null;
                        if (obj instanceof String) {
                            this.onData((String) obj);
                        } else if (obj instanceof byte[]) {
                            this.onData((byte[]) obj);
                        }
                    }
                });
            }
        });
        request.on("error", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.6
            @Override // io.socket.emitter.Emitter.Listener
            public void call(final Object... objArr) {
                EventThread.exec(new Runnable() { // from class: io.socket.engineio.client.transports.PollingXHR.6.1
                    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
                    @Override // java.lang.Runnable
                    public void run() {
                        Exception exc;
                        Object[] objArr2 = objArr;
                        if (objArr2.length > 0) {
                            Object obj = objArr2[0];
                            if (obj instanceof Exception) {
                                exc = (Exception) obj;
                            } else {
                                exc = null;
                            }
                        } else {
                            exc = null;
                        }
                        this.onError("xhr poll error", exc);
                    }
                });
            }
        });
        request.create();
    }

    @Override // io.socket.engineio.client.transports.Polling
    protected void doWrite(byte[] bArr, Runnable runnable) {
        doWrite((Object) bArr, runnable);
    }

    protected Request request() {
        return request(null);
    }

    public static class Request extends Emitter {
        private static final String BINARY_CONTENT_TYPE = "application/octet-stream";
        public static final String EVENT_DATA = "data";
        public static final String EVENT_ERROR = "error";
        public static final String EVENT_REQUEST_HEADERS = "requestHeaders";
        public static final String EVENT_RESPONSE_HEADERS = "responseHeaders";
        public static final String EVENT_SUCCESS = "success";
        private Call.Factory callFactory;
        private Object data;
        private String method;
        private Call requestCall;
        private Response response;
        private String uri;
        private static final MediaType BINARY_MEDIA_TYPE = MediaType.parse("application/octet-stream");
        private static final String TEXT_CONTENT_TYPE = "text/plain;charset=UTF-8";
        private static final MediaType TEXT_MEDIA_TYPE = MediaType.parse(TEXT_CONTENT_TYPE);

        public static class Options {
            public Call.Factory callFactory;
            public Object data;
            public String method;
            public String uri;
        }

        public Request(Options options) {
            String str = options.method;
            this.method = str == null ? "GET" : str;
            this.uri = options.uri;
            this.data = options.data;
            Call.Factory factory = options.callFactory;
            this.callFactory = factory == null ? new OkHttpClient() : factory;
        }

        private void onData(String str) {
            emit("data", str);
            onSuccess();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onError(Exception exc) {
            emit("error", exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onLoad() {
            ResponseBody responseBodyBody = this.response.body();
            try {
                if ("application/octet-stream".equalsIgnoreCase(responseBodyBody.get$contentType().getMediaType())) {
                    onData(responseBodyBody.bytes());
                } else {
                    onData(responseBodyBody.string());
                }
            } catch (IOException e10) {
                onError(e10);
            }
        }

        private void onRequestHeaders(Map<String, List<String>> map) {
            emit("requestHeaders", map);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onResponseHeaders(Map<String, List<String>> map) {
            emit("responseHeaders", map);
        }

        private void onSuccess() {
            emit("success", new Object[0]);
        }

        public void create() {
            if (PollingXHR.LOGGABLE_FINE) {
                PollingXHR.logger.fine(String.format("xhr open %s: %s", this.method, this.uri));
            }
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            if ("POST".equals(this.method)) {
                if (this.data instanceof byte[]) {
                    treeMap.put("Content-type", new LinkedList(Collections.singletonList("application/octet-stream")));
                } else {
                    treeMap.put("Content-type", new LinkedList(Collections.singletonList(TEXT_CONTENT_TYPE)));
                }
            }
            treeMap.put("Accept", new LinkedList(Collections.singletonList("*/*")));
            onRequestHeaders(treeMap);
            if (PollingXHR.LOGGABLE_FINE) {
                Logger logger = PollingXHR.logger;
                Object[] objArr = new Object[2];
                objArr[0] = this.uri;
                Object string = this.data;
                if (string instanceof byte[]) {
                    string = Arrays.toString((byte[]) string);
                }
                objArr[1] = string;
                logger.fine(String.format("sending xhr with url %s | data %s", objArr));
            }
            okhttp3.Request.Builder builder = new okhttp3.Request.Builder();
            for (Map.Entry<String, List<String>> entry : treeMap.entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    builder.addHeader(entry.getKey(), it2.next());
                }
            }
            Object obj = this.data;
            Call callNewCall = this.callFactory.newCall(builder.url(HttpUrl.parse(this.uri)).method(this.method, obj instanceof byte[] ? RequestBody.create(BINARY_MEDIA_TYPE, (byte[]) obj) : obj instanceof String ? RequestBody.create(TEXT_MEDIA_TYPE, (String) obj) : null).build());
            this.requestCall = callNewCall;
            callNewCall.enqueue(new Callback() { // from class: io.socket.engineio.client.transports.PollingXHR.Request.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    this.onError(iOException);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    this.response = response;
                    this.onResponseHeaders(response.headers().toMultimap());
                    try {
                        if (response.isSuccessful()) {
                            this.onLoad();
                        } else {
                            this.onError(new IOException(Integer.toString(response.code())));
                        }
                    } finally {
                        response.close();
                    }
                }
            });
        }

        private void onData(byte[] bArr) {
            emit("data", bArr);
            onSuccess();
        }
    }

    @Override // io.socket.engineio.client.transports.Polling
    protected void doWrite(String str, Runnable runnable) {
        doWrite((Object) str, runnable);
    }

    protected Request request(Request.Options options) {
        if (options == null) {
            options = new Request.Options();
        }
        options.uri = uri();
        options.callFactory = this.callFactory;
        Request request = new Request(options);
        request.on("requestHeaders", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.2
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                this.emit("requestHeaders", objArr[0]);
            }
        }).on("responseHeaders", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.1
            @Override // io.socket.emitter.Emitter.Listener
            public void call(final Object... objArr) {
                EventThread.exec(new Runnable() { // from class: io.socket.engineio.client.transports.PollingXHR.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        this.emit("responseHeaders", objArr[0]);
                    }
                });
            }
        });
        return request;
    }

    private void doWrite(Object obj, final Runnable runnable) {
        Request.Options options = new Request.Options();
        options.method = "POST";
        options.data = obj;
        Request request = request(options);
        request.on("success", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.3
            @Override // io.socket.emitter.Emitter.Listener
            public void call(Object... objArr) {
                EventThread.exec(new Runnable() { // from class: io.socket.engineio.client.transports.PollingXHR.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }
                });
            }
        });
        request.on("error", new Emitter.Listener() { // from class: io.socket.engineio.client.transports.PollingXHR.4
            @Override // io.socket.emitter.Emitter.Listener
            public void call(final Object... objArr) {
                EventThread.exec(new Runnable() { // from class: io.socket.engineio.client.transports.PollingXHR.4.1
                    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
                    @Override // java.lang.Runnable
                    public void run() {
                        Exception exc;
                        Object[] objArr2 = objArr;
                        if (objArr2.length > 0) {
                            Object obj2 = objArr2[0];
                            if (obj2 instanceof Exception) {
                                exc = (Exception) obj2;
                            } else {
                                exc = null;
                            }
                        } else {
                            exc = null;
                        }
                        this.onError("xhr post error", exc);
                    }
                });
            }
        });
        request.create();
    }
}
