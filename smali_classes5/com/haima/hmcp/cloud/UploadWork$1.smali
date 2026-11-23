.class Lcom/haima/hmcp/cloud/UploadWork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/UploadWork;->check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/UploadWork;

.field final synthetic val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/UploadWork;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadWork$1;->this$0:Lcom/haima/hmcp/cloud/UploadWork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/UploadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/cloud/IBaseCheckListener;->onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IBaseCheckListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/haima/hmcp/cloud/IFileCheckListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/haima/hmcp/cloud/IFileCheckListener;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/IFileCheckListener;->onCheckComplete(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
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
