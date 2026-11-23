package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<i> f95295d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f95296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    o f95297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    i f95298c;

    private i(Object obj, o oVar) {
        this.f95296a = obj;
        this.f95297b = oVar;
    }

    static i a(o oVar, Object obj) {
        List<i> list = f95295d;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new i(obj, oVar);
            }
            i iVarRemove = list.remove(size - 1);
            iVarRemove.f95296a = obj;
            iVarRemove.f95297b = oVar;
            iVarRemove.f95298c = null;
            return iVarRemove;
        }
    }

    static void b(i iVar) {
        iVar.f95296a = null;
        iVar.f95297b = null;
        iVar.f95298c = null;
        List<i> list = f95295d;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(iVar);
            }
        }
    }
}
