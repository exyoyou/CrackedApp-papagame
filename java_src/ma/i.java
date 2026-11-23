package ma;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f94229b = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.user.a f94230a;

    public static i d() {
        return f94229b;
    }

    private com.xinzhu.overmind.server.user.a e() {
        com.xinzhu.overmind.server.user.a aVar = this.f94230a;
        if (aVar != null && aVar.asBinder().isBinderAlive()) {
            return this.f94230a;
        }
        this.f94230a = com.xinzhu.overmind.server.user.a.b.asInterface(Overmind.get().getService(l.f89694h));
        return e();
    }

    public MindUserInfo a(int i10) {
        try {
            return e().createUser(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void b(int i10) {
        try {
            e().deleteUser(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public boolean c(int i10) {
        try {
            return e().exists(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public List<MindUserInfo> f() {
        try {
            return e().getUsers();
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return Collections.emptyList();
        }
    }
}
