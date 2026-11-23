package com.haima.hmcp.volley.toolbox;

import com.haima.hmcp.volley.Header;
import com.haima.hmcp.volley.Network;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class BasicNetwork implements Network {
    private static final int DEFAULT_POOL_SIZE = 4096;
    private final BaseHttpStack mBaseHttpStack;

    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    @Deprecated
    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    @Deprecated
    protected static Map<String, String> convertHeaders(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i10 = 0; i10 < headerArr.length; i10++) {
            treeMap.put(headerArr[i10].getName(), headerArr[i10].getValue());
        }
        return treeMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        r12 = r3.getStatusCode();
        r0 = r3.getHeaders();
     */
    @Override // com.haima.hmcp.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.haima.hmcp.volley.NetworkResponse performRequest(com.haima.hmcp.volley.Request<?> r19) throws com.haima.hmcp.volley.VolleyError {
        /*
            r18 = this;
            r1 = r18
            r8 = r19
            long r9 = android.os.SystemClock.elapsedRealtime()
        L8:
            java.util.Collections.emptyList()
            r2 = 0
            com.haima.hmcp.volley.Cache$Entry r0 = r19.getCacheEntry()     // Catch: java.io.IOException -> L7d
            java.util.Map r0 = com.haima.hmcp.volley.toolbox.HttpHeaderParser.getCacheHeaders(r0)     // Catch: java.io.IOException -> L7d
            com.haima.hmcp.volley.toolbox.BaseHttpStack r3 = r1.mBaseHttpStack     // Catch: java.io.IOException -> L7d
            com.haima.hmcp.volley.toolbox.HttpResponse r3 = r3.executeRequest(r8, r0)     // Catch: java.io.IOException -> L7d
            int r12 = r3.getStatusCode()     // Catch: java.io.IOException -> L78
            java.util.List r0 = r3.getHeaders()     // Catch: java.io.IOException -> L78
            boolean r4 = r19.isDownloadRequest()     // Catch: java.io.IOException -> L78
            if (r4 == 0) goto L2f
            com.haima.hmcp.volley.toolbox.ByteArrayPool r4 = r1.mPool     // Catch: java.io.IOException -> L78
            byte[] r2 = r8.handleResponse(r3, r4)     // Catch: java.io.IOException -> L78
            goto L51
        L2f:
            r4 = 304(0x130, float:4.26E-43)
            if (r12 != r4) goto L3d
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L78
            long r4 = r4 - r9
            com.haima.hmcp.volley.NetworkResponse r0 = com.haima.hmcp.volley.toolbox.NetworkUtility.getNotModifiedNetworkResponse(r8, r4, r0)     // Catch: java.io.IOException -> L78
            return r0
        L3d:
            java.io.InputStream r4 = r3.getContent()     // Catch: java.io.IOException -> L78
            if (r4 == 0) goto L4e
            int r5 = r3.getContentLength()     // Catch: java.io.IOException -> L78
            com.haima.hmcp.volley.toolbox.ByteArrayPool r6 = r1.mPool     // Catch: java.io.IOException -> L78
            byte[] r2 = com.haima.hmcp.volley.toolbox.NetworkUtility.inputStreamToBytes(r4, r5, r6)     // Catch: java.io.IOException -> L78
            goto L51
        L4e:
            r4 = 0
            byte[] r2 = new byte[r4]     // Catch: java.io.IOException -> L78
        L51:
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L78
            long r4 = r4 - r9
            com.haima.hmcp.volley.toolbox.NetworkUtility.logSlowRequests(r4, r8, r2, r12)     // Catch: java.io.IOException -> L78
            r4 = 200(0xc8, float:2.8E-43)
            if (r12 < r4) goto L72
            r4 = 299(0x12b, float:4.19E-43)
            if (r12 > r4) goto L72
            com.haima.hmcp.volley.NetworkResponse r4 = new com.haima.hmcp.volley.NetworkResponse     // Catch: java.io.IOException -> L78
            r14 = 0
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L78
            long r15 = r5 - r9
            r11 = r4
            r13 = r2
            r17 = r0
            r11.<init>(r12, r13, r14, r15, r17)     // Catch: java.io.IOException -> L78
            return r4
        L72:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.io.IOException -> L78
            r0.<init>()     // Catch: java.io.IOException -> L78
            throw r0     // Catch: java.io.IOException -> L78
        L78:
            r0 = move-exception
            r7 = r2
            r6 = r3
            r3 = r0
            goto L81
        L7d:
            r0 = move-exception
            r3 = r0
            r6 = r2
            r7 = r6
        L81:
            r2 = r19
            r4 = r9
            com.haima.hmcp.volley.toolbox.NetworkUtility$RetryInfo r0 = com.haima.hmcp.volley.toolbox.NetworkUtility.shouldRetryException(r2, r3, r4, r6, r7)
            com.haima.hmcp.volley.toolbox.NetworkUtility.attemptRetryOnException(r8, r0)
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.haima.hmcp.volley.toolbox.BasicNetwork.performRequest(com.haima.hmcp.volley.Request):com.haima.hmcp.volley.NetworkResponse");
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mBaseHttpStack = new AdaptedHttpStack(httpStack);
        this.mPool = byteArrayPool;
    }

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.mBaseHttpStack = baseHttpStack;
        this.mHttpStack = baseHttpStack;
        this.mPool = byteArrayPool;
    }
}
