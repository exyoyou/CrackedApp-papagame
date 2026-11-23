.class Lcom/join/mgps/activity/CommentDetailActivity_$l;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->toCreateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
            "val$replyCommentId",
            "val$str",
            "val$upPhoneModel",
            "val$reply_comment_user_id",
            "val$reply_comment_user_name",
            "val$reply_comment_id",
            "val$replyPn"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->i:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p9, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p10, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p11, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput p12, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->h:I

    .line 16
    .line 17
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->i:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->h:I

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_;->access$1601(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
