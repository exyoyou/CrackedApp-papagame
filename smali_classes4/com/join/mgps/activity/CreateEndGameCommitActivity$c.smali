.class Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vincent/videocompressor/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    const-string v1, "\u538b\u7f29\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUpdateProgress(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onCompressStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onCompressSuccess()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 7
    .line 8
    const-string v1, "\u538b\u7f29\u5b8c\u6210"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "\u538b\u7f29\u5b8c\u6210:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
