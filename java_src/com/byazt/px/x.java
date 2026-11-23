package com.byazt.px;

import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 690, 71})
public class x extends com.byazt.fb.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.je.ve f18891c;

    public x(com.byazt.je.ve veVar) {
        this.f18891c = veVar;
    }

    @Override // com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i10 == -99999986) {
            return (T) values().sparseArray();
        }
        return null;
    }

    public PluginValueSet values() {
        com.byazt.rl.c cVarC = com.byazt.rl.c.c();
        com.byazt.je.ve veVar = this.f18891c;
        cVarC.c(8468, veVar != null ? veVar.c() : new HashMap<>());
        com.byazt.je.ve veVar2 = this.f18891c;
        cVarC.c(8469, veVar2 != null ? veVar2.n() : 0);
        com.byazt.je.ve veVar3 = this.f18891c;
        cVarC.c(8470, veVar3 != null ? veVar3.ve() : "");
        com.byazt.je.ve veVar4 = this.f18891c;
        cVarC.c(8471, veVar4 != null ? veVar4.uj() : "");
        com.byazt.je.ve veVar5 = this.f18891c;
        cVarC.c(8472, veVar5 != null ? veVar5.tt() : "");
        com.byazt.je.ve veVar6 = this.f18891c;
        cVarC.c(8473, veVar6 != null ? veVar6.a() : "");
        com.byazt.je.ve veVar7 = this.f18891c;
        cVarC.c(8474, veVar7 != null ? veVar7.sp() : "");
        return cVarC.tt();
    }
}
