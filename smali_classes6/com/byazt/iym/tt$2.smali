.class public Lcom/byazt/iym/tt$2;
.super Lcom/byazt/ouz/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final synthetic sl:Lcom/byazt/iym/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/tt;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/tt$2;->sl:Lcom/byazt/iym/tt;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/byazt/iym/tt$2;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/ouz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/byazt/hkv/uj;->x:Lcom/byazt/zo/uj;

    .line 5
    .line 6
    const-class v0, Lcom/byazt/zo/tt;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/byazt/zo/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/byazt/zo/tt;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/byazt/zo/tt;->tt(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/byazt/iym/tt$2;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
