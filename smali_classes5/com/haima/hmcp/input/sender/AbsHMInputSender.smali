.class public abstract Lcom/haima/hmcp/input/sender/AbsHMInputSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/input/sender/IHMInputSender;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsHMInputSender"


# instance fields
.field protected mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

.field protected mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

.field protected mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    new-instance p1, Lcom/haima/hmcp/input/HMInputConfig;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/haima/hmcp/input/HMInputConfig;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/haima/hmcp/input/listener/HMInputCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/input/HMInputConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setConfig:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AbsHMInputSender"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 24
    .line 25
    return-void
.end method
