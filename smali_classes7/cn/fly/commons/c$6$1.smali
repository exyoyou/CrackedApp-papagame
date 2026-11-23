.class Lcn/fly/commons/c$6$1;
.super Lcn/fly/tools/utils/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/c$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/utils/d<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/c$6;


# direct methods
.method constructor <init>(Lcn/fly/commons/c$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/c$6$1;->a:Lcn/fly/commons/c$6;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcn/fly/commons/c$6$1;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcn/fly/commons/c;->a(Ljava/util/HashMap;)V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object p1

    iget-object v1, p0, Lcn/fly/commons/c$6$1;->a:Lcn/fly/commons/c$6;

    iget-object v1, v1, Lcn/fly/commons/c$6;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/fly/commons/c;->d(Ljava/lang/String;)Lcn/fly/tools/utils/i;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {p1, v2, v3, v1}, Lcn/fly/commons/a/m;->c(JLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/fly/commons/c;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcn/fly/commons/c;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    throw p1
.end method
