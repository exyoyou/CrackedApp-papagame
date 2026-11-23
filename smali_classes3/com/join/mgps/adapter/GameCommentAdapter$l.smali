.class public Lcom/join/mgps/adapter/GameCommentAdapter$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameCommentAdapter$l$b;,
        Lcom/join/mgps/adapter/GameCommentAdapter$l$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewType",
            "obj"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 2
    .line 3
    return-void
.end method
