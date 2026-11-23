.class Lcom/join/mgps/fragment/v$l$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l;->creatVipOrder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/v$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$orderType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$o;->c:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/v$l$o;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v$l$o;->c:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/fragment/v;->B:Lcom/join/mgps/dialog/f1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/v$l$o;->c:Lcom/join/mgps/fragment/v$l;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/fragment/v$l$o;->b:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/v;->u0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
