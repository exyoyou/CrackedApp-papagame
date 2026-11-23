.class Lcom/join/mgps/activity/CommentDetailActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->bottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDialog",
            "val$name",
            "val$childCommentId",
            "val$pn",
            "val$uid",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->e:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$000(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Lcom/join/mgps/customview/t;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Lcom/join/mgps/customview/t;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Lcom/join/mgps/customview/t;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "@"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "\uff1a"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->d:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$602(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 77
    .line 78
    iget v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->e:I

    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$702(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$502(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->f:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$402(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1702(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->h:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$2000(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void
.end method
