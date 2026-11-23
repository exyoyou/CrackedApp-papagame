.class Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/c0;

.field final synthetic c:Lcom/join/mgps/adapter/ForumPostsAdapter$u;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter$u;Lcom/join/mgps/dialog/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$mCopyDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;->c:Lcom/join/mgps/adapter/ForumPostsAdapter$u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;->b:Lcom/join/mgps/dialog/c0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;->c:Lcom/join/mgps/adapter/ForumPostsAdapter$u;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->z(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsCopyActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;->c:Lcom/join/mgps/adapter/ForumPostsAdapter$u;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;->b:Lcom/join/mgps/dialog/c0;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
