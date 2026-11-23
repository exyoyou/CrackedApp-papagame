package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import com.googlecode.mp4parser.util.l;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(16)
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f85744a = l.f33794j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<g> f85745b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f85746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f85747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f85748e;

    public void a(int trackIndex, long offset, MediaCodec.BufferInfo bufferInfo) throws Exception {
        if (trackIndex < 0 || trackIndex >= this.f85745b.size()) {
            return;
        }
        this.f85745b.get(trackIndex).a(offset, bufferInfo);
    }

    public int b(MediaFormat mediaFormat, boolean isAudio) throws Exception {
        this.f85745b.add(new g(this.f85745b.size(), mediaFormat, isAudio));
        return this.f85745b.size() - 1;
    }

    public File c() {
        return this.f85746c;
    }

    public int d() {
        return this.f85748e;
    }

    public l e() {
        return this.f85744a;
    }

    public ArrayList<g> f() {
        return this.f85745b;
    }

    public int g() {
        return this.f85747d;
    }

    public void h(File file) {
        this.f85746c = file;
    }

    public void i(int angle) {
        if (angle == 0) {
            this.f85744a = l.f33794j;
            return;
        }
        if (angle == 90) {
            this.f85744a = l.f33795k;
        } else if (angle == 180) {
            this.f85744a = l.f33796l;
        } else if (angle == 270) {
            this.f85744a = l.f33797m;
        }
    }

    public void j(int w10, int h10) {
        this.f85747d = w10;
        this.f85748e = h10;
    }
}
