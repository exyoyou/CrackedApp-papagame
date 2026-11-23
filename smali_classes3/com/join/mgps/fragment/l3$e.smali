.class Lcom/join/mgps/fragment/l3$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/join/mgps/fragment/l3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/l3;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "o",
            "type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l3$e;->c:Lcom/join/mgps/fragment/l3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/l3$e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/fragment/l3$e;->a:I

    .line 9
    .line 10
    return-void
.end method
