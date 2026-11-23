.class public interface abstract Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHmcpSaasRequestListener"
.end annotation


# virtual methods
.method public abstract handleMessage(Ljava/lang/String;)V
.end method

.method public abstract onGSMUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V
.end method

.method public abstract onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V
.end method

.method public abstract onReceiveDistance(J)V
.end method

.method public abstract onReceiveExtraConfigs(Ljava/util/HashMap;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/IntroImageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResponse(ILjava/lang/String;)V
.end method

.method public abstract playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
.end method

.method public abstract setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V
.end method

.method public abstract showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract waitStreamUrl(Ljava/lang/String;)V
.end method
