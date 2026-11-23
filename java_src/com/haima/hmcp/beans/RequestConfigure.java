package com.haima.hmcp.beans;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public class RequestConfigure implements IParameter {
    public String accessKeyId;
    public String appChannel;
    public String envType;
    public String gameId;
    public boolean isReduce;
    public String packageName;
    public long[] sdkAbility;
    public List<String> streamingTypes;
    public String type;
    public String viewFrameRate;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("accessKeyId=");
        stringBuffer.append(this.accessKeyId);
        stringBuffer.append(";");
        stringBuffer.append("packageName=");
        stringBuffer.append(this.packageName);
        stringBuffer.append(";");
        stringBuffer.append("appChannel=");
        stringBuffer.append(this.appChannel);
        stringBuffer.append(";");
        stringBuffer.append("type=");
        stringBuffer.append(this.type);
        stringBuffer.append(";");
        stringBuffer.append("envType=");
        stringBuffer.append(this.envType);
        stringBuffer.append(";");
        stringBuffer.append("isReduce=");
        stringBuffer.append(this.isReduce);
        stringBuffer.append(";");
        stringBuffer.append("viewFrameRate=");
        stringBuffer.append(this.viewFrameRate);
        stringBuffer.append(";");
        stringBuffer.append("streamingTypes=");
        if (this.streamingTypes != null) {
            stringBuffer.append("[");
            ListIterator<String> listIterator = this.streamingTypes.listIterator();
            while (listIterator.hasNext()) {
                stringBuffer.append(listIterator.next());
                stringBuffer.append(listIterator.hasNext() ? "," : "];");
            }
        } else {
            stringBuffer.append("null");
        }
        stringBuffer.append("sdkAbility=");
        long[] jArr = this.sdkAbility;
        if (jArr == null || jArr.length <= 0) {
            stringBuffer.append("null");
        } else {
            stringBuffer.append(jArr[0]);
        }
        return stringBuffer.toString();
    }
}
