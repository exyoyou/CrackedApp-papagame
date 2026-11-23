.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->videoScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/AbsListView;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$view",
            "val$firstVisibleItem",
            "val$visibleItemCount",
            "val$totalItemCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->f:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->b:Landroid/widget/AbsListView;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->d:I

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->e:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->f:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->b:Landroid/widget/AbsListView;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->d:I

    .line 8
    .line 9
    iget v4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;->e:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->access$1001(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
