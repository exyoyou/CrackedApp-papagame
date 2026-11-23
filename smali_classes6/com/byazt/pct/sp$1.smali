.class public Lcom/byazt/pct/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pct/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/m;Lcom/byazt/pct/uj;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pct/m;

.field public final synthetic tt:Lcom/byazt/pct/uj;

.field public final synthetic ve:Lcom/byazt/pct/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/pct/sp;Lcom/byazt/pct/m;Lcom/byazt/pct/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/pct/sp$1;->c:Lcom/byazt/pct/m;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/pct/sp$1;->tt:Lcom/byazt/pct/uj;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {v0}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/sp;)Lcom/byazt/pct/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {v0}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/sp;)Lcom/byazt/pct/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {v1}, Lcom/byazt/pct/sp;->tt(Lcom/byazt/pct/sp;)Lcom/byazt/pct/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/pct/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/pct/gr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/pct/sp$1;->c:Lcom/byazt/pct/m;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {p1}, Lcom/byazt/pct/sp;->ve(Lcom/byazt/pct/sp;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/pct/sp$1;->tt:Lcom/byazt/pct/uj;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {v0}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/sp;)Lcom/byazt/pct/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {v0}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/sp;)Lcom/byazt/pct/c;

    move-result-object v0

    invoke-static {p1}, Lcom/byazt/pct/gr;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/pct/sp$1;->c:Lcom/byazt/pct/m;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/pct/sp$1;->ve:Lcom/byazt/pct/sp;

    invoke-static {p1}, Lcom/byazt/pct/sp;->ve(Lcom/byazt/pct/sp;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/pct/sp$1;->tt:Lcom/byazt/pct/uj;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
