package l6;

import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f93944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f93945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<CollectionBeanSub> f93946c;

    public c(boolean istitle, String title) {
        this.f93944a = istitle;
        this.f93945b = title;
    }

    public List<CollectionBeanSub> a() {
        return this.f93946c;
    }

    public String b() {
        return this.f93945b;
    }

    public boolean c() {
        return this.f93944a;
    }

    public void d(List<CollectionBeanSub> gamelist) {
        this.f93946c = gamelist;
    }

    public void e(boolean istitle) {
        this.f93944a = istitle;
    }

    public void f(String title) {
        this.f93945b = title;
    }

    public c(boolean istitle, List<CollectionBeanSub> gamelist) {
        this.f93944a = istitle;
        this.f93946c = gamelist;
    }
}
