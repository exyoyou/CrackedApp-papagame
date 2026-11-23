.class public interface abstract Lcom/sigmob/sdk/nativead/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onNativeAdLoadFail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_code",
            "error_message"
        }
    .end annotation
.end method

.method public abstract onNativeAdLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;)V"
        }
    .end annotation
.end method
