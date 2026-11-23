package t4;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FragmentManager f97049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f97050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<Fragment> f97051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f97052d;

    public a(FragmentManager fragmentManager, int i10, ArrayList<Fragment> arrayList) {
        this.f97049a = fragmentManager;
        this.f97050b = i10;
        this.f97051c = arrayList;
        c();
    }

    private void c() {
        for (Fragment fragment : this.f97051c) {
            this.f97049a.beginTransaction().add(this.f97050b, fragment).hide(fragment).commit();
        }
        d(0);
    }

    public Fragment a() {
        return this.f97051c.get(this.f97052d);
    }

    public int b() {
        return this.f97052d;
    }

    public void d(int i10) {
        for (int i11 = 0; i11 < this.f97051c.size(); i11++) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.f97049a.beginTransaction();
            Fragment fragment = this.f97051c.get(i11);
            if (i11 == i10) {
                fragmentTransactionBeginTransaction.show(fragment);
            } else {
                fragmentTransactionBeginTransaction.hide(fragment);
            }
            fragmentTransactionBeginTransaction.commit();
        }
        this.f97052d = i10;
    }
}
