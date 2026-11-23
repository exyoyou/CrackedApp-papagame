.class public Lcom/byazt/om/t$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ly/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0xa8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/t;->c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/om/c$c;

.field public final synthetic n:Lcom/byazt/om/t;

.field public final synthetic tt:Lcom/byazt/iz/tt;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/t$2;->n:Lcom/byazt/om/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/om/t$2;->c:Lcom/byazt/om/c$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/om/t$2;->tt:Lcom/byazt/iz/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/om/t$2;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/om/t$2;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/om/t$2;->n:Lcom/byazt/om/t;

    iget-object v1, p0, Lcom/byazt/om/t$2;->c:Lcom/byazt/om/c$c;

    iget-object v2, p0, Lcom/byazt/om/t$2;->tt:Lcom/byazt/iz/tt;

    iget-object v3, p0, Lcom/byazt/om/t$2;->ve:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/om/t$2;->uj:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/om/t;->c(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 3
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/byazt/om/t$2;->n:Lcom/byazt/om/t;

    iget-object v0, p0, Lcom/byazt/om/t$2;->tt:Lcom/byazt/iz/tt;

    const v1, 0xcd15b

    invoke-static {p1, v0, v1}, Lcom/byazt/om/t;->c(Lcom/byazt/om/t;Lcom/byazt/iz/tt;I)V

    .line 3
    iget-object p1, p0, Lcom/byazt/om/t$2;->tt:Lcom/byazt/iz/tt;

    new-instance v0, Lcom/byazt/pp/c;

    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void
.end method
