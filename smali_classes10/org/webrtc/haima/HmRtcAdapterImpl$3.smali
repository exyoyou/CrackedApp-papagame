.class Lorg/webrtc/haima/HmRtcAdapterImpl$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->initHmAdapterHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$700(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_4

    const/16 v3, 0x28

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "payload"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recvTime"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 7
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call mStreamerCallback.onX86InputPong payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " recvTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lorg/webrtc/haima/HmStreamerCallback;->onX86InputPong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call mStreamerCallback.onX86InputPong error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :pswitch_1
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onX86InputClose()V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onX86InputOpen()V

    goto/16 :goto_0

    .line 14
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 16
    new-instance v2, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;

    invoke-direct {v2}, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;-><init>()V

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v2, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->bytes:[B

    .line 18
    iput-object v3, v2, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->reserve:Ljava/lang/Object;

    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x34

    const-wide/16 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 20
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    sget-object v1, Lorg/webrtc/haima/HmStreamerCallback$MsgId;->kVideoFrameDelayFromCapToDec:Lorg/webrtc/haima/HmStreamerCallback$MsgId;

    invoke-interface {p1, v1, v3, v4, v2}, Lorg/webrtc/haima/HmStreamerCallback;->onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V

    goto/16 :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    sget-object v1, Lorg/webrtc/haima/HmStreamerCallback$MsgId;->kStreamerBwe:Lorg/webrtc/haima/HmStreamerCallback$MsgId;

    invoke-interface {p1, v1, v3, v4, v2}, Lorg/webrtc/haima/HmStreamerCallback;->onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "code"

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_type"

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 26
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call mStreamerCallback.onSwitchConnectionCallback code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 29
    invoke-interface {v2, v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSwitchConnectionCallback(II)V

    goto/16 :goto_0

    .line 30
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 32
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call mStreamerCallback.onAccProxyConnectStateChange code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onAccProxyConnectStateChange(I)V

    goto/16 :goto_0

    .line 34
    :pswitch_6
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->switchDisplayView()V

    goto/16 :goto_0

    .line 35
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "codec_name"

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fps"

    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    const-string v3, "width"

    .line 38
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v3

    const-string v4, "height"

    .line 39
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result p1

    .line 40
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 41
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onRemoteVideoEncodeAdaptation(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 42
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "report_only"

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v1, "throw_exception_msg"

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 46
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Lorg/webrtc/haima/HmStreamerCallback;->onCatchExceptionMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 47
    :pswitch_9
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 48
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1000(Lorg/webrtc/haima/HmRtcAdapterImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1100(Lorg/webrtc/haima/HmRtcAdapterImpl;)J

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/webrtc/haima/HmStreamerCallback;->onFrameResolution(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 49
    :pswitch_a
    :try_start_3
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P2P disconnected"

    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "PEER_CONNECTION_FAILED"

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    .line 53
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 54
    :cond_2
    :try_start_5
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    const-string v1, "onLostAllConnection"

    invoke-interface {p1, v1}, Lorg/webrtc/haima/HmStreamerCallback;->onDisconnect(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 55
    :try_start_6
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 56
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 57
    :pswitch_b
    :try_start_7
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 58
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onConnected()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 59
    :try_start_8
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 60
    monitor-exit v0

    return-void

    .line 61
    :pswitch_c
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$900(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 62
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onCreateAnswer()V

    goto/16 :goto_0

    .line 63
    :pswitch_d
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "to"

    .line 65
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 66
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 68
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v3

    invoke-interface {v3, v2, v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 69
    :pswitch_e
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 70
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalConnected()V

    goto/16 :goto_0

    .line 71
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 73
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 76
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onConnectFailed(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 77
    :cond_3
    :try_start_9
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "P2P switch to rtmp"

    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 79
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSwitchToRtmpStreaming()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 80
    :try_start_a
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchToRtmpStreaming-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 81
    monitor-exit v0

    return-void

    .line 82
    :cond_4
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 83
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalV2Connected()V

    goto/16 :goto_0

    .line 84
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 86
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalV2Status(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 87
    :cond_6
    :try_start_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/hmwebrtc/IceCandidate;

    .line 88
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 89
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    iget-object p1, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 90
    :try_start_c
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteIceCandidate-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 91
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-void

    .line 92
    :cond_7
    :try_start_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/hmwebrtc/SessionDescription;

    .line 93
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 94
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    iget-object v2, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    invoke-virtual {v2}, Lorg/hmwebrtc/SessionDescription$Type;->canonicalForm()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catch_5
    move-exception p1

    .line 95
    :try_start_e
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteDescription-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 96
    monitor-exit v0

    return-void

    .line 97
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 99
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onConnectFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_9
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 103
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onRtcError(Ljava/lang/String;)V

    .line 104
    :cond_b
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
