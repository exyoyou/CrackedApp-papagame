package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.webrtc.haima.camerarecorder.egl.GLES20FramebufferObject;

/* JADX INFO: loaded from: classes10.dex */
public class GlFilterGroup extends GlFilter {
    private final Collection<GlFilter> filters;
    private final ArrayList<Pair<GlFilter, GLES20FramebufferObject>> list;
    private int prevTexName;

    public GlFilterGroup(GlFilter... glFilterArr) {
        this(Arrays.asList(glFilterArr));
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void draw(int i10, GLES20FramebufferObject gLES20FramebufferObject) {
        this.prevTexName = i10;
        for (Pair<GlFilter, GLES20FramebufferObject> pair : this.list) {
            Object obj = pair.second;
            if (obj != null) {
                if (pair.first != null) {
                    ((GLES20FramebufferObject) obj).enable();
                    GLES20.glClear(16384);
                    ((GlFilter) pair.first).draw(this.prevTexName, (GLES20FramebufferObject) pair.second);
                }
                this.prevTexName = ((GLES20FramebufferObject) pair.second).getTexName();
            } else {
                if (gLES20FramebufferObject != null) {
                    gLES20FramebufferObject.enable();
                } else {
                    GLES20.glBindFramebuffer(36160, 0);
                }
                Object obj2 = pair.first;
                if (obj2 != null) {
                    ((GlFilter) obj2).draw(this.prevTexName, gLES20FramebufferObject);
                }
            }
        }
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void release() {
        for (Pair<GlFilter, GLES20FramebufferObject> pair : this.list) {
            Object obj = pair.first;
            if (obj != null) {
                ((GlFilter) obj).release();
            }
            Object obj2 = pair.second;
            if (obj2 != null) {
                ((GLES20FramebufferObject) obj2).release();
            }
        }
        this.list.clear();
        super.release();
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setFrameSize(int i10, int i11) {
        super.setFrameSize(i10, i11);
        for (Pair<GlFilter, GLES20FramebufferObject> pair : this.list) {
            Object obj = pair.first;
            if (obj != null) {
                ((GlFilter) obj).setFrameSize(i10, i11);
            }
            Object obj2 = pair.second;
            if (obj2 != null) {
                ((GLES20FramebufferObject) obj2).setup(i10, i11);
            }
        }
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setup() {
        super.setup();
        Collection<GlFilter> collection = this.filters;
        if (collection != null) {
            int size = collection.size();
            int i10 = 0;
            for (GlFilter glFilter : this.filters) {
                glFilter.setup();
                i10++;
                this.list.add(Pair.create(glFilter, i10 < size ? new GLES20FramebufferObject() : null));
            }
        }
    }

    public GlFilterGroup(Collection<GlFilter> collection) {
        this.list = new ArrayList<>();
        this.filters = collection;
    }
}
