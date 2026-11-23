.class Lcom/join/mgps/activity/CommentCreatActivity_$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentCreatActivity_;->postEvent(IDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:D

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/activity/CommentCreatActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V
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
            "val$type",
            "val$starNum",
            "val$str",
            "val$upPhoneModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->f:Lcom/join/mgps/activity/CommentCreatActivity_;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->b:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->c:D

    .line 6
    .line 7
    iput-object p5, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->e:Ljava/lang/String;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->f:Lcom/join/mgps/activity/CommentCreatActivity_;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->b:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->c:D

    .line 6
    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/CommentCreatActivity_;->access$001(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
