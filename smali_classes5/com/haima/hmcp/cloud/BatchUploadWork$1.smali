.class Lcom/haima/hmcp/cloud/BatchUploadWork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/BatchUploadWork;->check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

.field final synthetic val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$200(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFinish(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$000(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$100(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    instance-of v0, p1, Lcom/haima/hmcp/cloud/IBatchFileCheckListener;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/haima/hmcp/cloud/IBatchFileCheckListener;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$100(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$1;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$200(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/cloud/IBatchFileCheckListener;->onCheckComplete(Ljava/util/List;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onHangUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 0

    return-void
.end method
