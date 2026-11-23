.class Lcom/join/mgps/fragment/t1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/noties/scrollable/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/t1;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/t1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/t1$h;->a:Lcom/join/mgps/fragment/t1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "y",
            "oldY",
            "maxY"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t1$h;->a:Lcom/join/mgps/fragment/t1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p1, p1, Lcom/join/mgps/fragment/u1;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/t1$h;->a:Lcom/join/mgps/fragment/t1;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/fragment/u1;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/fragment/u1;->t0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method
