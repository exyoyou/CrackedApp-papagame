.class public Lcom/join/mgps/adapter/x1$n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n1"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:Lcom/join/mgps/callbacks/l;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field final synthetic i:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "object",
            "itemType"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/x1$n1;-><init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;ILcom/join/mgps/callbacks/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;IILcom/join/mgps/callbacks/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "object",
            "itemType",
            "alwaysShowMore",
            "call"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$n1;->i:Lcom/join/mgps/adapter/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/x1$n1;->b:I

    .line 6
    iput-object p5, p0, Lcom/join/mgps/adapter/x1$n1;->d:Lcom/join/mgps/callbacks/l;

    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/x1$n1;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;ILcom/join/mgps/callbacks/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "object",
            "itemType",
            "call"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/x1$n1;-><init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;IILcom/join/mgps/callbacks/l;)V

    return-void
.end method
