.class public Lcom/byazt/nk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oq/ShakeAnimationView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nk/a;->c(Lcom/byazt/aq/da;Lcom/byazt/aq/sp;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/ShakeClickView;

.field public final synthetic tt:Lcom/byazt/nk/a;


# direct methods
.method public constructor <init>(Lcom/byazt/nk/a;Lcom/byazt/oq/ShakeClickView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nk/a$1;->tt:Lcom/byazt/nk/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nk/a$1;->c:Lcom/byazt/oq/ShakeClickView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/a$1;->tt:Lcom/byazt/nk/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nk/nu;->ve:Lcom/byazt/tm/DynamicBaseWidget;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nk/a$1;->tt:Lcom/byazt/nk/a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/nk/nu;->ve:Lcom/byazt/tm/DynamicBaseWidget;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/nk/a$1;->tt:Lcom/byazt/nk/a;

    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Lcom/byazt/wl/c;->c(ZLcom/byazt/nk/z;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/nk/a$1;->c:Lcom/byazt/oq/ShakeClickView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
