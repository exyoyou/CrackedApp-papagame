package i8;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f91498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f91499b;

    public String a() {
        return this.f91499b;
    }

    public void b(String str) {
        this.f91499b = str;
    }

    public void c(int i10) {
        this.f91498a = i10;
    }

    public String d() {
        return "{\n    \"type\":" + this.f91498a + ",    \"appId\":\"" + this.f91499b + "\"}";
    }

    public int getType() {
        return this.f91498a;
    }

    public String toString() {
        return "ChannelInfo{type=" + this.f91498a + ", appId='" + this.f91499b + "'}";
    }
}
