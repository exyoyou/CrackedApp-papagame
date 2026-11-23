.class public Lcom/join/mgps/adapter/GameTopicAdapter$g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
            "id",
            "collection_id",
            "nick_name",
            "head_portrait",
            "uid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->d:I

    .line 5
    .line 6
    iput p5, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->e:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->b:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
