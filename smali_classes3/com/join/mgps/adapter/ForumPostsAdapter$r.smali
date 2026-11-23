.class Lcom/join/mgps/adapter/ForumPostsAdapter$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->b:I

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->z(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

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
    const v1, 0x7f0a06ab

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->b:I

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
