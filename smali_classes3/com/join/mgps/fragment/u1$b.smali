.class Lcom/join/mgps/fragment/u1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/u1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$b;->b:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$b;->b:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->b0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$b;->b:Lcom/join/mgps/fragment/u1;

    .line 10
    .line 11
    iget v1, v0, Lcom/join/mgps/fragment/u1;->p:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/u1;->X(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
