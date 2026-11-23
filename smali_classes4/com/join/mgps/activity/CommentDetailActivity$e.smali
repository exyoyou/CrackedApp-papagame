.class Lcom/join/mgps/activity/CommentDetailActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->imTopRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/PopupWindow;

.field final synthetic c:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$window"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$800(Lcom/join/mgps/activity/CommentDetailActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1800(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "desc"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 48
    .line 49
    const-string v0, "asc"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$902(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$902(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1002(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentList(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
