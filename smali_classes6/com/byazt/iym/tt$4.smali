.class public Lcom/byazt/iym/tt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zd/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/tt;->n()Lcom/byazt/zd/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iym/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

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

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/iym/tt;->c(Lcom/byazt/iym/tt;Z)Z

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

    invoke-virtual {p1}, Lcom/byazt/iym/tt;->sp()V

    return-void
.end method

.method public c(JJ)V
    .locals 0

    .line 3
    iget-object p3, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

    invoke-static {p3}, Lcom/byazt/iym/tt;->c(Lcom/byazt/iym/tt;)Landroid/view/ViewGroup;

    move-result-object p3

    const/16 p4, 0x8

    invoke-static {p3, p4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 4
    iget-object p3, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

    invoke-static {p3, p1, p2}, Lcom/byazt/iym/tt;->c(Lcom/byazt/iym/tt;J)J

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt$4;->c:Lcom/byazt/iym/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->sp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
