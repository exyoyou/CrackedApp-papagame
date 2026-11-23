.class Lcom/join/mgps/fragment/y3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/y3;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/y3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/y3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/y3$a;->b:Lcom/join/mgps/fragment/y3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->b:Lcom/join/mgps/fragment/y3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->b:Lcom/join/mgps/fragment/y3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->b:Lcom/join/mgps/fragment/y3;

    .line 19
    .line 20
    iget v1, v0, Lcom/join/mgps/fragment/y3;->q:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->b:Lcom/join/mgps/fragment/y3;

    .line 31
    .line 32
    iget v1, v0, Lcom/join/mgps/fragment/y3;->p:I

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->p0()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
