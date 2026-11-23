.class Lcom/join/mgps/activity/ForumPostsActivity_$w0;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity_;->preLoadImages(Landroid/widget/ListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/activity/ForumPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/widget/ListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$view",
            "val$firstVisibleItem",
            "val$lastVisiblePos",
            "val$totalItemCount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->f:Lcom/join/mgps/activity/ForumPostsActivity_;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->b:Landroid/widget/ListView;

    .line 4
    .line 5
    iput p7, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->c:I

    .line 6
    .line 7
    iput p8, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->d:I

    .line 8
    .line 9
    iput p9, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->e:I

    .line 10
    .line 11
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->f:Lcom/join/mgps/activity/ForumPostsActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->b:Landroid/widget/ListView;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->d:I

    .line 8
    .line 9
    iget v4, p0, Lcom/join/mgps/activity/ForumPostsActivity_$w0;->e:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/ForumPostsActivity_;->access$4401(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/ListView;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
