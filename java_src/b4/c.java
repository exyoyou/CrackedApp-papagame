package b4;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.PropagatesNullable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface c<INFO> {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public Map<String, Object> f373a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public Map<String, Object> f374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public Map<String, Object> f375c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public Map<String, Object> f376d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public Object f377e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        public Uri f378f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        public Object f381i;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f379g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f380h = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f382j = -1.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f383k = -1.0f;

        private static Map<String, Object> a(@PropagatesNullable Map<String, Object> map) {
            if (map == null) {
                return null;
            }
            return new ConcurrentHashMap(map);
        }

        public static a c(@Nullable Map<String, Object> componentExtras) {
            a aVar = new a();
            aVar.f373a = componentExtras;
            return aVar;
        }

        public a b() {
            a aVar = new a();
            aVar.f373a = a(this.f373a);
            aVar.f374b = a(this.f374b);
            aVar.f375c = a(this.f375c);
            aVar.f376d = a(this.f376d);
            aVar.f377e = this.f377e;
            aVar.f378f = this.f378f;
            aVar.f379g = this.f379g;
            aVar.f380h = this.f380h;
            aVar.f381i = this.f381i;
            aVar.f382j = this.f382j;
            aVar.f383k = this.f383k;
            return aVar;
        }
    }

    void a(String id2);

    void b(String id2, @Nullable Object callerContext, @Nullable a extraData);

    void c(String id2, @Nullable INFO imageInfo, @Nullable a extraData);

    void d(String id2, @Nullable a extraData);

    void f(String id2, @Nullable Throwable throwable, @Nullable a extraData);

    void onIntermediateImageSet(String id2, @Nullable INFO imageInfo);
}
