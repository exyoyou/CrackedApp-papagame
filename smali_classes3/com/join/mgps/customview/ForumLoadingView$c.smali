.class Lcom/join/mgps/customview/ForumLoadingView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ForumLoadingView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumLoadingView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->b:Lcom/join/mgps/customview/ForumLoadingView;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->b:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ForumLoadingView;->a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->b:Lcom/join/mgps/customview/ForumLoadingView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/ForumLoadingView;->a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->a(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
