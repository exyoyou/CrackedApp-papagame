.class Lcom/join/mgps/fragment/y3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/y3;->i0()V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/y3$b;->b:Lcom/join/mgps/fragment/y3;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$b;->b:Lcom/join/mgps/fragment/y3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$b;->b:Lcom/join/mgps/fragment/y3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$b;->b:Lcom/join/mgps/fragment/y3;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->q0()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$b;->b:Lcom/join/mgps/fragment/y3;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->W()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
