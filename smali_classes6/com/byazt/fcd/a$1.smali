.class public Lcom/byazt/fcd/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/a;->tt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fcd/a;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/a$1;->c:Lcom/byazt/fcd/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/a$1;->c:Lcom/byazt/fcd/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/byazt/fcd/a;->c(Lcom/byazt/fcd/a;Z)V

    return-void
.end method

.method public c(Lcom/byazt/omf/gr$ve;)V
    .locals 1

    .line 2
    iget-object p1, p1, Lcom/byazt/omf/gr$ve;->ve:Lcom/byazt/ete/tk;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/tk;->c()Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/a$1;->c:Lcom/byazt/fcd/a;

    invoke-static {v0, p1}, Lcom/byazt/fcd/a;->c(Lcom/byazt/fcd/a;Z)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/fcd/a$1;->c:Lcom/byazt/fcd/a;

    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    :cond_1
    return-void
.end method
