.class Lcom/join/mgps/activity/CommentSelfListActivityv2$f;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentSelfListActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "loadingView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
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
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loading()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
