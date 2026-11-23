.class Lcom/tbruyelle/rxpermissions2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tbruyelle/rxpermissions2/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c;->h(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tbruyelle/rxpermissions2/c$f<",
        "Lcom/tbruyelle/rxpermissions2/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tbruyelle/rxpermissions2/f;

.field final synthetic b:Landroidx/fragment/app/FragmentManager;

.field final synthetic c:Lcom/tbruyelle/rxpermissions2/c;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$a;->c:Lcom/tbruyelle/rxpermissions2/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/c$a;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/tbruyelle/rxpermissions2/f;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/f;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->c:Lcom/tbruyelle/rxpermissions2/c;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/c$a;->b:Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->a(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/f;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/c$a;->a()Lcom/tbruyelle/rxpermissions2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
