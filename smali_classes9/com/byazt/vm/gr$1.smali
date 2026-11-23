.class public Lcom/byazt/vm/gr$1;
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
        0x10f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vm/gr;->c()Lcom/byazt/vm/zm$tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/vm/zm$tt<",
        "Lcom/byazt/fp/tt;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vm/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/vm/gr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vm/gr$1;->c:Lcom/byazt/vm/gr;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/os/IBinder;)Lcom/byazt/fp/tt;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/fp/tt$c;->c(Landroid/os/IBinder;)Lcom/byazt/fp/tt;

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
    check-cast p1, Lcom/byazt/fp/tt;

    invoke-virtual {p0, p1}, Lcom/byazt/vm/gr$1;->c(Lcom/byazt/fp/tt;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/fp/tt;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lcom/byazt/fp/tt;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tt(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vm/gr$1;->c(Landroid/os/IBinder;)Lcom/byazt/fp/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
