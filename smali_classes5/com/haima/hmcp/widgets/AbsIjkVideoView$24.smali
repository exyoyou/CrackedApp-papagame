.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

.field final synthetic val$tmpTokenTimeStamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$tmpTokenTimeStamp:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$bundle:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public success(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$tmpTokenTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TokenTimeStampModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$tmpTokenTimeStamp:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/TokenTimeStampModel;->updateTimeStamp(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->success(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$bundle:Landroid/os/Bundle;

    .line 24
    .line 25
    const-string v0, "cToken"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$24;->val$bundle:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mToken:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    return-void
.end method
