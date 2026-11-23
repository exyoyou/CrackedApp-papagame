package org.apache.http.impl;

import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class DefaultHttpResponseFactoryHC4 implements HttpResponseFactory {
    public static final DefaultHttpResponseFactoryHC4 INSTANCE = new DefaultHttpResponseFactoryHC4();
    protected final ReasonPhraseCatalog reasonCatalog;

    public DefaultHttpResponseFactoryHC4(ReasonPhraseCatalog reasonPhraseCatalog) {
        this.reasonCatalog = (ReasonPhraseCatalog) Args.notNull(reasonPhraseCatalog, "Reason phrase catalog");
    }

    protected Locale determineLocale(HttpContext httpContext) {
        return Locale.getDefault();
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(ProtocolVersion protocolVersion, int i10, HttpContext httpContext) {
        Args.notNull(protocolVersion, "HTTP version");
        Locale localeDetermineLocale = determineLocale(httpContext);
        return new BasicHttpResponse(new BasicStatusLine(protocolVersion, i10, this.reasonCatalog.getReason(i10, localeDetermineLocale)), this.reasonCatalog, localeDetermineLocale);
    }

    public DefaultHttpResponseFactoryHC4() {
        this(EnglishReasonPhraseCatalogHC4.INSTANCE);
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(StatusLine statusLine, HttpContext httpContext) {
        Args.notNull(statusLine, "Status line");
        return new BasicHttpResponse(statusLine, this.reasonCatalog, determineLocale(httpContext));
    }
}
