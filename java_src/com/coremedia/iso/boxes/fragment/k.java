package com.coremedia.iso.boxes.fragment;

import com.googlecode.mp4parser.annotations.DoNotParseDetail;

/* JADX INFO: loaded from: classes9.dex */
public class k extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f24831o = "traf";

    public k() {
        super(f24831o);
    }

    @DoNotParseDetail
    public l v() {
        for (com.coremedia.iso.boxes.d dVar : l()) {
            if (dVar instanceof l) {
                return (l) dVar;
            }
        }
        return null;
    }
}
