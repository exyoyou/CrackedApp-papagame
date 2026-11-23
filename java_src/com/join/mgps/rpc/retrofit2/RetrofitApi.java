package com.join.mgps.rpc.retrofit2;

import androidx.annotation.NonNull;
import c7.a;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessageV3;
import com.join.mgps.Util.q2;
import java.io.File;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public class RetrofitApi<T> {
    public static int TYPE_LIST = 1;
    public static int TYPE_MODEL = 2;
    public static int TYPE_NORMAL = 0;
    public static int TYPE_POST = 3;
    public static OkHttpClient okHttpClient;
    private static RetrofitApi retrofitApi;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new a());
        OkHttpClient.Builder builderA = q2.a(builder);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderA.connectTimeout(2L, timeUnit);
        long j10 = 10;
        builderA.connectTimeout(j10, timeUnit).readTimeout(j10, timeUnit).writeTimeout(j10, timeUnit);
        okHttpClient = builderA.build();
    }

    @NonNull
    private RequestBody createPartFromString(String descriptionString) {
        return RequestBody.create(MultipartBody.FORM, descriptionString);
    }

    public static RetrofitApi getInstance() {
        RetrofitApi retrofitApi2 = retrofitApi;
        return retrofitApi2 == null ? new RetrofitApi() : retrofitApi2;
    }

    public static Retrofit getRetrofit2(String baseUrl) {
        return new Retrofit.Builder().baseUrl(baseUrl).addConverterFactory(retrofit2.converter.protobuf.a.b(ExtensionRegistry.newInstance())).addConverterFactory(retrofit2.converter.jackson.a.b(new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false).configure(SerializationFeature.WRITE_NULL_MAP_VALUES, false).setSerializationInclusion(JsonInclude.Include.NON_NULL).addMixIn(GeneratedMessageV3.class, a7.a.class))).client(okHttpClient).build();
    }

    private String guessMimeType(String path) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(path);
        return contentTypeFor == null ? "application/octet-stream" : contentTypeFor;
    }

    @NonNull
    private MultipartBody.Part prepareFilePart(String partName, File file) {
        return MultipartBody.Part.createFormData(partName, file.getName(), RequestBody.create(MediaType.parse(guessMimeType(file.getName())), file));
    }

    public Map<String, RequestBody> convert2PartMap(Map<String, Object> params) {
        HashMap map = new HashMap();
        for (String str : params.keySet()) {
            Object obj = params.get(str);
            if (!(obj instanceof File)) {
                map.put(str, parseRequestBody(obj + ""));
            }
        }
        return map;
    }

    public List<MultipartBody.Part> convert2Parts(Map<String, Object> params) {
        ArrayList arrayList = new ArrayList();
        for (String str : params.keySet()) {
            Object obj = params.get(str);
            if (obj instanceof File) {
                File file = (File) obj;
                RequestBody.create(MediaType.parse(guessMimeType(file.getName())), file);
                arrayList.add(prepareFilePart(str, file));
            }
        }
        return arrayList;
    }

    public String parseImageMapKey(String key, String fileName) {
        return key + "\"; filename=\"" + fileName;
    }

    public RequestBody parseImageRequestBody(File file) {
        return RequestBody.create(MediaType.parse("image/jpg"), file);
    }

    public RequestBody parseRequestBody(String value) {
        return RequestBody.create(MediaType.parse("text/plain"), value);
    }
}
