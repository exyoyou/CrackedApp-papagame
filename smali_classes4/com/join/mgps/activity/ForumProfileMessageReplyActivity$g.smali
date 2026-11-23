.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPromptDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid",
            "val$rid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->b:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteComment(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v0, 0x12

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v0, 0x14

    .line 36
    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 40
    .line 41
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteCommentReply(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->d:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$700(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Lcom/join/mgps/dialog/x0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
