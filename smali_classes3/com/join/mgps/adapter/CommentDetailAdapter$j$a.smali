.class public Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 5
    .line 6
    return-void
.end method
