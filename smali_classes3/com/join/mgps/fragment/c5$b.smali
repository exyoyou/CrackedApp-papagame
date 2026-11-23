.class Lcom/join/mgps/fragment/c5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c5;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/c5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/c5$b;->b:Lcom/join/mgps/fragment/c5;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/c5$b;->b:Lcom/join/mgps/fragment/c5;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/c5;->s:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/c5;->c0(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/c5$b;->b:Lcom/join/mgps/fragment/c5;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/fragment/c5;->N()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
