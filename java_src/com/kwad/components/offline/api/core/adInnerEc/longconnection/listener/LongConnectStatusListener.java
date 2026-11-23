package com.kwad.components.offline.api.core.adInnerEc.longconnection.listener;

import androidx.annotation.Keep;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.ChannelException;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.ClientException;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.LiveLongConnectionServerException;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface LongConnectStatusListener {
    void onChannelException(ChannelException channelException);

    void onClientException(ClientException clientException);

    void onConnectionEstablished();

    void onConnectionExit();

    void onConnectionHorseRaceFail(long j10);

    void onConnectionHorseRaceStart();

    void onConnectionHorseRaceSuccess(String str, long j10);

    void onConnectionInterrupt();

    void onConnectionStart();

    void onEnterRoomSend(long j10);

    void onHeartbeatAckReceived(long j10, long j11);

    void onHeartbeatSend(long j10);

    void onReconnectOverMaxRetryCount();

    void onServerException(LiveLongConnectionServerException liveLongConnectionServerException);
}
