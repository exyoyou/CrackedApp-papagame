.class Lcom/join/mgps/adapter/ForumPostsAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->T0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mPopWindow.setTouchInterceptor"

    .line 6
    .line 7
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 17
    .line 18
    invoke-static {p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->b:Landroid/view/View;

    .line 27
    .line 28
    invoke-static {p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->F(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->t:Z

    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method
