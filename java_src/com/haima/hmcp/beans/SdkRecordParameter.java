package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class SdkRecordParameter extends RecordParameter {
    @Override // com.haima.hmcp.beans.RecordParameter
    public int getEncoding() {
        return 2;
    }

    @Override // com.haima.hmcp.beans.RecordParameter
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("channel:");
        stringBuffer.append(getChannel());
        stringBuffer.append("; ");
        stringBuffer.append("encoding:");
        stringBuffer.append(getEncoding());
        stringBuffer.append("; ");
        stringBuffer.append("sampleRate:");
        stringBuffer.append(getSampleRate());
        stringBuffer.append("; ");
        return stringBuffer.toString();
    }
}
