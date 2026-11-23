.class Lcom/join/mgps/adapter/ForumPostsAdapter$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->Y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
            "val$positionx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->z()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->b:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Lcom/join/android/app/component/video/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->C()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$s;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Lcom/join/android/app/component/video/c;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->s()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
