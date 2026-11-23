package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.conn.HttpClientConnectionManager;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
class ConnectionHolder implements ConnectionReleaseTrigger, Cancellable, Closeable {
    private static final String TAG = "HttpClient";
    private final HttpClientConnection managedConn;
    private final HttpClientConnectionManager manager;
    private volatile boolean released;
    private volatile boolean reusable;
    private volatile Object state;
    private volatile TimeUnit tunit;
    private volatile long validDuration;

    public ConnectionHolder(HttpClientConnectionManager httpClientConnectionManager, HttpClientConnection httpClientConnection) {
        this.manager = httpClientConnectionManager;
        this.managedConn = httpClientConnection;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpClientConnection httpClientConnection;
        Object obj;
        long j10;
        TimeUnit timeUnit;
        synchronized (this.managedConn) {
            if (this.released) {
                return;
            }
            this.released = true;
            try {
                try {
                    this.managedConn.shutdown();
                    Log.isLoggable(TAG, 3);
                    httpClientConnectionManager = this.manager;
                    httpClientConnection = this.managedConn;
                    obj = null;
                    j10 = 0;
                    timeUnit = TimeUnit.MILLISECONDS;
                } catch (IOException e10) {
                    if (Log.isLoggable(TAG, 3)) {
                        e10.getMessage();
                    }
                    httpClientConnectionManager = this.manager;
                    httpClientConnection = this.managedConn;
                    obj = null;
                    j10 = 0;
                    timeUnit = TimeUnit.MILLISECONDS;
                }
                httpClientConnectionManager.releaseConnection(httpClientConnection, obj, j10, timeUnit);
            } catch (Throwable th) {
                this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                throw th;
            }
        }
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        boolean z10 = this.released;
        abortConnection();
        return !z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        abortConnection();
    }

    public boolean isReleased() {
        return this.released;
    }

    public boolean isReusable() {
        return this.reusable;
    }

    public void markNonReusable() {
        this.reusable = false;
    }

    public void markReusable() {
        this.reusable = true;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpClientConnection httpClientConnection;
        Object obj;
        long j10;
        TimeUnit timeUnit;
        synchronized (this.managedConn) {
            if (this.released) {
                return;
            }
            this.released = true;
            if (this.reusable) {
                this.manager.releaseConnection(this.managedConn, this.state, this.validDuration, this.tunit);
            } else {
                try {
                    try {
                        this.managedConn.close();
                        Log.isLoggable(TAG, 3);
                        httpClientConnectionManager = this.manager;
                        httpClientConnection = this.managedConn;
                        obj = null;
                        j10 = 0;
                        timeUnit = TimeUnit.MILLISECONDS;
                    } catch (IOException e10) {
                        if (Log.isLoggable(TAG, 3)) {
                            e10.getMessage();
                        }
                        httpClientConnectionManager = this.manager;
                        httpClientConnection = this.managedConn;
                        obj = null;
                        j10 = 0;
                        timeUnit = TimeUnit.MILLISECONDS;
                    }
                    httpClientConnectionManager.releaseConnection(httpClientConnection, obj, j10, timeUnit);
                } catch (Throwable th) {
                    this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                    throw th;
                }
            }
        }
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public void setValidFor(long j10, TimeUnit timeUnit) {
        synchronized (this.managedConn) {
            this.validDuration = j10;
            this.tunit = timeUnit;
        }
    }
}
