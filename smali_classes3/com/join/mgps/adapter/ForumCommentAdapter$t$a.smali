.class Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumCommentAdapter$t;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->d:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
