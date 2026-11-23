.class Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/DownloadTask;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

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
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto :goto_2

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 10
    .line 11
    const-string v0, "download file timeout"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1300(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 18
    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-static {v0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1600(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :pswitch_3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1500(Lcom/haima/hmcp/cloud/DownloadTask;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_4
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1400(Lcom/haima/hmcp/cloud/DownloadTask;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :pswitch_5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1200(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :pswitch_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1100(Lcom/haima/hmcp/cloud/DownloadTask;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_7
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 60
    .line 61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$700(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_8
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1000(Lcom/haima/hmcp/cloud/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 89
    .line 90
    invoke-static {p1, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$1300(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
