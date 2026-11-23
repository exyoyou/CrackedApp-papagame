.class public interface abstract Lcom/haima/hmcp/business/IHmcpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearCloudId()V
.end method

.method public abstract connect2Access(IZ)V
.end method

.method public abstract getCloudId()Ljava/lang/String;
.end method

.method public abstract getCloudService(IIZ)V
.end method

.method public abstract getConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
.end method

.method public abstract getDeviceId(Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V
.end method

.method public abstract getExtraConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
.end method

.method public abstract getJoinBattle(ZLcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
.end method

.method public abstract getStreamingType(Lcom/haima/hmcp/beans/GameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V
.end method

.method public abstract getTransferOpen()Z
.end method

.method public abstract isAllowConnect2Access(Z)V
.end method

.method public abstract requestData(Landroid/os/Bundle;)V
.end method

.method public abstract setConfigInfo(Ljava/lang/String;)V
.end method

.method public abstract setExtraData(Lcom/haima/hmcp/beans/IntentExtraData;)V
.end method

.method public abstract setResolutionID(Ljava/lang/String;)V
.end method

.method public abstract setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V
.end method

.method public abstract stopCloudService()V
.end method

.method public abstract switchResolution(Ljava/lang/String;II)V
.end method
