.class public Lcom/byazt/xt/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xt/n;->c(Lcom/byazt/iz/tt;Lcom/byazt/dv/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xt/n;


# direct methods
.method public constructor <init>(Lcom/byazt/xt/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xt/n$1;->c:Lcom/byazt/xt/n;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xt/n$1;->c:Lcom/byazt/xt/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/xt/n;->c(Lcom/byazt/xt/n;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/byazt/xt/c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/xt/n$1;->c:Lcom/byazt/xt/n;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/byazt/xt/c;->c(Lcom/byazt/xt/c$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
