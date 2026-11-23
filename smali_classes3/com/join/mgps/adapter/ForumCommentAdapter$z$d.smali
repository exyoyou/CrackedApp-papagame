.class public Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "commentBean",
            "myAuth",
            "showDivider",
            "isMyPost"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->e:Z

    .line 13
    .line 14
    return-void
.end method
