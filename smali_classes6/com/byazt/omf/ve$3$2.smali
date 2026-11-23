.class public Lcom/byazt/omf/ve$3$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x401
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/c;

.field public final synthetic tt:Lcom/byazt/omf/ve$3;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve$3;Ljava/lang/String;Lcom/byazt/fk/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$3$2;->tt:Lcom/byazt/omf/ve$3;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/omf/ve$3$2;->c:Lcom/byazt/fk/c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/omf/ve$3$2;->tt:Lcom/byazt/omf/ve$3;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/omf/ve$3$2;->c:Lcom/byazt/fk/c;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/byazt/fk/c;->getOtherCacheDir()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/high16 v3, 0x3200000

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/bzd/sl;->tt()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Lcom/byazt/bzd/sl;->ve()[J

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Lcom/byazt/omf/ve$3$2;->tt:Lcom/byazt/omf/ve$3;

    .line 26
    .line 27
    iget-object v6, v6, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 28
    .line 29
    invoke-static {v6}, Lcom/byazt/omf/ve;->isDebug(Lcom/byazt/dj/c;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-interface/range {v0 .. v6}, Lcom/byazt/dna/h;->preloadTTVideo(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
