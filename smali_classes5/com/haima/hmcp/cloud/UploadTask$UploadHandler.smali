.class Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/UploadTask;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/UploadTask;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {v0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1400(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :pswitch_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1300(Lcom/haima/hmcp/cloud/UploadTask;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :pswitch_3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1100(Lcom/haima/hmcp/cloud/UploadTask;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :pswitch_4
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$900(Lcom/haima/hmcp/cloud/UploadTask;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :pswitch_5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 44
    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1200(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :pswitch_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$700(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lcom/haima/hmcp/cloud/UploadTask;->access$800(Lcom/haima/hmcp/cloud/UploadTask;Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :pswitch_7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$600(Lcom/haima/hmcp/cloud/UploadTask;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 83
    .line 84
    invoke-static {p1, v1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1000(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
