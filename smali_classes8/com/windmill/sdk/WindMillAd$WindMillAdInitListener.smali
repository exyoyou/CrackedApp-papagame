.class public interface abstract Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/WindMillAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindMillAdInitListener"
.end annotation


# virtual methods
.method public abstract onInitFailed(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation
.end method

.method public abstract onInitSuccess()V
.end method
