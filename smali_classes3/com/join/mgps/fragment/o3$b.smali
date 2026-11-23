.class Lcom/join/mgps/fragment/o3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$b;->b:Lcom/join/mgps/fragment/o3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->b:Lcom/join/mgps/fragment/o3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->P(Lcom/join/mgps/fragment/o3;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->b:Lcom/join/mgps/fragment/o3;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->b:Lcom/join/mgps/fragment/o3;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->b:Lcom/join/mgps/fragment/o3;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/fragment/o3;->Z()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
