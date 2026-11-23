.class Lcom/join/mgps/fragment/i1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i1;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i1$a;->a:Lcom/join/mgps/fragment/i1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i1$a;->a:Lcom/join/mgps/fragment/i1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/i1;->N(Lcom/join/mgps/fragment/i1;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1$a;->a:Lcom/join/mgps/fragment/i1;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/fragment/i1;->M(Lcom/join/mgps/fragment/i1;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/i1;->Q(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
