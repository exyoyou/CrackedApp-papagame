.class Lcom/join/mgps/adapter/ForumPostsAdapter$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->W(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/join/mgps/dialog/c0;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->z(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/dialog/c0;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$u;Lcom/join/mgps/dialog/c0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/c0;->a(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
