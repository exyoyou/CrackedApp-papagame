.class public Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "commentBean",
            "myAuth",
            "showDivider"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->d:Z

    .line 11
    .line 12
    return-void
.end method
