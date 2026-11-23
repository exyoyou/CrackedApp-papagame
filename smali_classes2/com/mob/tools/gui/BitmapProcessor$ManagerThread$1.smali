.class Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    array-length v2, v2

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aget-object v2, v2, v1

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, v4}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor$1;)V

    .line 26
    .line 27
    .line 28
    aput-object v3, v2, v1

    .line 29
    .line 30
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    aget-object v2, v2, v1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "worker "

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    aget-object v2, v2, v1

    .line 61
    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v3, 0x0

    .line 67
    :goto_1
    invoke-static {v2, v3}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    aget-object v2, v2, v1

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method
