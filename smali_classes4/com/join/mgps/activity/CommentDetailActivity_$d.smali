.class Lcom/join/mgps/activity/CommentDetailActivity_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

.field final synthetic d:Z

.field final synthetic e:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$msg",
            "val$bean",
            "val$b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->e:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->c:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->e:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->c:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/CommentDetailActivity_;->access$901(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
