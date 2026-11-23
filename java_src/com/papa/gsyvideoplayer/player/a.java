package com.papa.gsyvideoplayer.player;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected b f76777a;

    public b b() {
        return this.f76777a;
    }

    protected void e(com.papa.gsyvideoplayer.model.a aVar) {
        b bVar = this.f76777a;
        if (bVar != null) {
            bVar.a(getMediaPlayer(), aVar);
        }
    }

    public void k(b bVar) {
        this.f76777a = bVar;
    }
}
