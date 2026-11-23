package l6;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.GameOLHeadAdBean;

/* JADX INFO: loaded from: classes3.dex */
public class a<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f93937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f93938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GameOLHeadAdBean f93939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private E f93940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DownloadTask f93941e;

    public DownloadTask a() {
        return this.f93941e;
    }

    public GameOLHeadAdBean b() {
        return this.f93939c;
    }

    public E c() {
        return this.f93940d;
    }

    public int d() {
        return this.f93937a;
    }

    public String e() {
        return this.f93938b;
    }

    public void f(DownloadTask downloadTask) {
        this.f93941e = downloadTask;
    }

    public void g(GameOLHeadAdBean head_ad) {
        this.f93939c = head_ad;
    }

    public void h(E listItem) {
        this.f93940d = listItem;
    }

    public void i(int showType) {
        this.f93937a = showType;
    }

    public void j(String titleName) {
        this.f93938b = titleName;
    }
}
