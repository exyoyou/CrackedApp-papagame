.class Lcom/join/mgps/adapter/CommentSelfListAdapter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cid",
            "val$gid",
            "val$praiseType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b(Lcom/join/mgps/adapter/CommentSelfListAdapter;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f010095

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->b:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget v2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;->d:I

    .line 28
    .line 29
    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$j;->b(ILjava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
