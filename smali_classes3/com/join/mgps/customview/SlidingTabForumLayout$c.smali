.class Lcom/join/mgps/customview/SlidingTabForumLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabForumLayout;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabForumLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabForumLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->c:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:I

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->c:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->h(II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->c:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->k(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->c:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->k(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:I

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout$e;->onItemClick(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
