.class Lcom/join/mgps/adapter/ForumCommentAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->n0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$a;->b:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
