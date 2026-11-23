package org.apache.http.protocol;

import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public interface HttpRequestHandlerMapper {
    HttpRequestHandler lookup(HttpRequest httpRequest);
}
