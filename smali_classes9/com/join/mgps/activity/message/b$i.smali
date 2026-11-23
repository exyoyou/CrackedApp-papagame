.class Lcom/join/mgps/activity/message/b$i;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/b;->U(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/message/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/b;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$message",
            "val$pid",
            "val$rid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/b$i;->e:Lcom/join/mgps/activity/message/b;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/activity/message/b$i;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p7, p0, Lcom/join/mgps/activity/message/b$i;->c:I

    .line 6
    .line 7
    iput p8, p0, Lcom/join/mgps/activity/message/b$i;->d:I

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/b$i;->e:Lcom/join/mgps/activity/message/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/message/b$i;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/message/b$i;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/activity/message/b$i;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/message/b;->k0(Lcom/join/mgps/activity/message/b;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
