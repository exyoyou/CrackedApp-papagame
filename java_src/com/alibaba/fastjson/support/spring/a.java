package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.haima.hmcp.countly.CountlyDbPolicy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;

/* JADX INFO: loaded from: classes7.dex */
public class a extends AbstractHttpMessageConverter<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f6791c = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Charset f6792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SerializerFeature[] f6793b;

    /* JADX WARN: Illegal instructions before constructor call */
    public a() {
        Charset charset = f6791c;
        super(new MediaType[]{new MediaType("application", CountlyDbPolicy.FIELD_COUNTLY_JSON, charset), new MediaType("application", "*+json", charset)});
        this.f6792a = charset;
        this.f6793b = new SerializerFeature[0];
    }

    public Charset a() {
        return this.f6792a;
    }

    public SerializerFeature[] b() {
        return this.f6793b;
    }

    protected Object c(Class<? extends Object> cls, HttpInputMessage httpInputMessage) throws IOException, HttpMessageNotReadableException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream body = httpInputMessage.getBody();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = body.read(bArr);
            if (i10 == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return com.alibaba.fastjson.a.parseObject(byteArray, 0, byteArray.length, this.f6792a.newDecoder(), cls, new Feature[0]);
            }
            if (i10 > 0) {
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        }
    }

    public void d(Charset charset) {
        this.f6792a = charset;
    }

    public void e(SerializerFeature... serializerFeatureArr) {
        this.f6793b = serializerFeatureArr;
    }

    protected boolean f(Class<?> cls) {
        return true;
    }

    protected void g(Object obj, HttpOutputMessage httpOutputMessage) throws IOException, HttpMessageNotWritableException {
        httpOutputMessage.getBody().write(com.alibaba.fastjson.a.toJSONString(obj, this.f6793b).getBytes(this.f6792a));
    }
}
