.class Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onRequestProgress(JJZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytesWritten",
            "contentLength",
            "b",
            "url"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    iget p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->b:I

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->access$002(Lcom/join/mgps/activity/CreateEndGameCommitActivity;Z)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p3, 0x2

    .line 15
    if-ne p1, p3, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->access$102(Lcom/join/mgps/activity/CreateEndGameCommitActivity;Z)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p5, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 24
    .line 25
    const-wide/16 v0, 0x64

    .line 26
    .line 27
    mul-long p1, p1, v0

    .line 28
    .line 29
    div-long/2addr p1, p3

    .line 30
    long-to-int p2, p1

    .line 31
    invoke-virtual {p5, p2}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUpdateUploadProgress(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public onUploadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;->c:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
