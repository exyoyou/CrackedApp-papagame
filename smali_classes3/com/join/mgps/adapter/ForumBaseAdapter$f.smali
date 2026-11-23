.class Lcom/join/mgps/adapter/ForumBaseAdapter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->q0(Lcom/join/mgps/adapter/ForumBaseAdapter$c1;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$c1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$holder",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->d:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->b:Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->d:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f010095

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->b:Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->i:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->d:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->d:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;->c:I

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$t0;->a(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
