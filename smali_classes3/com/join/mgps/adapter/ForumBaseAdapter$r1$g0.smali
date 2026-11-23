.class public Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g0"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/RecommendLabelTag;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/RecommendLabelTag;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "isSelected"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->b:Z

    .line 7
    .line 8
    return-void
.end method
