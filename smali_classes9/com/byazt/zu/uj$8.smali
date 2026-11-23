.class public Lcom/byazt/zu/uj$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x6c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/uj;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj$8;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/uj$8;->c:Lcom/byazt/zu/uj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$8;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->n(Lcom/byazt/zu/uj;)Lcom/byazt/ft/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj$8;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->n(Lcom/byazt/zu/uj;)Lcom/byazt/ft/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ft/tt;->c(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/zu/uj$8;->c:Lcom/byazt/zu/uj;

    invoke-static {p1}, Lcom/byazt/zu/uj;->a(Lcom/byazt/zu/uj;)V

    return-void
.end method
