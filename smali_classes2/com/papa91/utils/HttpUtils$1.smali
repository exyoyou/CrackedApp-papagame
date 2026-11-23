.class Lcom/papa91/utils/HttpUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/http/HttpUtils$OnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/HttpUtils;->sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/utils/HttpUtils;

.field final synthetic val$listener:Lcom/papa91/utils/HttpFinishInterface;


# direct methods
.method constructor <init>(Lcom/papa91/utils/HttpUtils;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/HttpUtils$1;->this$0:Lcom/papa91/utils/HttpUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/papa91/utils/HttpFinishInterface;->onRequestError(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/papa91/utils/HttpFinishInterface;->onRequestSuccess(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
