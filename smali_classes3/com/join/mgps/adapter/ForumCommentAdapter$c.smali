.class Lcom/join/mgps/adapter/ForumCommentAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->l0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

.field final synthetic c:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

    .line 16
    .line 17
    iget v1, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->a:I

    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->p(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

    .line 26
    .line 27
    iget-boolean v5, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->f:Z

    .line 28
    .line 29
    iget-boolean v6, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->e:Z

    .line 30
    .line 31
    iget v7, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->a:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    iget-object v9, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v10, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->b:Ljava/lang/String;

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/adapter/ForumCommentAdapter;->z0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1
.end method
