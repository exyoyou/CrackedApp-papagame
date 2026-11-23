.class public Lcom/byazt/gk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x94,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gk/c;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/c;

.field public final synthetic tt:Lcom/byazt/ete/tt;

.field public final synthetic ve:Lcom/byazt/gk/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gk/c;Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gk/c$1;->ve:Lcom/byazt/gk/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gk/c$1;->c:Lcom/byazt/ete/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/gk/c$1;->tt:Lcom/byazt/ete/tt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/gk/c$1;->ve:Lcom/byazt/gk/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gk/c;->c(Lcom/byazt/gk/c;)Lcom/byazt/omf/gu$tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/gk/c$1;->c:Lcom/byazt/ete/c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/gk/c$1;->tt:Lcom/byazt/ete/tt;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/byazt/omf/gu$tt;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
