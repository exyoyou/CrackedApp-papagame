package com.haima.hmcp.beans;

import com.haima.hmcp.enums.Format;

/* JADX INFO: loaded from: classes5.dex */
public class RecordParameter {
    private int channel = 16;
    private int encoding = 2;
    private int sampleRate = 16000;
    private Format mFormat = Format.PCM;

    public int getChannel() {
        return this.channel;
    }

    public int getEncoding() {
        return this.encoding;
    }

    public Format getFormat() {
        return this.mFormat;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public void setChannel(int i10) {
        this.channel = i10;
    }

    public void setEncoding(int i10) {
        this.encoding = i10;
    }

    public void setSampleRate(int i10) {
        this.sampleRate = i10;
    }

    public String toString() {
        return super.toString();
    }
}
