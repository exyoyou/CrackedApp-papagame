package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class FirstScreenAdInteractionBean {
    private String action;
    private String mode;
    private ShakeConfBean shake_conf;
    private String tips;

    public static class ShakeConfBean {
        private int acceleration;
        private int duration;
        private int rotation_angle;

        public int getAcceleration() {
            return this.acceleration;
        }

        public int getDuration() {
            return this.duration;
        }

        public int getRotation_angle() {
            return this.rotation_angle;
        }

        public void setAcceleration(int acceleration) {
            this.acceleration = acceleration;
        }

        public void setDuration(int duration) {
            this.duration = duration;
        }

        public void setRotation_angle(int rotation_angle) {
            this.rotation_angle = rotation_angle;
        }
    }

    public String getAction() {
        return this.action;
    }

    public String getMode() {
        return this.mode;
    }

    public ShakeConfBean getShake_conf() {
        return this.shake_conf;
    }

    public String getTips() {
        return this.tips;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public void setShake_conf(ShakeConfBean shake_conf) {
        this.shake_conf = shake_conf;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }
}
