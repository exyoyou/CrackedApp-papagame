.class public Lcom/byazt/omf/gr$23;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x98c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->ve(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic n:Lcom/byazt/omf/gr;

.field public final synthetic tt:Lcom/byazt/ete/bm;

.field public final synthetic uj:Lcom/byazt/omf/gu$tt;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$23;->n:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/omf/gr$23;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/omf/gr$23;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    iput p5, p0, Lcom/byazt/omf/gr$23;->ve:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/omf/gr$23;->uj:Lcom/byazt/omf/gu$tt;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/gr$23;->n:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/omf/gr$23;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/omf/gr$23;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    iget v3, p0, Lcom/byazt/omf/gr$23;->ve:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/omf/gr$23;->uj:Lcom/byazt/omf/gu$tt;

    .line 10
    .line 11
    const-string v5, "/api/ad/union/server_bidding/get_materials/"

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
