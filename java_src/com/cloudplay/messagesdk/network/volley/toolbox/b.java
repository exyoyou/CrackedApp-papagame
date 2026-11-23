package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import com.cloudplay.messagesdk.network.volley.Request;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b implements HttpStack {
    public abstract g a(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException;

    @Override // com.cloudplay.messagesdk.network.volley.toolbox.HttpStack
    @Deprecated
    public final HttpResponse performRequest(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException {
        g gVarA = a(request, map);
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), gVarA.d(), ""));
        ArrayList arrayList = new ArrayList();
        for (com.cloudplay.messagesdk.network.volley.d dVar : gVarA.c()) {
            arrayList.add(new BasicHeader(dVar.a(), dVar.b()));
        }
        basicHttpResponse.setHeaders((Header[]) arrayList.toArray(new Header[0]));
        InputStream inputStreamA = gVarA.a();
        if (inputStreamA != null) {
            BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
            basicHttpEntity.setContent(inputStreamA);
            basicHttpEntity.setContentLength(gVarA.b());
            basicHttpResponse.setEntity(basicHttpEntity);
        }
        return basicHttpResponse;
    }
}
