.class public Lcom/byazt/fcd/c$3;
.super Lcom/byazt/ouz/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/c;->c(Lcom/byazt/hkv/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Lcom/byazt/fcd/c;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/c;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/c$3;->da:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/ouz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/byazt/hkv/uj;->x:Lcom/byazt/zo/uj;

    .line 14
    .line 15
    const-class v0, Lcom/byazt/zo/tt;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/byazt/zo/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/byazt/zo/tt;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/byazt/zo/tt;->tt(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/byazt/fcd/c$3;->da:Lcom/byazt/fcd/c;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method
