.class public Lcom/join/mgps/adapter/d2$b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b1"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field final synthetic d:Lcom/join/mgps/adapter/d2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/d2;Ljava/lang/Object;I)V
    .locals 0
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

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$b1;->d:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/d2$b1;->b:I

    .line 9
    .line 10
    return-void
.end method
