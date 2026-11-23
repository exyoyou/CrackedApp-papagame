.class Lcom/join/mgps/adapter/ForumCommentAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->o0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IZZILjava/lang/String;Ljava/lang/String;)V
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
            "val$cid",
            "val$showDelete",
            "val$showReport",
            "val$rid",
            "val$nickname",
            "val$msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->b:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->d:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->e:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->b:I

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->g(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    iget-boolean v5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->c:Z

    .line 24
    .line 25
    iget-boolean v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->d:Z

    .line 26
    .line 27
    iget v7, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->b:I

    .line 28
    .line 29
    iget v8, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->e:I

    .line 30
    .line 31
    iget-object v9, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->f:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v10, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$e;->g:Ljava/lang/String;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/adapter/ForumCommentAdapter;->z0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1
.end method
