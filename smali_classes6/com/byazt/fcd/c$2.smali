.class public Lcom/byazt/fcd/c$2;
.super Lcom/byazt/ouz/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x46
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
    iput-object p1, p0, Lcom/byazt/fcd/c$2;->da:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/ouz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

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
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/a;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/fcd/c$2;->da:Lcom/byazt/fcd/c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
