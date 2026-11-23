.class public Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/task/listener/ITaskStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/task/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TaskStateChanageOperator"
.end annotation


# instance fields
.field private listTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/tencent/cos/task/Task;

.field final synthetic this$0:Lcom/tencent/cos/task/TaskManager;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;",
            "Lcom/tencent/cos/task/Task;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->this$0:Lcom/tencent/cos/task/TaskManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "task is "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "task is "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "task is "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onResponse(Lcom/tencent/cos/model/COSResult;)V
    .locals 0

    return-void
.end method

.method public onRetry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->RETRY:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "task is "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onSendBegin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->SENDING:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "task is "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onSendFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/cos/task/TaskState;->FINISH:Lcom/tencent/cos/task/TaskState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "task is "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onTimeout()V
    .locals 0

    return-void
.end method
