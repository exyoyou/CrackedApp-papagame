package e5;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f90866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f90867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f90868c;

    public void a(String str, Object obj) {
        a aVar;
        if (str.length() == 0) {
            this.f90868c = obj;
            return;
        }
        if (str.charAt(0) == '0') {
            if (this.f90866a == null) {
                this.f90866a = new a();
            }
            aVar = this.f90866a;
        } else {
            if (this.f90867b == null) {
                this.f90867b = new a();
            }
            aVar = this.f90867b;
        }
        aVar.a(str.substring(1), obj);
    }

    public a b(int i10) {
        return i10 == 0 ? this.f90866a : this.f90867b;
    }

    public Object c() {
        return this.f90868c;
    }
}
