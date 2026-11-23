.class Lcom/join/mgps/activity/ForumPostsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->showPromptDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;II)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport(II)V

    .line 5
    .line 6
    .line 7
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->b:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteComment(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v0, 0x12

    .line 26
    .line 27
    if-eq p1, v0, :cond_4

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v0, 0x14

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v0, 0x21

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->b:I

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$a;->a(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/16 v0, 0x22

    .line 63
    .line 64
    if-eq p1, v0, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/16 v0, 0x24

    .line 73
    .line 74
    if-ne p1, v0, :cond_5

    .line 75
    .line 76
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->c:I

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$a;->b(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 83
    .line 84
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->c:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteCommentReply(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$900(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/x0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 96
    .line 97
    .line 98
    return-void
.end method
