package org.webrtc.haima.camerarecorder;

import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
public class Resolution implements Serializable {
    private final int height;
    private final int width;

    public Resolution(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Resolution resolution = (Resolution) obj;
        return this.height == resolution.height && this.width == resolution.width;
    }

    public int hashCode() {
        return (this.width * 31) + this.height;
    }

    public int height() {
        return this.height;
    }

    public int width() {
        return this.width;
    }
}
