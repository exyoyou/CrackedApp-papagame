package com.byazt.pct;

import android.net.Uri;
import com.join.mgps.Util.o0;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 195})
public class gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<String> f18638c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public sl.tt f18639n;
    public final Set<String> tt;
    public final rl uj;
    public final qy ve = nu.f18650c;

    public gt(rl rlVar, Set<String> set, Set<String> set2) {
        this.uj = rlVar;
        if (set == null || set.isEmpty()) {
            this.f18638c = new LinkedHashSet();
        } else {
            this.f18638c = new LinkedHashSet(set);
        }
        if (set2 == null || set2.isEmpty()) {
            this.tt = new LinkedHashSet();
        } else {
            this.tt = new LinkedHashSet(set2);
        }
    }

    public final synchronized gu c(boolean z10, String str, tt ttVar) throws rl.c {
        sl.tt ttVar2;
        Uri uri = Uri.parse(str);
        String host = uri.getHost();
        if (host == null) {
            return null;
        }
        gu guVar = this.tt.contains(ttVar.c()) ? gu.PUBLIC : null;
        for (String str2 : this.f18638c) {
            if (uri.getHost().equals(str2) || host.endsWith(o0.f49827a.concat(String.valueOf(str2)))) {
                guVar = gu.PRIVATE;
                break;
            }
        }
        if (guVar == null && (ttVar2 = this.f18639n) != null && ttVar2.c(str)) {
            if (this.f18639n.c(str, ttVar.c())) {
                return null;
            }
            guVar = gu.PRIVATE;
        }
        gu guVarC = z10 ? c(str, ttVar) : tt(str, ttVar);
        return guVarC != null ? guVarC : guVar;
    }

    public final synchronized gu tt(String str, tt ttVar) {
        return c(str, ttVar, false);
    }

    public void tt(qy.c cVar) {
        qy qyVar = this.ve;
        if (qyVar != null) {
            qyVar.tt(cVar);
        }
    }

    public final synchronized gu c(String str, tt ttVar) throws rl.c {
        return c(str, ttVar, true);
    }

    public void c(sl.tt ttVar) {
        this.f18639n = ttVar;
    }

    public void c(qy.c cVar) {
        qy qyVar = this.ve;
        if (qyVar != null) {
            qyVar.c(cVar);
        }
    }

    private gu c(String str, tt ttVar, boolean z10) {
        rl rlVar;
        if (!z10 || (rlVar = this.uj) == null) {
            return null;
        }
        rl.ve veVarC = rlVar.c(str, this.f18638c);
        if (veVarC.ve.contains(ttVar.c())) {
            return null;
        }
        if (veVarC.tt.contains(ttVar.c())) {
            return gu.PRIVATE;
        }
        if (veVarC.f18659c.compareTo(ttVar.tt()) < 0) {
            return null;
        }
        return veVarC.f18659c;
    }
}
