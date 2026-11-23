package org.webrtc.haima.camera;

/* JADX INFO: loaded from: classes10.dex */
public class HmCameraSettings {
    private int frameRate;
    private int height;
    private int width;

    public HmCameraSettings() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HmCameraSettings hmCameraSettings = (HmCameraSettings) obj;
        return getWidth() == hmCameraSettings.getWidth() && getHeight() == hmCameraSettings.getHeight() && getFrameRate() == hmCameraSettings.getFrameRate();
    }

    public int getFrameRate() {
        return this.frameRate;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void setFrameRate(int i10) {
        this.frameRate = i10;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public String toString() {
        return "HmCameraSettings{width=" + this.width + ", height=" + this.height + ", frameRate=" + this.frameRate + '}';
    }

    public HmCameraSettings(int i10, int i11, int i12) {
        this.width = i10;
        this.height = i11;
        this.frameRate = i12;
    }
}
