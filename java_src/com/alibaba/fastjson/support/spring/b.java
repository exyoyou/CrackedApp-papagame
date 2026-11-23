package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.util.CollectionUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.view.AbstractView;

/* JADX INFO: loaded from: classes7.dex */
public class b extends AbstractView {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6794g = "application/json";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Charset f6795h = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set<String> f6798c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Charset f6796a = f6795h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SerializerFeature[] f6797b = new SerializerFeature[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6799d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6800e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6801f = false;

    public b() {
        setContentType("application/json");
        setExposePathVariables(false);
    }

    protected Object a(Map<String, Object> map) {
        HashMap map2 = new HashMap(map.size());
        Set<String> setKeySet = !CollectionUtils.isEmpty(this.f6798c) ? this.f6798c : map.keySet();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!(entry.getValue() instanceof BindingResult) && setKeySet.contains(entry.getKey())) {
                map2.put(entry.getKey(), entry.getValue());
            }
        }
        if (this.f6801f && map2.size() == 1) {
            Iterator it2 = map2.entrySet().iterator();
            if (it2.hasNext()) {
                return ((Map.Entry) it2.next()).getValue();
            }
        }
        return map2;
    }

    public Charset b() {
        return this.f6796a;
    }

    public SerializerFeature[] c() {
        return this.f6797b;
    }

    public boolean d() {
        return this.f6801f;
    }

    protected void e(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        setResponseContentType(httpServletRequest, httpServletResponse);
        httpServletResponse.setCharacterEncoding(f6795h.name());
        if (this.f6799d) {
            httpServletResponse.addHeader("Pragma", "no-cache");
            httpServletResponse.addHeader("Cache-Control", "no-cache, no-store, max-age=0");
            httpServletResponse.addDateHeader("Expires", 1L);
        }
    }

    protected void f(Map<String, Object> map, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        byte[] bytes = com.alibaba.fastjson.a.toJSONString(a(map), this.f6797b).getBytes(this.f6796a);
        ByteArrayOutputStream byteArrayOutputStreamCreateTemporaryOutputStream = this.f6800e ? createTemporaryOutputStream() : httpServletResponse.getOutputStream();
        byteArrayOutputStreamCreateTemporaryOutputStream.write(bytes);
        if (this.f6800e) {
            writeToResponse(httpServletResponse, byteArrayOutputStreamCreateTemporaryOutputStream);
        }
    }

    public void g(Charset charset) {
        this.f6796a = charset;
    }

    public void h(boolean z10) {
        this.f6799d = z10;
    }

    public void i(boolean z10) {
        this.f6801f = z10;
    }

    public void j(SerializerFeature... serializerFeatureArr) {
        this.f6797b = serializerFeatureArr;
    }

    public void k(Set<String> set) {
        this.f6798c = set;
    }

    @Deprecated
    public void l(SerializerFeature... serializerFeatureArr) {
        j(serializerFeatureArr);
    }

    public void m(boolean z10) {
        this.f6800e = z10;
    }
}
