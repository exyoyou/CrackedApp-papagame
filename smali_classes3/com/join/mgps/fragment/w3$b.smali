.class Lcom/join/mgps/fragment/w3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w3;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/w3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/w3$b;->b:Lcom/join/mgps/fragment/w3;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3$b;->b:Lcom/join/mgps/fragment/w3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/w3;->a0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/w3$b;->b:Lcom/join/mgps/fragment/w3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/fragment/w3;->e0()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
