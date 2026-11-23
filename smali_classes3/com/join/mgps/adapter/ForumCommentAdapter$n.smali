.class Lcom/join/mgps/adapter/ForumCommentAdapter$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/TextViewWithHyperlink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->f0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IILjava/lang/String;)V
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
            "val$rid",
            "val$rNickname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->d:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->d:Lcom/join/mgps/adapter/ForumCommentAdapter;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->d:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->a:I

    .line 16
    .line 17
    iget v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->b:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->k(IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
