package com.baidu.passbqt.http;

import com.baidu.passbqt.NoProguard;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class MultipartHashMap extends HttpHashMap implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FileWrapper f8335a;

    static class FileWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f8336a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f8337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f8338c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public InputStream f8339d;

        public FileWrapper(String str, InputStream inputStream, String str2, String str3) {
            this.f8336a = str;
            this.f8339d = inputStream;
            this.f8337b = str2;
            this.f8338c = str3;
        }

        public String a() {
            String str = this.f8337b;
            return str != null ? str : "nofilename";
        }
    }

    public void a(String str, InputStream inputStream, String str2, String str3) {
        this.f8335a = new FileWrapper(str, inputStream, str2, str3);
    }
}
