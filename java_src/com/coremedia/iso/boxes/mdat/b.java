package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.j;
import com.googlecode.mp4parser.authoring.f;
import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class b extends AbstractList<f> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<f> f24993b;

    public b(f1 f1Var, com.coremedia.iso.f... fVarArr) {
        j parent = ((d) f1Var.getParent()).getParent();
        if (!f1Var.getParent().c(com.coremedia.iso.boxes.fragment.a.class).isEmpty()) {
            this.f24993b = new com.googlecode.mp4parser.authoring.samples.b(f1Var.z().C(), parent, fVarArr);
        } else {
            if (fVarArr.length > 0) {
                throw new RuntimeException("The TrackBox comes from a standard MP4 file. Only use the additionalFragments param if you are dealing with ( fragmented MP4 files AND additional fragments in standalone files )");
            }
            this.f24993b = new com.googlecode.mp4parser.authoring.samples.a(f1Var.z().C(), parent);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f get(int i10) {
        return this.f24993b.get(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f24993b.size();
    }
}
