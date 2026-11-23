.class public Lcom/byazt/cc/uj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/uj;->c(Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cc/uj;->ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/cc/uj;->uj(Lcom/byazt/cc/uj;)Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/byazt/cc/uj;->ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/byazt/cc/uj;->ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p1, p1, Lcom/byazt/hkv/c;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/byazt/cc/uj;->ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/byazt/hkv/c;

    .line 51
    .line 52
    const-class v0, Lcom/byazt/vis/c;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/byazt/vis/c;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/byazt/vis/c;->c()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/byazt/cc/uj;->ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/byazt/cc/uj$5;->c:Lcom/byazt/cc/uj;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/cc/uj;->uj(Lcom/byazt/cc/uj;)Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method
