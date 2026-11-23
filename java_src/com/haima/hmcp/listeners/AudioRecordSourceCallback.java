package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.RecordParameter;

/* JADX INFO: loaded from: classes5.dex */
public interface AudioRecordSourceCallback {
    void onAudioRecordError(String str);

    void onAudioRecordStart(RecordParameter recordParameter);

    void onAudioRecordStop();
}
