.class public Lcom/byazt/wdw/n$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ddx/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x909
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/n$3;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/n$3;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/n$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/n$3$1;->c:Lcom/byazt/wdw/n$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/wdw/n$3$1;->c:Lcom/byazt/wdw/n$3;

    iget-object p1, p1, Lcom/byazt/wdw/n$3;->ve:Lcom/byazt/wdw/n$c;

    if-eqz p1, :cond_0

    .line 3
    sget-object p2, Lcom/byazt/cr/a;->x:Lcom/byazt/cr/a;

    invoke-interface {p1, p2}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/byazt/wdw/n$3$1;->c:Lcom/byazt/wdw/n$3;

    iget-object p1, p1, Lcom/byazt/wdw/n$3;->ve:Lcom/byazt/wdw/n$c;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/byazt/wdw/n$c;->c()V

    :cond_0
    return-void
.end method
