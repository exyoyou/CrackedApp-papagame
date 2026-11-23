.class public Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "likeCount",
            "unlikeCount",
            "viewCount",
            "is_praise",
            "is_despise",
            "is_old",
            "comment_score_switch"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->g:I

    .line 17
    .line 18
    iput p8, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->h:I

    .line 19
    .line 20
    iput p9, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->i:I

    .line 21
    .line 22
    return-void
.end method
