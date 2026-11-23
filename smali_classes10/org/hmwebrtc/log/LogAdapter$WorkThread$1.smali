.class Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/log/LogAdapter$WorkThread;->createTread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/log/LogAdapter$WorkThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$000(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$100(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 21
    .line 22
    invoke-static {v1}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$200(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long v5, v1, v3

    .line 29
    .line 30
    if-lez v5, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 33
    .line 34
    invoke-static {v1}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$100(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 39
    .line 40
    invoke-static {v2}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$200(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 49
    .line 50
    invoke-static {v1}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$100(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 55
    .line 56
    .line 57
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 59
    .line 60
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$300(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "wait exception, msg:"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$WorkThread;

    .line 87
    .line 88
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->access$400(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
