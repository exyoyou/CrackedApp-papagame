.class public Lcom/join/mgps/adapter/ForumCommentAdapter$z$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "gameInfo",
            "resource_url"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$i;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$i;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
