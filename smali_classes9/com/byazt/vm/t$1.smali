.class public Lcom/byazt/vm/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vm/zm$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vm/t;->c()Lcom/byazt/vm/zm$tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/vm/zm$tt<",
        "Lcom/byazt/kbg/tt;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vm/t;


# direct methods
.method public constructor <init>(Lcom/byazt/vm/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vm/t$1;->c:Lcom/byazt/vm/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/os/IBinder;)Lcom/byazt/kbg/tt;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/kbg/tt$c;->c(Landroid/os/IBinder;)Lcom/byazt/kbg/tt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/byazt/kbg/tt;

    invoke-virtual {p0, p1}, Lcom/byazt/vm/t$1;->c(Lcom/byazt/kbg/tt;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/kbg/tt;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "honor# "

    const-string v0, "service is null"

    .line 3
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/vm/t$1;->c:Lcom/byazt/vm/t;

    iget-object v0, v0, Lcom/byazt/vm/t;->c:Lcom/byazt/vm/da;

    invoke-interface {p1, v0}, Lcom/byazt/kbg/tt;->c(Lcom/byazt/kbg/c;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/vm/t$1;->c:Lcom/byazt/vm/t;

    iget-object v0, v0, Lcom/byazt/vm/t;->tt:Lcom/byazt/vm/sl;

    invoke-interface {p1, v0}, Lcom/byazt/kbg/tt;->tt(Lcom/byazt/kbg/c;)V

    const-string p1, ""

    return-object p1
.end method

.method public synthetic tt(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vm/t$1;->c(Landroid/os/IBinder;)Lcom/byazt/kbg/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
