package com.android.dx;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InsnList;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class Label {
    Label alternateSuccessor;
    Code code;
    Label primarySuccessor;
    final List<Insn> instructions = new ArrayList();
    boolean marked = false;
    List<Label> catchLabels = Collections.emptyList();

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    int f7309id = -1;

    void compact() {
        for (int i10 = 0; i10 < this.catchLabels.size(); i10++) {
            while (this.catchLabels.get(i10).isEmpty()) {
                List<Label> list = this.catchLabels;
                list.set(i10, list.get(i10).primarySuccessor);
            }
        }
        while (true) {
            Label label = this.primarySuccessor;
            if (label == null || !label.isEmpty()) {
                break;
            } else {
                this.primarySuccessor = this.primarySuccessor.primarySuccessor;
            }
        }
        while (true) {
            Label label2 = this.alternateSuccessor;
            if (label2 == null || !label2.isEmpty()) {
                return;
            } else {
                this.alternateSuccessor = this.alternateSuccessor.primarySuccessor;
            }
        }
    }

    boolean isEmpty() {
        return this.instructions.isEmpty();
    }

    BasicBlock toBasicBlock() {
        int i10;
        InsnList insnList = new InsnList(this.instructions.size());
        for (int i11 = 0; i11 < this.instructions.size(); i11++) {
            insnList.set(i11, this.instructions.get(i11));
        }
        insnList.setImmutable();
        IntList intList = new IntList();
        Iterator<Label> it2 = this.catchLabels.iterator();
        while (it2.hasNext()) {
            intList.add(it2.next().f7309id);
        }
        Label label = this.primarySuccessor;
        if (label != null) {
            i10 = label.f7309id;
            intList.add(i10);
        } else {
            i10 = -1;
        }
        Label label2 = this.alternateSuccessor;
        if (label2 != null) {
            intList.add(label2.f7309id);
        }
        intList.setImmutable();
        return new BasicBlock(this.f7309id, insnList, intList, i10);
    }
}
