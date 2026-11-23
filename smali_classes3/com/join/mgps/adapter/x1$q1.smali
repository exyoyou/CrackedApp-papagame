.class public Lcom/join/mgps/adapter/x1$q1;
.super Lcom/join/mgps/adapter/x1$n1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q1"
.end annotation


# instance fields
.field private final j:I

.field private final k:I

.field final synthetic l:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;IILjava/lang/Object;I)V
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
            "min_an_compatible_ver",
            "max_an_compatible_ver",
            "object",
            "itemType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$q1;->l:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p1, p4, p5}, Lcom/join/mgps/adapter/x1$n1;-><init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/adapter/x1$q1;->j:I

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/x1$q1;->k:I

    .line 9
    .line 10
    return-void
.end method
