.class Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;->y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/PapaHomeBeanV9;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mainBean",
            "val$pnx",
            "val$fromNet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->e:Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->b:Lcom/join/mgps/dto/PapaHomeBeanV9;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->c:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->e:Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->b:Lcom/join/mgps/dto/PapaHomeBeanV9;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->c:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_$f;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;->D0(Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
