package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.PoolEntry;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
class CPoolEntry extends PoolEntry<HttpRoute, ManagedHttpClientConnection> {
    private static final String TAG = "HttpClient";
    private volatile boolean routeComplete;

    public CPoolEntry(String str, HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection, long j10, TimeUnit timeUnit) {
        super(str, httpRoute, managedHttpClientConnection, j10, timeUnit);
    }

    @Override // org.apache.http.pool.PoolEntry
    public void close() {
        try {
            closeConnection();
        } catch (IOException unused) {
        }
    }

    public void closeConnection() throws IOException {
        getConnection().close();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isClosed() {
        return !getConnection().isOpen();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isExpired(long j10) {
        boolean zIsExpired = super.isExpired(j10);
        if (zIsExpired && Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Connection ");
            sb2.append(this);
            sb2.append(" expired @ ");
            sb2.append(new Date(getExpiry()));
        }
        return zIsExpired;
    }

    public boolean isRouteComplete() {
        return this.routeComplete;
    }

    public void markRouteComplete() {
        this.routeComplete = true;
    }

    public void shutdownConnection() throws IOException {
        getConnection().shutdown();
    }
}
