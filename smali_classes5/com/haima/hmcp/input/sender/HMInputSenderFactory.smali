.class public Lcom/haima/hmcp/input/sender/HMInputSenderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/input/sender/IHMInputSenderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "HMInputSenderFactory"


# instance fields
.field private mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getInputSender(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/input/HMInputType;)Lcom/haima/hmcp/input/sender/IHMInputSender;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getInput inputType: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HMInputSenderFactory"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory$1;->$SwitchMap$com$haima$hmcp$input$HMInputType:[I

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    aget p2, v0, p2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eq p2, v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-eq p2, v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p2, Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lcom/haima/hmcp/input/sender/WebSocketInputSender;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Lcom/haima/hmcp/input/sender/RtcDatachannelSender;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lcom/haima/hmcp/input/sender/RtcDatachannelSender;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 54
    .line 55
    return-object p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/input/sender/HMInputSenderFactory;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 7
    .line 8
    :cond_0
    return-void
.end method
