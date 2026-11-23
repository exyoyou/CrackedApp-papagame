.class public Lcom/byazt/omf/gr$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x98d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Lcom/byazt/ete/tt;Lcom/byazt/dj/tt;Lcom/byazt/omf/gu$tt;Lcom/byazt/ete/bm;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/omf/gr;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/omf/gu$tt;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/omf/gu$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$20;->n:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$20;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/gr$20;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/omf/gr$20;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/omf/gr$20;->uj:Lcom/byazt/omf/gu$tt;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/omf/gr$20;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/omf/gr$20;->tt:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/omf/gr$20;->ve:Ljava/lang/String;

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/ukr/yp;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/gr$20;->uj:Lcom/byazt/omf/gu$tt;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/omf/gu$tt;->c(ILjava/lang/String;Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 6

    .line 3
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    iget-object v3, p0, Lcom/byazt/omf/gr$20;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/omf/gr$20;->tt:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/omf/gr$20;->ve:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/ukr/yp;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/omf/gr$20;->uj:Lcom/byazt/omf/gu$tt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/omf/gu$tt;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V

    return-void
.end method
